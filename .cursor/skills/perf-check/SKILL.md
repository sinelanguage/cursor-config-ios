---
name: perf-check
description: Run a quick performance review and propose optimizations.
disable-model-invocation: true
---
# Performance Check (Apple)

Provide a focused performance pass for a screen or flow.

## When to Use

- UI feels slow or before release.

## Inputs

- Target screens or view models
- Known bottlenecks (if any)

## Instructions

1. Identify main-thread work and blocking IO.
2. Check SwiftUI body recomputation and state churn.
3. Recommend Instruments traces (Time Profiler, Leaks).
4. Review image sizes, caching, and lazy stacks.

## Output

- A list of concrete performance recommendations.
