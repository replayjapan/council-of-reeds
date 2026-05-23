---
name: final
description: Council of Reeds — Final Position (Claude, Opus, ultrathink). Concise final stance.
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is your **Final Position**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/` and every `round-*/` directory.

First line: **"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Absolute final stance. Be concise.

1. Top recommendations, prioritized.
2. Remaining disagreements with other Reeds.
3. What remains genuinely unknown.
4. One thing the user should do first.
5. Strongest Counter to My Position.

Follow all rules in reed-rules.md. No full code implementations.

Write to `final-position/claude.md`.

$ARGUMENTS
