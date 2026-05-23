# Installers

These scripts install optional Council of Reeds commands for Claude Code, Codex, and Gemini CLI.

They copy command templates from:

```text
command-templates/claude-code-plugin/
command-templates/codex-skills/
command-templates/gemini-cli-commands/
```

to the user's local command folders:

```text
~/Documents/Council/plugins/council/
~/.agents/skills/council/
~/.gemini/commands/council/
```

## Mac / Linux

From the repo root:

```bash
cd ~/Documents/Council
bash install/install-all.sh
```

## Windows PowerShell

From the repo root:

```powershell
cd "$env:USERPROFILE\Documents\Council"
powershell -ExecutionPolicy Bypass -File install\install-all.ps1
```

## Installed Commands

Claude Code, after starting with `claude-council`:

```text
/council:round1
/council:round2
...
/council:round10
/council:final
/council:crosscheck
```

Codex, after starting with `codex -p council`:

```text
$round1
$round2
...
$round10
$final
$crosscheck
```

Gemini CLI:

```text
/council:round1
/council:round2
...
/council:round10
/council:final
/council:crosscheck
```

## Custom Install Location

Set these environment variables if your command folders are somewhere else:

- `COUNCIL_CLAUDE_PLUGIN_DIR`
- `COUNCIL_CODEX_SKILLS_DIR`
- `COUNCIL_GEMINI_COMMANDS_DIR`

Mac / Linux:

```bash
COUNCIL_CLAUDE_PLUGIN_DIR="/path/to/council-plugin" bash install/install-all.sh
```

Windows PowerShell:

```powershell
$env:COUNCIL_CLAUDE_PLUGIN_DIR = "C:\path\to\council-plugin"
powershell -ExecutionPolicy Bypass -File install\install-all.ps1
```
