<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Canonical artwork source

Store current canonical editable artwork here.

- prefer SVG;
- strip unnecessary editor metadata;
- do not store duplicate raster exports as source;
- generate PNG/PDF derivatives in CI;
- preserve SPDX/REUSE coverage.

Third-party fonts, if vendored, must keep their upstream license.


## Approved variants

- `libresign-logo.svg` — primary green/gray artwork for light backgrounds.
- `libresign-logo-reversed.svg` — light/reversed artwork for dark teal or dark neutral backgrounds.

Use the variant appropriate to the background. Do not recolor either file manually.
