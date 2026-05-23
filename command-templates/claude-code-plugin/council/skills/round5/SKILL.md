---
name: round5
description: Council of Reeds — Round 5 last numbered round (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 5 — last numbered round**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/`, `round-1/`, `round-2/`, `round-3/`, `round-4/`.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Last numbered round. Close out disagreements. No padding, no new issues. Use **ultrathink**.

Follow Rule 13. Follow all rules in reed-rules.md. No full code implementations.

Include Strongest Counter, Delta / Unresolved, Sources.

Write to `round-5/claude.md`.

$ARGUMENTS
