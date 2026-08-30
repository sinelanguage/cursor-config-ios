---
name: viewmodel-scaffold
description: Scaffold an MVVM view model with Observation and Swift Concurrency.
disable-model-invocation: true
---
# ViewModel Scaffold

Create a view model with typed state, Observation, and async actions.

## When to Use

- When a view needs business logic or async data.

## Inputs

- ViewModel name
- State shape
- Dependencies and async actions

## Instructions

1. Define an `@Observable` state model and public API.
2. Implement async actions using `async/await` with clear actor isolation.
3. Add Swift Testing coverage for state transitions.

## Output

- View model file and Swift Testing coverage.
