// SPDX-FileCopyrightText: 2026 LibreSign contributors
// SPDX-License-Identifier: CC-BY-SA-4.0

#import "theme.typ": theme
#import "components.typ": (
  back-cover, cover, libresign-clear-space, logo-stage, manual-page, rule-pair, section-page, specimen, statement,
  swatch, toc-page,
)

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
  "Official white LibreSign logo",
)

#toc-page(
  theme,
  [Brand system],
  (
    (
      number: "01",
      title: "Foundations",
      summary: "Purpose, audience, freedom, culture, messaging, and voice",
      anchor: "section-foundations",
    ),
    (
      number: "02",
      title: "Logo",
      summary: "Official artwork, approved versions, composition, and use",
      anchor: "section-logo",
    ),
    (
      number: "03",
      title: "Visual system",
      summary: "Logo color, digital palette, typography, clear space, and scale",
      anchor: "section-visual-system",
    ),
    (
      number: "04",
      title: "Usage",
      summary: "Applications, partner use, misuse, and accessibility",
      anchor: "section-usage",
    ),
    (
      number: "05",
      title: "Rules and ownership",
      summary: "Licensing, trademark, and official sources",
      anchor: "section-governance",
    ),
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
  This manual is the official guide for anyone creating or publishing LibreSign material, including contributors, partners, service providers, designers, developers, speakers, and documentation writers.

  #v(6mm)
  #statement(theme, [
    Use the official files and rules in this repository. Do not recreate the brand from screenshots, old exports, or memory.
  ])
  #v(5mm)

  The manual defines the current name, audience, logo, approved versions, color, typography, voice, messaging, clear space, minimum size, usage, accessibility, and brand rules.

  This version does not yet define an official system for photography, illustration, motion, or campaign templates. Creative work may evolve, but it is not part of the official brand system until it is reviewed and added here.

  Product interface details may evolve in the design system used by the product. If a brand rule conflicts with accessibility, legal requirements, or trademark rules, those requirements come first.
]

#manual-page(theme, [Foundations], [Official name and meaning])[
  Always write *LibreSign* with uppercase L and S and no space.

  Avoid Libresign, Libre Sign, and libreSign.

  #v(6mm)
  #statement(theme, [
    *Libre* means freedom to operate signing infrastructure, retain control of documents and data, inspect and adapt the software, integrate it, and choose how it is maintained.
  ])
  #v(5mm)

  For organizations, this means more choice over infrastructure, easier integration with other systems, long-term continuity, the ability to inspect how the software works, and less dependence on one proprietary service.

  Libre does not simply mean "free of charge".
]

#manual-page(theme, [Foundations], [What LibreSign stands for])[
  LibreSign exists so electronic signing can give people and organizations more control instead of creating unnecessary dependence.

  #v(6mm)
  #statement(theme, [
    Freedom is practical: understand the system, operate it on your terms, integrate it, adapt it, and preserve continuity over time.
  ])
  #v(5mm)

  The brand is built around four principles:

  - *freedom* — users and organizations retain meaningful control over their computing and data;
  - *trust through evidence* — explain what people can inspect, audit, configure, or verify instead of asking for blind trust;
  - *works with other systems* — favor integration, portability, open standards, and infrastructure choice over dependence on one provider;
  - *long-term continuity* — design and communicate for reliable operation, maintenance, and independence from a single provider.

  These principles should be visible not only in the software, but also in documentation, support, partnerships, presentations, and product communication.
]

#manual-page(theme, [Foundations], [Who LibreSign is for])[
  LibreSign is for people and organizations that need electronic signing while keeping control of their infrastructure, data, integrations, and long-term operation.

  #v(6mm)
  #statement(theme, [
    *In one sentence:* LibreSign is a free-software electronic-signing platform for organizations that value control, transparent technology, integration with other systems, and long-term continuity.
  ])
  #v(5mm)

  Primary audiences include:

  - organizations that operate their own infrastructure or need a choice of where the software runs;
  - teams integrating electronic signing into existing systems and workflows;
  - organizations that need software they can inspect, adapt, and keep using over time.

  Secondary audiences include contributors, integrators, service providers, public institutions, researchers, and communities evaluating or extending free-software signing technology.

  The brand should welcome people with different levels of technical knowledge. Explain the benefit first. Add technical detail when the reader needs it.
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

  Communication should explain software freedom through practical results: available source code, self-hosting, the ability to inspect and adapt the software, integration with other systems, and real choice.
]

