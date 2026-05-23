# CLI Commands

The installer sets up commands for three CLI tools.

The PLAI still starts from `docs/02-starter-prompt.md`. The round commands are for Reeds after the PLAI prepares the round.

All commands should be run from the same Council session folder.

For Round 2 and later, do not start a new AI session unless the previous one is closed, broken, in the wrong folder, or using the wrong model. Keep the same Reed sessions open and enter the next round command in the same terminal.

## Install

Mac / Linux:

```bash
cd ~/Documents/Council
bash install/install-all.sh
```

Windows PowerShell:

```powershell
cd "$env:USERPROFILE\Documents\Council"
powershell -ExecutionPolicy Bypass -File install\install-all.ps1
```

## Claude Code

Start Claude Code with the Council plugin:

```bash
claude-council
```

`claude-council` is an alias created by the installer. It runs:

```bash
claude --plugin-dir ~/Documents/Council/plugins/council
```

If you skipped the installer, use that full command or install the commands first.

Then run:

```text
/council:round1
/council:round2
...
/council:round10
/council:final
/council:crosscheck
```

For Round 2 in the same Claude session, just run:

```text
/council:round2
```

The plugin is installed from:

```text
command-templates/claude-code-plugin/council/
```

## Codex

Start Codex in the Council project folder:

```bash
codex -p council
```

Then run:

```text
$round1
$round2
...
$round10
$final
$crosscheck
```

For Round 2 in the same Codex session, just run:

```text
$round2
```

The skills are installed from:

```text
command-templates/codex-skills/council/
```

## Gemini CLI

Start Gemini CLI in the Council project folder:

```bash
gemini
```

At the start of the Gemini session, manually switch to the highest available Gemini model if your setup does not start there automatically.

Then run:

```text
/council:round1
/council:round2
...
/council:round10
/council:final
/council:crosscheck
```

For Round 2 in the same Gemini session, just run:

```text
/council:round2
```

The commands are installed from:

```text
command-templates/gemini-cli-commands/council/
```

## Updating From 5 Rounds To 10 Rounds

Run the installer again:

```bash
cd ~/Documents/Council
bash install/install-all.sh
```

It refreshes the Council command folders with Round 1 through Round 10, final, and crosscheck.

## Crosscheck

Crosscheck is not a normal numbered round. Use it after the PLAI writes `synthesis.md`.

Prefer a Reed that is not the PLAI:

```text
Codex: $crosscheck
Gemini CLI: /council:crosscheck
Claude Code: /council:crosscheck
```

If Claude is the PLAI, Claude crosscheck is only a fallback because it is same-model-family review.
