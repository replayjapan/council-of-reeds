# Command Shortcut Examples

Council command shortcuts are optional. Manual prompts always work.

The goal of shortcuts is speed: the PLAI can tell the user exactly what to run for each Reed.

## Typical Startup Instructions

Round 1 example:

```text
Open VS Code to the main Council folder.
Open three terminals and rename them Claude, Codex, and Antigravity.
In each terminal, cd into the session folder created by the PLAI.

Claude Code: in the Claude terminal, run claude-council, then /council:round1
Codex: in the Codex terminal, run codex -p council, then $round1
Antigravity CLI / Gemini CLI: in the Antigravity terminal, run agy, or gemini while Gemini CLI is still available, switch to the highest available Gemini model if needed, then /council:round1
```

Round 2 example:

```text
Use the same Reed terminals from Round 1.

Claude Code: /council:round2
Codex: $round2
Antigravity CLI / Gemini CLI: /council:round2
```

Use the wording that matches your own setup. The important part is that every Reed terminal runs from the same Council session folder and writes to the exact file requested by the PLAI.

Do not tell users to start a new Reed session for Round 2 unless the prior session is closed, broken, in the wrong folder, or using the wrong model.

## Provided Template Folders

```text
command-templates/claude-code-plugin/
command-templates/codex-skills/
command-templates/antigravity-plugin/
command-templates/gemini-cli-commands/
```

Each command system includes:

```text
round1.md
round2.md
...
round10
final
crosscheck
```

## PLAI Rule

The PLAI should give Reed startup instructions every round.

The instructions should include:

- which AI to open
- which Council session folder to use
- which command or prompt to run
- which files to read
- which file to write
- whether cross-review is required

From Round 2 onward, cross-review is required unless the user explicitly says otherwise.

The PLAI itself starts from `docs/02-starter-prompt.md`, not from a slash command.
