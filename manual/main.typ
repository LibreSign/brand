// SPDX-FileCopyrightText: 2026 LibreSign contributors
// SPDX-License-Identifier: CC-BY-SA-4.0

#import "theme.typ": theme
#import "components.typ": cover, toc-page, section-page, manual-page, logo-stage, swatch, specimen, libresign-clear-space, librecode-clear-space, rule-pair, statement, back-cover

#set document(
  title: "LibreSign Brand Manual",
  author: "LibreSign contributors",
)
#set text(font: theme.body-font, lang: "en", size: 10.5pt, fill: theme.ink)
#set par(leading: 0.72em, spacing: 0.7em, justify: false)
#set list(indent: 0pt, body-indent: 1.2em)
#cover(
  theme,
  [LibreSign Brand Manual],
  [Freedom and control for electronic signing],
  "../build/assets/libresign-logo-reversed.svg",
  "Official reversed LibreSign logo",
)

#toc-page(
  theme,
  [Brand system],
  (
    ("01", "Foundations", "Purpose, positioning, freedom, culture, messaging, and voice", "section-foundations"),
    ("02", "Logo", "Canonical artwork, approved variants, composition, and integrity", "section-logo"),
    ("03", "Visual system", "Logo color, digital palette, typography, clear space, and scale", "section-visual-system"),
    ("04", "Usage", "Applications, co-branding, misuse, and accessibility", "section-usage"),
    ("05", "Governance", "Licensing, trademark, and canonical source", "section-governance"),
  ),
)

#section-page(
  theme,
  [01],
  [Foundations],
  [The brand starts with its name and the idea of freedom expressed by "Libre".],
  "section-foundations",
)

#manual-page(theme, [Foundations], [How to use this manual])[
  This manual is the normative reference for people creating or publishing official LibreSign material, including contributors, partners, service providers, designers, developers, speakers, and documentation authors.

  #v(6mm)
  #statement(theme, [
    Use the canonical assets and rules in this repository rather than recreating the identity from screenshots, old exports, or memory.
  ])
  #v(5mm)

  The manual defines the current name, positioning, logo, approved variants, color, typography, voice, messaging, clear space, minimum size, usage, accessibility, and governance rules.

  This version intentionally does not define a canonical photography, illustration, motion, or campaign-template system. Supporting creative work may evolve, but it must not be presented as an official visual system until it is versioned here.

  Product-interface details may evolve in the consuming design system. When a brand treatment conflicts with accessibility, legal requirements, or trademark rules, those requirements take precedence.
]

#manual-page(theme, [Foundations], [Official name and meaning])[
  Always write *LibreSign* with uppercase L and S and no space.

  Avoid Libresign, Libre Sign, and libreSign.

  #v(6mm)
  #statement(theme, [
    *Libre* means freedom to operate signing infrastructure, retain control of documents and data, inspect and adapt the software, integrate it, and choose how it is maintained.
  ])
  #v(5mm)

  For organizations, this connects open source to infrastructure choice, interoperability, continuity, auditability, and reduced dependency on a single proprietary service.

  Libre does not simply mean "free of charge".
]

#manual-page(theme, [Foundations], [What LibreSign stands for])[
  LibreSign exists so electronic signing infrastructure can strengthen *autonomy* rather than create unnecessary dependency.

  #v(6mm)
  #statement(theme, [
    Freedom is practical: understand the system, operate it on your terms, integrate it, adapt it, and preserve continuity over time.
  ])
  #v(5mm)

  The brand is built around four principles:

  - *freedom* — users and organizations retain meaningful control over their computing and data;
  - *trust through verifiability* — communicate what can be inspected, audited, configured, or evidenced instead of asking for blind trust;
  - *interoperability over lock-in* — favor integration, portability, standards, and infrastructure choice;
  - *continuity* — design and communicate for long-term operation, maintainability, and independence from a single provider.

  These principles should be visible not only in the software, but also in documentation, support, partnerships, presentations, and product communication.
]

