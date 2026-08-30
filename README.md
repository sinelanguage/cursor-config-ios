# Cursor Config Apple

> **Version**: See [latest release](https://github.com/sinelanguage/cursor-config-ios/releases/latest) | [CHANGELOG.md](CHANGELOG.md)

A comprehensive Cursor AI configuration for seasoned Apple developers building native apps for macOS, iOS, iPadOS, and tvOS using Swift 6, modern SwiftUI, Swift Concurrency, and Xcode 18.

## What This Is

This is a **portable Cursor AI configuration** you can copy into any Apple-native project. It includes:

- **Agent Rules** (`.cursorrules`) - Apple platform engineering standards
  - Auto-detected by Cursor
- **Context Documentation** (`.context/`) - Swift and Apple platform guidance
  - Auto-detected by Cursor
- **Agent Skills** (`.cursor/skills/`) - Reusable Apple workflows
  - Auto-detected by Cursor
- **Custom Subagents** (`.cursor/agents/`) - Verification helpers
  - Auto-detected by Cursor
- **Automation Templates** - GitHub Actions for Xcode builds and linting
- **Project Templates** - Swift Package, SwiftLint, SwiftFormat, Fastlane, Ruby, Info.plist, Privacy Manifest

**Key Point**: Cursor automatically detects `.cursorrules` and `.context/` when you open a project.

## Quick Start

### 1. Copy to Your Project

**Minimal (Cursor AI only)**:

```bash
cp .cursorrules .cursorignore <your-project-root>/
cp -r .context .cursor <your-project-root>/
```

**Complete setup**:

```bash
cp .cursorrules .cursorignore <your-project-root>/
cp -r .cursor .context templates <your-project-root>/
cp -r .github <your-project-root>/
```

### 2. Apply Templates

```bash
cd <your-project-root>
cp templates/Package.swift Package.swift
cp templates/.swiftlint.yml .swiftlint.yml
cp templates/.swiftformat .swiftformat
cp templates/Gemfile Gemfile
cp templates/PrivacyInfo.xcprivacy PrivacyInfo.xcprivacy
```

### 2.1 Fill in App-Specific Placeholders

These files contain placeholders that must be replaced per app:

- `.github/workflows/ios-ci.yml` → set `XCODE_PATH`, `SCHEME`, and `DESTINATION`
- `.github/workflows/testflight.yml` → set `XCODE_PATH` if you need a pinned toolchain
- `templates/Fastfile` → set `SCHEME` or provide `SCHEME` env var in CI
- `templates/Gemfile` → pin the Fastlane version for local runs and CI
- `templates/Info.plist` → update versioning as needed
- `templates/Entitlements.plist` → add required capabilities
- `templates/PrivacyInfo.xcprivacy` → declare collected data and required-reason APIs

Where to update:

- In repo templates: edit the files directly before copying.
- In an app repo: edit the copied files in the app root.

### 3. Open in Xcode

Use Xcode to create or open your app target, then integrate shared packages from `Package.swift`.

### 4. Verify Cursor Detection

Ask in Cursor:

- "What SwiftUI architecture patterns do we follow?"
- "What are our Swift concurrency rules?"

## How to Use Skills

Skills are invoked from Agent chat using `/`:

1. Open Agent in Cursor.
2. Type `/` and select a skill (e.g., `/swiftui-view-scaffold`).
3. Provide inputs and apply the generated output.

## What You Get

### AI Agent Rules

The `.cursorrules` file configures Cursor to enforce:

- Swift 6, Observation, and SwiftUI best practices
- Swift Concurrency, actor isolation, and `Sendable`
- Performance and launch-time optimization
- Apple accessibility (VoiceOver, Dynamic Type)
- Secure storage, privacy manifests, and entitlement hygiene
- Swift Testing, XCTest, and XCUITest standards

### Context Documentation

The `.context/` directory provides:

- `architecture.md` - MVVM, navigation, data flow, modules
- `design-system.md` - HIG, tokens via Asset Catalog, SF Symbols
- `workflows.md` - Git flow, PR checks, release steps
- `conventions.md` - Swift naming and file organization
- `stack.md` - Xcode/Swift/SDK versions and tools

### Automation

GitHub Actions templates:

- `ios-ci.yml` - Xcode build and tests
- `swiftlint.yml` - SwiftLint checks
- `testflight.yml` - Fastlane TestFlight upload
- `security.yml` - Secrets and dependency scanning

### Project Templates

- `Package.swift` - Swift Package Manager template
- `.swiftlint.yml` - Lint rules
- `.swiftformat` - Formatter rules
- `Fastfile` and `Gemfile` - Fastlane lanes and Ruby dependency pinning
- `Info.plist`, `Entitlements.plist`, and `PrivacyInfo.xcprivacy` templates

## Apple Stack

- **Xcode** 18.x
- **Swift** 6
- **SwiftUI** 6
- **Swift Concurrency** (async/await, actors)
- **SwiftData** (or Core Data where needed)
- **Observation** (`@Observable`, `@Bindable`)
- **Combine** (for legacy or interoperability)
- **Testing**: Swift Testing, XCTest, XCUITest, Snapshot (optional)

See `.context/stack.md` for full details.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

Built for Apple-native developers who demand quality and craft.
