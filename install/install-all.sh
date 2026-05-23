#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

CLAUDE_SOURCE="$REPO_ROOT/command-templates/claude-code-plugin/council"
CODEX_SOURCE="$REPO_ROOT/command-templates/codex-skills/council"
GEMINI_SOURCE="$REPO_ROOT/command-templates/gemini-cli-commands/council"

CLAUDE_TARGET="${COUNCIL_CLAUDE_PLUGIN_DIR:-$HOME/Documents/Council/plugins/council}"
CODEX_TARGET="${COUNCIL_CODEX_SKILLS_DIR:-$HOME/.agents/skills/council}"
GEMINI_TARGET="${COUNCIL_GEMINI_COMMANDS_DIR:-$HOME/.gemini/commands/council}"

echo "=== Council of Reeds — Installing CLI Commands ==="
echo

require_dir() {
  local path="$1"
  if [ ! -d "$path" ]; then
    echo "Missing required template directory: $path"
    exit 1
  fi
}

copy_dir() {
  local source="$1"
  local target="$2"
  mkdir -p "$(dirname "$target")"
  rm -rf "$target"
  cp -R "$source" "$target"
}

require_dir "$CLAUDE_SOURCE"
require_dir "$CODEX_SOURCE"
require_dir "$GEMINI_SOURCE"

existing_targets=()
for target in "$CLAUDE_TARGET" "$CODEX_TARGET" "$GEMINI_TARGET"; do
  if [ -e "$target" ]; then
    existing_targets+=("$target")
  fi
done

if [ "${#existing_targets[@]}" -gt 0 ]; then
  echo "Existing Council command folders were found:"
  for target in "${existing_targets[@]}"; do
    echo "  - $target"
  done
  echo
  echo "This installer will replace those Council command folders."
  echo "Your Council projects and past round outputs will not be touched."
  echo "Do not continue if you placed custom non-Council files inside those folders."
  echo
  read -r -p "Continue and replace the existing Council command folders? [y/N] " confirm
  if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Install cancelled."
    exit 0
  fi
  echo
fi

echo "--- Installing Claude Code Council plugin ---"
copy_dir "$CLAUDE_SOURCE" "$CLAUDE_TARGET"
echo "Installed Claude Code plugin at: $CLAUDE_TARGET"
echo "Commands: /council:round1 through /council:round10, /council:final, /council:crosscheck"
echo

echo "--- Installing Codex Council skills ---"
copy_dir "$CODEX_SOURCE" "$CODEX_TARGET"
echo "Installed Codex skills at: $CODEX_TARGET"
echo "Commands: \$round1 through \$round10, \$final, \$crosscheck"
echo

echo "--- Installing Gemini CLI Council commands ---"
copy_dir "$GEMINI_SOURCE" "$GEMINI_TARGET"
echo "Installed Gemini CLI commands at: $GEMINI_TARGET"
echo "Commands: /council:round1 through /council:round10, /council:final, /council:crosscheck"
echo

echo "--- Checking Codex profile ---"
mkdir -p "$HOME/.codex"
if [ ! -f "$HOME/.codex/config.toml" ]; then
  cat > "$HOME/.codex/config.toml" << 'EOF'
[profiles.council]
model = "gpt-5.4"
model_reasoning_effort = "high"
EOF
  echo "Created ~/.codex/config.toml with [profiles.council]."
else
  if grep -q '^\[profiles\.council\]' "$HOME/.codex/config.toml"; then
    echo "Codex council profile already exists."
  else
    echo "Note: ~/.codex/config.toml already exists."
    echo "Add this manually if you want the same profile:"
    echo
    echo "[profiles.council]"
    echo 'model = "gpt-5.4"'
    echo 'model_reasoning_effort = "high"'
  fi
fi
echo

echo "--- Checking shell alias ---"
ZSHRC="$HOME/.zshrc"
if [ -f "$ZSHRC" ] && grep -q "alias claude-council=" "$ZSHRC"; then
  echo "claude-council alias already exists in ~/.zshrc."
else
  cat >> "$ZSHRC" << 'EOF'

# Council of Reeds
alias claude-council='claude --plugin-dir ~/Documents/Council/plugins/council'
EOF
  echo "Added claude-council alias to ~/.zshrc."
fi

echo
echo "=== Installation Complete ==="
echo
echo "Next steps:"
echo "1. Run: source ~/.zshrc"
echo "2. Claude Code: claude-council, then /council:round1"
echo "3. Codex: codex -p council, then \$round1"
echo "4. Gemini CLI: gemini, then /council:round1"
