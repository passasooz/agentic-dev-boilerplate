# Normalized agentic repository architecture

The operating model has five layers. A target repository can use only the layers it needs.

## 1. Portable entrypoint

`AGENTS.md` answers only the questions needed to begin safely:

- What is this repository?
- What sources should I trust for which questions?
- Where does a task live?
- What work is authorized by a clear request?
- Which local instructions or skills apply?
- What must be verified before completion?

For a conventional application, this entrypoint plus a small set of operational documents may be
enough. Skills and nested instructions are scaling mechanisms, not baseline requirements.

Harness-specific files such as `CLAUDE.md` should be adapters that point to this entrypoint and add
only genuinely harness-specific behavior.

## 2. Context map

Context is divided by concern rather than accumulated in one giant instruction file:

- product intent;
- current implementation state;
- architecture and dependency boundaries;
- design system and brand voice;
- operational commands and environments;
- decisions and known issues.

Each concern has one source of truth. The entrypoint links to it; it does not repeat it.

Documentation supplies intent and operating context; code and tests supply evidence of current
behavior. A repository should state explicitly how to handle divergence between the two.

## 3. Local contracts

Subtree instructions exist only where a package or application has meaningful local constraints.
They define ownership, allowed dependencies, local commands, hazards, and relevant invariants.
They must not restate global rules.

## 4. Capability skills

A skill is appropriate when a task family needs a repeatable workflow or specialized references.
Every skill should contain:

- precise triggers and exclusions;
- prerequisites and required context;
- a bounded workflow;
- references loaded on demand;
- verification or an output checklist;
- portability/tool assumptions.

Skills should not be used to hide core repository rules that every agent must follow.

## 5. Enforcement

Prose guides behavior; automation proves important properties. Depending on the repository this can
include tests, type checks, linters, architecture checks, documentation-link checks, migration
ledgers, hooks, and CI.

Verification should be proportional: focused checks are the default for local changes, while
cross-cutting or high-risk work expands to broader suites, builds, and end-to-end checks.

The generic completion loop is:

```text
understand intent
  -> locate context and existing patterns
  -> classify risk and affected contracts
  -> implement the smallest complete change
  -> verify proportionally
  -> update affected sources of truth
  -> report evidence and omissions
```

No routine second approval is part of this loop. Pause only for a material unresolved choice, new
authority, destructive work, or real external-state impact not already authorized.
