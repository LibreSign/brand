<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Brand manual

`main.typ` is the canonical manual source. The PDF is generated.

The manual does **not** consume editable artwork directly. It consumes deterministic derivatives from `build/assets/`, generated from the single canonical SVG and `brand-assets.json`.

## Requirements

- Typst 0.15.1
- Python 3
- Inkscape CLI
- the fonts vendored under `source/fonts/`

## Local build

```bash
rm -rf build
python scripts/build_assets.py --output build/assets
typst compile \
  --root . \
  --font-path source/fonts \
  --pdf-standard ua-1 \
  manual/main.typ \
  build/brand-manual.pdf
```

The same asset generator is used by local builds, CI, the continuous `latest` release, and versioned releases.

## Typst source quality

Keep Typst code formatted with [Typstyle](https://github.com/typstyle-rs/typstyle).

CI runs Typstyle through the versioned `typstyle-rs/typstyle-action` GitHub Action. The action reference is pinned to an immutable commit SHA and is updated by Dependabot together with the other GitHub Actions dependencies.

The Typst compiler itself is different: the manual build intentionally pins an exact compiler version. Dependabot updates GitHub Action references, but it does not update arbitrary action inputs such as `typst-version`. Keeping the compiler exact is deliberate so the same source commit can be rebuilt with the same Typst release instead of silently changing PDF output when a new compiler is published.

Check formatting locally:

```bash
typstyle --check --line-width 120 manual
```

Apply formatting:

```bash
typstyle --inplace --line-width 120 manual
```

For editor diagnostics, Tinymist is the recommended language server. Enable its Typst linter and use Typstyle as the formatter. Tinymist linting complements the compiler: compilation remains the authoritative check that the complete manual can be evaluated and rendered.

### Maintenance conventions

- use two-space indentation and kebab-case for Typst variables and functions;
- keep document content in `main.typ`, reusable layout functions in `components.typ`, and brand tokens in `theme.typ`;
- prefer `set` rules for element defaults and `show` rules only when an element needs structural transformation;
- avoid brand-specific dead code and unused exports in shared component files;
- keep source-derived technical diagrams outside Typst when geometry must remain authoritative; Typst should compose and scale those generated vectors;
- do not add a Typst package dependency when a small local function is sufficient.