#manual-page(theme, [Foundations], [Audience and positioning])[
  LibreSign is for people and organizations that need electronic signing without surrendering control of infrastructure, data, integration, or long-term operation.

  #v(6mm)
  #statement(theme, [
    *Positioning:* LibreSign is a free-software electronic-signing platform for organizations that value autonomy, verifiability, interoperability, and continuity.
  ])
  #v(5mm)

  Primary audiences include:

  - organizations operating their own infrastructure or requiring deployment choice;
  - teams integrating electronic signing into existing systems and workflows;
  - organizations that need inspectable, adaptable software and durable access to their signing infrastructure.

  Secondary audiences include contributors, integrators, service providers, public institutions, researchers, and communities evaluating or extending free-software signing technology.

  The brand should welcome different levels of technical expertise. Explain the benefit before the implementation detail, then provide evidence and technical depth for readers who need it.
]

#manual-page(theme, [Foundations], [Free software is part of the identity])[
  LibreSign is free software. Its own source code is distributed under *AGPL-3.0-or-later*, and the word *Libre* refers to freedom rather than price.

  #v(5mm)
  In practical terms, free software protects the user's ability, subject to the license, to:

  - run the software for any purpose;
  - study how it works and adapt it;
  - share copies;
  - share modified versions so others can benefit.

  #v(5mm)
  #statement(theme, [
    The brand must never reduce "Libre" to "free of charge". Professional services, paid support, hosting, integration, and sustainable economic activity are compatible with software freedom.
  ])
  #v(5mm)

  Communication should make freedom understandable through concrete consequences: source availability, self-hosting, auditability, adaptability, interoperability, and choice.
]

#manual-page(theme, [Foundations], [Cooperative stewardship and community])[
  LibreSign is developed and maintained by *LibreCode Cooperativa* together with contributors. The cooperative model is part of the project's cultural context, but LibreSign remains open to participation beyond cooperative membership.

  #v(5mm)
  Cooperative stewardship should be reflected through:

  - shared responsibility and long-term care for the project;
  - democratic participation within the cooperative;
  - education and knowledge sharing;
  - cooperation with other people, communities, and organizations;
  - concern for the wider community and the public value created by free software.

  #v(5mm)
  External contributors do not need to become cooperative members to participate in LibreSign. Contribution happens through the project's public processes, while participation in the cooperative's economic and governance structure follows the cooperative's own rules.

  #v(5mm)
  #statement(theme, [
    The brand should feel open enough to invite participation, precise enough to earn trust, and independent enough that no single vendor appears to be the only possible way to use LibreSign.
  ])
]

#manual-page(theme, [Foundations], [Pronunciation])[
  #grid(
    columns: (1fr, 1fr),
    gutter: 9mm,
    [
      #text(font: theme.heading-font, size: 17pt, weight: "bold", fill: theme.accent)[Libre]
      #v(2mm)
      /ˈli.bɾe/
      #v(4mm)

      Libre begins with an /i/ sound.
    ],
    [
      #text(font: theme.heading-font, size: 17pt, weight: "bold", fill: theme.accent)[LibreSign]
      #v(2mm)
      /ˈli.bɾe saɪn/
      #v(4mm)

      *Sign* keeps its English pronunciation.
    ],
  )
]

