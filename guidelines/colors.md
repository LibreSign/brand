<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Color system

## Historical identity (2021 manual)

### Primary

| Role | HEX | CMYK from manual |
|---|---|---|
| Gray | #49494a | C0 M0 Y0 K70 |
| Green | #2b936b | C74 M0 Y63 K19 |

### Supporting

| HEX | CMYK from manual |
|---|---|
| #49494a | C0 M0 Y0 K84 |
| #f5f5f5 | C0 M0 Y0 K6 |
| #c2ccc8 | C8 M0 Y7 K20 |
| #184c4e | C81 M0 Y36 K68 |
| #cafbc4 | historical supporting light green |
| #e8f7e7 | C11 M0 Y15 K0 |
| #f17b64 | C0 M61 Y55 K0 |

## Current digital system

The current LibreSign website now defines:
- primary: `#184c4e`
- primary hover: `#0f3739`
- primary dark: `#0b5f55`
- dark surface: `#123c40`
- secondary: `#00a3be`
- additional semantic UI colors for focus, success, warning, and errors.

This means the current site promotes a color that was historically supporting (`#184c4e`) into the primary digital role.

## Rule

Until issue #7 is resolved, distinguish:
1. **historical logo/brand palette**, and
2. **current digital product/site palette**.

Do not rewrite the historical manual values to match the website, and do not force the current website back to the old palette without an explicit brand decision.

All published combinations must also pass accessibility checks appropriate to their use.