#manual-page(theme, [Foundations], [Cooperative care and community])[
  LibreSign is developed and maintained by *LibreCode Cooperativa* together with contributors. The cooperative model is part of the project's cultural context, but LibreSign remains open to participation beyond cooperative membership.

  #v(5mm)
  The cooperative model should be visible through:

  - shared responsibility and long-term care for the project;
  - democratic participation within the cooperative;
  - education and knowledge sharing;
  - cooperation with other people, communities, and organizations;
  - concern for the wider community and the public value created by free software.

  #v(5mm)
  External contributors do not need to become cooperative members to participate in LibreSign. People can contribute through the project's public processes. Participation in the cooperative's economic activity and decision-making follows the cooperative's own rules.

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
  LibreSign should sound *trustworthy, precise, aware of privacy, and practical*.

  #v(6mm)
  #grid(
    columns: (1fr, 1fr),
    gutter: 8mm,
    [
      #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[Prefer]
      #v(2mm)
      - explain control, integration with other systems, self-hosting, and what can be checked or audited;
      - distinguish product capabilities from legal guarantees;
      - explain security and privacy with evidence and scope;
      - connect software freedom to practical choice, long-term continuity, and trust.
    ],
    [
      #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.neutral)[Avoid]
      #v(2mm)
      - absolute claims such as "100% secure" or "legally valid everywhere";
      - implying that self-hosting alone guarantees compliance;
      - hostile comparisons with proprietary competitors;
      - vague claims about "sovereignty" without explaining what control the user actually has.
    ],
  )

  #v(6mm)
  The tone should make people *want to participate because the project is clear, useful, credible, and open* — not because the communication creates false urgency, exclusivity, or superiority.

  Choose clarity over impressive-sounding language. Choose facts people can check over promises that only sound good.
]

#manual-page(theme, [Foundations], [Messaging system])[
  Use a simple message structure so LibreSign communications stay consistent without repeating the same text everywhere.

  #v(5mm)
  #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[Brand promise]
  #v(1.5mm)
  *Freedom and control for electronic signing.*

  #v(5mm)
  #text(font: theme.heading-font, size: 11pt, weight: "bold", fill: theme.accent)[What supports this promise]
  #v(1.5mm)
  - free-software source that can be inspected and adapted;
  - self-hosting and infrastructure choice;
  - control of documents and operational data;
  - integration with other systems;
  - continuity beyond a single service provider.

  #v(5mm)
  The promise is a message, not part of the logo. Do not attach it to the logo as if it were an official combined mark. Adapt supporting text to the audience and context, and keep every claim specific and easy to verify.
]

#section-page(
  theme,
  [02],
  [Logo],
  [Use the official logo files as they are. Do not redraw or change their shape.],
  "section-logo",
)

#manual-page(theme, [Logo], [Primary mark])[
  #logo-stage(theme, "../build/assets/libresign-logo-primary.svg", "Official LibreSign logo")
  #v(8mm)

  The official master file is `source/artwork/libresign-master.svg`.

  This versioned vector file is the official source for exported files and public use.
]

#manual-page(theme, [Logo], [Approved logo versions and formats])[
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
        #image(
          "../build/assets/libresign-logo-reversed.svg",
          width: 82%,
          alt: "White LibreSign logo for dark backgrounds",
        )
      ]
    ],

    block(fill: white, inset: 7mm, height: 44mm)[
      #align(center + horizon)[
        #image("../build/assets/libresign-logo-monochrome.svg", width: 82%, alt: "Black one-color LibreSign logo")
      ]
    ],
    [
      #text(font: theme.heading-font, size: 10.5pt, weight: "bold", fill: theme.ink)[Choose the version by context]
      #v(2mm)
      - *Primary:* default on light, quiet backgrounds.
      - *White:* dark or strong-color backgrounds.
      - *One color:* printing or production that can use only one color.
    ],
  )
  #v(7mm)

  Use *SVG* when the logo must scale cleanly on screens or the web. Use *PNG* in tools that need a raster image, such as many presentation and social-media tools. Use *PDF* for professional print and design workflows. Prefer vector files when possible.

  There is currently no approved standalone LibreSign icon. Do not crop the full logo or extract the signing gesture and present it as an official icon.
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
      The signing gesture is the main graphic element of the logo.

      #v(7mm)
      #text(font: theme.heading-font, size: 12pt, weight: "bold", fill: theme.accent)[LibreSign name]
      #v(2mm)
      The LibreSign name is part of the official logo and must not be redrawn separately.
    ],
  )
  #v(8mm)

  The relationship between the symbol and the LibreSign name is fixed in the official vector file. Use the master file instead of rebuilding the logo by hand.
]

