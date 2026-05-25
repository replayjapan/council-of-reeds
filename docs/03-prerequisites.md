# Prerequisites

Before you start, make sure you have the tools you want to use.

You do not need every tool listed here, but the recommended Council uses one PLAI and three Reeds.

## Recommended Tools

### PLAI

Use one of these for the Project Lead AI:

- Claude Desktop with access to the `Council` folder
- Codex app with the `Council` folder added to the project

The PLAI creates session folders, writes prompts, reads Reed outputs, and creates the final synthesis.

### Reeds

Recommended Reeds:

- Claude Code
- Codex CLI
- Antigravity CLI, or Gemini CLI while still available

The Reeds are the AIs that run the round commands and write responses into the session folder.

Google announced that Gemini CLI access for individual/free Google AI users will stop serving requests on June 18, 2026. New setups should prefer Antigravity CLI.

Antigravity CLI and Gemini CLI use different install mechanisms. Antigravity uses a plugin under `.gemini/antigravity-cli/plugins/council/`. Gemini CLI legacy uses TOML commands under `.gemini/commands/council/`.

## Claude Desktop vs Claude Code

These are different tools.

**Claude Desktop** is the desktop chat app. In this workflow, it is a good place to run the PLAI because it can manage the Council folder through MCP.

**Claude Code** is the terminal coding agent. In this workflow, it is usually a Reed. It runs commands like:

```text
/council:round1
```

Do not expect `claude-council` to work inside Claude Desktop. `claude-council` is a terminal command for Claude Code.

## Node.js

Node.js is needed if you use Claude Desktop with the filesystem MCP server.

Check it:

```bash
node --version
```

If you see a version number, continue. If not, install Node.js from [nodejs.org](https://nodejs.org/).

## VS Code

VS Code is recommended because it lets you:

- open the main `Council` folder
- see all session files
- open three terminals
- rename the terminals `Claude`, `Codex`, and `Antigravity`

VS Code is not required, but it makes the workflow easier to follow.

## Minimum Reed Count

Recommended:

```text
3 Reeds: Claude Code, Codex, Antigravity CLI / Gemini CLI
```

Minimum useful Council:

```text
2 Reeds
```

One Reed is not really a Council. If you only have one AI available, use the PLAI directly instead of running a Council.

If you only have two Reeds, the PLAI should adjust the round prompts so the available Reeds review each other.

## Accounts And Access

You need access to whichever products you choose to use.

Product availability, plans, and pricing can change, so check the official product pages for current details.
