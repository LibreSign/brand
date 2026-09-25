#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 LibreSign contributors
# SPDX-License-Identifier: AGPL-3.0-or-later

from __future__ import annotations

import argparse
import copy
import json
import re
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
HEX = re.compile(r"#[0-9a-fA-F]{6}")


def run(*args: str) -> None:
    subprocess.run(args, check=True)


def recolor(text: str, mapping: dict[str, str]) -> str:
    lookup = {k.lower(): v for k, v in mapping.items()}
    return HEX.sub(lambda m: lookup.get(m.group(0).lower(), m.group(0)), text)


def normalize_svg(source: Path, target: Path, padding: float) -> None:
    with tempfile.TemporaryDirectory() as tmp:
        cropped = Path(tmp) / "cropped.svg"
        run(
            "inkscape",
            str(source),
            "--export-type=svg",
            "--export-area-drawing",
            "--export-plain-svg",
            f"--export-filename={cropped}",
        )
        tree = ET.parse(cropped)
        root = tree.getroot()
        x, y, w, h = [float(v) for v in root.attrib["viewBox"].split()]
        pad = min(w, h) * padding
        root.set("viewBox", f"{x-pad:.6f} {y-pad:.6f} {w+2*pad:.6f} {h+2*pad:.6f}")
        root.attrib.pop("width", None)
        root.attrib.pop("height", None)
        target.parent.mkdir(parents=True, exist_ok=True)
        tree.write(target, encoding="unicode", xml_declaration=True)


def crop_reference(source: Path, target: Path, fraction: list[float], padding: float = 0.025) -> None:
    tree = ET.parse(source)
    root = tree.getroot()
    x, y, w, h = [float(v) for v in root.attrib["viewBox"].split()]
    fx, fy, fw, fh = fraction
    cx, cy, cw, ch = x + w * fx, y + h * fy, w * fw, h * fh
    pad = min(cw, ch) * padding
    root.set("viewBox", f"{cx-pad:.6f} {cy-pad:.6f} {cw+2*pad:.6f} {ch+2*pad:.6f}")
    root.attrib.pop("width", None)
    root.attrib.pop("height", None)
    target.parent.mkdir(parents=True, exist_ok=True)
    tree.write(target, encoding="unicode", xml_declaration=True)


def build_clear_space_diagram(source: Path, target: Path, diagram: dict) -> None:
    tree = ET.parse(source)
    source_root = tree.getroot()
    namespace = "http://www.w3.org/2000/svg"
    ET.register_namespace("", namespace)

    def tag(name: str) -> str:
        return f"{{{namespace}}}{name}"

    highlight = diagram["highlight"]
    matches = [
        element
        for element in source_root.iter()
        if element.attrib.get(highlight["attribute"]) == highlight["value"]
    ]
    if len(matches) != 1:
        raise ValueError(
            "Expected exactly one clear-space reference glyph, "
            f"found {len(matches)} for {highlight['attribute']}={highlight['value']!r}"
        )

    _, _, marker_width, marker_height = [float(v) for v in diagram["marker_bbox"]]
    unit = marker_height
    contacts = {
        side: tuple(float(value) for value in point)
        for side, point in diagram["contacts"].items()
    }

    left_x = contacts["left"][0] - unit
    right_x = contacts["right"][0] + unit
    top_y = contacts["top"][1] - unit
    bottom_y = contacts["bottom"][1] + unit
    canvas_width = right_x - left_x
    canvas_height = bottom_y - top_y

    root = ET.Element(
        tag("svg"),
        {
            "viewBox": f"{left_x:.6f} {top_y:.6f} {canvas_width:.6f} {canvas_height:.6f}",
            "role": "img",
            "aria-label": "LibreSign clear-space construction",
        },
    )
    title = ET.SubElement(root, tag("title"))
    title.text = "LibreSign clear-space construction"

    ET.SubElement(
        root,
        tag("rect"),
        {
            "x": f"{left_x:.6f}",
            "y": f"{top_y:.6f}",
            "width": f"{canvas_width:.6f}",
            "height": f"{canvas_height:.6f}",
            "fill": "#ffffff",
        },
    )
    ET.SubElement(
        root,
        tag("rect"),
        {
            "x": f"{left_x:.6f}",
            "y": f"{top_y:.6f}",
            "width": f"{canvas_width:.6f}",
            "height": f"{canvas_height:.6f}",
            "fill": "none",
            "stroke": diagram.get("boundary_color", "#c2ccc8"),
            "stroke-width": "2",
            "stroke-dasharray": "10 9",
        },
    )

    # The canonical logo remains the geometry source. Only the final E is
    # recolored in this technical derivative to identify the reference glyph.
    logo_group = ET.SubElement(root, tag("g"))
    for child in source_root:
        cloned = copy.deepcopy(child)
        if cloned.attrib.get(highlight["attribute"]) == highlight["value"]:
            cloned.set("fill", highlight["color"])
        logo_group.append(cloned)

    marker_source = matches[0]
    marker_color = diagram.get("marker_color", "#c2ccc8")

    def add_marker(transform: str) -> None:
        marker = copy.deepcopy(marker_source)
        marker.attrib.pop("transform", None)
        marker.set("fill", marker_color)
        group = ET.SubElement(root, tag("g"), {"transform": transform})
        group.append(marker)

    # Each E spans exactly one clear-space unit and touches the actual artwork
    # at a brand-specific contact point instead of being centered on the box.
    top_x, top_contact_y = contacts["top"]
    add_marker(
        f"translate({top_x - marker_width / 2:.6f} "
        f"{top_contact_y - marker_height:.6f})"
    )

    bottom_x, bottom_contact_y = contacts["bottom"]
    add_marker(
        f"translate({bottom_x - marker_width / 2:.6f} "
        f"{bottom_contact_y:.6f})"
    )

    left_contact_x, left_y = contacts["left"]
    add_marker(
        f"translate({left_contact_x - marker_height:.6f} "
        f"{left_y + marker_width / 2:.6f}) rotate(-90)"
    )

    right_contact_x, right_y = contacts["right"]
    add_marker(
        f"translate({right_contact_x + marker_height:.6f} "
        f"{right_y - marker_width / 2:.6f}) rotate(90)"
    )

    target.parent.mkdir(parents=True, exist_ok=True)
    ET.ElementTree(root).write(target, encoding="unicode", xml_declaration=True)


