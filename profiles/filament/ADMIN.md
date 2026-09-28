# Filament admin profile

Filament is the preferred admin/dashboard UI for this Laravel project. Verify the installed major
version and panel layout before generating code.

- Follow existing Panel, Resource, Page, Widget, form, table, and action conventions.
- Keep business rules outside Filament components so they remain testable and reusable.
- Enforce authorization in policies and application boundaries, not only by hiding UI controls.
- Treat multi-tenancy, bulk actions, imports, exports, and destructive actions as high-risk.
- Test business behavior below the UI and add focused Livewire/Filament coverage for critical
  interactions.
- Prefer official documentation matching the installed Filament version over model memory.