#manual-page(theme, [Logo], [Keep the logo consistent])[
  #rule-pair(
    theme,
    [DO],
    [
      - preserve proportions and geometry;
      - use the official artwork;
      - maintain sufficient contrast;
      - create exported files from the official SVG.
    ],
    [DON'T],
    [
      - distort, rotate, or skew;
      - rearrange components;
      - add shadows, outlines, gradients, or decorative effects;
      - create another file and present it as official.
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
  The official logo has its own colors. Do not rebuild or recolor it using product interface colors; use the official vector artwork.

  #v(6mm)
  #swatch("Mark Green", "#2a936a", note: "RGB 42, 147, 106 — embedded in the official SVG")
  #v(5mm)
  #swatch("LibreSign name Gray", "#707172", note: "RGB 112, 113, 114 — embedded in the official SVG")
  #v(5mm)
  #swatch("Secondary Artwork Gray", "#717273", note: "RGB 113, 114, 115 — preserved in the official SVG")
  #v(7mm)

  These values document the current digital artwork; they are not instructions to redraw the mark.

  There is currently no official Pantone or CMYK palette. For professional print, use the official SVG or PDF and let the print workflow convert the colors using the correct color profile. Do not publish guessed print values.
]

#manual-page(theme, [Visual system], [Digital palette])[
  The product and website can use a wider digital color palette. These colors are separate from the colors inside the official logo.

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

  Colors for success, warnings, focus, and errors belong to the product design system and must be checked for accessibility in the place where they are used.
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

  Use font weight and size to show importance instead of adding unrelated typefaces. A useful default is *400* for body text, *500* for labels and light emphasis, *600* for smaller headings, and *700* for major headings. Use other weights only when there is a clear reason.

  Headings should remain clearly distinct from body copy, while body text must prioritize legibility at the target size and medium.

  If Montserrat is unavailable because a tool or platform has limited font options, use a documented sans-serif fallback instead of a decorative font.

  The font is distributed in the repository under SIL Open Font License 1.1 and is used directly by the manual build.
]

#manual-page(theme, [Visual system], [Clear space])[
  Clear space is the empty area around the logo. It keeps text, borders, and other logos from getting too close.

  #v(7mm)
  #libresign-clear-space(
    theme,
    "../build/assets/libresign-clear-space-diagram.svg",
    "LibreSign clear-space construction with the final E in LIBRE highlighted and four reference E glyphs touching the mark",
    [The clear-space unit is the capital *E* from the LibreSign name inside the logo. The highlighted E shows which letter is used. Each gray E measures one full unit from the edge of the logo to the dashed outer boundary.],
  )
]

#manual-page(theme, [Visual system], [Minimum size])[
  These dimensions are the current minimum sizes:

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

  Never make the complete logo so small that the LibreSign name becomes hard to read. If the available space is too small, use the written name *LibreSign* or another approved treatment rather than cropping the mark. A standalone icon may be used only after an official icon asset is published.
]

#section-page(
  theme,
  [04],
  [Usage],
  [Consistency does not mean making everything identical. It means LibreSign should remain recognizable in different uses.],
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
        #image(
          "../build/assets/libresign-logo-primary.svg",
          width: 78%,
          alt: "Primary LibreSign logo on a light green field",
        )
      ]
    ],

    block(fill: theme.ink, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image(
          "../build/assets/libresign-logo-reversed.svg",
          width: 78%,
          alt: "White LibreSign logo on a dark neutral background",
        )
      ]
    ],
    block(fill: theme.accent, inset: 8mm, height: 58mm)[
      #align(center + horizon)[
        #image(
          "../build/assets/libresign-logo-reversed.svg",
          width: 78%,
          alt: "White LibreSign logo on the primary teal background",
        )
      ]
    ],
  )
  #v(7mm)

  Use the primary logo on light backgrounds and the white logo on dark or strong-color backgrounds. Always verify contrast and clear space.
]

