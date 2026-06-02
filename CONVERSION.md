# Conversion Guide: Claude Skills → OpenCode Skills

## Original Project

This repository is a fork and conversion of **[claude-skills](https://github.com/Jeffallan/claude-skills)** by **[Jeffallan](https://github.com/Jeffallan)**.

| Detail | Information |
|--------|-------------|
| Original Author | [Jeffallan](https://github.com/Jeffallan) |
| Original Repo | [github.com/Jeffallan/claude-skills](https://github.com/Jeffallan/claude-skills) |
| Original License | MIT |
| Skills | 66 specialized skills for full-stack developers |
| Workflows | 9 workflow commands |
| Reference Files | 366 reference files |

## What Changed

This repo converts the original Claude Code skills to **OpenCode format**:

| Aspect | Claude Code (Original) | OpenCode (This Repo) |
|--------|-----------------------|---------------------|
| Skill format | Complex frontmatter (author, version, domain, triggers, role, scope, output-format, related-skills) | Simple frontmatter (name, description, license, compatibility) |
| Skill location | `skills/<name>/SKILL.md` | `.opencode/skills/<name>/SKILL.md` |
| Plugin config | `.claude-plugin/plugin.json` | `.opencode/opencode.json` |
| Agent config | `CLAUDE.md` | `OPENCODE.md` |

### What was REMOVED (Claude Code specific)
- `metadata.author`, `metadata.version`, `metadata.domain`, `metadata.triggers`
- `metadata.role`, `metadata.scope`, `metadata.output-format`, `metadata.related-skills`
- Documentation backlinks to `jeffallan.github.io/claude-skills`
- `.claude-plugin/`, `.claude/`, `site/`, `.astro/`, `.serena/` (Claude Code specific infrastructure)

### What was KEPT
- All skill content unchanged
- `name`, `description`, `license` fields
- `scripts/` (validation and documentation tools)
- `commands/` (workflow commands)
- `version.json`, `CHANGELOG.md`, `CONTRIBUTING.md`
- `README.md`, `SKILLS_GUIDE.md`
- `docs/` (documentation)

### What was ADDED
- `compatibility: opencode` to each skill frontmatter
- `.opencode/opencode.json` — OpenCode configuration
- `.opencode/skills/` — skills in OpenCode format
- `OPENCODE.md` — agent instructions for OpenCode
- `CONVERSION.md` — this file

## Sync From Upstream

When the original [claude-skills](https://github.com/Jeffallan/claude-skills) repository updates, follow these steps:

### Prerequisites

```bash
# Add upstream remote (one-time)
git remote add upstream https://github.com/Jeffallan/claude-skills.git
git fetch upstream
```

### Sync Workflow

```bash
# 1. Fetch upstream changes
git fetch upstream

# 2. Review upstream changes
git log main..upstream/main --oneline
git diff main..upstream/main --stat

# 3. Merge upstream changes
git merge upstream/main --no-edit

# 4. Convert new/changed skills to OpenCode format
# - Copy any new skills from skills/ to .opencode/skills/
# - Convert frontmatter (remove metadata, add compatibility)
# - Remove Documentation backlink at end
# - Commit changes

# 5. Push
git push
```

### If conflicts occur:
- Upstream changes to `skills/<name>/SKILL.md` → copy them to `.opencode/skills/<name>/SKILL.md` with format conversion
- Upstream changes to other files → resolve normally
- Upstream changes to `.claude-plugin/` → ignore (this repo doesn't use it)

## Automatic Conversion Script

To simplify the sync process, use the conversion script:

```bash
bash scripts/convert-skills.sh
```

This script:
1. Copies `skills/<name>/SKILL.md` → `.opencode/skills/<name>/SKILL.md`
2. Strips Claude Code specific frontmatter fields
3. Adds `compatibility: opencode`
4. Removes Documentation backlinks

> **Note**: The script handles 66 skills automatically. For manual conversion of individual skills, follow the format shown in the [OpenCode Skills Documentation](https://opencode.ai/docs/skills/).

## License and Attribution

- **Skills content**: Copyright (c) Jeffallan. Licensed under [MIT](LICENSE).
- **Conversion work**: Copyright (c) neonetz. Licensed under [MIT](LICENSE).

This conversion is provided as a compatibility layer. All credit for the skill content goes to **Jeffallan** and the original contributors. Without their work, this project would not exist.

**Support the original project:**
- [Star the original repo](https://github.com/Jeffallan/claude-skills)
- [Report issues upstream](https://github.com/Jeffallan/claude-skills/issues)
- [Follow Jeffallan on LinkedIn](https://www.linkedin.com/in/jeff-smolinski/)
