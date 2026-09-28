#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
kit_root=$(dirname -- "$script_dir")
test_root=$(mktemp -d /private/tmp/agentic-init-test.XXXXXX)
trap 'rm -rf "$test_root"' EXIT HUP INT TERM

target="$test_root/project"
"$kit_root/bin/agentic-init" --target "$target" --name 'Test MVP' \
  --description 'A test application' --stack laravel --admin filament --layer-only

grep -F '`Test MVP` — A test application' "$target/AGENTS.md" >/dev/null
test -f "$target/docs/ai/admin.md"
test -f "$target/docs/ai/bootstrap.md"
test -d "$target/.git"
grep -F 'Laravel stack profile' "$target/docs/ai/stack.md" >/dev/null

if "$kit_root/bin/agentic-init" --target "$target" --name 'Other' \
  --description 'Must not overwrite' --stack generic --layer-only >/dev/null 2>&1; then
  printf 'Expected collision protection to fail.\n' >&2
  exit 1
fi
grep -F '`Test MVP` — A test application' "$target/AGENTS.md" >/dev/null

interactive_parent="$test_root/interactive"
mkdir -p "$interactive_parent"
printf '%s\n' \
  'Interactive MVP' \
  'An interactive test application' \
  '1' \
  '1' \
  '2' \
  "$interactive_parent" \
  '1' | "$kit_root/bin/agentic-init" --layer-only >/dev/null
interactive_target="$interactive_parent/interactive-mvp"
grep -F '`Interactive MVP` — An interactive test application' "$interactive_target/AGENTS.md" >/dev/null
test -f "$interactive_target/docs/ai/admin.md"

perl -0pi -e 's/TODO\(agent\)[^`\n]*/resolved/g' "$target"/docs/ai/*.md
"$kit_root/bin/agentic-check" "$target" >/dev/null

printf 'Initializer tests passed.\n'
