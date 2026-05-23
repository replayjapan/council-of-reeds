---
name: round7
description: Council of Reeds — Round 7 late-stage convergence (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 7 — late-stage convergence**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/` and `round-1/` through `round-6/`.
- Prioritize the latest PLAI notes and unresolved Delta sections.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Review ChatGPT and Gemini by name. State what you accept, reject, or modify from each. Challenge weak or unsupported claims. Ask direct questions where needed.

Focus on convergence and implementation-ready recommendations. Do not reopen settled issues unless the source of truth requires it.

Include Strongest Counter, Delta / Unresolved, Questions for Other Reeds, Sources.

Write to `round-7/claude.md`.

$ARGUMENTS
