---
name: round10
description: Council of Reeds — Round 10 last standard round (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 10 — last standard round**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/` and `round-1/` through `round-9/`.
- Prioritize the latest PLAI notes and unresolved Delta sections.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Review ChatGPT and Gemini by name. Challenge only material issues that would affect the final result. State your final pre-final-position stance.

State what the PLAI should include, what to exclude, and any unresolved risks or assumptions.

Include Strongest Counter, Delta / Unresolved, Sources.

Write to `round-10/claude.md`.

$ARGUMENTS
