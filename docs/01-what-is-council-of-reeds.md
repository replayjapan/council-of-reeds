# What Is Council of Reeds?

Council of Reeds is a structured way to make multiple AIs collaborate on one hard problem.

The goal is not to collect three isolated answers. The goal is to create a process where independent AI participants:

1. read the same source of truth
2. respond independently
3. review each other's work
4. challenge weak assumptions
5. ask questions
6. update their positions
7. converge toward a useful final output

## Terminology

### Council

The full multi-AI process.

A Council usually has one PLAI and several Reeds.

### PLAI

PLAI means **Project Lead AI**.

The PLAI manages the Council process. It creates the project folder, writes prompts, keeps the Reeds aligned, summarizes disagreements, asks the user for decisions, and creates final deliverables.

The PLAI is a role, not a specific product. Claude Code, Codex, or another capable AI can act as PLAI.

### Reeds

Reeds are the participating AIs.

Each Reed gives its own response. In later rounds, Reeds must read, challenge, and respond to the other Reeds.

Example Reeds:

- Claude Code
- Codex
- Antigravity CLI, or Gemini CLI while still available
- another AI agent that can read/write the folder

The recommended setup uses three Reeds. A two-Reed Council is still useful. One Reed is not really a Council.

### Round

A round is one cycle of Reed responses.

Round 1 is usually independent analysis.

Round 2 and later should include cross-review. Reeds should challenge each other, ask questions, and update their positions.

### Source of Truth

The source of truth is the user's exact request, goals, files, constraints, and success criteria.

It usually lives at:

```text
context/source-of-truth.md
```

The user's words should be treated as higher priority than model assumptions.

### Final Position

The final round where each Reed gives its final recommendation after reading the full Council record.

### Artifact

The final output created from the Council.

Examples:

- design doc
- strategy brief
- implementation plan
- technical architecture
- spreadsheet
- deck outline
- code plan
