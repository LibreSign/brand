<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Visual identity

The historical LibreSign brand manual (2021) has now been reviewed against the archived source package.

## Logo system

The manual defines:
- a primary LibreSign logo composed of icon + wordmark;
- a separate icon for small formats;
- bicolor and monochrome applications;
- positive/negative applications on light, dark, green, and gray backgrounds.

The current website PNG `logo-libresign-large.png` is byte-for-byte identical to the archived approved PNG, confirming continuity between the historical package and the current site asset.

## Institutional colors

### Primary
- Gray: `#49494a`
- Green: `#2b936b`

### Supporting / secondary
- Dark gray: `#49494a`
- Off-white: `#f5f5f5`
- Light gray: `#c2ccc8`
- Dark teal: `#184c4e`
- Light green: `#cafbc4`
- Very light green: `#e8f7e7`
- Coral: `#f17b64`

The historical manual also includes CMYK approximations. Those values should be preserved in the migrated manual, but digital guidance should treat the hexadecimal values as the primary screen reference.

## Typography

The historical manual specifies **Catamaran** as the supporting type family, illustrated across multiple weights.

Before bundling fonts in this repository, use an upstream redistributable source and preserve the font's own license rather than applying the repository's CC BY-SA license to the font files.

## Clear space

The historical manual defines an exclusion area around the logo based on a repeated internal reference unit shown as **E**. The new manual should redraw this construction clearly rather than raster-copying the old diagram.

## Minimum size

Historical minimums:
- complete logo: **7 mm / 26 px**
- preferred small-format icon: **5 mm / 19 px**

The manual explicitly discourages using the full wordmark in configurations that become illegible at small sizes.

## Asset provenance

The archived package contains:
- `logo_libresign.svg`
- `logo_libresign.eps`
- PDF logo exports
- monochrome and color PNGs
- small-format icon variants

The files `Logo/logo-libresign-large.png` and `bitmap/logo_libresign.png` are exact duplicates (same SHA-256) and should become one canonical approved asset with aliases removed.

## Migration rule

Do not copy the old manual page-for-page. Recreate the rules in structured source, preserving validated geometry, colors, typography, clear space, minimum sizes, and permitted variants while improving accessibility and explaining intended use.
