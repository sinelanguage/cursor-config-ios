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
- Use `@StateObject` for view model ownership
- Use `@ObservedObject` for injected view models
- Use `@Environment` and `@EnvironmentObject` sparingly

## Concurrency

- Use `@MainActor` for UI-facing types
- Mark non-UI work as `nonisolated` where safe
- Avoid `Task.detached` unless required

## Error Handling

- Prefer typed `enum` errors
- Surface user-friendly messages in view models
- Log with `os.Logger` instead of `print`

## Testing

- `XCTestCase` per feature module
- Use `async` tests for async code
- Minimize UI tests to critical flows

## Documentation

- Doc comments for public APIs
- Use `///` with examples when helpful
