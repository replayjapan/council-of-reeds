# MCP And File Access

Most Councils only need local file access.

If the PLAI and Reeds can read and write the Council project folder, that is enough for many workflows.

## When MCP Helps

MCP or connectors can help when a Council needs:

- GitHub access
- Google Drive / Docs / Sheets access
- browser automation
- authenticated web pages
- databases
- issue trackers
- Slack/Teams/Notion context

## Keep It Simple

Do not require MCP if plain files are enough.

Best practice:

1. Export or copy important files into `context/`.
2. Let all Reeds review the same local files.
3. Use MCP only for live systems or authenticated sources.

## Claude Code

Claude Code may use MCP servers depending on your setup.

If a Reed needs MCP access, make sure:

- the server is configured
- permissions are appropriate
- the Reed knows which sources to use
- outputs still get written back to the Council folder

## Codex

For Codex, prefer keeping the Council project folder self-contained.

If Codex cannot access an external file, copy it into `context/`.

