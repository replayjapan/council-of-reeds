---
name: round1
description: Council of Reeds — Round 1 independent response (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 1 — independent**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/`.

If any read fails, stop and tell the user.

First line of your response must be:
**"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Answer every question in prompt.md independently and thoroughly. Use **ultrathink**.

Follow Rule 13: state your prior view before searching. Source hierarchy: direct observation → official docs → secondary → inference.

# Format

1. Reflexivity Disclosure (if Rule 11 applies)
2. Summary — 2–3 sentences
3. Section headings matching prompt questions
4. Strongest Counter to My Position (Rule 12)
5. Sources

Follow all rules in reed-rules.md. No full code implementations.

Write to `round-1/claude.md`.

$ARGUMENTS
