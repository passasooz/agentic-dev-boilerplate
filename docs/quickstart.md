# Quickstart for a new MVP

## 1. Create the real application

`agentic-init` uses the framework's current official Composer package. For the usual setup, choose
Laravel and Filament: the command creates both before installing the agent operating layer.

## 2. Install the agent operating layer

Run the global interactive command and choose from the proposed options:

```bash
agentic-init
```

The default destination is `/Applications/MAMP/htdocs/<project-name>`. A different parent path can
be selected during setup. For automation, the equivalent non-interactive command is:

```bash
./bin/agentic-init --target /path/to/mvp --name "MVP name" \
  --description "What it does and for whom" --stack laravel --admin filament
```

This creates:

- `AGENTS.md`, the short cross-agent router;
- `CLAUDE.md`, a thin Claude adapter;
- `docs/ai/`, split into product, architecture, stack, commands, decisions, and current state;
- `docs/tasks/`, where durable feature briefs live.

## 3. Check the generated context

For a newly scaffolded Laravel application, the initializer writes the verified initial stack,
architecture, commands, and state automatically. No broad agent discovery is required. Run:

Then validate the layer:

```bash
./bin/agentic-check /path/to/mvp
```

When applying only the agent layer to an existing codebase, give the agent
[`prompts/bootstrap-project.md`](../prompts/bootstrap-project.md) once to resolve the context from
the real implementation.

## 4. Start features from a bounded brief

Copy `docs/tasks/_template.md` to a meaningful task file. For a tiny, fully specified correction,
the user request itself can be the brief; do not create process paperwork that costs more than the
change.

The agent reads `AGENTS.md`, then only the context routed for that task. For example, a Laravel
domain change needs stack and architecture context; an isolated copy edit usually does not.

## 5. Preserve learning

After a feature, update only the source of truth made false by the change:

- a durable technical or product choice goes in `decisions.md`;
- implemented capabilities and known gaps go in `state.md`;
- repeatable verified commands go in `commands.md`;
- architecture boundaries change only when the system actually changes.

Do not store session transcripts, speculative notes, or facts already obvious from code. The aim is
high-value retrieval, not maximum documentation.

## Recommended defaults

- Backend: Laravel when it fits the product; this is a preference, not a universal constraint.
- Admin/dashboard: Filament when the application is Laravel.
- Separate Laravel/Filament operations UI is allowed for a non-Laravel service when justified.
- Design: OOP with explicit ownership, small cohesive services, and dependency injection.
- Delivery: issue/brief -> inspect -> implement thin slice -> focused tests -> update durable context.
