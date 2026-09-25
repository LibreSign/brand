<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Research references

This repository's architecture and governance were reviewed against current brand-system, accessibility, licensing, and FOSS trademark references.

## Brand systems and visual identity

## Brand manual literature and practice

- Wheeler, Alina; Meyerson, Rob. **Designing Brand Identity: A Comprehensive Guide to the World of Brands and Branding**, 6th ed. Wiley, 2024.
  - https://www.wiley.com/en-us/Designing+Brand+Identity%3A+A+Comprehensive+Guide+to+the+World+of+Brands+and+Branding%2C+6th+Edition-p-9781119984818
  - Relevant structure: identity systems are treated as more than a logo, including look and feel, color, typography, iconography, trial applications, content strategy, asset management, guidelines, and brand books.

- GitLab Brand Guidelines / Pajamas Design System:
  - https://design.gitlab.com/brand-introduction/
  - https://design.gitlab.com/get-started/brand-assets/
  - Relevant practice: guidelines identify their audience and combine logo, colors, typography, voice, usage guidance, official assets, and trademark context.

- IBM Design Language:
  - https://www.ibm.com/design/language/ibm-logos/8-bar/
  - https://www.ibm.com/design/language/color/
  - Relevant practice: logo construction, approved variants, clear space, scale, color specifications, background use, and explicit misuse guidance are documented separately from broader interface color systems.

- W3C Web Content Accessibility Guidelines (WCAG) 2.2:
  - https://www.w3.org/TR/WCAG22/
  - Relevant practice: normal text uses a 4.5:1 minimum contrast target, large text 3:1, and meaningful non-text UI graphics commonly require 3:1; logotypes are explicitly exempt from the text-contrast requirement, while surrounding content is not.


- Ribeiro, Rogério; Raposo, Daniel; Almendra, Rita; Neves, João Vasco. **Design Systems Applied to Visual Identities** (2026). Open-access record: https://hdl.handle.net/10400.11/10973
  - Relevant finding: contemporary design systems can evolve into Brand Visual Language Systems that connect directives, reusable modules, digital assets, and operational workflows.

## Free-software project culture and cooperative identity

- GNU Project / Free Software Foundation, **The Free Software Definition**:
  - https://www.gnu.org/philosophy/free-sw.en.html
  - Relevant principle: software freedom is defined by the user's freedoms to run, study, modify, share, and share modified versions; the issue is freedom rather than price.

- Debian Project, **Debian Social Contract**:
  - https://www.debian.org/social_contract
  - Relevant practice: a free-software project can make its values and commitments explicit as public, durable project documents; commitments include remaining free, giving back to the community, transparency about problems, and prioritizing users and free software.

- Apache Software Foundation, **Apache Product Name Usage Guide** and **Project Branding Best Practices**:
  - https://apache.org/foundation/marks/guide
  - https://www.apache.org/foundation/marks/register
  - Relevant practice: an open-source project brand represents both software and the community/process behind it; clear branding helps newcomers distinguish the project from vendor offerings, gives the community credit, and can encourage contribution.

- GNOME Foundation, **Logo and Trademarks** and project governance material:
  - https://foundation.gnome.org/trademark-and-logo/
  - https://handbook.gnome.org/governance.html
  - Relevant practice: project identity, legal stewardship, community governance, and the distinction between official project artifacts and third-party offerings should be explicit.

- Linux Foundation, **Open Source Communities and Trademarks: A Reprise**:
  - https://www.linuxfoundation.org/blog/blog/open-source-communities-and-trademarks-a-reprise
  - Relevant principle: project brands are community assets and trademark stewardship should support clear source identification and open, transparent project governance.

- International Cooperative Alliance, **Statement on the Cooperative Identity** and **Guidance Notes to the Cooperative Principles**:
  - https://ica.coop/en/cooperatives/cooperative-identity
  - https://ica.coop/en/media/library/the-guidance-notes-on-the-co-operative-principles
  - Relevant principle: cooperative identity combines jointly owned, democratically controlled enterprise with values and principles including democratic member control, education, cooperation among cooperatives, and concern for community. LibreSign's manual applies these ideas only to the extent they describe LibreCode Cooperativa's stewardship context; it does not imply that every project contributor is a cooperative member.

## Free/open-source trademarks

