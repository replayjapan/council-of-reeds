---
name: round3
description: Council of Reeds — Round 3 convergence (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 3 — convergence**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/`, `round-1/`, `round-2/`.

First line of your response must be:
**"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Convergence, not new critique. Lock wordings. Produce prioritized recommendations. New issues go in "further work". Use **ultrathink**.

Follow Rule 13: state prior view before searching.

# Format

1. Reflexivity Disclosure (if Rule 11 applies)
2. Summary
3. Answers to directed questions
4. Locked Wordings / Prioritized Recommendations
5. Key Disagreements (remaining only)
6. Revised Positions
7. Strongest Counter to My Position
8. Delta / Unresolved
9. Sources

Follow all rules in reed-rules.md. No full code implementations.

Write to `round-3/claude.md`.

$ARGUMENTS