#manual-page(theme, [Foundations], [Voice and tone])[
  LibreSign should sound *trustworthy, technically precise, privacy-aware, and practical*.

  #v(6mm)
  #grid(
    columns: (1fr, 1fr),
    gutter: 8mm,
    [
      #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[Prefer]
      #v(2mm)
      - explain control, interoperability, self-hosting, and auditability concretely;
      - distinguish product capabilities from legal guarantees;
      - explain security and privacy with evidence and scope;
      - connect software freedom to operational choice, continuity, and trust.
    ],
    [
      #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.neutral)[Avoid]
      #v(2mm)
      - absolute claims such as "100% secure" or "legally valid everywhere";
      - implying that self-hosting alone guarantees compliance;
      - hostile comparisons with proprietary competitors;
      - vague sovereignty claims without explaining the mechanism.
    ],
  )

  #v(6mm)
  The tone should make people *want to participate because the project is understandable, useful, credible, and open* — not because the communication exaggerates urgency, exclusivity, or superiority.

  When choosing between spectacle and clarity, choose clarity. When choosing between a proprietary-sounding promise and an inspectable fact, choose the fact.
]

#manual-page(theme, [Foundations], [Messaging system])[
  Use a simple hierarchy so LibreSign communications stay recognizable without repeating identical copy everywhere.

  #v(5mm)
  #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[Brand promise]
  #v(1.5mm)
  *Freedom and control for electronic signing.*

  #v(5mm)
  #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[What makes the promise credible]
  #v(1.5mm)
  - free-software source that can be inspected and adapted;
  - self-hosting and infrastructure choice;
  - control of documents and operational data;
  - integration and interoperability;
  - continuity beyond a single service provider.

  #v(5mm)
  The promise is a messaging line, not part of the logo artwork. Do not build an unofficial lockup by attaching it to the mark. Adapt supporting copy to the audience and context while keeping claims specific and verifiable.
]

#section-page(
  theme,
  [02],
  [Logo],
  [Official artwork is a technical asset. Its geometry must not be redrawn or reinterpreted.],
  "section-logo",
)

#manual-page(theme, [Logo], [Primary mark])[
  #logo-stage(theme, "../build/assets/libresign-logo-primary.svg", "Official LibreSign logo")
  #v(8mm)

  The canonical master is `source/artwork/libresign-master.svg`.

  The versioned vector file is the source of truth for public derivatives and official applications.
]

#manual-page(theme, [Logo], [Approved variants and formats])[
  #grid(
    columns: (1fr, 1fr),
    gutter: 7mm,
    block(fill: white, inset: 7mm, height: 44mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-primary.svg", width: 82%, alt: "Primary full-color LibreSign logo")
      ]
    ],
    block(fill: theme.ink, inset: 7mm, height: 44mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-reversed.svg", width: 82%, alt: "Reversed white LibreSign logo")
      ]
    ],
    block(fill: white, inset: 7mm, height: 44mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-monochrome.svg", width: 82%, alt: "Monochrome black LibreSign logo")
      ]
    ],
    [
      #text(font: theme.heading-font, size: 10.5pt, weight: "bold", fill: theme.ink)[Choose the variant by context]
      #v(2mm)
      - *Primary:* default on light, quiet backgrounds.
      - *Reversed:* dark or saturated backgrounds.
      - *Monochrome:* one-color production or constrained reproduction.
    ],
  )
  #v(7mm)

  Use *SVG* for scalable digital work, *PNG* for raster workflows such as presentations and social media, and *PDF* for professional print/interchange. Prefer vector files whenever the workflow supports them.

  There is currently no separately published standalone LibreSign icon/logomark in the approved asset set. Do not crop the full logo or extract the signing gesture yourself and present it as an official icon.
]

#manual-page(theme, [Logo], [Construction and composition])[
  #grid(
    columns: (1.15fr, 0.85fr),
    gutter: 10mm,
    block(fill: white, inset: 10mm, height: 78mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-primary.svg", width: 84%, alt: "Official LibreSign logo composition")
      ]
    ],
    [
      #text(font: theme.heading-font, size: 12pt, weight: "bold", fill: theme.accent)[Icon]
      #v(2mm)
      The signing gesture is the distinctive graphic element.

      #v(7mm)
      #text(font: theme.heading-font, size: 12pt, weight: "bold", fill: theme.accent)[Wordmark]
      #v(2mm)
      The LibreSign wordmark completes the official composition and must not be redrawn independently.
    ],
  )
  #v(8mm)

  The icon/wordmark relationship is fixed in the canonical vector artwork. Use the master file rather than reconstructing the composition manually.
]