- Chestek, Pamela. **Trademarks**, in *Open Source Law, Policy and Practice*, 2nd ed. (Oxford University Press, 2022).
  - https://academic.oup.com/book/44727/chapter/378966672
  - Relevant finding: FOSS projects should explicitly address trademark ownership, community use, quality/source signaling, and governance rather than assuming the software license controls the mark.

- Mozilla Trademark Guidelines:
  - https://www.mozilla.org/en-US/foundation/trademarks/policy/
  - Relevant practice: open-source code rights and trademark permissions are separate.

- Mozilla Licensing Policies:
  - https://www.mozilla.org/en-US/foundation/licensing/
  - Relevant practice: openly licensed content can coexist with separately controlled trademarks.

- Open Source Initiative brand and trademark guidelines:
  - https://opensource.org/about/brand-and-trademark-guidelines

## Licensing metadata

- REUSE Specification 3.3:
  - https://reuse.software/spec-3.3/
  - Relevant practice: each tracked file should have unambiguous, machine-readable copyright and license information; REUSE.toml is preferred over deprecated DEP5 for directory-level annotations.

## PDF usability and accessibility

- W3C WAI, **Technique G64: Providing a Table of Contents**:
  - https://www.w3.org/WAI/WCAG22/Techniques/general/G64
  - Relevant practice: a table of contents should both communicate document organization and link directly to the corresponding sections.

- W3C WAI, **PDF2: Creating bookmarks in PDF documents**:
  - https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF2
  - Relevant practice: long, subdivided PDF documents should provide bookmarks as an additional navigation mechanism, benefiting users with cognitive disabilities and users navigating with assistive technology.

- W3C WAI, **PDF3: Ensuring correct tab and reading order in PDF documents**:
  - https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF3
  - Relevant practice: tagged PDF content and interactive elements must follow a logical reading and focus order.

- W3C WAI, **PDF11 / PDF13: Links in tagged PDF**:
  - https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF11
  - https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF13
  - Relevant practice: links must be structurally represented and their purpose must be understandable from link text or context.

- PDF Association, **PDF-UX: Bookmarks**:
  - https://pdfa.org/pdf-ux-bookmarks/
  - Relevant practice: bookmarks are a conventional, persistent navigation mechanism independent of the current page and should reflect a useful document hierarchy.

- Typst, **Accessibility Guide**, **Heading**, **Link**, and **PDF** documentation:
  - https://typst.app/docs/guides/accessibility/
  - https://typst.app/docs/reference/model/heading/
  - https://typst.app/docs/reference/model/link/
  - https://typst.app/docs/reference/pdf/
  - Relevant practice: preserve semantic title/heading structure, use labelled internal links, provide alternative descriptions, mark decorative artifacts appropriately, and target PDF/UA-1 for the strictest currently supported accessible PDF checks.

- veraPDF, **PDF/UA validation**:
  - https://docs.verapdf.org/validation/
  - https://docs.verapdf.org/cli/validation/
  - Relevant practice: independently validate machine-testable PDF/UA-1 requirements in automated publishing workflows, while retaining manual review for human-only accessibility checks.

## Reproducible manual publishing

- Typst PDF documentation:
  - https://typst.app/docs/reference/pdf/
- Typst Accessibility Guide:
  - https://typst.app/docs/guides/accessibility/
- LaTeX Tagged PDF Project:
  - https://tagging-project.latex-project.org/
- Pandoc User's Guide:
  - https://pandoc.org/MANUAL.html

## Decisions derived from the review

- Git is the canonical source; the website is the public presentation layer.
- A shared-drive/Nextcloud folder is workspace/archive, not canonical publication.
- Brand rules, assets, source, governance, licensing, and publishing workflow belong in the same versioned system.
- Copyright licensing and trademark permission are documented separately.
- Accessibility is part of the brand system, not a later website-only concern.
- A free-software project's brand manual should explain the project culture and stewardship model, not merely visual reproduction rules.
- The meaning of "Libre" is grounded in software freedom and should be expressed through practical user freedoms rather than price claims.
- Cooperative values may inform project stewardship and communication, but the manual must distinguish cooperative membership/governance from open project contribution.
- Official project branding must remain distinguishable from third-party services, integrations, and distributions.
- PDF is generated from open, text-based source.
- The initial manual toolchain is Typst because it combines reproducible text source, strong visual layout, open licensing, Tagged PDF, and PDF/UA-1 support.
