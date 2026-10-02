#!/bin/bash
# Regenerate backend/prisma/sql/seed.d/ from the test prompts.
#
# The `## Data Seeding` blocks in prompts/testing/unit/*.md are the fixtures the
# agent-driven test prompts already assume exist. Rather than maintain a second,
# drifting copy of that data, this script extracts them.
#
# One file per prompt, NOT one concatenated script: the prompts were written to
# run standalone, so some reference tables that no longer exist in
# backend/prisma/schema.prisma. docker/db-init applies each file in its own
# transaction and reports the ones that do not apply, so drift is visible
# instead of aborting the whole seed.
#
# Run after editing any prompts/testing/unit/*.md seeding block.

set -euo pipefail
cd "$(dirname "$0")/.."

OUT_DIR=backend/prisma/sql/seed.d
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

count=0
for f in prompts/testing/unit/*.md; do
  base=$(basename "$f" .md)
  out="$OUT_DIR/${base}.sql"

  {
    printf -- '-- Generated from prompts/testing/unit/%s by scripts/gen-dev-seed.sh.\n' "$(basename "$f")"
    printf -- '-- Do not edit directly; edit the prompt and regenerate.\n\n'
    printf -- 'BEGIN;\n\n'
    # The fenced ```sql block following the "## Data Seeding" heading.
    # `-- execute_sql` is an agent directive, not SQL.
    awk '/^## Data Seeding/{flag=1;next} flag&&/^```sql/{inb=1;next} inb&&/^```/{exit} inb{print}' "$f" \
      | grep -v '^-- execute_sql$'
    printf -- '\nCOMMIT;\n'
  } > "$out"

  # ── Disambiguate Domain.name ──────────────────────────────────────────────
  # 17 prompts insert a Domain with a distinct id but the same name,
  # 'Technology'. Domain.name is UNIQUE (Domain_name_key), and the prompts'
  # `ON CONFLICT (id) DO NOTHING` does not cover a name collision, so they
  # cannot coexist in one database. The rows cannot simply be dropped either:
  # each block's ConsultantProfile references its OWN domainId. Suffixing the
  # name with the row id keeps every foreign key intact and the names unique.
  python3 - "$out" <<'PY'
import re, sys
p = sys.argv[1]
s = open(p).read()
s = re.sub(
    r'INSERT INTO "Domain"[^;]*;',
    lambda m: re.sub(
        r"\('([^']+)',\s*'([^']+)'",
        lambda t: "('%s', '%s [%s]'" % (t.group(1), t.group(2), t.group(1)),
        m.group(0),
    ),
    s,
)
open(p, 'w').write(s)
PY

  count=$((count + 1))
done

echo "Wrote $count files to $OUT_DIR/"
grep -c 'INSERT INTO\|^UPDATE' "$OUT_DIR"/*.sql | awk -F: '{n+=$2} END{print "  " n " statements total"}'
