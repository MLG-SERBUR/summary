#!/usr/bin/env bash
set -euo pipefail

roots=("$@")
if [ "${#roots[@]}" -eq 0 ]; then
  printf 'No roots given.\n' >&2
  printf 'Pass one or more repo paths.\n' >&2
  printf 'Example: scripts/collect-context.sh /path/to/repo1 /path/to/repo2\n' >&2
  exit 1
fi

printf '# Context Snapshot\n'
printf 'Generated: %s UTC\n\n' "$(date -u '+%Y-%m-%d %H:%M')"

for root in "${roots[@]}"; do
  [ -d "$root" ] || continue

  if [ -d "$root/.git" ]; then
    printf '## %s\n' "$root"
    git -C "$root" status --short --branch
    printf '\nRecent commits (last 7 days):\n'
    git -C "$root" log --since='7 days ago' --oneline --decorate --no-merges -n 25 || true
    printf '\n'
  else
    printf '## %s\n' "$root"
    printf '(not a git repo)\n\n'
  fi
done
