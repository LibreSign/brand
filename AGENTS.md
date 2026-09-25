<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Working on the LibreSign brand repository

This file is a short operational guide for humans and automated contributors. It explains how to start, where decisions belong, and how to avoid damaging the brand system.

It is **not** the brand manual and must not duplicate detailed normative documentation.

## Start here

Before changing anything:

1. read `README.md`;
2. read `GOVERNANCE.md`;
3. read the relevant file under `guidelines/`;
4. for manual work, read `manual/README.md`;
5. for architecture questions, read `docs/brand-system-architecture.md` and the ADRs under `docs/decisions/`;
6. inspect open issues, pull requests, and CI before assuming work is still pending.

The current reviewed repository is the source of truth.

Do not restore historical design-tool files, screenshots, slide decks, copied assets, or external archives as parallel sources of truth.

## Source hierarchy

Use this order when deciding what is authoritative:

1. reviewed canonical source and guidelines in this repository;
2. generated artifacts produced from this repository;
3. the public guide at `https://libresign.coop/brand`.

If two repository documents disagree, do not guess. Open or update an issue and resolve the conflict in the canonical source.

## Repository roles

- `source/artwork/` — canonical editable logo source and asset contract;
- `guidelines/` — normative brand rules;
- `manual/main.typ` — manual content;
- `manual/components.typ` — reusable Typst layout components;
- `manual/theme.typ` — brand tokens used by the manual;
- `scripts/` — deterministic asset generation and quality checks;
- `docs/` — architecture, ADRs, references, registration records, and implementation rationale;
- `TRADEMARKS.md` — trademark usage policy;
- `LICENSE`, `LICENSES/`, `REUSE.toml`, and per-file SPDX metadata — licensing.

Put durable explanations in the appropriate documentation file, not in this file.

## Decision rules

### Brand rules

Changes to official naming, logo geometry, logo colors, minimum clear space, trademark rules, or canonical artwork are normative changes. They require maintainer review and supporting evidence.

Do not infer new brand rules from visual preference.

Do not copy rules from another brand, including LibreCode, unless they are independently valid for LibreSign.

### Artwork

Edit canonical SVG/source configuration, then regenerate derivatives.

Do not manually edit generated PNG/PDF/SVG derivatives as the source of a change.

Technical geometry that must match the logo, such as the clear-space diagram, is derived deterministically outside Typst. Typst should only compose and scale the finished technical vector.

### Manual content

Prefer plain international English:

- common words;
- short sentences where practical;
- explain necessary specialist terms;
- avoid idioms and marketing clichés;
- keep factual, legal, and brand claims distinguishable.

Do not expand the manual into photography, illustration, motion, campaign templates, sub-brands, or other systems unless approved source material exists.

### Typst

Follow `manual/README.md`.

In particular:

- keep content in `main.typ`;
- keep reusable layout code in `components.typ`;
- keep tokens in `theme.typ`;
- use two-space indentation and kebab-case;
- use named fields instead of positional magic indexes;
- prefer `set` for defaults and `show` for structural transformations;
- avoid dead cross-brand code;
- do not add a package when a small local function is sufficient.

Run Typstyle before submitting changes.

The Typst compiler version is intentionally exact for reproducible PDF output. Do not change it to `latest` or a floating range. Compiler upgrades are deliberate maintenance changes and require rebuilding and reviewing the PDF.

### Accessibility

PDF accessibility is part of the build contract, not an optional finishing step.

Preserve:

- PDF/UA-1 output;
- semantic headings;
- linked table of contents;
- bookmarks;
- page-top destinations;
- meaningful alt text;
- decorative artifacts;
- correct language metadata;
- reading order.

veraPDF passing is necessary but not sufficient. Visual and subjective accessibility review still matters.

### GitHub Actions and dependencies

Third-party Actions must be pinned to full immutable commit SHAs, with the human-readable release version in a comment.

Dependabot manages GitHub Action references. Do not replace pinned Actions with floating tags.

The exact Typst compiler input is intentionally outside Dependabot automation.

Prefer maintained Actions for auxiliary CI tools when this lets Dependabot manage updates and does not weaken reproducibility.

### Licensing and trademarks

This repository is multi-license:

- documentation and official artwork: CC BY-SA 4.0;
- automation/build code: AGPL-3.0-or-later;
- fonts: upstream licenses;
- trademark rights: separate.

Preserve SPDX/REUSE metadata.

Do not treat copyright licensing as trademark permission.

Registration facts belong in `docs/registrations.md`; usage rules belong in `TRADEMARKS.md`.

Do not publish unnecessary personal, payment, or administrative identifiers from legal records.

## Common workflows

### Update text in the manual

1. confirm the underlying rule in `guidelines/` or other canonical documentation;
2. update the rule first if the normative meaning changes;
3. update `manual/main.typ`;
4. format Typst;
5. build the manual;
6. inspect the changed pages visually;
7. run CI.

A purely editorial clarification that does not change a brand rule may update the manual directly, but it must not contradict the normative guidelines.

### Change artwork or generated assets

1. change canonical source/configuration;
2. run the asset generator;
3. run brand quality checks;
4. rebuild the manual;
5. review derivatives and PDF output;
6. submit the canonical change, not ad-hoc generated edits.

### Build locally

Use the commands documented in `manual/README.md`.

The expected pipeline is:

`canonical SVG -> generated assets/technical diagrams -> Typst -> PDF/UA-1 -> validation`

### Prepare a release

The repository has two release concepts:

- `latest` — mutable development/homologation build from `main`;
- `vX.Y.Z` — immutable approved release.

Do not create a stable release merely because the current manual is usable.

Before a stable release:

1. confirm external homologation/approval is complete;
2. merge accepted feedback;
3. ensure required CI checks pass;
4. inspect the generated PDF and release assets;
5. update the changelog in a release-preparation pull request;
6. create the version tag only after explicit approval.

## Contribution hygiene

Use small, reviewable pull requests.

Every human-authored commit must carry a DCO sign-off:

```bash
git commit -s
```

For commits created on behalf of Vitor Mattos in the maintained workflow, use:

```text
Signed-off-by: Vitor Mattos <vitor@php.rio>
```

Do not bypass failing quality, REUSE, formatting, manual-build, or accessibility checks to merge a change.

## When unsure

Prefer preserving the current reviewed behavior over inventing a new rule.

Record durable brand decisions in `guidelines/`, architectural decisions in `docs/` or an ADR, contributor process in `CONTRIBUTING.md`, and operational manual-build instructions in `manual/README.md`.

Use this file only as the map for finding and applying those rules.
