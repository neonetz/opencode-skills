<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12,14,25,27&height=200&section=header&text=OpenCode%20Skills&fontSize=80&fontColor=ffffff&animation=fadeIn&fontAlignY=35&desc=66%20Skills%20%E2%80%A2%20Converted%20for%20OpenCode&descSize=20&descAlignY=55" width="100%"/>
</p>

<p align="center">
  <a href="https://github.com/jeffallan/claude-skills"><img src="https://img.shields.io/badge/original-claude--skills-blue.svg?style=for-the-badge" alt="Original Repo"/></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg?style=for-the-badge" alt="License"/></a>
  <a href="https://opencode.ai"><img src="https://img.shields.io/badge/OpenCode-Compatible-orange.svg?style=for-the-badge" alt="OpenCode"/></a>
  <a href="https://github.com/jeffallan/claude-skills/stargazers"><img src="https://img.shields.io/github/stars/jeffallan/claude-skills?style=for-the-badge&color=yellow" alt="Stars"/></a>
</p>

---

## About

This repository is an **OpenCode-compatible conversion** of [**Jeffallan's claude-skills**](https://github.com/Jeffallan/claude-skills) — 66 specialized skills for full-stack developers, now available for OpenCode.

All credit for the skill content goes to **Jeffallan**. This repo adapts the format to work with [OpenCode](https://opencode.ai).

See [**CONVERSION.md**](CONVERSION.md) for the full conversion story, attribution, and sync guide.

## Quick Start

### Local (skills available only in this repo directory)

```bash
git clone https://github.com/neonetz/opencode-skills.git
cd opencode-skills
opencode
```

### Global (skills available from any project)

```bash
git clone https://github.com/neonetz/opencode-skills.git
cd opencode-skills
./install.sh           # copy to ~/.config/opencode/skills/
# or
./install.sh --symlink # symlink (easier to update later)
```

After installation, open OpenCode from any project — skills will appear in `<available_skills>` and the agent can load them via `skill({ name: "react-expert" })`.

Skills are located in `.opencode/skills/` and OpenCode loads them automatically via the `skill` tool.

## Skills

<!-- SKILL_COUNT -->66<!-- /SKILL_COUNT --> specialized skills across 12 categories covering languages, backend/frontend frameworks, infrastructure, APIs, testing, DevOps, security, data/ML, and platform specialists.

See [**Skills Guide**](SKILLS_GUIDE.md) for the full list, decision trees, and workflow combinations.

## Usage in OpenCode

OpenCode auto-discovers skills from `.opencode/skills/`. Simply mention a relevant technology or problem:

```bash
# Backend Development
"Implement JWT authentication in my NestJS API"
→ Activates: NestJS Expert

# Frontend Development  
"Build a React component with Server Components"
→ Activates: React Expert
```

### Multi-Skill Workflows

Complex tasks combine multiple skills:

```
Feature Development: Feature Forge → Architecture Designer → Fullstack Guardian → Test Master → DevOps Engineer
Bug Investigation:   Debugging Wizard → Framework Expert → Test Master → Code Reviewer
Security Hardening:  Secure Code Guardian → Security Reviewer → Test Master
```

## Project Workflow

The <!-- WORKFLOW_COUNT -->9<!-- /WORKFLOW_COUNT --> workflow commands manage epics from discovery through retrospectives, integrating with Jira and Confluence. See [**Workflow Commands Reference**](docs/WORKFLOW_COMMANDS.md) for the full command reference and lifecycle diagrams.

> [!TIP]
> **Setup:** Workflow commands require an Atlassian MCP server. See the [**Atlassian MCP Setup Guide**](docs/ATLASSIAN_MCP_SETUP.md).

## Documentation

- [**Conversion Guide**](CONVERSION.md) - Attribution, sync guide, and format changes
- [**Skills Guide**](SKILLS_GUIDE.md) - Skill reference and decision trees
- [**OpenCode Skills Docs**](https://opencode.ai/docs/skills/) - Official OpenCode skill format
- [**Workflow Commands**](docs/WORKFLOW_COMMANDS.md) - Project workflow commands guide
- [**Contributing**](CONTRIBUTING.md) - Contribution guidelines
- **.opencode/skills/*/SKILL.md** - Individual skill documentation

## Credits

This repository is a format conversion of the original **[claude-skills](https://github.com/Jeffallan/claude-skills)** project.

### Original Author

**Jeffallan** — [GitHub](https://github.com/Jeffallan) · [Website](https://jeffallan.github.io) · [LinkedIn](https://www.linkedin.com/in/jeff-smolinski/)

Principal Consultant at [Synergetic Solutions](https://synergetic.solutions)

Fullstack engineering, security engineering, compliance, and technical due diligence.

### Conversion

This OpenCode conversion by **neonetz** ([GitHub](https://github.com/neonetz))

### License

MIT License — See [LICENSE](LICENSE).

### Support the Original

- [Star the original repo](https://github.com/Jeffallan/claude-skills)
- [Report issues upstream](https://github.com/Jeffallan/claude-skills/issues)
- [View discussions](https://github.com/Jeffallan/claude-skills/discussions)

---

**Original by [Jeffallan](https://github.com/Jeffallan)** | **<!-- SKILL_COUNT -->66<!-- /SKILL_COUNT --> Skills** | **Converted for OpenCode**
