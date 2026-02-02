---
name: state-pattern
description: Choose and implement the right state management pattern.
disable-model-invocation: true
---
# State Pattern (SwiftUI)

Select local vs shared state and implement the pattern with best practices.

## When to Use

- When state is shared across multiple views or flows.

## Inputs

- State shape and lifecycle
- Consumers and update frequency
- Persistence or caching needs

## Instructions

1. Decide local (`@State`) vs shared (`@StateObject`, `@Observable`, `@Environment`).
2. Use a view model for shared state.
3. Add derived state helpers in view models.
4. Add tests for state transitions.

## Output

- State implementation with tests and a short rationale.
