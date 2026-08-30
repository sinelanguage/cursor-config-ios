# Apple-Native Cursor Setup

## Cursor Auto-Detection vs Manual Setup

### What Cursor Automatically Detects

Cursor automatically reads:

- `.cursorrules` (project root)
- `.context/` (project root)
- `.cursor/` (workspace settings, rules, skills, subagents)
- `.cursorignore` (indexing exclusions)

### What Requires Manual Setup

You must configure these manually:

- Xcode project targets and signing
- Swift Package dependencies (SPM)
- CI/CD secrets (Apple ID, App Store Connect)
- Fastlane setup (if used)

## Quick Install

### Option 1: Cursor-Only (AI Guidance)

```bash
cp .cursorrules .cursorignore <your-project-root>/
cp -r .context .cursor <your-project-root>/
```

### Option 2: Full Apple-Native Seed

```bash
cp .cursorrules .cursorignore <your-project-root>/
cp -r .context .cursor templates <your-project-root>/
cp -r .github <your-project-root>/
```

## Xcode Setup

### Prerequisites

- macOS 16+
- Xcode 18.x
- Apple Developer account (for signing and App Store)
- Ruby 3.x (optional, for Fastlane)

### Create or Open Your App

1. Open Xcode and create a new App target (SwiftUI).
2. Set the deployment targets:
   - iOS 19
   - iPadOS 19
   - macOS 16
   - tvOS 19
3. Enable automatic signing for development.

### Integrate Shared Code with SPM

```bash
cp templates/Package.swift Package.swift
```

In Xcode:

1. File > Add Packages.
2. Select "Add Local..." and choose your repo root.
3. Add the package to your app targets.

## Swift Linting and Formatting

```bash
cp templates/.swiftlint.yml .swiftlint.yml
cp templates/.swiftformat .swiftformat
cp templates/Gemfile Gemfile
```

Recommended CLI installs (optional):

```bash
brew install swiftlint
brew install swiftformat
```

## Info.plist and Entitlements

```bash
cp templates/Info.plist <target>/Info.plist
cp templates/Entitlements.plist <target>.entitlements
cp templates/PrivacyInfo.xcprivacy PrivacyInfo.xcprivacy
```

Update bundle identifiers, capabilities, and privacy manifest declarations in Xcode.

## Fastlane (Optional)

```bash
cp templates/Fastfile fastlane/Fastfile
cp templates/Gemfile Gemfile
```

Create `fastlane/Appfile` with your bundle ID and team settings.

## CI/CD

Copy the workflow templates:

```bash
cp -r .github <your-project-root>/
```

### Fill in Placeholders

Update these fields in the copied workflows:

- `.github/workflows/ios-ci.yml`
  - `XCODE_PATH`: set to the installed Xcode app if you want a pinned toolchain
  - `SCHEME`: set to your Xcode scheme
  - `DESTINATION`: set the simulator device
- `.github/workflows/testflight.yml`
  - Ensure required secrets are configured in GitHub

Update these templates if used:

- `templates/Fastfile`: set `SCHEME` or supply `SCHEME` env var
- `templates/Gemfile`: pin the Fastlane version used locally and in CI
- `templates/Info.plist`: update bundle version values as needed
- `templates/Entitlements.plist`: add capabilities per target
- `templates/PrivacyInfo.xcprivacy`: declare collected data and required-reason APIs

Add GitHub secrets:

- `APP_STORE_CONNECT_API_KEY_ID`
- `APP_STORE_CONNECT_API_ISSUER_ID`
- `APP_STORE_CONNECT_API_KEY`
- `MATCH_PASSWORD` (if using match)

## Verification

### Local Checks

```bash
swiftlint lint
swiftformat --lint .
xcodebuild -scheme <YourApp> -destination "platform=iOS Simulator,OS=latest,name=iPhone 16" test
```

### Cursor Verification

Ask in Cursor:

- "What are our Swift concurrency rules?"
- "How do we structure SwiftUI views and view models?"

## Troubleshooting

- Ensure `.cursorrules` and `.context/` are in project root.
- Restart Cursor after copying files.
- Confirm Xcode target settings match deployment targets.

---

Your Apple-native Cursor configuration is ready to use.
