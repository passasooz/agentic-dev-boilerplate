# Laravel stack profile

Laravel/PHP is the default backend for this project. Verify installed versions from
`composer.json`, `composer.lock`, and runtime configuration rather than assuming them.

## Design rules

- Use object-oriented design with cohesive classes, explicit responsibilities, dependency
  injection, and narrow public APIs.
- Keep controllers, commands, jobs, and UI actions thin; place reusable application behavior in the
  existing service/action/domain layer used by the repository.
- Use Eloquent relationships, casts, policies, requests, resources, events, and jobs according to
  existing project conventions. Do not invent a parallel architecture.
- Create a new migration for schema evolution; do not edit a migration that may already have run.
- Protect authorization, validation, tenant isolation, transactions, queues, and external side
  effects with focused tests.
- Prefer official documentation for the installed Laravel/PHP version over model memory.

## Typical verification

Resolve exact commands into `commands.md`. Usually relevant: focused PHPUnit/Pest tests, Pint,
configured static analysis, migration safety, and the frontend build when assets changed.
