# Cursor Config Apple

> **Version**: See [latest release](https://github.com/sinelanguage/cursor-config-ios/releases/latest) | [CHANGELOG.md](CHANGELOG.md)

A comprehensive Cursor AI configuration for seasoned Apple developers building native apps for macOS, iOS, iPadOS, and tvOS using Swift 5.10, SwiftUI, Swift Concurrency, and Xcode 17.

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
- **Project Templates** - Swift Package, SwiftLint, SwiftFormat, Fastlane, Info.plist

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
```

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

- Swift and SwiftUI best practices
- Swift Concurrency and actor isolation
- Performance and launch-time optimization
- Apple accessibility (VoiceOver, Dynamic Type)
- Secure storage and privacy patterns
- XCTest and XCUITest standards

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
- `Fastfile` - Fastlane lanes for build/test/beta
- `Info.plist` and `Entitlements.plist` templates

## Apple Stack

- **Xcode** 17.x
- **Swift** 5.10
- **SwiftUI** 5
- **Swift Concurrency** (async/await, actors)
- **SwiftData** (or Core Data where needed)
- **Combine** (for legacy or interoperability)
- **Testing**: XCTest, XCUITest, Snapshot (optional)

See `.context/stack.md` for full details.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

Built for Apple-native developers who demand quality and craft.
