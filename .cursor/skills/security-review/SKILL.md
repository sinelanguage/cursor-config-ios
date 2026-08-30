---
name: security-review
description: Run a lightweight security review and checklist.
disable-model-invocation: true
---
# Security Review

Perform a focused security review for Apple-native app and configuration changes.

## When to Use

- Use this skill before release or after auth/data changes.

## Inputs

- Areas touched (auth, storage, API, config)
- Known risks or incidents

## Instructions

1. Check for unsafe patterns in storage, secrets handling, networking, and entitlements.
2. Review Keychain usage, ATS/TLS posture, and privacy manifest coverage.
3. Ensure dependency and workflow scanning steps are noted.
4. List any missing mitigations or follow-ups.

## Output

- A security checklist with findings and next steps.
