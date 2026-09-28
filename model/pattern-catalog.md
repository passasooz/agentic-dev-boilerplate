# Pattern catalog

This catalog records reusable decisions without retaining the identity or details of private source
projects.

| Pattern | Status | Rationale |
|---|---|---|
| Portable root `AGENTS.md` | Included | Gives different coding agents one small entrypoint. |
| Thin harness adapters | Included | Avoids duplicating shared rules in harness-specific files. |
| Explicit source-of-truth map | Included | Routes questions without loading all project context. |
| Context loaded by task | Included | Reduces repeated discovery and unnecessary token use. |
| Package-local instructions | Optional | Useful only when a subtree has meaningful extra constraints. |
| Capability skills | Optional | Appropriate for repeated specialist workflows, not ordinary rules. |
| Installed-stack docs over model memory | Included | Framework APIs and requirements change over time. |
| OOP ownership and dependency direction | Included | Keeps application behavior cohesive and testable. |
| Critical invariants enforced by tests | Included | Automation is stronger evidence than prose alone. |
| Verified command catalog | Included | Prevents agents from guessing environment-specific commands. |
| Proportional verification | Included | Focused checks save time while risk determines broader coverage. |
| Immutable migration history | Database stacks | Avoids rewriting schema operations that may already have run. |
| Durable decision and state records | Included | Prevents future sessions from reopening settled questions. |
| Mandatory approval after every plan | Excluded | A clear request already authorizes normal in-scope work. |
| External tracker coupling | Optional adapter | A reusable repository must not require one vendor or workflow. |

## Rule classification

Before promoting a rule into a template, classify it:

- **Universal:** useful in most software repositories, such as search-before-create.
- **Stack-specific:** valid only for a technology or version.
- **Product-specific:** encodes domain, policy, customer, or compliance decisions.
- **Tool-specific:** depends on a harness, tracker, plugin, or command family.

Only universal rules belong in the base template. Other classes belong in optional profiles, local
contracts, skills, or adapters. Product-specific evidence and private provenance remain outside the
public boilerplate.
