#!/bin/bash
# Provision the local development Postgres:
#   1. prisma db push        — create the 129 tables from the in-repo schema
#   2. sidecar SQL           — ledger triggers + CHECK constraints (db push
#                              does not manage triggers or checks)
#   3. seed-dev.sql          — fixtures the test prompts assume, guarded so a
#                              repeat `docker compose up` does not re-insert
#
# Safe to run on every `docker compose up`: db push on an unchanged schema is a
# fast no-op and the sidecars are idempotent (DROP IF EXISTS + ADD).

set -euo pipefail

: "${DIRECT_URL:?DIRECT_URL must be set}"

# ── Safety gate ────────────────────────────────────────────────
# This script runs `db push --accept-data-loss`, which will happily drop
# columns to make the database match the schema. That is fine for a disposable
# local container and catastrophic anywhere else, so refuse to run against any
# host that is not the local compose network or loopback.
_rest=${DIRECT_URL#*://}   # strip scheme
_rest=${_rest##*@}         # strip user:password@ if present
DB_HOST=${_rest%%[:/?]*}   # keep up to the first ':', '/' or '?'
case "$DB_HOST" in
  db | localhost | 127.0.0.1 | postgres) ;;
  *)
    echo "REFUSING to provision: DIRECT_URL points at '$DB_HOST', which is not a" >&2
    echo "local database. db-init runs destructive schema pushes and must only" >&2
    echo "ever target the compose Postgres. Check your DIRECT_URL." >&2
    exit 1
    ;;
esac

echo "==> Target: $DB_HOST"

# ── 1. Schema ──────────────────────────────────────────────────
# --url bypasses both prisma.config.ts and datasource.url, so the in-repo
# schema (which declares neither) needs no edits.
#
# There is deliberately no --skip-generate: Prisma 7's `db push` does not
# invoke the generator at all, and passing the flag is a hard error. The
# schema's `generator client = prisma-client-js` block is therefore inert
# here — the Dart client comes from prisma_flutter_connector instead.
echo "==> [1/3] prisma db push"
prisma db push \
  --schema prisma/schema.prisma \
  --url "$DIRECT_URL" \
  --accept-data-loss

# ── 2. Sidecars ────────────────────────────────────────────────
# psql runs each file whole; the upstream `-- SPLIT` markers are just comments.
echo "==> [2/3] sidecar SQL (ledger triggers + CHECK constraints)"
psql "$DIRECT_URL" -v ON_ERROR_STOP=1 -q \
  -f prisma/sql/ledger-triggers.sql \
  -f prisma/sql/check-constraints.sql

# ── 3. Seed ────────────────────────────────────────────────────
# One file per test prompt, each applied in its own transaction. The prompts
# were written to run standalone against the shared database, so a few of them
# reference tables this schema no longer has. Applying them independently means
# that drift costs you one block instead of the whole seed — and gets reported
# rather than silently swallowed.
#
# The blocks are not individually idempotent, so gate the whole step on a
# marker row from the first one.
echo "==> [3/3] dev seed"
SEEDED=$(psql "$DIRECT_URL" -tAc \
  "SELECT count(*) FROM \"users\" WHERE id = 'test_unit_auth_u1'")

if [ "$SEEDED" != "0" ]; then
  echo "    already seeded, skipping"
else
  ok=0
  skipped=""
  for f in prisma/sql/seed.d/*.sql; do
    if err=$(psql "$DIRECT_URL" -v ON_ERROR_STOP=1 -q -f "$f" 2>&1); then
      ok=$((ok + 1))
    else
      skipped="$skipped $(basename "$f" .sql)"
      # First ERROR line is the useful one; the rest is context.
      echo "    ! $(basename "$f"): $(echo "$err" | grep -m1 ERROR || echo "$err" | head -1)"
    fi
  done

  echo "    seeded $ok/$(ls prisma/sql/seed.d/*.sql | wc -l | tr -d ' ') blocks"
  if [ -n "$skipped" ]; then
    echo "    skipped:$skipped"
    echo "    (these prompts reference tables this schema does not have —"
    echo "     prompt drift, not a provisioning failure)"
  fi
fi

TABLES=$(psql "$DIRECT_URL" -tAc \
  "SELECT count(*) FROM information_schema.tables WHERE table_schema='public'")
echo "==> Done. $TABLES tables in public schema."
