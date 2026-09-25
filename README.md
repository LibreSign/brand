<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

<p align="center">
  <img src="source/artwork/libresign-master.svg" alt="LibreSign" width="460">
</p>

# LibreSign brand

Canonical, version-controlled source for the current LibreSign brand system.

Public guide: https://libresign.coop/brand

Latest released manual: https://github.com/LibreSign/brand/releases/download/latest/libresign-brand-manual.pdf

## Contract

- This repository contains the **current** brand system.
- Canonical artwork lives under `source/artwork/`.
- PNG/PDF derivatives are generated from canonical SVG source by CI.
- Documentation and official artwork are licensed under **CC BY-SA 4.0**.
- Build scripts and automation are licensed under **AGPL-3.0-or-later**.
- Third-party fonts keep their upstream licenses.
- Trademark permission is governed separately by `TRADEMARKS.md`.

## Layout

- `guidelines/` — normative brand rules.
- `source/artwork/` — canonical editable artwork.
- `assets/` — generated-asset policy and build contract.
- `manual/` — Typst source.
- `docs/` — architecture, decisions, and references.
- `LICENSES/` and `REUSE.toml` — licensing metadata.

## Migration status

The former design-tool/manual workflow has been replaced by this open, version-controlled system.

- editable brand rules are plain text and Typst;
- the official logo source is SVG;
- public derivatives are generated reproducibly;
- the PDF manual is built as PDF/UA-1 and checked in CI;
- releases are published from the same source tree.

Do not reintroduce a separate proprietary design file as a second source of truth.
