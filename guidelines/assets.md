<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Asset conventions

## Directory roles
- `source/`: preferred editable/canonical source.
- `assets/`: approved exports for consumption.
- `archive/`: superseded/historical material, never the default source.
- `examples/`: usage examples, not canonical artwork.

## Filenames
Use semantic, stable names such as `libresign-logo.svg`, `libresign-logo-monochrome.svg`, `libresign-logomark.svg`, or `libresign-logo-horizontal.png`.

Avoid `final`, `new`, dates, arbitrary sequence numbers, or design-tool export suffixes when they do not communicate a semantic variant. Git history and releases provide version history.

## Formats
- **SVG:** preferred digital/scalable artwork.
- **PNG:** presentations, social media, and general raster use.
- **PDF:** professional print/interchange when useful.
- **EPS:** only if a real print/vendor workflow requires it.

Every export should have documented purpose and provenance.

## Approved logo variants

The generated asset set currently includes:

- **primary:** default full-color logo for light, quiet backgrounds;
- **reversed:** white logo for dark or saturated backgrounds;
- **monochrome:** black one-color logo for constrained reproduction.

There is currently no separately published standalone LibreSign icon/logomark. Do not crop the full logo, extract part of the canonical SVG, or publish an improvised icon as an official asset.

## Choosing a format

- **SVG:** preferred for web, interfaces, responsive layouts, and scalable digital use.
- **PNG:** use where raster-only workflows require it, including many presentation and social-media tools.
- **PDF:** use for professional print/interchange and design workflows that support vector PDF.
- **EPS:** create only when a specific production workflow genuinely requires it.

Prefer a current released or CI-generated derivative from the canonical repository over a copied asset from a slide deck, screenshot, website cache, or search result.
