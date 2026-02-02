---
name: fastlane-setup
description: Set up Fastlane lanes for build, test, and TestFlight.
disable-model-invocation: true
---
# Fastlane Setup

Configure Fastlane for build, test, and TestFlight upload.

## When to Use

- When you need CI/CD or TestFlight automation.

## Inputs

- App scheme and bundle ID
- Signing strategy (automatic or match)

## Instructions

1. Create `fastlane/Fastfile` and `fastlane/Appfile`.
2. Add lanes for `lint`, `tests`, and `beta`.
3. Document required secrets for CI.

## Output

- Fastlane configuration and setup notes.