#manual-page(theme, [Logo], [Brand integrity])[
  #rule-pair(
    theme,
    [DO],
    [
      - preserve proportions and geometry;
      - use the canonical artwork;
      - maintain sufficient contrast;
      - generate derivatives from the official SVG.
    ],
    [DON'T],
    [
      - distort, rotate, or skew;
      - rearrange components;
      - add shadows, outlines, gradients, or decorative effects;
      - create a parallel "official" file.
    ],
  )
]

#section-page(
  theme,
  [03],
  [Visual system],
  [Color, typography, and space work together so the brand is recognizable before the words are read.],
  "section-visual-system",
)

#manual-page(theme, [Visual system], [Logo colors])[
  The official mark carries its own color specification. Do not reconstruct or recolor the logo from interface tokens; use the canonical vector artwork.

  #v(6mm)
  #swatch("Mark Green", "#2a936a", note: "RGB 42, 147, 106 — embedded in the canonical SVG")
  #v(5mm)
  #swatch("Wordmark Gray", "#707172", note: "RGB 112, 113, 114 — embedded in the canonical SVG")
  #v(5mm)
  #swatch("Secondary Artwork Gray", "#717273", note: "RGB 113, 114, 115 — preserved in the canonical SVG")
  #v(7mm)

  These values document the current digital artwork; they are not instructions to redraw the mark.

  No canonical Pantone or CMYK palette is currently defined. For professional print, use the official SVG/PDF artwork and a color-managed, proofed conversion appropriate to the production profile rather than publishing guessed print values.
]

#manual-page(theme, [Visual system], [Digital palette])[
  The interface palette supports the broader LibreSign digital system and is distinct from the colors embedded in the official mark.

  #v(5mm)
  #swatch("Primary Teal", "#184c4e", note: "Primary brand and interface field")
  #v(4mm)
  #swatch("Primary Hover", "#0f3739", note: "Interactive depth")
  #v(4mm)
  #swatch("Primary Dark", "#0b5f55", note: "Dark supporting teal")
  #v(4mm)
  #swatch("Secondary Cyan", "#00a3be", note: "Secondary digital accent")
  #v(4mm)
  #swatch("Light Surface", "#f7fafc", note: "Light background field")
  #v(4mm)
  #swatch("Dark Text", "#2d3748", note: "Readable text on light surfaces")
  #v(6mm)

  Semantic colors for success, warning, focus, and errors belong to the consuming design system and must be validated for accessibility in context.
]

#manual-page(theme, [Visual system], [Typography])[
  #specimen(
    theme,
    "Montserrat",
    [Display and UI],
    [LibreSign],
    size: 32pt,
  )
  #v(7mm)
  #specimen(
    theme,
    "Montserrat",
    [Body and product communication],
    [Freedom and control for electronic signing],
    size: 19pt,
  )
  #v(8mm)

  Montserrat is the current official digital typeface.

  Use weight and size to create hierarchy rather than introducing unrelated typefaces. A practical default hierarchy is *400* for body copy, *500* for labels and supporting emphasis, *600* for subheads, and *700* for major headings. Use heavier or lighter weights only when the application has a documented reason.

  Headings should remain clearly distinct from body copy, while body text must prioritize legibility at the target size and medium.

  If Montserrat is unavailable in a constrained environment, use a documented sans-serif fallback rather than substituting a visually decorative font.

  The font is distributed in the repository under SIL Open Font License 1.1 and is used directly by the manual build.
]