#manual-page(theme, [Usage], [Use with partners and third parties])[
  LibreSign appears in work by contributors, integrators, hosting providers, events, and partner organizations. The design must make it clear who is providing each product or service.

  #v(5mm)
  When LibreSign appears beside another identity:

  - keep each logo intact and preserve the clear space required by both brands;
  - use spacing and layout to keep the two brands separate instead of inventing a combined logo;
  - describe the relationship in text: for example, "integrates with LibreSign", "LibreSign hosting by …", or "community event about LibreSign";
  - when the material is from an independent provider or product, make sure its own brand is clearly different from the official LibreSign project;
  - never use size, closeness, labels, or layout to suggest sponsorship, certification, partnership, or official status that does not exist.

  #v(6mm)
  #statement(theme, [
    Compatibility and participation are welcome. The design must still make it clear who provides, runs, or supports something.
  ])

  #v(5mm)
  See `TRADEMARKS.md` for the legal-use policy. This page explains how to present these relationships. It does not replace the trademark policy.
]

#manual-page(theme, [Usage], [Correct and incorrect use])[
  Brand rules are easier to follow when correct and incorrect examples are visible.

  #v(6mm)
  #rule-pair(
    theme,
    [CORRECT],
    [
      #align(center)[
        #image(
          "../build/assets/libresign-logo-primary.svg",
          width: 72%,
          alt: "Correct unmodified LibreSign logo on white",
        )
      ]
      #v(4mm)
      Use the official artwork at its original proportions and preserve clear space.
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
          #image(
            "../build/assets/libresign-logo-primary.svg",
            width: 72%,
            alt: "LibreSign logo with generous clear space",
          )
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
          image(
            "../build/assets/libresign-logo-primary.svg",
            width: 100%,
            alt: "LibreSign logo crowded by nearby text",
          ),
          text(font: theme.heading-font, size: 9pt, weight: "bold", fill: theme.ink)[PARTNER],
        )
      ]
      #v(4mm)
      Do not place other content inside the required empty space around the logo.
    ],
  )
]

#manual-page(theme, [Usage], [Accessibility])[
  For digital material, follow WCAG 2.2 AA unless a stricter accessibility rule applies.

  - normal text: at least *4.5:1* contrast against its background;
  - large text: at least *3:1*;
  - meaningful user-interface graphics and visible component boundaries: at least *3:1* where WCAG requires it;
  - do not rely on color alone to communicate meaning;
  - keep text selectable and structured instead of turning it into an image;
  - preserve document language, metadata, links, alternative text, and reading order.

  #v(6mm)
  Logos are exempt from WCAG's minimum text-contrast rule, but the exception does not apply to nearby text, controls, diagrams, or other content. Always choose the approved logo variant that remains clearly legible on the intended background.

  #v(7mm)
  #statement(theme, [
    Brand consistency is never a reason to reduce accessibility.
  ])
]

#section-page(
  theme,
  [05],
  [Rules and ownership],
  [The brand is maintained in public: the rules, artwork, and manual are versioned and updated together.],
  "section-governance",
)

#manual-page(theme, [Rules and ownership], [Project, cooperative, and brand])[
  *LibreSign* is the project and product brand. *LibreCode Cooperativa* is the cooperative that develops and maintains the project together with contributors.

  Keep these identities connected, but clearly separate:

  - do not replace the LibreSign identity with the LibreCode identity in product contexts;
  - do not imply that an independent service provider is the official LibreSign project;
  - describe compatibility, hosting, integration, or support relationships truthfully;
  - credit contributors and community work without implying legal or organizational relationships that do not exist.

  #v(6mm)
  The free-software license gives broad rights to use and modify the software. It does not automatically give permission to present a modified product or third-party service as the official LibreSign project. Trademark and credit rules are separate.

  #v(6mm)
  LibreSign is a registered trademark in Brazil under INPI process *923392807*, Nice class *42*. Trademark rights are separate from the copyright licenses that apply to the documentation, artwork, and software.
]

#manual-page(theme, [Rules and ownership], [Licensing and official sources])[
  - documentation and official artwork: *CC BY-SA 4.0*;
  - automation: *AGPL-3.0-or-later*;
  - fonts: *SIL Open Font License 1.1*;
  - trademark: separate rules in `TRADEMARKS.md`.

  #v(8mm)
  Official source files and editable brand rules:

  https://github.com/LibreSign/brand

  Public brand guide and current download entry point:

  https://libresign.coop/brand

  Use released or automatically generated assets from the official repository. Do not treat screenshots, copied files, slide decks, or search results as official brand sources.
]

#back-cover(
  theme,
  "../build/assets/libresign-logo-reversed.svg",
  "Official LibreSign logo",
  "https://libresign.coop/brand",
  [libresign.coop/brand],
)
