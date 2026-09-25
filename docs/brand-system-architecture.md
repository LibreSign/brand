<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Brand system architecture

This repository defines the current LibreSign brand system.

## Components

- naming and pronunciation;
- brand story, audience, messaging, and voice;
- canonical artwork;
- color and typography rules;
- accessibility;
- digital design-system contract;
- trademark policy;
- reproducible manual source;
- automated asset generation;
- SPDX/REUSE compliance.

## Asset model

`source/artwork/` contains the only editable logo source and its machine-readable asset contract. CI produces public derivatives in temporary build output and release artifacts.

Correct/incorrect-use examples are maintained directly in the generated manual because they are normative guidance, not a second set of editable artwork files.

## Licensing

- documentation and official artwork: CC BY-SA 4.0;
- automation/build code: AGPL-3.0-or-later;
- third-party fonts: upstream license;
- trademark permission: separate from copyright licensing.

## Publication

Git repository → generated assets/manual → public website/releases.

## Migration boundary

The repository replaces the previous proprietary/manual workflow as the source of truth. Historical or design-tool files may be kept outside the canonical system for archival reference, but they must not override the reviewed files in this repository.
