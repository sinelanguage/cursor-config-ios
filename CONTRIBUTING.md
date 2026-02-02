# Contributing

Thank you for contributing to the Apple-native Cursor configuration.

## Development Setup

### Prerequisites

- macOS 15+
- Xcode 17.x
- Swift 5.10
- Git
- Ruby 3.x (optional, for Fastlane)

### Getting Started

1. **Clone the repository**

   ```bash
   git clone <repo-url>
   cd <project-name>
   ```

2. **Install tooling**

   ```bash
   brew install swiftlint swiftformat
   ```

3. **Open in Xcode**

   - Create or open your app target
   - Set platform deployment targets

4. **Run checks**

   ```bash
   swiftlint lint
   swiftformat --lint .
   xcodebuild -scheme <YourApp> -destination "platform=iOS Simulator,name=iPhone 15" test
   ```

## Development Workflow

1. Create a feature branch
2. Make changes and update docs
3. Run local checks
4. Open a PR

## Code Standards

- SwiftUI with MVVM
- Swift Concurrency with actor isolation
- No `Any` unless justified
- Accessibility verified (VoiceOver, Dynamic Type)
- Security reviewed (Keychain, ATS)

## Commit Convention

Use Conventional Commits:

```text
feat: add SwiftUI view scaffold skill
fix: clarify SwiftData migration notes
docs: update Xcode setup steps
```

## Pull Request Checklist

- [ ] SwiftLint passes
- [ ] SwiftFormat passes
- [ ] `xcodebuild test` passes
- [ ] Documentation updated
- [ ] Accessibility checked

## Resources

- [Architecture](.context/architecture.md)
- [Conventions](.context/conventions.md)
- [Stack](.context/stack.md)
