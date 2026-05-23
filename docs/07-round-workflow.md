# Round Workflow

Run all rounds from the same Council session folder.

For Round 2 and later, normally keep the same Claude, Codex, and Gemini sessions open. Enter the next round command in the same terminal instead of starting a new AI session.

Only restart a Reed session if it is closed, broken, in the wrong folder, using the wrong model, or badly off track.

## Round 1

Purpose:

- independent analysis
- first recommendations
- identify options
- identify risks

Round 1 should not require cross-review because the Reeds have not read each other yet.

## Round 2

Purpose:

- challenge Round 1
- correct weak assumptions
- compare ideas
- ask questions
- start convergence

Round 2 must require cross-review.

Before Round 2 starts, the PLAI should write `round-1/plai-notes.md` after discussing Round 1 with the user.

## Round 3

Purpose:

- resolve key disagreements
- narrow options
- refine implementation
- identify what the user must decide

## Rounds 4-10

Use only when needed.

Good reasons to continue:

- the user adds important new constraints
- the Reeds disagree on a key point
- a final artifact needs more detail
- implementation risks are unresolved
- the Council made mistakes that need correction

Do not continue rounds just because the folders exist.

Each new round should read the previous round's `plai-notes.md`.

## Final Position

Use when the Council is ready to close.

Each Reed should:

- read the full Council record
- state final recommendation
- state remaining risks
- state what to build or do next
- state any final objection

Then the PLAI creates the final artifact.

The PLAI may write `synthesis.md` using `synthesis-template.md`.

## Crosscheck

After the PLAI writes `synthesis.md`, use crosscheck when you want another Reed to audit the PLAI's synthesis.

Prefer a non-PLAI Reed:

- Codex: `$crosscheck`
- Gemini CLI: `/council:crosscheck`
- Claude Code: `/council:crosscheck`

If Claude is the PLAI, Claude crosscheck should be treated as fallback because it is not independent model-family review.
