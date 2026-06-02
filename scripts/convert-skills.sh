#!/bin/bash
# convert-skills.sh
#
# Convert skills from Claude Code format (skills/) to OpenCode format (.opencode/skills/)
# Run after syncing with upstream: git merge upstream/main
#
# Usage: bash scripts/convert-skills.sh

set -euo pipefail

echo "Converting skills to OpenCode format..."
echo ""

for dir in skills/*/; do
  name=$(basename "$dir")
  echo "  Converting: $name"
  
  mkdir -p ".opencode/skills/$name"
  
  {
    # Frontmatter (keep name, description, license; add compatibility)
    echo "---"
    echo "name: $name"
    sed -n '3p' "skills/$name/SKILL.md"  # description
    sed -n '4p' "skills/$name/SKILL.md"  # license
    echo "compatibility: opencode"
    echo "---"
    
    # Body content (skip frontmatter, remove last Documentation line)
    sed -n '15,$p' "skills/$name/SKILL.md" | sed '$d'
    
  } > ".opencode/skills/$name/SKILL.md"
  
done

echo ""
echo "Done! All skills converted to .opencode/skills/"
