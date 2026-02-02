# Cursor Workspace Configuration

This directory contains workspace-specific settings and configurations for Cursor IDE.

## Directory Structure

```text
.cursor/
├── README.md           # This file
├── agents/             # Custom subagents (optional)
│   └── verifier.md
├── settings.json       # Workspace settings
├── skills/             # Agent skills
│   ├── swiftui-view-scaffold/
│   ├── viewmodel-scaffold/
│   ├── xctest-scaffold/
│   ├── fastlane-setup/
│   └── spm-package/
└── rules/              # Additional rule files
    ├── README.md
    └── project-specific.md
```

## How Cursor Uses These Files

- `.cursorrules` and `.cursor/rules/*.md` provide AI guidance
- `.cursor/settings.json` applies workspace settings
- `.cursorignore` controls indexing exclusions
- `.cursor/skills/**/SKILL.md` exposes skills via `/`

## Customization

Add project-specific rules in `.cursor/rules/` and custom skills in `.cursor/skills/`.
