# Swift Conventions

## Naming

- **Types**: PascalCase (`UserProfileView`)
- **Files**: Match type name (`UserProfileView.swift`)
- **ViewModels**: `UserProfileViewModel`
- **Protocols**: `UserProviding`, `AnalyticsTracking`
- **Extensions**: `Type+Feature.swift`

## File Organization

Recommended structure:

```text
Sources/
├── App/
│   ├── AppEntry.swift
│   ├── AppEnvironment.swift
├── Features/
│   ├── Home/
│   │   ├── HomeView.swift
│   │   ├── HomeViewModel.swift
│   │   └── HomeRoute.swift
├── Shared/
│   ├── UI/
│   ├── Core/
│   └── Resources/
└── Tests/
```

## SwiftUI Patterns

- Views are value types, keep them small
- Use `@State` for local state
- Prefer `@Observable` models and `@Bindable` projections for shared state
- Use `ObservableObject`, `@StateObject`, and `@ObservedObject` only for backward compatibility
- Use `@Environment` sparingly and keep dependencies explicit

## Concurrency

- Use `@MainActor` for UI-facing types
- Mark cross-actor value types as `Sendable` when they move across concurrency boundaries
- Mark non-UI work as `nonisolated` where safe
- Avoid `Task.detached` unless required

## Error Handling

- Prefer typed `enum` errors
- Surface user-friendly messages in view models
- Log with `os.Logger` instead of `print`

## Testing

- Prefer Swift Testing for new unit suites
- Use `XCTestCase` for UI tests or legacy suites
- Use `async` tests for async code
- Minimize UI tests to critical flows

## Documentation

- Doc comments for public APIs
- Use `///` with examples when helpful
