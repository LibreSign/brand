<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Accessibility

Brand consistency must not override accessibility.

## Digital requirements
- text/background color combinations must meet the applicable WCAG contrast target for their use;
- logos must remain legible against the chosen background;
- do not encode meaning by color alone;
- supply useful alternative text when the logo conveys identity and an empty alt when it is decorative;
- avoid rasterizing text that should remain selectable/readable;
- generated manuals should preserve document structure, links, metadata, and reading order where supported.

A brand color may be valid for illustration while being inappropriate for small text.

## Generated PDF manual

The generated brand manual targets **PDF/UA-1** and must remain usable both visually and with assistive technology.

Required practices:

- use Typst semantic elements for the document title, headings, lists, links, and other structured content;
- keep heading levels sequential so assistive technologies can navigate the document hierarchy;
- provide a linked table of contents for major sections;
- expose document headings as PDF bookmarks so readers can navigate from the viewer's outline panel;
- provide meaningful alternative text for non-decorative images;
- mark decorative content as artifacts when it would otherwise create noise for assistive technologies;
- preserve a logical reading and keyboard focus order;
- use descriptive link text whose purpose is understandable from the text or its immediate context;
- preserve selectable text, document language, metadata, links, and reading order;
- validate the generated file against PDF/UA-1 with an independent validator in CI.

Automated PDF/UA validation covers machine-testable requirements only. A release candidate still requires human review of reading order, alternative text quality, link purpose, visual contrast, zoom/reflow usability, and whether information remains understandable without relying on color or layout alone.
