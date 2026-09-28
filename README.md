# Agentic Development Boilerplate

Reusable operating layer for AI-assisted software projects. It captures field-tested working
patterns without carrying product-specific rules or references to private repositories.

The goal is to let Codex, Claude, or another coding agent start with a small, accurate context,
discover only what a task needs, and record decisions so that later tasks do not repeat the same
codebase discovery.

## Start a project

Create the application with its native framework tooling first, then run the interactive command:

```bash
agentic-init
```

It asks for the project name and description, offers numbered choices for stack and admin UI, and
proposes `/Applications/MAMP/htdocs/<project-name>` as the default destination. When Laravel is
selected, it creates the application, installs Filament when requested, installs frontend
dependencies, builds the assets, and finally applies the agent layer. For automation, the same
command also accepts explicit options:

```bash
./bin/agentic-init \
  --target /path/to/my-mvp \
  --name "My MVP" \
  --description "One factual sentence about the product" \
  --stack laravel \
  --admin filament
```

For a framework-neutral project, use `--stack generic --admin none`. The initializer is
non-destructive: it stops if a destination file already exists unless `--force` is explicitly
passed. Run `./bin/agentic-init --help` for all options.

After initialization, replace the remaining `TODO(agent)` markers through a short repository
inspection, then run:

```bash
./bin/agentic-check /path/to/my-mvp
```

See [`docs/quickstart.md`](docs/quickstart.md) for the recommended flow for a new MVP and
[`docs/operating-model.md`](docs/operating-model.md) for the issue-to-verification method.

## Foundations

The boilerplate is based on reusable engineering practices: small cross-agent entrypoints,
task-routed context, explicit sources of truth, OOP boundaries, focused verification, immutable
migration history, and durable decision records. Its public files contain no client, product, or
private-repository provenance.

## Repository map

- `model/`: the normalized architecture and reusable pattern catalog.
- `templates/`: the portable files installed in a target repository.
- `profiles/`: optional stack-specific context, loaded only for relevant tasks.
- `bin/`: initializer and lightweight validation commands.
- `docs/`: adoption and operating guides for humans and agents.
- `prompts/`: bounded prompts for one-time or repeatable operations.
- `tests/`: executable checks for the boilerplate itself.

## Design principle

The boilerplate must guide an agent without making ordinary work ceremonial. A clear user request
already authorizes the in-scope work. The agent pauses only when a material choice is unresolved,
new authority is required, or an operation is destructive or affects real external state.

## Evolving the boilerplate

1. Evaluate a proposed pattern outside the public repository when its evidence is private.
2. Classify it as universal, stack-specific, product-specific, or tool-specific.
3. Add only the generalized rule and its technical rationale to `model/pattern-catalog.md`.
4. Never record private repository names, paths, commits, customers, domains, or product details.
5. Change a template only when the rule is broadly useful and enforceable in a fresh repository.

## What this is not

- It is not an autonomous-agent framework.
- It does not copy product strategy, customer data, secrets, or repository status.
- It does not assume Claude, Codex, or any single harness is always present.
- It does not require a second approval after every plan.
- For a generic/unknown stack it installs only the agent layer, because no safe framework scaffold
  can be inferred. Framework-native tools remain the source of truth for application scaffolding.
