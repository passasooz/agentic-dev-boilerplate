# Pattern catalog

| Pattern | Clayos-v2 | Clayos-web | prenotazioni-wa | Boilerplate status |
|---|---:|---:|---:|---|
| Portable root `AGENTS.md` | Missing | Strong | Strong | Include |
| Thin `CLAUDE.md` adapter | No | Strong | Strong | Include |
| Explicit source-of-truth map | Strong | Partial/specialized | Simple code/tests rule | Include |
| Package-local instructions | Strong | Not needed | Not needed | Optional |
| Task-to-skill router | Strong | Strong | Absent | Include only when skills exist |
| Specialist context prerequisites | Domain/spec focused | Design/copy focused | Runbook focused | Include |
| Negative skill triggers | Partial | Strong | Not applicable | Include with optional skills |
| Installed-stack docs over model memory | Local stack notes | Strong Next.js rule | Existing patterns + command catalog | Include as a pattern |
| Invariants enforced by tests | Strong | Mostly skill checklists | Behavioral test suite | Include for critical rules |
| Documented command catalog | Strong | Package scripts | Strong | Include when execution is non-obvious |
| Proportional verification | Broad suite by default | Task/skill dependent | Strong focused-test policy | Include |
| Documentation propagation | Strong | Limited | Divergence reporting | Include proportionally |
| Mandatory second approval | Present | Absent | Absent | Exclude by default |
| External tracker coupling | Strong | Absent | Issue references only | Optional adapter |

## Rule classification

Before promoting a source rule into the template, classify it:

- **Universal:** useful in most software repositories, such as search-before-create.
- **Stack-specific:** valid only for a technology or version, such as consulting installed Next.js
  documentation.
- **Product-specific:** encodes domain, policy, customer, or compliance decisions.
- **Tool-specific:** depends on a harness, tracker, MCP server, or command family.

Only universal rules belong in the base template. The other classes belong in optional local
contracts, stack profiles, skills, or adapters.
