#!/usr/bin/env bash
# Run the backend natively with hot reload, against whichever database is
# currently selected.
#
#   source scripts/use-db.sh local
#   ./scripts/dev-backend.sh
#
# Why not just `cd backend && dart_frog dev`?
#
# Several call sites read Platform.environment directly rather than going
# through the DotEnv instance built in main.dart — storage_utils.dart,
# routes/api/upload/{image,document}.dart, route_handlers/user_reserved_handlers.dart
# (SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY), routes/_middleware.dart (DART_ENV,
# ALLOWED_ORIGINS), utils/slot_lock.dart (UPSTASH_REDIS_*), and others. Values
# that live only in backend/.env are invisible to those. Exporting the file into
# the process environment first makes the native run behave like the container,
# where compose supplies everything as real environment variables.

set -euo pipefail
cd "$(dirname "$0")/../backend"

# Export .env, then .env.local, without clobbering anything already exported —
# an explicit `source scripts/use-db.sh` must still win.
load_env() {
  [ -f "$1" ] || return 0
  while IFS= read -r line; do
    case "$line" in ''|'#'*) continue ;; esac
    key=${line%%=*}
    key=${key// /}
    [ -n "${!key:-}" ] && continue   # already exported: leave it alone
    export "${key?}=${line#*=}"
  done < "$1"
}

load_env .env
load_env .env.local

if [ -z "${DIRECT_URL:-}${DATABASE_URL:-}" ]; then
  echo "No DIRECT_URL/DATABASE_URL set." >&2
  echo "Run: source scripts/use-db.sh local" >&2
  exit 1
fi

./scripts/ensure-generated.sh

exec "${HOME}/.pub-cache/bin/dart_frog" dev --port "${PORT:-8080}"
