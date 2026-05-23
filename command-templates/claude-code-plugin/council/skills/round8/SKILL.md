---
name: round8
description: Council of Reeds — Round 8 final gap review (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 8 — final gap review**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/` and `round-1/` through `round-7/`.
- Prioritize the latest PLAI notes and unresolved Delta sections.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Review ChatGPT and Gemini by name. Challenge any remaining issue that would affect the final artifact. Ask direct questions if another Reed has not justified a recommendation.

Identify the best final deliverable structure and what the PLAI should avoid.

Include Strongest Counter, Delta / Unresolved, Questions for Other Reeds, Sources.

Write to `round-8/claude.md`.

$ARGUMENTS
