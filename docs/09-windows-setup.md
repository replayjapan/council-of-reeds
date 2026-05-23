# Windows Setup

## Recommended Project Folder

```text
C:\Users\YourName\Documents\Council\projects\my-council
```

## Claude Code Commands

The easiest option is the installer.

From the repo root:

```powershell
cd "$env:USERPROFILE\Documents\Council"
powershell -ExecutionPolicy Bypass -File install\install-all.ps1
```

This installs:

```text
Claude Code: /council:round1
Codex: $round1
Gemini CLI: /council:round1
...
Round 10, final, and crosscheck commands are also installed.
```

## Installed Locations

```text
C:\Users\YourName\Council\plugins\council\
C:\Users\YourName\.agents\skills\council\
C:\Users\YourName\.gemini\commands\council\
```

## Claude Code

Start Claude Code with the Council plugin:

```powershell
claude --plugin-dir "$env:USERPROFILE\Council\plugins\council"
```

Then run:

```text
/council:round1
```

If your Claude Code plugin folder is somewhere else, set `COUNCIL_CLAUDE_PLUGIN_DIR`:

```powershell
$env:COUNCIL_CLAUDE_PLUGIN_DIR = "C:\path\to\council-plugin"
powershell -ExecutionPolicy Bypass -File install\install-all.ps1
```

## Codex

Open a terminal in the Council project folder.

PowerShell example:

```powershell
cd "$env:USERPROFILE\Documents\Council\projects\my-council"
codex -p council
```

If you do not use prompt profiles, start Codex normally in the project folder and paste the relevant prompt manually.

## Gemini CLI

PowerShell example:

```powershell
cd "$env:USERPROFILE\Documents\Council\projects\my-council"
gemini
```

Then run `/council:round1`.

## Path Tips

If a path has spaces, quote it:

```powershell
cd "C:\Users\YourName\Documents\My Council Project"
```
