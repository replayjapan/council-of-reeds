# Troubleshooting

## A Reed Wrote To The Wrong File

Tell the PLAI.

The PLAI should inspect the folder and recommend whether to:

- move/rename the file
- ask the Reed to rewrite
- continue with a correction note

## A Reed Misunderstood The Task

Tell the PLAI what was wrong.

The PLAI should:

- update `plai-notes.md`
- correct the next round prompt
- require the Reed to address the correction

## A Round Needs To Be Redone

Do not delete the bad round.

Archive it:

```text
archive-round-N-short-reason/
```

Then recreate the round folder and rerun the round.

Example:

```text
archive-round-1-wrong-brief/
round-1/
```

## A Reed Got Stuck

Options:

- ask the same Reed to continue
- restart the same AI as a new Reed
- close that Reed and continue with the others

If restarting, the new Reed should read the project folder and continue from the current round.

## Reeds Are Not Challenging Each Other

Tell the PLAI.

The next round prompt should explicitly require:

- review other Reeds by name
- accept / reject / modify
- ask direct questions
- update stance

## A Reed Reports The Wrong Model

If a Reed reports a model that seems wrong or impossible, stop and verify before using that response.

Recommended fix:

- ask the Reed to confirm its model identity
- for Gemini, use `/model` and switch to the highest available model manually
- rerun the round if the model was wrong

Do not treat a questionable model identity as harmless.

## The Council Is Taking Too Many Rounds

Ask the PLAI:

```text
What remains unresolved, and do we need another round?
```

Most Councils should stop in 3 to 5 rounds.

Use up to 10 only when the problem is complex or the Council made important mistakes.
