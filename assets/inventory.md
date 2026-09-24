<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Asset inventory

Status legend: **approved-current**, **canonical-candidate**, **duplicate**, **needs-review**, **historical**.

## Current website

| Current path | Proposed canonical role | Status | Notes |
|---|---|---|---|
| `source/assets/images/logo/logo.svg` | canonical SVG candidate | approved-current | Current scalable logo used by the site. |
| `source/assets/images/logo/logo-2.svg` | compare with canonical SVG | needs-review | Ambiguous filename; do not migrate under this name. |
| `source/assets/images/logo/logo-libresign-large.png` | `assets/logo/png/libresign-logo.png` | approved-current | Git blob is exactly identical to the archived approved PNG. |
| `source/assets/images/logo/logo_libresign-small.png` | small-format derivative | needs-review | Compare with the manual's preferred small-format icon. |
| `source/assets/images/logo/Avatar-LibreSign.png` | avatar/social derivative | needs-review | Verify against historical icon variants. |
| `source/assets/images/logo/clients/` | third-party material | historical | Client trademarks are not LibreSign brand assets. |

## Historical brand package reviewed

### Vector / print candidates

- `Logo/logo_libresign.svg` — canonical vector candidate; contains the complete composition and multiple legacy/editing elements.
- `Logo/logo_libresign.eps` — print/interchange candidate.
- `Logo/logo_libresign.pdf` — vector PDF export.
- `Logo/logo-libresign-large.pdf` — vector/raster export; compare geometry before keeping both.
- `Logo/logo-white.svg` — approved white/reversed variant candidate.
- `Logo/logo-green_white.svg` — green/white variant candidate.

### Raster derivatives

- `Logo/logo-libresign-large.png` — approved current PNG; exact duplicate of `bitmap/logo_libresign.png`.
- monochrome white/gray/black/green PNG variants — valid historical derivatives; regenerate from canonical vector where practical.
- icon PNG variants — preserve only semantic variants that correspond to documented use.

## Confirmed duplicate

The following two files have the same SHA-256:

- `Logo/logo-libresign-large.png`
- `bitmap/logo_libresign.png`

Only one canonical approved export should remain after migration.

## Manual

`Manual da marca/Manual_libre_sign.pdf` is a seven-page historical manual defining logo construction/use, palette, clear space, minimum dimensions, and Catamaran typography.

## Migration rule

Prefer a clean canonical vector source plus reproducibly generated derivatives. Preserve legacy files in provenance/archive only when they add information not represented by the canonical source.
