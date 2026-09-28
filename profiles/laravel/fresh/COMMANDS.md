# Verified commands

## Setup

- PHP dependencies: `composer install`
- Frontend dependencies: `npm install`
- Environment: copy `.env.example` to `.env`, then `php artisan key:generate` when `.env` is absent
- Database schema: `php artisan migrate`

## Development

- Laravel development workflow: `composer run dev`
- Backend only: `php artisan serve`
- Frontend assets: `npm run dev`

## Focused verification

- Test suite or focused test: `php artisan test [--filter=Name]`
- PHP formatting: `vendor/bin/pint`
- Frontend production build: `npm run build`
- Route inspection: `php artisan route:list`

## Data safety

Migration rollback, refresh/fresh, seeding, queue execution, and commands that contact external
services can change data or external state. Inspect their scope and obtain the required authority.
