<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Brand manual editorial contract

The LibreCode and LibreSign manuals share the same editorial architecture.

## Required sequence

1. Cover
2. Contents
3. Foundations
   - purpose and audience
   - official name
   - meaning of Libre
   - brand promise and principles
   - audience and positioning
   - free-software culture
   - stewardship/community context
   - pronunciation
   - voice and tone
   - messaging hierarchy
4. Logo
   - canonical artwork
   - approved variants and formats
   - composition
5. Visual system
   - colors
   - typography
   - clear space
   - minimum size
6. Usage
   - background/application guidance
   - partner/community/third-party use
   - correct use
   - incorrect use
7. Accessibility
8. Project/organization relationship, licensing, trademark, and canonical source
9. Back cover

## Shared visual grammar

Both manuals use:
- A4 portrait format;
- one primary idea per page;
- generous negative space;
- full-page section openers;
- a shared type scale and spacing rhythm;
- canonical logo artwork as the primary visual object;
- large color fields and swatches;
- technical diagrams drawn from reproducible source;
- the same information hierarchy and page logic.

## Brand-specific expression

The manuals are not culturally interchangeable. They share an editorial system, but each manual must explain the specific project's purpose, values, stewardship model, community context, and relationship to its legal/organizational home.

The manuals are not visually identical. Each theme controls:
- core colors;
- official typefaces;
- logo;
- decorative motif;
- contrast treatment;
- cover and section-field expression.

## Dependency rule

The editorial engine is maintained in `manual/components.typ`.
Brand tokens live in `manual/theme.typ`.
Content lives in `manual/main.typ`.

Third-party Typst packages may be added only when they provide a concrete capability that is materially better than the standard library, with an exact version and compatible open-source license.

See `docs/decisions/0002-typst-dependencies.md`.

## Scope discipline

Do not invent a visual subsystem merely to make a manual look comprehensive. Photography, illustration, iconography, motion, social templates, campaign systems, sub-brands, or standalone logo marks become normative only when the project has approved source assets and repeatable rules for them.

When a subsystem is not defined, say so explicitly and keep experimental creative work outside the canonical brand contract until it is reviewed and versioned.
