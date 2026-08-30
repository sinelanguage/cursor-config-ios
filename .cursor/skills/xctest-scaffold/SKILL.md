---
name: xctest-scaffold
description: Scaffold Swift Testing or XCTest coverage for a Swift module.
disable-model-invocation: true
---
# XCTest Scaffold

Create unit tests for Swift modules and view models.

## When to Use

- When adding new logic or refactoring existing logic.

## Inputs

- Target type or function
- Expected behaviors and edge cases

## Instructions

1. Prefer a Swift Testing suite for new unit coverage.
2. Use `XCTestCase` when extending legacy suites or UI tests.
3. Add normal, edge-case, and async concurrency coverage.

## Output

- Swift Testing suite or XCTest file with clear, behavior-focused tests.
