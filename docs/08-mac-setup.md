# Mac Setup

## Recommended Project Folder

```text
~/Documents/Council/projects/my-council
```

## Claude Code Commands

The easiest option is the installer.

From the repo root:

```bash
cd ~/Documents/Council
bash install/install-all.sh
```

This installs:

```text
Claude Code: /council:round1
Codex: $round1
Antigravity CLI / Gemini CLI: /council:round1
...
Round 10, final, and crosscheck commands are also installed.
```

## Installed Locations

```text
~/Documents/Council/plugins/council/
~/.agents/skills/council/
~/.gemini/commands/council/
```

## Claude Code

After installing, reload your shell:

```bash
source ~/.zshrc
```

Start Claude Code with the Council plugin:

```bash
claude-council
```

`claude-council` is an alias created by the installer.

It runs Claude Code with the Council plugin loaded:

```bash
claude --plugin-dir ~/Documents/Council/plugins/council
```

If you skipped the installer, `claude-council` will not exist.

Then run:

```text
/council:round1
```

If your Claude Code plugin folder is somewhere else, set `COUNCIL_CLAUDE_PLUGIN_DIR`:

```bash
COUNCIL_CLAUDE_PLUGIN_DIR="/path/to/council-plugin" bash install/install-all.sh
```

## Codex

For Codex, open the Council project folder as the working directory.

Example:

```bash
cd ~/Documents/Council/projects/my-council
codex -p council
```

If you do not use prompt profiles, start Codex normally in the project folder and paste the relevant prompt manually.

## Antigravity CLI / Gemini CLI

Example:

```bash
cd ~/Documents/Council/projects/my-council
agy
# or, while Gemini CLI is still available:
# gemini
```

Then run `/council:round1`.
