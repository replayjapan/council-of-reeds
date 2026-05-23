# Reed Guide

A Reed is one AI participant in the Council.

The Reed's job is to analyze the task, answer the prompt, and later challenge the other Reeds.

## Reed Rules

Every Reed should:

- read the required files
- follow the user's source of truth
- write to the specified output file
- avoid inventing requirements
- state assumptions
- cite sources when needed
- challenge weak ideas in later rounds
- update its stance when another Reed is right
- ask whether everything it is proposing is actually needed
- remove or simplify recommendations that are not needed

## Round 1

Round 1 is usually independent.

Each Reed reads:

- `reed-rules.md`
- `prompt.md`
- `round-1-prompt.md`
- `context/source-of-truth.md`
- any files named by the PLAI

Then it writes to:

```text
round-1/<ai-name>.md
```

## Round 2 And Later

Round 2 and later should include cross-review.

Each Reed should review every other Reed by name:

- what it accepts
- what it rejects
- what it modifies
- what it challenges
- direct questions it has
- how its own view changed
- what should be simplified or removed

## Final Position

The final position is not a new brainstorm.

It should state the Reed's final recommendation after reading the full Council record.
