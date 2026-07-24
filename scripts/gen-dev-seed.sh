#!/bin/bash
# Regenerate backend/prisma/sql/seed-dev.sql from the test prompts.
#
# The `## Data Seeding` blocks in prompts/testing/unit/*.md are the fixtures the
# agent-driven test prompts already assume exist. Rather than maintain a second,
# drifting copy of that data, this script concatenates them into a single seed
# applied to the local Postgres by docker/db-init.
#
# Run after editing any prompts/testing/unit/*.md seeding block.

set -euo pipefail
cd "$(dirname "$0")/.."

OUT=backend/prisma/sql/seed-dev.sql
SRC_GLOB=prompts/testing/unit/*.md

{
  cat <<'HDR'
-- ─────────────────────────────────────────────────────────────
-- Local development seed.
--
-- HARVESTED from the `## Data Seeding` blocks of prompts/testing/unit/*.md,
-- which are the fixtures the E2E/agent test prompts already assume exist.
-- Regenerate with: ./scripts/gen-dev-seed.sh
--
-- Each source file uses its own `test_unit_<area>_*` id prefix, so the blocks
-- are self-contained and safe to concatenate in file order.
--
-- NOT idempotent on its own — docker/db-init/entrypoint.sh guards it with a
-- marker-row check so a re-run of `docker compose up` does not re-insert.
-- ─────────────────────────────────────────────────────────────

BEGIN;
HDR

  for f in $SRC_GLOB; do
    printf '\n-- ===== %s =====\n' "$(basename "$f")"
    # Take the fenced ```sql block that follows the "## Data Seeding" heading.
    # `-- execute_sql` is an agent directive, not SQL, so drop it.
    awk '/^## Data Seeding/{flag=1;next} flag&&/^```sql/{inb=1;next} inb&&/^```/{exit} inb{print}' "$f" \
      | grep -v '^-- execute_sql$'
  done

  printf '\nCOMMIT;\n'
} > "$OUT"

echo "Wrote $OUT ($(wc -l < "$OUT" | tr -d ' ') lines, $(grep -c 'INSERT INTO\|^UPDATE' "$OUT") statements)"
