<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# LibreSign brand

Canonical, version-controlled source for the LibreSign brand system.

This repository contains current brand guidelines, approved assets, editable source material, licensing metadata, and the source used to generate distributable brand documentation.

## Source of truth

This repository is the canonical source for the LibreSign brand. Files kept in shared drives or Nextcloud folders are working material or historical archives unless explicitly stated otherwise.

The public, human-facing guidelines are published at <https://libresign.coop/brand>.

## Brand idea

**Libre** means freedom. For LibreSign, that means freedom to operate signing infrastructure, retain control over documents and data, inspect and adapt the software, integrate it with existing systems, and avoid unnecessary dependency on a single proprietary provider.

## Repository layout

- `guidelines/` — naming, pronunciation, visual identity, voice, accessibility, and usage guidance.
- `source/` — editable canonical artwork and manual sources.
- `assets/` — approved exports intended for public reuse.
- `examples/` — examples of correct and incorrect brand use.
- `manual/` — reproducible source for the generated brand manual.
- `archive/` — historical material retained for provenance; not current guidance.
- `LICENSES/` and `REUSE.toml` — machine-readable licensing metadata.

## Licensing and trademarks

Documentation and brand artwork are intended to be openly licensed under **CC BY-SA 4.0**, unless a file states otherwise. Build scripts and automation are licensed under **AGPL-3.0-or-later**.

Copyright licensing does **not** grant permission to use LibreSign names or logos in a way that creates confusion about origin, affiliation, sponsorship, or endorsement. See `TRADEMARKS.md`.

This repository follows the REUSE Specification and SPDX identifiers.

## Manual

The current closed-format manual is being migrated to reproducible, text-based source using Typst. PDF is a generated distribution artifact rather than the source of truth. See `docs/decisions/0001-manual-toolchain.md`.

## Contributing

Changes to brand rules and canonical assets should be reviewed through pull requests. Avoid introducing exported files without documenting their source and intended use.
