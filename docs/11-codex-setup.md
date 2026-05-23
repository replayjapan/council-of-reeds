# Codex Setup

Codex works well as PLAI or as a Reed when it starts inside the Council project folder.

## As PLAI

Start Codex in the Council project folder:

```bash
cd /path/to/my-council
codex -p council
```

Then paste the starter prompt from:

```text
docs/02-starter-prompt.md
```

## As A Reed

Start Codex in the same Council project folder:

```bash
cd /path/to/my-council
codex -p council
```

Paste the round prompt from the PLAI.

The prompt should tell Codex which file to write, such as:

```text
round-2/chatgpt.md
```

## Project Folder Rule

Keep all files the Reeds need inside the Council project folder.

If Codex cannot access a file, copy it into:

```text
context/
```

## Manual Mode

Codex command shortcuts are not required.

Manual prompts are reliable and portable across systems.

