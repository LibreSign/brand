// SPDX-FileCopyrightText: 2026 LibreSign contributors
// SPDX-License-Identifier: CC-BY-SA-4.0

#set document(
  title: "LibreSign Brand Manual",
  author: "LibreSign contributors",
)
#set text(lang: "en", size: 10.5pt)
#set page(paper: "a4", margin: (x: 24mm, y: 22mm))
#set heading(numbering: "1.")

= LibreSign Brand Manual

Freedom and control for electronic signing.

This manual is generated from a version-controlled brand system. The PDF is a distribution artifact, not the source of truth.

= Official name

Always write *LibreSign* with uppercase L and S and no space.

Avoid:

- Libresign
- Libre Sign
- libreSign

= What "Libre" means

Libre means freedom: the freedom to operate signing infrastructure, retain control of documents and data, inspect and adapt the software, integrate with existing systems, and choose how the solution is operated and maintained.

For organizations, this connects open source to infrastructure choice, interoperability, continuity, auditability, and reduced dependency on a single proprietary service.

Libre does not simply mean "free of charge".

= Pronunciation

- Libre: /ˈli.bɾe/
- LibreSign: /ˈli.bɾe saɪn/

Libre begins with an /i/ sound, not the English diphthong in "lie". Sign keeps its English pronunciation.

The final phonetic specification should be validated against an approved human recording.

= Brand architecture

The system separates three layers.

== Core identity

Stable unless deliberately redesigned:

- official naming;
- logo and icon geometry;
- approved logo variants;
- clear-space construction;
- minimum-size rules;
- trademark usage.

== Historical visual identity

The 2021 manual documents:

- gray \#49494a;
- green \#2b936b;
- supporting dark teal \#184c4e;
- Catamaran typography.

These values remain authoritative for interpreting legacy artwork.

== Current digital design system

The current website uses:

- primary digital color \#184c4e;
- Montserrat as primary UI typeface;
- additional hover, surface, focus, semantic, and accessibility tokens.

This is the current web/UI layer. It does not retroactively rewrite legacy logo files.

= Color system

Historical primary identity colors:

- gray: \#49494a;
- green: \#2b936b.

Historical supporting colors include:

- \#f5f5f5;
- \#c2ccc8;
- \#184c4e;
- \#cafbc4;
- \#e8f7e7;
- \#f17b64.

Current primary digital color:

- \#184c4e.

The website defines additional semantic colors for hover, focus, success, warning, and error states. Those are interface tokens rather than logo colors.

= Logo and icon

The historical manual defines:

- a complete icon + wordmark composition;
- a separate icon for small formats;
- bicolor applications;
- monochrome applications;
- positive/negative applications for light and dark surfaces.

A canonical vector master should be used to generate public derivatives.

= Clear space

The historical manual defines an exclusion area using an internal unit shown as "E".

The new manual should redraw that construction as native vector content rather than embedding a screenshot of the old PDF.

= Minimum size

Historical minimums:

- complete logo: *7 mm / 26 px*;
- preferred small-format icon: *5 mm / 19 px*.

At small sizes, use the dedicated icon rather than forcing the full wordmark below legibility.

= Typography

== Historical/editorial

Catamaran, licensed under SIL Open Font License 1.1.

== Current digital

Montserrat is the official current web/UI typeface unless the digital design system is deliberately changed.

Font files retain their upstream licenses and do not inherit this manual's CC BY-SA license.

= Asset normalization

Historical exports contain duplicates and inconsistent filenames.

Confirmed example:

- `Logo/logo-libresign-large.png`
- `bitmap/logo_libresign.png`

These files are byte-identical and should be represented by one canonical derivative.

The public asset set should use semantic stable names and regenerate PNG/PDF derivatives from a canonical vector master where practical.

= Accessibility

Brand consistency does not override accessibility.

- text/background contrast must meet the applicable target;
- meaning must not rely on color alone;
- logo variants must remain legible against their surfaces;
- generated documents should preserve language, links, structure, and reading order;
- digital focus and semantic colors belong to the UI system and should be tested independently of logo colors.

= Provenance and privacy

Historical design archives are evidence, not automatic public content.

Raw contracts, briefs, proposals, office-document metadata, private contacts, personal identifiers, and unrelated commercial terms are not published. Only the facts needed by the brand system are retained in sanitized documentation.

= Licensing and trademarks

- documentation: CC BY-SA 4.0 unless stated otherwise;
- automation: AGPL-3.0-or-later;
- fonts: upstream licenses such as OFL-1.1;
- official artwork: LicenseRef-Brand-Asset until the complete copyright chain is verified;
- trademark rights: handled separately in TRADEMARKS.md.

#pagebreak()

= Source of truth

Canonical repository:

https://github.com/LibreSign/brand

Public guide:

https://libresign.coop/brand

Historical shared-drive copies are archive/workspace material and do not override the current repository.
