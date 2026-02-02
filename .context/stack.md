# Technology Stack

## Core Platform

- **Xcode**: 17.x
- **Swift**: 5.10
- **SwiftUI**: 5
- **Swift Concurrency**: async/await, actors, Task
- **SwiftData**: preferred persistence layer
- **Combine**: for legacy or interoperability

## Target Platforms

- **iOS**: 18
- **iPadOS**: 18
- **macOS**: 15
- **tvOS**: 18

## Package Management

### Swift Package Manager (SPM)

Use SPM for shared code and third-party dependencies.

```swift
// Package.swift (template in /templates)
let package = Package(
  name: "AppCore",
  platforms: [.iOS(.v18), .macOS(.v15), .tvOS(.v18)],
  products: [.library(name: "AppCore", targets: ["AppCore"])],
  targets: [.target(name: "AppCore")]
)
```

## Tooling

- **SwiftLint**: linting rules
- **SwiftFormat**: formatting rules
- **Instruments**: profiling (Time Profiler, Leaks, Allocations)
- **XCTest / XCUITest**: testing frameworks

## CI/CD

- `xcodebuild` for builds and tests
- Fastlane for TestFlight and App Store delivery
- GitHub Actions for automation

## Observability

- **os.Logger** for structured logging
- **MetricKit** for performance and crash reports
- **Unified crash logs** via Xcode Organizer

## Security

- **Keychain** for secrets
- **App Transport Security** (ATS)
- **App Sandbox** for macOS
- **Entitlements** managed per target

## Accessibility

- VoiceOver, Switch Control, Dynamic Type
- Reduce Motion and Reduce Transparency
- Focus Engine for tvOS
