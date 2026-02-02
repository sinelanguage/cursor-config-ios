# Development Workflows

## Git Branching Strategy

We use GitHub Flow:

- `main` is always deployable
- Feature branches for changes
- PRs required for merge

Branch names:

```text
feature/<short-name>
fix/<short-name>
chore/<short-name>
docs/<short-name>
```

## Commit Convention

Conventional Commits:

```text
feat: add tvOS focus ring polish
fix: handle offline state in repository
docs: update SwiftData migration notes
```

## PR Checklist

- SwiftLint passes
- SwiftFormat passes
- `xcodebuild test` passes
- UI tests for critical flows
- Accessibility verified (VoiceOver, Dynamic Type)

## CI/CD

### GitHub Actions

- `ios-ci.yml`: Build and test using `xcodebuild`
- `swiftlint.yml`: Lint rules
- `testflight.yml`: Fastlane TestFlight deployment
- `security.yml`: Secret scanning

## Release Process

1. Update `CHANGELOG.md`
2. Tag release: `vMAJOR.MINOR.PATCH`
3. Build and upload via Fastlane
4. Verify TestFlight processing
5. Submit for review

## Local Quality Checks

```bash
swiftlint lint
swiftformat --lint .
xcodebuild -scheme <YourApp> -destination "platform=iOS Simulator,name=iPhone 15" test
```
