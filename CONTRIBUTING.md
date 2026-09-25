<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Contributing

1. Open or reference an issue.
2. Change canonical source, not only a generated derivative.
3. Use semantic, stable filenames.
4. Preserve SPDX/REUSE metadata.
5. Regenerate derivatives when applicable.
6. Explain compatibility impact of normative changes.
7. Sign off every commit under the Developer Certificate of Origin (DCO).
8. Submit a pull request.

## Artwork

Prefer canonical SVG under `source/artwork/`. Do not manually edit generated PNG/PDF derivatives.

## Third-party material

Fonts and third-party marks retain their own licenses and copyright metadata.

## Privacy

Do not commit personal identifiers, private contact information, addresses, signatures, fiscal identifiers, contracts, private commercial terms, or unrelated document metadata.

## Developer Certificate of Origin

Every commit must carry a DCO sign-off trailer matching the commit author's name and email.

Use:

```bash
git commit -s
```

which adds a trailer in this form:

```text
Signed-off-by: Your Name <you@example.org>
```

By signing off, the contributor certifies the contribution under the Developer Certificate of Origin. Pull requests are checked automatically and commits without a matching sign-off must be corrected before merge.
