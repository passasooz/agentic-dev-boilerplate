# Repository agent guide

## Identity

`{{PROJECT_NAME}}` — {{PROJECT_DESCRIPTION}}

Primary stack profile: `docs/ai/stack.md`.

## Read by task, not all at once

Always read this file. Then load only the context needed:

| Task question | Authoritative source |
|---|---|
| Product outcome, users, non-goals | `docs/ai/product.md` |
| Current capabilities and known gaps | `docs/ai/state.md` |
| Module ownership and dependency direction | `docs/ai/architecture.md` |
| Framework and engineering conventions | `docs/ai/stack.md` |
| Commands supported by this repository | `docs/ai/commands.md` |
| Choices that must not be reopened casually | `docs/ai/decisions.md` |
| Feature-specific contract | Relevant file in `docs/tasks/`, when present |

If `docs/ai/` still contains unresolved bootstrap markers, perform the one-time procedure in
`docs/ai/bootstrap.md` before starting product implementation.

Read product context for behavior or scope decisions; architecture and stack context for code
changes; commands before executing project tooling; decisions only when the task touches a settled
choice. Do not preload unrelated documents.

Code and tests are evidence of actual behavior. Documentation records intent and operating
context. If they disagree, inspect the implementation, identify the divergence, and do not silently
choose a new product direction.

## Work loop

1. Translate the request into an observable outcome and identify the affected surface.
2. Load only routed context and local `AGENTS.md` files for that surface.
3. Search for the closest existing implementation and its tests before creating anything.
4. Implement the smallest complete change using existing ownership and patterns.
5. Verify proportionally: focused checks first; broaden for integration boundaries or high risk.
6. Update a source of truth only when the change makes it false or incomplete.
7. Report behavior changed, evidence, deliberate omissions, and unresolved risks.

A clear build/change request authorizes normal in-scope implementation. Pause only for a material
unresolved product choice, missing authority, destructive work, or external side effects beyond the
request.

## Engineering rules

- Prefer object-oriented design with cohesive responsibilities and explicit dependency direction.
- Preserve public contracts and established patterns unless changing them is the task.
- Do not create a new abstraction when an existing module already owns the concept.
- Keep scope narrow; report unrelated defects separately.
- Never expose secrets or use real customer data as fixtures.
- Treat schema changes, authorization, tenant isolation, payments, privacy, destructive data work,
  deployment, and external effects as high-risk.
- Never invent commands. Use `docs/ai/commands.md`; if missing, inspect project configuration and
  record a command only after verifying it.

## Completion standard

Do not claim completion while a relevant check fails. State what ran, what could not run, and why.
For durable changes, update `state.md`, `decisions.md`, or another authoritative document only when
needed; never paste session history into project context.
