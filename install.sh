#!/bin/bash
# install.sh — Install OpenCode skills
#
# Usage:
#   ./install.sh           # Install to ~/.config/opencode/skills/ (global)
#   ./install.sh --local   # Show info for local setup only
#   ./install.sh --help    # Show help

set -euo pipefail

SKILLS_DIR=".opencode/skills"
SKILL_COUNT=$(ls "$SKILLS_DIR" 2>/dev/null | wc -l)

show_help() {
  cat <<EOF
Install OpenCode skills to your system.

USAGE:
  ./install.sh               Install globally (cp to ~/.config/opencode/skills/)
  ./install.sh --symlink     Symlink instead of copy (easier to update)
  ./install.sh --local       Just show local setup info
  ./install.sh --help        Show this help

EOF
  exit 0
}

install_global() {
  local target="$HOME/.config/opencode/skills"
  mkdir -p "$target"
  cp -r "$SKILLS_DIR"/* "$target/"
  echo "✓ Installed $SKILL_COUNT skills to $target"
}

install_symlink() {
  local target="$HOME/.config/opencode/skills"
  local source="$(cd "$(dirname "$0")" && pwd)/$SKILLS_DIR"
  mkdir -p "$(dirname "$target")"
  [ -L "$target" ] && rm "$target"
  [ -d "$target" ] && rm -rf "$target"
  ln -sf "$source" "$target"
  echo "✓ Symlinked $SKILL_COUNT skills → $target"
}

show_local() {
  cat <<EOF
Local setup — skills at .opencode/skills/

OpenCode auto-discovers them when you run it in this directory:

  opencode

Total: $SKILL_COUNT skills
EOF
}

case "${1:-}" in
  --help|-h) show_help ;;
  --symlink|-s) install_symlink ;;
  --local|-l) show_local ;;
  *) install_global ;;
esac