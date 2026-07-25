#!/usr/bin/env bash
# Point the NATIVE backend (`dart_frog dev` on the host) at a database.
#
#   source scripts/use-db.sh local      # the docker compose Postgres
#   source scripts/use-db.sh supabase   # the shared cloud database
#   ./scripts/use-db.sh                 # just show what is currently set
#
# MUST be sourced, not executed — it exports into your shell. Because
# backend/main.dart applies Platform.environment last, an exported DIRECT_URL
# beats anything in backend/.env, so this works without editing any file.
#
# In Docker you do not need this: docker-compose sets DIRECT_URL directly.
# To point the containers at Supabase instead, set FAM_DIRECT_URL.

_use_db_target="${1:-}"

# Host port for the compose Postgres. Keep in sync with FAM_PG_PORT in
# docker-compose.yml (5432 is usually taken by a Homebrew postgres).
_use_db_local="postgresql://familiarise:familiarise@localhost:${FAM_PG_PORT:-5433}/familiarise?sslmode=disable"

case "$_use_db_target" in
  local)
    export DIRECT_URL="$_use_db_local"
    export DATABASE_URL="$_use_db_local"
    echo "DB target: LOCAL  (localhost:${FAM_PG_PORT:-5433}/familiarise)"
    ;;

  supabase)
    # Read from backend/.env.supabase rather than storing credentials here.
    _use_db_file="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")/.." && pwd)/backend/.env.supabase"
    if [ ! -f "$_use_db_file" ]; then
      echo "Missing $_use_db_file" >&2
      echo "Copy backend/.env.supabase.example to it and fill in the URLs." >&2
      return 1 2>/dev/null || exit 1
    fi
    set -a
    # shellcheck disable=SC1090
    . "$_use_db_file"
    set +a
    echo "DB target: SUPABASE (from backend/.env.supabase)"
    ;;

  "")
    if [ -n "${DIRECT_URL:-}" ]; then
      # Strip credentials before printing.
      _use_db_shown=${DIRECT_URL#*://}
      echo "DB target: ${_use_db_shown##*@}"
    else
      echo "DB target: unset — backend/.env will decide."
      echo "Run: source scripts/use-db.sh local"
    fi
    ;;

  *)
    echo "Usage: source scripts/use-db.sh [local|supabase]" >&2
    return 1 2>/dev/null || exit 1
    ;;
esac

# A DIRECT_URL left in backend/.env is harmless for precedence (the exported
# one wins) but is a trap for anyone reading the file, so say so once.
_use_db_envfile="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")/.." && pwd)/backend/.env"
if [ -n "$_use_db_target" ] && [ -f "$_use_db_envfile" ] \
  && grep -qE '^\s*(DIRECT_URL|DATABASE_URL)=' "$_use_db_envfile"; then
  echo "note: backend/.env still defines DIRECT_URL/DATABASE_URL." >&2
  echo "      The exported value above takes precedence, but consider" >&2
  echo "      moving those lines to backend/.env.supabase to avoid confusion." >&2
fi

unset _use_db_target _use_db_local _use_db_file _use_db_shown _use_db_envfile
