# Source profile: prenotazioni-wa

Source inspected: `/Applications/MAMP/htdocs/prenotazioni-wa` at commit `73925d8`.

## Entry and routing structure

- Root `AGENTS.md` is the primary Codex guide.
- Root `CLAUDE.md` is a thin Claude Code adapter that imports `AGENTS.md`.
- `docs/ai/project-context.md`, `coding-rules.md`, `commands.md`, and `architecture.md` form the
  mandatory operating context.
- Additional `docs/ai/` files are runbooks and focused research notes for WhatsApp, Meta, email,
  responsive behavior, and conversational edge cases.
- There are no project-scoped agent skills and no subtree-local agent instruction files.

## Context hierarchy

The repaired instructions now state a useful two-level rule:

1. `docs/ai/` provides operational context;
2. code and tests determine what is actually implemented.

When they diverge, the agent must inspect the implementation and report the divergence. This fixes
the earlier contradiction in which agents were required to read the same documentation they were
also told not to trust or use.

## Operational behavior

- Read four short operating documents before a task.
- Make only explicitly requested application changes.
- Keep scope small and avoid unrelated refactors.
- Reuse existing Laravel and Filament patterns.
- Use the documented command catalog rather than inventing commands.
- Never edit historical migrations; add a new migration for schema changes.
- Avoid destructive or data-changing commands without explicit authorization.
- Prefer focused syntax checks and tests over an indiscriminate heavy suite.
- Report structural anomalies separately instead of repairing them outside scope.

## Strong reusable patterns

- A small `AGENTS.md` can be sufficient for a conventional application when it points to accurate
  operational context.
- Code and tests can be named explicitly as evidence of current behavior without discarding useful
  architectural documentation.
- A command catalog is valuable when local infrastructure has non-obvious startup and execution
  paths.
- Verification can be proportional to change risk rather than universally running every check.
- Migration immutability and destructive-data boundaries deserve root-level visibility.
- Conventional repositories may not need project skills or nested instructions at all.

## Project-specific details to exclude from a generic template

- WhatsApp/Meta onboarding and sandbox routing details.
- Filament panel paths and Laravel service names.
- Email addresses, ports, issue numbers, and tenant-specific test flows.
- Machine-level Docker wrapper names.
- Exact test filters and application commands.

## Corrections verified after the agent-guide repair

- The false agricultural-management description was replaced with the real WhatsApp booking SaaS
  identity.
- The source-of-truth contradiction was replaced consistently in `AGENTS.md`, `CLAUDE.md`,
  `project-context.md`, and `coding-rules.md`.
- The stale `app/Livewire/YearSelectorTopbar.php` example was removed from the declared stack.
- The conflicting machine-wrapper convention was removed; both root guides now defer to
  `docs/ai/commands.md`.
- The Filament resource path was corrected to `app/Filament/Admin/Resources` and checked against
  the repository structure.
- `CLAUDE.md` was reduced to a thin `@AGENTS.md` adapter, removing duplicated operating rules.
- The worktree was clean. Commits `b6e7669`, `6f222a1`, and `73925d8` record the repair passes.

## Remaining structural observations

- No unresolved contradiction from the inspected repair set remains at commit `73925d8`.
- Mandatory reading of all four documents for every task is simple but potentially wasteful. A
  mature version could route by task without introducing skills unless repository complexity grows.
- The broad phrase `da verificare` can become a substitute for inspection. A stronger generic rule
  is to use it only after safe repository checks have been exhausted and to name the missing
  evidence.
