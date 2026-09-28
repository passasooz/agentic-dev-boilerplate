# Operating model

## Context budget

Every document must earn its place in the context window. Use three levels:

1. **Always:** `AGENTS.md`, kept short enough to route the task.
2. **On demand:** one or more `docs/ai/` files selected by the task surface.
3. **Deep reference:** code, tests, runbooks, and external documentation opened only to answer a
   concrete question.

Do not require every agent to reread every document for every task. Do not duplicate the same rule
across entrypoints and context files.

## Feature loop

1. **Issue or brief:** outcome, acceptance criteria, exclusions, risk, and evidence required.
2. **Orient:** read routed context and search for the nearest existing implementation and test.
3. **Decide:** identify affected ownership boundaries and unresolved product choices.
4. **Build:** implement the smallest complete vertical slice using existing patterns.
5. **Verify:** start with focused tests and expand only with integration surface or risk.
6. **Record:** update durable decisions/state only when the feature changes them.
7. **Report:** changed behavior, evidence, omissions, and unresolved risks.

## When to create a skill

Create a project skill only when a task family repeats and needs a workflow, specialist references,
or a stable checklist. A skill must state its triggers, exclusions, required context, workflow, and
verification. Ordinary repository rules stay in `AGENTS.md`; product facts stay in `docs/ai/`.

## Evidence hierarchy

- Product intent: `product.md` and accepted task briefs.
- Settled choices: `decisions.md`.
- Claimed implementation status: `state.md`.
- Actual behavior: code and tests.

When prose and implementation differ, inspect both and report the divergence. Do not silently
rewrite intent to match an accidental implementation.
