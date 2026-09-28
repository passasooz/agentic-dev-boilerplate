# Source profile: Clayos-v2

Source inspected: `/Applications/MAMP/htdocs/clayos/Clayos-v2`.

## Entry and routing structure

- Root `CLAUDE.md` is the operational entrypoint.
- Nested `CLAUDE.md` files add package-local contracts for `apps/web`, `packages/domain`,
  `packages/db`, `packages/ai`, and `packages/kb`.
- `.claude/skills/clayos-using-skills/SKILL.md` routes work by phase: define, plan, build, verify,
  review, ship and record.
- Other `clayos-*` skills cover specification, planning, incremental delivery, schema invariants,
  interfaces, and documentation/decision propagation.
- `.agents/skills/` also contains installed specialist skills, mostly for visual design and
  supporting technology. They are a separate concern from the Clayos coding workflow.

## Context hierarchy

The repository explicitly separates:

1. target product logic;
2. verified implementation state;
3. delivery plan;
4. data-model specification;
5. legal/privacy policy;
6. engineering specifications;
7. known issues.

The strongest reusable idea is not the exact document list. It is assigning one question to one
source of truth and making the entrypoint say which source answers which question.

## Operational behavior

- Orient in the relevant product and package context.
- State scope and search for an existing implementation.
- Map significant work to a specification point and affected constraints.
- Build in thin, test-verified slices.
- Treat invariant tests as the enforceable form of important policy.
- Keep runtime behavior, source-of-truth documents, decisions, and execution tracking coherent.
- Report changes, verification, deliberate omissions, and failures honestly.

The repository currently includes a checkpoint rule for non-trivial changes. That is a
project-specific governance choice, not a universal boilerplate default. This lab does not inherit
it.

## Strong reusable patterns

- Root router plus subtree-local instructions.
- Explicit source-of-truth map.
- Task-to-skill routing instead of loading every specialist instruction every time.
- Search-before-create and strict scope control.
- Architectural dependency direction written down near the repo map.
- Important constraints backed by tests that deliberately plant violations.
- Decisions and implementation status kept in the repository rather than private agent memory.
- Documentation propagation as part of completion when behavior changes.

## Project-specific details to exclude from a generic template

- Clayos domain vocabulary and product north star.
- Specific C1-C7 constraints and their current implementation status.
- Linear team names, branch naming, and issue identifiers.
- Provider/model choices, authentication details, and named customer safeguards.
- Exact package topology and the English-only product-copy rule.
- Historical incident narratives unless the target repository needs them as local gotchas.

## Portability gaps

- There is no root `AGENTS.md`, so Codex-compatible discovery can miss the rich `CLAUDE.md`
  protocol.
- Some skills repeat facts from the root and can drift; one observed example is constraint
  numbering around the draft-to-publish gate.
- Several workflow references assume Claude-specific commands or connected Linear tooling.
