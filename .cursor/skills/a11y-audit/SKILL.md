---
name: a11y-audit
description: Perform an accessibility audit checklist and suggest fixes.
disable-model-invocation: true
---
# Accessibility Audit (Apple)

Run a focused accessibility pass for SwiftUI and UIKit surfaces.

## When to Use

- Before release or for new UI surfaces.

## Inputs

- Target screens or views
- Known issues or user reports

## Instructions

1. Validate VoiceOver labels, hints, and reading order.
2. Confirm Dynamic Type support and truncation behavior.
3. Check color contrast in Light and Dark modes.
4. Ensure focus behavior for tvOS and hardware keyboards.
5. Suggest automated tests or manual checks.

## Output

- A checklist of issues and recommended fixes.
