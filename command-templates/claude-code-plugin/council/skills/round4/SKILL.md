---
name: round4
description: Council of Reeds — Round 4 extended review (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 4 — extended review**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/`, `round-1/`, `round-2/`, `round-3/`.
- Prioritize most recent plai-notes.md and Delta sections.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Focus on unresolved disagreements. No new issues — note as "further work". Use **ultrathink**.

Follow Rule 13. Follow all rules in reed-rules.md. No full code implementations.

Include Strongest Counter, Delta / Unresolved, Sources.

Write to `round-4/claude.md`.

$ARGUMENTS
