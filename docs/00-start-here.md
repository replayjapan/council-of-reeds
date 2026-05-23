# Start Here

This is the recommended beginner workflow.

The user should not manually build Council session folders. The PLAI does that.

## 1. Download Council Of Reeds

Download this repo from GitHub.

If GitHub gives you a ZIP file, unzip it.

Rename the downloaded folder to:

```text
Council
```

Recommended location:

Mac:

```text
~/Documents/Council
```

Windows:

```text
C:\Users\YourName\Documents\Council
```

Before continuing, check [Prerequisites](03-prerequisites.md) if you are not sure which apps or command-line tools you need.

## 2. Connect The Council Folder

Optional: install Council CLI commands before connecting the folder.

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

This installs:

```text
Claude Code: /council:round1
Codex: $round1
Antigravity CLI / Gemini CLI: /council:round1
...
Round 10, final, and crosscheck commands are also installed.
```

The PLAI needs read/write access to the `Council` folder.

Do this before starting the PLAI. If the folder is not connected, the PLAI cannot create session folders or write Council files.

Use one of these options:

### Claude Desktop

Recommended:

1. Follow [Claude Desktop MCP Setup](16-claude-desktop-mcp-setup.md) to add the `Council` folder.
2. Create a Claude Project for Council of Reeds.
3. Add the `Council` folder connector to that Project.
4. Start the PLAI inside that Project.

### Codex App

Recommended:

1. Create a Codex Project for Council of Reeds.
2. Add the `Council` folder to the Project.
3. Start the PLAI in that Project.

## 3. Start With The PLAI

Do not start the Reeds first.

Use the starter prompt from [docs/02-starter-prompt.md](02-starter-prompt.md).

Start by giving the PLAI:

- what you want the Council to help with
- what final output you want
- what files, folders, screenshots, links, or examples matter
- constraints, tools, budget, timeline, language, and things to avoid

The PLAI uses your exact words as the source of truth.

## 4. Let The PLAI Create The Session

The PLAI creates a new session folder inside:

```text
Council/projects/
```

Example:

```text
Council/projects/2026-05-23_my-project-council/
```

The PLAI creates the needed files and folders:

```text
prompt.md
reed-rules.md
framework-version.txt
context/
round-1/
round-2/
...
final-position/
```

## 5. Start The Reeds Only When PLAI Says To

When Round 1 is ready, the PLAI gives you the exact commands.

Recommended VS Code setup:

1. Open VS Code to the main `Council` folder.
2. Open three terminals.
3. Rename the terminals `Claude`, `Codex`, and `Antigravity`.
4. In each terminal, `cd` into the session folder the PLAI created.
5. Start one Reed in each terminal.
6. Keep those terminals open for the whole Council when possible.

Each Reed terminal should `cd` into the session folder first.

Example:

```bash
cd ~/Documents/Council/projects/2026-05-23_my-project-council
```

Then start the Reed.

Round 1 examples:

```text
Claude Code:
claude-council
/council:round1

Codex:
codex -p council
$round1

Antigravity CLI / Gemini CLI:
agy
# or, while Gemini CLI is still available:
# gemini
/model
choose the highest available Gemini model
/council:round1
```

## 6. Later Rounds

For Round 2 and later, keep the same Reed sessions open when possible.

Do not restart the Reeds unless something is broken.

Use only the next command:

```text
Claude Code: /council:round2
Codex: $round2
Antigravity CLI / Gemini CLI: /council:round2
```

After all Reeds finish each round, tell the PLAI:

```text
Round 2 is complete. Let's discuss.
```

## 7. Final And Crosscheck

When the PLAI says final positions are ready:

```text
Claude Code: /council:final
Codex: $final
Antigravity CLI / Gemini CLI: /council:final
```

After the PLAI writes `synthesis.md`, use crosscheck when useful:

```text
Claude Code: /council:crosscheck
Codex: $crosscheck
Antigravity CLI / Gemini CLI: /council:crosscheck
```

Prefer a non-PLAI Reed for crosscheck.
