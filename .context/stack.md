# Technology Stack

## Core Platform

- **Xcode**: 26.x
- **Swift**: 6
- **SwiftUI**: current SDK
- **Swift Concurrency**: async/await, actors, Task
- **SwiftData**: preferred persistence layer
- **Observation**: `@Observable`, `@Bindable`
- **Combine**: for legacy or interoperability

## Target Platforms

- **iOS**: 26
- **iPadOS**: 26
- **macOS**: 26
- **tvOS**: 26

## Package Management

### Swift Package Manager (SPM)

Use SPM for shared code and third-party dependencies.

```swift
// swift-tools-version: 6.2
// Package.swift (template in /templates)
let package = Package(
  name: "AppCore",
  platforms: [.iOS(.v26), .macOS(.v26), .tvOS(.v26)],
  products: [.library(name: "AppCore", targets: ["AppCore"])],
  targets: [.target(name: "AppCore")],
  swiftLanguageModes: [.v6]
)
```

## Tooling

- **SwiftLint**: linting rules
- **SwiftFormat**: formatting rules
- **Instruments**: profiling (Time Profiler, Leaks, Allocations)
- **Swift Testing / XCTest / XCUITest**: testing frameworks

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
- **Privacy manifests** (`PrivacyInfo.xcprivacy`)
- **App Transport Security** (ATS)
- **App Sandbox** for macOS
- **Entitlements** managed per target

## Accessibility

- VoiceOver, Switch Control, Dynamic Type
- Reduce Motion and Reduce Transparency
- Focus Engine for tvOS
