#!/usr/bin/env bash
# JQB retirement ratchet (Phase B guardrail).
#
# Fails CI if the number of raw JsonQueryBuilder / findManyRaw / findFirstRaw
# sites in application code RISES above the recorded baseline. The baseline is
# only ever lowered (as repositories are migrated to typed delegates), so JQB
# can shrink but never creep back.
#
# Update the baselines below whenever you legitimately reduce the counts.
set -euo pipefail
cd "$(dirname "$0")/.."

# Baselines — lower these as Phase B progresses. Never raise them.
JQB_BASELINE=4
RAW_BASELINE=0

jqb=$( (grep -rn "JsonQueryBuilder()" lib/database routes/ lib/services lib/route_handlers 2>/dev/null || true) | wc -l | tr -d ' ')
raw=$( (grep -rn "\.findManyRaw\|\.findFirstRaw" lib/database routes/ lib/services lib/route_handlers 2>/dev/null || true) | wc -l | tr -d ' ')

echo "JsonQueryBuilder sites: $jqb (baseline $JQB_BASELINE)"
echo "findManyRaw/findFirstRaw sites: $raw (baseline $RAW_BASELINE)"

fail=0
if [ "$jqb" -gt "$JQB_BASELINE" ]; then
  echo "::error:: JsonQueryBuilder count rose to $jqb (> $JQB_BASELINE). Use typed delegates."
  fail=1
fi
if [ "$raw" -gt "$RAW_BASELINE" ]; then
  echo "::error:: findManyRaw/findFirstRaw count rose to $raw (> $RAW_BASELINE). Use typed include."
  fail=1
fi

if [ "$jqb" -lt "$JQB_BASELINE" ] || [ "$raw" -lt "$RAW_BASELINE" ]; then
  echo "Nice — counts dropped. Lower the baselines in scripts/jqb-gate.sh to lock in the win."
fi

exit $fail
