---
name: round6
description: Council of Reeds — Round 6 extended cross-review (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 6 — extended cross-review**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/` and `round-1/` through `round-5/`.
- Prioritize the latest PLAI notes and unresolved Delta sections.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Review ChatGPT and Gemini by name. Challenge anything incorrect, unsupported, unclear, risky, or overcomplicated. Ask direct questions where they need to clarify. Update your own stance where another Reed made the stronger point.

No new scope unless required by the user's source of truth.

Include Strongest Counter, Delta / Unresolved, Questions for Other Reeds, Sources.

Write to `round-6/claude.md`.

$ARGUMENTS