#manual-page(theme, [Visual system], [Clear space])[
  Clear space keeps the mark visually independent from text, borders, and other marks.

  #v(7mm)
  #libresign-clear-space(
    theme,
    "../build/assets/libresign-clear-space-diagram.svg",
    "LibreSign clear-space construction with the final E in LIBRE highlighted and four reference E glyphs touching the mark",
    [The clear-space module is the capital *E* from the LibreSign wordmark. The highlighted E identifies the source glyph. Each gray E spans one full clear-space unit from an actual edge of the mark to the dashed outer exclusion boundary.],
  )
]

#manual-page(theme, [Visual system], [Minimum size])[
  Historical dimensions are retained as the current minimum reference:

  #v(7mm)
  #grid(
    columns: (1fr, 1fr),
    gutter: 12mm,
    [
      #align(center)[
        #image("../build/assets/libresign-logo-primary.svg", width: 40mm, alt: "LibreSign complete logo")
      ]
      #v(4mm)
      #align(center)[*Complete logo* \ 7 mm / 26 px minimum]
    ],
    [
      #align(center)[
        #image("../build/assets/libresign-logo-primary.svg", width: 26mm, alt: "LibreSign logo shown at small scale")
      ]
      #v(4mm)
      #align(center)[*Small-format use* \ do not improvise an icon]
    ],
  )
  #v(8mm)

  Never reduce the complete wordmark beyond legibility. If the available space is too small, use the written name *LibreSign* or another approved treatment rather than cropping the mark. A standalone icon may be used only after an official icon asset is published.
]

#section-page(
  theme,
  [04],
  [Usage],
  [Consistency does not mean rigidity: it means the brand remains recognizable across contexts.],
  "section-usage",
)

#manual-page(theme, [Usage], [Application])[
  #grid(
    columns: (1fr, 1fr),
    gutter: 7mm,
    block(fill: white, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-primary.svg", width: 78%, alt: "Primary LibreSign logo on white")
      ]
    ],
    block(fill: theme.soft, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-primary.svg", width: 78%, alt: "Primary LibreSign logo on a light green field")
      ]
    ],
    block(fill: theme.ink, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-reversed.svg", width: 78%, alt: "Reversed LibreSign logo on a dark neutral field")
      ]
    ],
    block(fill: theme.accent, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-reversed.svg", width: 78%, alt: "Reversed LibreSign logo on the primary teal field")
      ]
    ],
  )
  #v(7mm)

  Use the primary artwork on light fields and the reversed artwork on dark or saturated fields. Always verify contrast and clear space.
]

#manual-page(theme, [Usage], [Partner, community, and third-party use])[
  LibreSign is used in an ecosystem of contributors, integrators, hosting providers, events, and partner organizations. The visual relationship must make the source of each offering clear.

  #v(5mm)
  When LibreSign appears beside another identity:

  - keep each logo intact and preserve the clear space required by both brands;
  - use spacing and layout to show two distinct identities rather than inventing a combined logo;
  - describe the relationship in text: for example, "integrates with LibreSign", "LibreSign hosting by …", or "community event about LibreSign";
  - when the material represents an independent provider or product, its own identity should remain clearly distinguishable from the LibreSign project;
  - never use size, proximity, labels, or composition to imply sponsorship, certification, partnership, or official status that does not exist.

  #v(6mm)
  #statement(theme, [
    Compatibility and participation are welcome. Visual ambiguity about who provides, operates, or endorses something is not.
  ])

  #v(5mm)
  See `TRADEMARKS.md` for the legal-use policy. This page explains visual and communication behavior; it does not replace the trademark policy.
]

