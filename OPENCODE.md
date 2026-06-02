# OpenCode Skills - Agent Configuration

> This file governs OpenCode's behavior when working on this repository.

## Overview

This repository is an **OpenCode conversion** of the [claude-skills](https://github.com/Jeffallan/claude-skills) project by [Jeffallan](https://github.com/Jeffallan).

- **Original**: [github.com/Jeffallan/claude-skills](https://github.com/Jeffallan/claude-skills) — 66 specialized skills for Claude Code
- **This repo**: OpenCode-compatible version with converted skill format
- **Purpose**: Make the same excellent skills available for OpenCode users

## Skill Structure

Skills follow the [Agent Skills specification](https://opencode.ai/docs/skills/) and are located at `.opencode/skills/<name>/SKILL.md`.

```
.opencode/skills/
├── react-expert/
│   └── SKILL.md
├── python-pro/
│   └── SKILL.md
└── ... (66 skills)
```

## Frontmatter Fields

Each `SKILL.md` uses only OpenCode-recognized fields:

- `name` (required) - lowercase hyphen-separated
- `description` (required) - 1-1024 characters
- `license` (optional) - MIT
- `compatibility` (optional) - opencode
- `metadata` (optional) - string-to-string map only

## Sync from Upstream

When the upstream [claude-skills](https://github.com/Jeffallan/claude-skills) repository updates:

1. Fetch upstream: `git fetch upstream`
2. Merge upstream: `git merge upstream/main --no-edit`
3. Convert skills: `scripts/convert-skills.sh`
4. Commit and push

## Attribution

Skills authored by **Jeffallan** ([github.com/Jeffallan](https://github.com/Jeffallan)).
Conversion to OpenCode format by **neonetz** ([github.com/neonetz](https://github.com/neonetz)).

See [CONVERSION.md](CONVERSION.md) for the full conversion story.