def export(svg: Path, out_dir: Path, png_widths: list[int]) -> None:
    stem = svg.stem
    run("inkscape", str(svg), "--export-area-page", "--export-type=pdf", f"--export-filename={out_dir / (stem + '.pdf')}")
    for width in png_widths:
        run(
            "inkscape",
            str(svg),
            "--export-area-page",
            "--export-type=png",
            f"--export-width={width}",
            f"--export-filename={out_dir / (stem + '-' + str(width) + '.png')}",
        )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--spec", default="source/artwork/brand-assets.json")
    parser.add_argument("--output", default="build/assets")
    args = parser.parse_args()

    spec = json.loads((ROOT / args.spec).read_text(encoding="utf-8"))
    out_dir = ROOT / args.output
    shutil.rmtree(out_dir, ignore_errors=True)
    out_dir.mkdir(parents=True, exist_ok=True)

    master = ROOT / spec["master"]
    master_text = master.read_text(encoding="utf-8")
    variants: dict[str, Path] = {}

    with tempfile.TemporaryDirectory() as tmp:
        tmp = Path(tmp)
        for name, variant in spec["variants"].items():
            staged = tmp / f"{name}.svg"
            staged.write_text(recolor(master_text, variant.get("colors", {})), encoding="utf-8")
            target = out_dir / f"{spec['slug']}-logo-{name}.svg"
            normalize_svg(staged, target, spec["normalization"]["padding_ratio"])
            variants[name] = target
            export(target, out_dir, spec["exports"]["png_widths"])

        marker = spec.get("clear_space", {}).get("marker")
        if marker:
            marker_target = out_dir / marker["filename"]
            crop_reference(
                variants[marker["variant"]],
                marker_target,
                marker["fraction"],
                marker.get("padding", 0.025),
            )
            marker_colors = marker.get("colors", {})
            if marker_colors:
                marker_target.write_text(
                    recolor(marker_target.read_text(encoding="utf-8"), marker_colors),
                    encoding="utf-8",
                )
            export(marker_target, out_dir, [512])

        diagram = spec.get("clear_space", {}).get("diagram")
        if diagram:
            diagram_target = out_dir / diagram["filename"]
            build_clear_space_diagram(master, diagram_target, diagram)
            export(diagram_target, out_dir, [512, 1024])

    primary = variants["primary"]
    for suffix in ("svg", "pdf"):
        source = primary.with_suffix("." + suffix)
        shutil.copyfile(source, out_dir / f"{spec['slug']}-logo.{suffix}")
    shutil.copyfile(
        out_dir / f"{spec['slug']}-logo-primary-1024.png",
        out_dir / f"{spec['slug']}-logo.png",
    )

    print(f"Generated {len(list(out_dir.iterdir()))} assets in {out_dir.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
