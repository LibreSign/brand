<!--
SPDX-FileCopyrightText: 2026 LibreSign contributors
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Asset inventory

Status legend: **approved-current**, **needs-review**, **legacy-name**, **historical**.

## Current LibreSign website

| Current path | Proposed canonical role | Status | Notes |
|---|---|---|---|
| `source/assets/images/logo/logo.svg` | canonical SVG candidate | approved-current | Current scalable logo used by the site; migrate after provenance review. |
| `source/assets/images/logo/logo-2.svg` | compare with primary SVG | legacy-name | Ambiguous filename; verify whether it is only a differently sized/exported duplicate. |
| `source/assets/images/logo/logo-libresign-large.png` | approved PNG export | approved-current | Rename semantically during migration. |
| `source/assets/images/logo/logo_libresign-small.png` | approved/legacy PNG export | needs-review | Confirm intended use and size relationship. |
| `source/assets/images/logo/Avatar-LibreSign.png` | avatar/social asset candidate | needs-review | Confirm whether this is an approved current avatar. |
| `source/assets/images/logo/clients/` | not brand-core | needs-review | Client logos must retain their own licensing/trademark provenance and should not be treated as LibreSign assets. |

## Migration rule

Do not preserve names such as `logo-2.svg` in the approved public asset set. First determine the semantic difference, then either deduplicate it or give it a descriptive stable name.

## Nextcloud reconciliation

Issue #2 must compare this inventory with the historical Nextcloud folder before public share links are revoked.
