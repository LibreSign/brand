// SPDX-FileCopyrightText: 2026 LibreSign contributors
// SPDX-License-Identifier: CC-BY-SA-4.0

#import "components.typ": cover, color-swatch, rule-card

#set document(title: "LibreSign Brand Manual", author: "LibreSign contributors")
#set text(lang: "en", size: 10.5pt)
#set page(
  paper: "a4",
  margin: (x: 22mm, y: 20mm),
  numbering: "1",
  footer: context [
    #align(right)[#counter(page).display()]
  ],
)
#set par(justify: true, leading: 0.72em)
#set heading(numbering: "1.")

#show heading.where(level: 1): it => block(
  above: 16pt,
  below: 9pt,
)[
  #text(size: 21pt, weight: "bold", fill: rgb("#184c4e"))[#it.body]
  #v(3pt)
  #line(length: 100%, stroke: (paint: rgb("#184c4e"), thickness: 1pt))
]

#cover(
  [LibreSign Brand Manual],
  [Freedom and control for electronic signing],
  "../source/artwork/libresign-logo.svg",
  rgb("#184c4e"),
)

= Official name

Always write *LibreSign* with uppercase L and S and no space.

Avoid:

- Libresign
- Libre Sign
- libreSign

= What "Libre" means

Libre means freedom: freedom to operate signing infrastructure, retain control of documents and data, inspect and adapt the software, integrate it, and choose how the solution is operated and maintained.

For organizations, this connects open source to infrastructure choice, interoperability, continuity, auditability, and reduced dependency on a single proprietary service.

#rule-card(
  [Positioning],
  [*Libre does not simply mean "free of charge".* The value proposition is control, choice, interoperability, and continuity.]
)

= Pronunciation

- Libre: /ˈli.bɾe/
- LibreSign: /ˈli.bɾe saɪn/

Libre begins with an /i/ sound. Sign keeps its English pronunciation.

= Logo

The canonical master is `source/artwork/libresign-logo.svg`.

#align(center)[
  #image("../source/artwork/libresign-logo.svg", width: 72%)
]

#rule-card(
  [Do],
  [Preserve the proportions, geometry, composition, and colors of the official artwork.]
)

#rule-card(
  [Don't],
  [Do not distort, rotate, rearrange components, add decorative effects, or create alternate files presented as official.]
)

= Colors

#color-swatch("Primary Teal", "#184c4e")
#v(6pt)
#color-swatch("Primary Hover", "#0f3739")
#v(6pt)
#color-swatch("Primary Dark", "#0b5f55")
#v(6pt)
#color-swatch("Dark Surface", "#123c40")
#v(6pt)
#color-swatch("Secondary Cyan", "#00a3be")
#v(6pt)
#color-swatch("Light Surface", "#f7fafc")
#v(6pt)
#color-swatch("Dark Text", "#2d3748")

= Typography

*Montserrat* is the current official digital typeface.

Third-party fonts retain their own licenses and do not inherit the manual's CC BY-SA license.

= Clear space

Maintain sufficient clear space around the mark so it remains visually independent from text, borders, and other marks.

The normative diagram is maintained in this manual as reproducible vector construction.

= Minimum size

Use the complete mark only where the wordmark remains legible. Use an approved icon asset for small-format contexts.

= Accessibility

- ensure appropriate contrast for the intended role;
- do not rely on color alone;
- preserve logo legibility against backgrounds;
- keep textual content selectable and structured;
- preserve document language, metadata, links, and reading order in generated PDF output.

= Licensing

- documentation and official artwork: CC BY-SA 4.0;
- automation: AGPL-3.0-or-later;
- third-party fonts: upstream license;
- trademark: rules in `TRADEMARKS.md`.

= Canonical source

https://github.com/LibreSign/brand

Public guide:

https://libresign.coop/brand

