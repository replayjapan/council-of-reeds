# Folder Structure

A Council project is just a folder of shared files.

```text
my-council/
  context/
    source-of-truth.md
    additional-context.md
    assets/
    screenshots/
    transcripts/
    examples/
    research/
    existing-project/
  round-1/
    plai-notes.md
  round-2/
  round-3/
  round-4/
  round-5/
  round-6/
  round-7/
  round-8/
  round-9/
  round-10/
  final-position/
  synthesis.md
  prompt.md
  plai-rules.md
  reed-rules.md
  framework-version.txt
  plai-notes-template.md
  synthesis-template.md
```

## The `context/` Folder

The `context/` folder is the Council's shared memory.

Put anything here that the AIs need to understand the task:

- your real request
- constraints
- transcripts
- screenshots
- PDFs
- spreadsheets
- code references
- examples
- existing project files
- research

The Reeds and PLAI should read from `context/` before giving opinions.

## `source-of-truth.md`

This is the most important context file.

It should answer:

- What do you want?
- Why does it matter?
- Who is it for?
- What should the Council review?
- What constraints matter?
- What should the Council avoid?
- What does success look like?
- What final output do you want?

You do not have to write a perfect source of truth manually. You can paste rough notes into chat and ask the PLAI to create it.

## `prompt.md`

`prompt.md` is the active Council prompt.

It tells the Reeds what this Council is trying to decide or produce.

The PLAI updates this when the project direction changes.

## `round-1-prompt.md`

`round-1-prompt.md` is the specific prompt for Round 1.

It should be more tactical than `prompt.md` and should tell each Reed:

- what to read
- what to focus on
- what not to do yet
- where to write its output

In later rounds, the PLAI usually gives the next round instructions through `plai-notes.md` and the round command.

## How These Three Files Differ

```text
context/source-of-truth.md = the user's exact goals, constraints, and source material
prompt.md                  = the active Council assignment
round-1-prompt.md          = the first round's specific instructions
```

## Round Folders

Each round gets its own folder.

Example:

```text
round-2/claude.md
round-2/chatgpt.md
round-2/gemini.md
round-2/plai-notes.md
```

## `plai-notes.md`

`plai-notes.md` is written by the PLAI after a round is complete.

It captures:

- user decisions made after the round
- corrections to Reed drift
- settled items that should not be re-litigated
- unresolved questions
- instructions for the next round

The PLAI should preview `plai-notes.md` with the user before writing it to disk.

Use `plai-notes-template.md` as the starting point.

## Final Position

The `final-position/` folder stores the final Reed recommendations.

The PLAI uses these to create the final artifact.

## `synthesis.md`

`synthesis.md` is the PLAI's final synthesis of the Council.

It should clearly separate:

- what the user asked for
- what the Reeds agreed on
- real disagreements
- the PLAI recommendation
- remaining unknowns
- first action
- crosscheck status

Use `synthesis-template.md` as the starting point.