#manual-page(theme, [Usage], [Correct and incorrect use])[
  Brand rules are easier to apply when the intended result and common failures are visible.

  #v(6mm)
  #rule-pair(
    theme,
    [CORRECT],
    [
      #align(center)[
        #image("../build/assets/libresign-logo-primary.svg", width: 72%, alt: "Correct unmodified LibreSign logo on white")
      ]
      #v(4mm)
      Use the canonical artwork at its original proportions and preserve clear space.
    ],
    [DON'T ROTATE],
    [
      #align(center)[
        #rotate(8deg)[
          #image("../build/assets/libresign-logo-primary.svg", width: 72%, alt: "Incorrect rotated LibreSign logo")
        ]
      ]
      #v(4mm)
      Do not rotate, skew, distort, or otherwise reinterpret the mark.
    ],
  )
  #v(7mm)
  #rule-pair(
    theme,
    [CORRECT CLEAR SPACE],
    [
      #block(fill: white, inset: 8mm)[
        #align(center)[
          #image("../build/assets/libresign-logo-primary.svg", width: 72%, alt: "LibreSign logo with generous clear space")
        ]
      ]
      #v(4mm)
      Keep surrounding text, borders, and partner marks outside the exclusion area.
    ],
    [DON'T CROWD],
    [
      #block(fill: white, inset: 1mm)[
        #grid(
          columns: (1fr, auto),
          gutter: 1mm,
          align: center + horizon,
          image("../build/assets/libresign-logo-primary.svg", width: 100%, alt: "LibreSign logo crowded by nearby text"),
          text(font: theme.heading-font, size: 9pt, weight: "bold", fill: theme.ink)[PARTNER],
        )
      ]
      #v(4mm)
      Do not place other content inside the required clear-space zone.
    ],
  )
]

#manual-page(theme, [Usage], [Accessibility])[
  For digital material, target WCAG 2.2 AA unless a stricter requirement applies.

  - normal text: at least *4.5:1* contrast against its background;
  - large text: at least *3:1*;
  - meaningful non-text UI graphics and component boundaries: at least *3:1* where WCAG requires it;
  - do not rely on color alone to communicate meaning;
  - keep textual content selectable and structured rather than rasterized;
  - preserve document language, metadata, links, alternative text, and reading order.

  #v(6mm)
  Logotypes are exempt from WCAG's text-contrast minimum, but that exception does not extend to surrounding copy, controls, diagrams, or other brand content. Always choose the approved logo variant that remains clearly legible on the intended background.

  #v(7mm)
  #statement(theme, [
    Brand consistency is never a reason to reduce accessibility.
  ])
]

#section-page(
  theme,
  [05],
  [Governance],
  [The brand is a public, versioned system: rules, artwork, and manual evolve together.],
  "section-governance",
)

#manual-page(theme, [Governance], [Project, cooperative, and brand])[
  *LibreSign* is the project and product brand. *LibreCode Cooperativa* is the cooperative that develops and maintains the project together with contributors.

  Keep those identities related but distinct:

  - do not replace the LibreSign identity with the LibreCode identity in product contexts;
  - do not imply that an independent service provider is the official LibreSign project;
  - describe compatibility, hosting, integration, or support relationships truthfully;
  - credit contributors and community work without implying legal or organizational relationships that do not exist.

  #v(6mm)
  Free-software licensing grants broad rights over the software, but those rights do not automatically grant permission to present a modified product or third-party service as the official LibreSign project. Trademark and attribution rules remain separate.
]

#manual-page(theme, [Governance], [Licensing and canonical source])[
  - documentation and official artwork: *CC BY-SA 4.0*;
  - automation: *AGPL-3.0-or-later*;
  - fonts: *SIL Open Font License 1.1*;
  - trademark: separate rules in `TRADEMARKS.md`.

  #v(8mm)
  Canonical source and editable brand rules:

  https://github.com/LibreSign/brand

  Public guide and current distribution entry point:

  https://libresign.coop/brand

  Use released or CI-generated assets from the canonical repository. Do not treat screenshots, copied files, slide decks, or search-engine results as authoritative brand sources.
]

#back-cover(
  theme,
  "../build/assets/libresign-logo-reversed.svg",
  "Official LibreSign logo",
  "https://libresign.coop/brand",
  [libresign.coop/brand],
)
