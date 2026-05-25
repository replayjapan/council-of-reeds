# Council of Reeds

Council of Reeds is a local-folder workflow for running structured multi-AI councils.

Instead of asking several AIs for separate opinions, Council of Reeds gives them a shared folder, a source of truth, round prompts, and rules for reviewing and challenging each other. One AI acts as the **PLAI** (Project Lead AI). The other AIs act as **Reeds**.

Created by rePlay LLC, Tokyo, Japan.

## What This Is

- **Council**: the structured multi-AI process.
- **PLAI**: Project Lead AI. The AI that manages the Council.
- **Reeds**: the individual AI participants.
- **Rounds**: cycles where Reeds respond, then later review and challenge each other.
- **Source of Truth**: the user's exact request, goals, constraints, and files.
- **Final Position**: the final recommendation round after review and debate.

The recommended setup uses:

- Claude Desktop or the Codex app as the PLAI
- Claude Code as one Reed
- Codex CLI as one Reed
- Antigravity CLI, or Gemini CLI while still available, as one Reed
- VS Code to view the Council folder and keep Reed terminals organized

Use a Council for complex work such as:

- product strategy
- design docs
- implementation planning
- research synthesis
- technical architecture
- documentation
- content frameworks
- business idea review
- comparing options and tradeoffs

Do not use a Council for tiny tasks where one AI can answer or implement directly.

## How It Works

1. You download this repo and rename the folder to `Council`.
2. You connect the `Council` folder to Claude Desktop or the Codex app.
3. You start with the PLAI and explain your project.
4. The PLAI creates a session folder under `Council/projects/`.
5. The PLAI prepares Round 1 and tells you when to start the Reeds.
6. Reeds write their answers into round folders.
7. Later rounds require Reeds to read, challenge, and update each other.
8. The PLAI creates final outputs such as a design doc, strategy, plan, or synthesis.

The user should not manually create the session setup. The PLAI does that.

## First-Time Setup

1. Download this repo from GitHub.
2. Rename the folder to `Council`.
3. Put it in a simple location, such as `~/Documents/Council`.
4. Install the optional CLI commands:

```bash
cd ~/Documents/Council
bash install/install-all.sh
```

5. Connect the `Council` folder to your PLAI:
   - Claude Desktop: follow [Claude Desktop MCP Setup](docs/16-claude-desktop-mcp-setup.md)
   - Codex app: create a Codex Project and add the `Council` folder
6. Start the PLAI and give it your project info, goals, files, constraints, and desired output.
7. Wait for the PLAI to create the session folder and prepare Round 1.

First-time users should follow [Start Here](docs/00-start-here.md).

## Round 1 Reed Commands

The PLAI gives you the exact session folder path. Each Reed terminal should `cd` into that session folder first.

Claude Code:

```text
claude-council
/council:round1
```

Codex CLI:

```text
codex -p council
$round1
```

Antigravity CLI / Gemini CLI:

```text
agy
# or, while Gemini CLI is still available:
# gemini
/model
choose the highest available Gemini model
/council:round1
```

For Round 2 and later, keep the same Reed sessions open and enter only the next round command, such as `/council:round2` or `$round2`.

## Repository Layout

```text
council-of-reeds/
  docs/
  templates/
    council-project/
  command-templates/
    claude-code-plugin/
    codex-skills/
    antigravity-plugin/
    gemini-cli-commands/
  install/
  examples/
```

Antigravity CLI and Gemini CLI use different install mechanisms:

- Antigravity CLI uses a plugin installed under `.gemini/antigravity-cli/plugins/council/`.
- Gemini CLI legacy uses TOML commands installed under `.gemini/commands/council/`.

## Worked Example

See [examples/product-strategy-mini](examples/product-strategy-mini/) for a small, sanitized Council example with:

- source of truth
- prompt
- Round 1 Reed responses
- PLAI notes
- final positions
- synthesis

## Documentation

Start here:

- [Start Here](docs/00-start-here.md)
- [What Is Council of Reeds?](docs/01-what-is-council-of-reeds.md)
- [Starter Prompt](docs/02-starter-prompt.md)
- [Prerequisites](docs/03-prerequisites.md)
- [Folder Structure](docs/04-folder-structure.md)
- [PLAI Guide](docs/05-plai-guide.md)
- [PLAI Behavioral Guide](docs/05a-plai-behavioral-guide.md)
- [Reed Guide](docs/06-reed-guide.md)
- [Round Workflow](docs/07-round-workflow.md)
- [Mac Setup](docs/08-mac-setup.md)
- [Windows Setup](docs/09-windows-setup.md)
- [CLI Commands](docs/10-cli-commands.md)
- [Codex Setup](docs/11-codex-setup.md)
- [MCP and File Access](docs/12-mcp-and-file-access.md)
- [Troubleshooting](docs/13-troubleshooting.md)
- [Command Shortcut Examples](docs/15-command-shortcut-examples.md)
- [Claude Desktop MCP Setup](docs/16-claude-desktop-mcp-setup.md)

## License

MIT. See [LICENSE](LICENSE).

## Contributing

Suggestions and pull requests are welcome, but this repository may not be actively monitored. See [CONTRIBUTING.md](CONTRIBUTING.md).
