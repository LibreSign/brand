// SPDX-FileCopyrightText: 2026 LibreSign contributors
// SPDX-License-Identifier: CC-BY-SA-4.0

#import "theme.typ": theme
#import "components.typ": cover, toc-page, section-page, manual-page, logo-stage, swatch, specimen, rule-pair, statement, back-cover

#set document(
  title: "LibreSign Brand Manual",
  author: "LibreSign contributors",
)
#set text(font: theme.body-font, lang: "en", size: 10.5pt, fill: theme.ink)
#set par(leading: 0.72em, spacing: 0.7em, justify: false)
#set list(indent: 0pt, body-indent: 1.2em)
#show heading.where(level: 1): it => text(
  font: theme.heading-font,
  size: 24pt,
  weight: "bold",
  fill: theme.ink,
  it.body,
)

#cover(
  theme,
  [LibreSign Brand Manual],
  [Freedom and control for electronic signing],
  "../source/artwork/libresign-logo-reversed.svg",
  "Official reversed LibreSign logo",
)

#toc-page(
  theme,
  [Brand system],
  (
    ("01", "Foundations", "Name, meaning, and pronunciation"),
    ("02", "Logo", "Canonical artwork and composition"),
    ("03", "Visual system", "Color, typography, clear space, and scale"),
    ("04", "Usage", "Applications, consistency, and accessibility"),
    ("05", "Governance", "Licensing, trademark, and canonical source"),
  ),
)

#section-page(
  theme,
  [01],
  [Foundations],
  [The brand starts with its name and the idea of freedom expressed by "Libre".],
)

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

#section-page(
  theme,
  [02],
  [Logo],
  [Official artwork is a technical asset. Its geometry must not be redrawn or reinterpreted.],
)

#manual-page(theme, [Logo], [Primary mark])[
  #logo-stage(theme, "../source/artwork/libresign-logo.svg", "Official LibreSign logo")
  #v(8mm)

  The canonical master is `source/artwork/libresign-logo.svg`.

  The versioned vector file is the source of truth for public derivatives and official applications.
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
)

#manual-page(theme, [Visual system], [Colors])[
  #swatch("Primary Teal", "#184c4e", note: "Primary brand and interface field")
  #v(5mm)
  #swatch("Primary Hover", "#0f3739", note: "Interactive depth")
  #v(5mm)
  #swatch("Primary Dark", "#0b5f55", note: "Dark supporting teal")
  #v(5mm)
  #swatch("Secondary Cyan", "#00a3be", note: "Secondary digital accent")
  #v(5mm)
  #swatch("Light Surface", "#f7fafc", note: "Light background field")
  #v(5mm)
  #swatch("Dark Text", "#2d3748", note: "Readable text on light surfaces")
]

#manual-page(theme, [Visual system], [Typography])[
  #specimen(
    theme,
    "Montserrat",
    [Display and UI],
    [LIBRE / freedom to sign on your terms],
  )
  #v(8mm)

  Montserrat is the current official digital typeface.

  The font is distributed in the repository under SIL Open Font License 1.1 and is used directly by the manual build.
]

#manual-page(theme, [Visual system], [Clear space])[
  Clear space keeps the mark visually independent from text, borders, and other marks.

  #v(7mm)
  #block(
    width: 100%,
    inset: 12mm,
    fill: white,
    stroke: (paint: theme.neutral, thickness: 0.7pt, dash: "dashed"),
  )[
    #align(center)[
      #image("../source/artwork/libresign-logo.svg", width: 68%, alt: "LibreSign logo inside its clear-space field")
    ]
  ]
  #v(4mm)
  #align(center)[
    #text(size: 9pt, fill: theme.neutral)[Use the reference unit *E* around the full perimeter of the mark.]
  ]
]

#manual-page(theme, [Visual system], [Minimum size])[
  Historical dimensions are retained as the current minimum reference:

  #v(7mm)
  #grid(
    columns: (1fr, 1fr),
    gutter: 12mm,
    [
      #align(center)[
        #image("../source/artwork/libresign-logo.svg", width: 40mm, alt: "LibreSign complete logo")
      ]
      #v(4mm)
      #align(center)[*Complete logo* \ 7 mm / 26 px minimum]
    ],
    [
      #align(center)[
        #image("../source/artwork/libresign-logo.svg", width: 26mm, alt: "LibreSign logo shown at small scale")
      ]
      #v(4mm)
      #align(center)[*Small-format use* \ prefer a dedicated icon asset]
    ],
  )
  #v(8mm)

  Never reduce the complete wordmark beyond legibility.
]

#section-page(
  theme,
  [04],
  [Usage],
  [Consistency does not mean rigidity: it means the brand remains recognizable across contexts.],
)

#manual-page(theme, [Usage], [Application])[
  #grid(
    columns: (1fr, 1fr),
    gutter: 7mm,
    block(fill: white, inset: 10mm, height: 64mm)[
      #align(center + horizon)[
        #image("../source/artwork/libresign-logo.svg", width: 78%, alt: "LibreSign logo on a light background")
      ]
    ],
    block(fill: theme.soft, inset: 10mm, height: 64mm)[
      #align(center + horizon)[
        #image("../source/artwork/libresign-logo.svg", width: 78%, alt: "LibreSign logo on a light green background")
      ]
    ],
  )
  #v(7mm)

  Before publishing a new application, verify contrast, clear space, and fidelity to the canonical master.
]

#manual-page(theme, [Usage], [Accessibility])[
  - ensure appropriate contrast for the intended role;
  - do not rely on color alone;
  - preserve logo legibility against backgrounds;
  - keep textual content selectable and structured;
  - preserve document language, metadata, links, and reading order.

  #v(8mm)
  #statement(theme, [
    Brand consistency is never a reason to reduce accessibility.
  ])
]

#section-page(
  theme,
  [05],
  [Governance],
  [The brand is a public, versioned system: rules, artwork, and manual evolve together.],
)

#manual-page(theme, [Governance], [Licensing and canonical source])[
  - documentation and official artwork: *CC BY-SA 4.0*;
  - automation: *AGPL-3.0-or-later*;
  - fonts: *SIL Open Font License 1.1*;
  - trademark: separate rules in `TRADEMARKS.md`.

  #v(8mm)
  Canonical source:

  https://github.com/LibreSign/brand

  Public guide:

  https://libresign.coop/brand
]

#back-cover(
  theme,
  "../source/artwork/libresign-logo-reversed.svg",
  "Official LibreSign logo",
  [libresign.coop/brand],
)
