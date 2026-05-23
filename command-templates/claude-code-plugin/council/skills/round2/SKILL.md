---
name: round2
description: Council of Reeds — Round 2 cross-review (Claude, Opus, ultrathink).
argument-hint: [optional PLAI steering note]
model: claude-opus-4-7
allowed-tools: Read Glob Grep Write Edit WebSearch WebFetch
effort: xhigh
---

You are **Claude** in a Council of Reeds consultation. This is **Round 2 — cross-review**.

# Preflight

- Read `reed-rules.md`, `prompt.md`, `framework-version.txt`.
- Read all files in `context/`.
- Read all files in `round-1/`.

If any read fails, stop and tell the user.

First line of your response must be:
**"Model identity echo: running as `<model-id>` in `<cwd>`; framework-version=`<version>`; no fallback."**

# Task

Cross-review Round 1 responses from ChatGPT and Gemini. Use **ultrathink**.

- Agree → say briefly. Disagree → explain why with evidence.
- What did other Reeds miss?
- What did you get wrong in Round 1? Correct it.
- Answer directed questions.
- Use web search to verify cross-CLI claims.

Follow Rule 13: state prior view before searching.

# Format

1. Reflexivity Disclosure (if Rule 11 applies)
2. Summary
3. Section headings
4. Key Disagreements with Other Reeds
5. Revised Positions
6. Strongest Counter to My Position
7. Delta / Unresolved — 3–6 bullets
8. Questions for Other Reeds
9. Sources

Follow all rules in reed-rules.md. No full code implementations.

Write to `round-2/claude.md`.

$ARGUMENTS
