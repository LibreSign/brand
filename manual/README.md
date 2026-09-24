<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Reproducible brand manual

The generated PDF manual is a distribution artifact. Canonical content lives in version-controlled source.

Issue #3 tracks the manual migration. Typst is the accepted initial toolchain; see `../docs/decisions/0001-manual-toolchain.md`.

## Requirements
The chosen stack must provide open, reviewable source; deterministic local/CI builds; high-quality typography and layout; practical vector/raster support; link and metadata support; reasonable accessibility; font-license compliance; and maintainability.

Typst is the primary publishing toolchain. LaTeX and Pandoc remain documented alternatives if a migration blocker is discovered.
