# Architecture context

## System map

- Laravel monolith providing HTTP routes, application/domain behavior, persistence, queues, and
  scheduled work.
- SQLite local database created by the Laravel installer; production database is not yet decided.
{{ADMIN_SYSTEM}}
- Vite pipeline for frontend assets.

## Ownership and dependency direction

- HTTP controllers, console commands, jobs, and Filament components are delivery adapters.
- Reusable application behavior belongs in cohesive services/actions or domain objects following
  the first established project pattern.
- Eloquent models own persistence relationships and casts, not complete user workflows.
- Infrastructure integrations depend on application contracts where separation is useful.

## Critical invariants

No product-specific invariant exists yet. Every accepted invariant must name its enforcing test.

## High-risk areas

Authorization, location/privacy data, external price or map providers, migrations, background jobs,
and destructive admin actions require explicit design and focused verification.
