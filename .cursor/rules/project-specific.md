# Project-Specific Rules

Use this file for rules that are unique to a specific Apple app.

## Example Rules

```markdown
## App Architecture

- Use MVVM with explicit route models
- New features must live in `Sources/Features/<FeatureName>/`

## Data Layer

- SwiftData models live in `Sources/Shared/Core/Models`
- Network calls go through `APIClient`

## Accessibility

- All interactive controls require VoiceOver labels
- Dynamic Type support required for all text
```

## Maintenance

Update this file as the project evolves. Keep `.cursorrules` for global standards.
