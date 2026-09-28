# Source profile: Clayos-web

Source inspected: `/Applications/MAMP/htdocs/clayos/Clayos-web`.

## Entry and routing structure

- Root `AGENTS.md` is the cross-agent entrypoint.
- Root `CLAUDE.md` is a two-line adapter that imports `AGENTS.md` and
  `.claude/skills-usage.md`.
- `.claude/skills-usage.md` controls when optional specialist skills may run.
- `.agents/skills/` contains task-specific skills such as COSS component guidance,
  UI-particle discovery, skill discovery, and the `impeccable` design workflow.

## Context model

Design and copy work is grounded in three root context files:

- `PRODUCT.md`: audience, brand, product purpose, principles, and anti-references;
- `DESIGN.md`: visual source of truth and design system;
- `VOICE.md`: vocabulary and copy patterns.

This is a reusable pattern: specialist work should declare the context artifacts it requires. It
should not force unrelated backend or maintenance tasks to load creative context.

## Operational behavior

- Framework freshness is treated as a real risk: the agent must consult the installed Next.js
  documentation instead of trusting model memory.
- Design/copy tasks load strategic context before producing changes.
- Specialist skills are meant to be optional and routed by task type.
- The `impeccable` skill contains its own setup, task register, reference routing, quality laws,
  and command family.
- The `coss` skill requires source verification and component-specific references before emitting
  library code.

## Strong reusable patterns

- `AGENTS.md` as the portable root entrypoint.
- Tiny harness adapters (`CLAUDE.md`) that point to shared rules rather than duplicate them.
- Context loaded only for the task families that need it.
- Installed-library documentation preferred over potentially stale model knowledge.
- Skills as bounded capability packages with triggers, prerequisites, references, and output
  checks.
- Explicit negative routing: documenting when a skill must not run.

## Project-specific details to exclude from a generic template

- COSS component APIs and particle catalog.
- The specific visual laws and aesthetic prohibitions in `impeccable`.
- Clayos brand, product, and voice content.
- Next.js-specific installed documentation paths, except as an example of a stack freshness rule.

## Risks and ambiguities

- Root `AGENTS.md` says design/copy context must always be loaded, while
  `.claude/skills-usage.md` says specialist marketing skills require explicit invocation. The
  difference between mandatory context and optional capability must remain explicit.
- Large third-party skills can dominate the context window. Routing should load their references
  progressively and only when the task matches.
- A trigger-keyword list can overfire. Intent and task surface are safer primary signals than a
  single keyword.
