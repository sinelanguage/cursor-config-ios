# Design System Documentation

## Overview

This document defines the Apple-native design system approach using SwiftUI, Asset Catalogs, and SF Symbols, aligned with Apple's Human Interface Guidelines (HIG).

## Design Tokens

### Color

Use Asset Catalog color sets with light/dark variants:

- `Color.primaryText`
- `Color.secondaryText`
- `Color.surface`
- `Color.accent`

Avoid hard-coded colors in views.

### Typography

Prefer Dynamic Type and semantic styles:

- `.title`, `.headline`, `.body`, `.caption`
- Use `.font(.system(.body, design: .default))` for custom

### Spacing

Use an 8-point grid:

- 4, 8, 12, 16, 24, 32, 48
- Prefer `Spacing` enum or constants in a shared module

### Iconography

Use SF Symbols:

- Prefer filled variants for tab bars and selection states
- Use `symbolRenderingMode(.hierarchical)` where appropriate

## Component Patterns

### Atomic Composition

Build reusable primitives:

- Buttons, list rows, cards, badges
- Combine primitives into feature components

### SwiftUI Styling

Use `ViewModifier` for reusable styles:

```swift
struct PrimaryButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding()
      .background(Color.accentColor)
      .foregroundStyle(.white)
      .clipShape(RoundedRectangle(cornerRadius: 12))
  }
}
```

## Accessibility

- VoiceOver labels and hints
- Dynamic Type and truncation rules
- Sufficient contrast for all colors
- Use `accessibilityElement(children: .combine)` for grouped content

## Platform Notes

- **macOS**: Use toolbar placement and sidebar conventions
- **iPadOS**: Support multi-column navigation
- **tvOS**: Large focusable targets and focus rings

## Theming

Use environment values for app-wide theming:

- `colorScheme`
- `sizeCategory`
- `legibilityWeight`
