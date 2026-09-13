#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
fail=0
need() { if [[ ! -f "$1" ]]; then echo "MISSING: $1"; fail=1; else echo "OK      $1"; fi; }
echo "== required surfaces =="
need README.md
need LICENSE
need CONTRIBUTING.md
need SECURITY.md
need docs/PUBLIC_BOUNDARY.md
need docs/CI.md
need .github/workflows/ci.yml
for s in hyperspace nexus orchestrator nyx lyra elysium elara skill-creator; do
  need "skills/$s/SKILL.md"
done
echo
echo "== forbidden path names =="
forbidden=$(find . -path ./.git -prune -o \( -iname '*skilllogin*' -o -iname '*_state.md' -o -iname '*.pem' -o -iname '*.key' -o -iname '.env' -o -iname '.env.*' \) -print | grep -v './.env.example' || true)
if [[ -n "$forbidden" ]]; then echo "FORBIDDEN path present"; echo "$forbidden"; fail=1; else echo "OK      no private-looking filenames"; fi
echo
echo "== secret-shaped content =="
matches=$(grep -RInE --exclude-dir=.git --exclude-dir=.github --exclude='*.yml' --exclude='ci-field-hygiene.sh' 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|AWS_SECRET_ACCESS_KEY|NETBIRD_SETUP_KEY|xprv|mnemonic:[[:space:]]*[a-z]+( [a-z]+){11}' . || true)
if [[ -n "$matches" ]]; then echo "FORBIDDEN content:"; echo "$matches"; fail=1; else echo "OK      no private-key or seed patterns"; fi
echo
if [[ "$fail" -ne 0 ]]; then echo "FIELD HYGIENE FAILED"; exit 1; fi
echo "FIELD HYGIENE PASSED"
