#!/usr/bin/env bash
# Sync the canonical Prisma schema from familiarise_web into backend/prisma/schema.prisma.
#
# Usage:
#   ./scripts/sync-schema.sh                     # copy canonical web schema -> backend/prisma/schema.prisma
#   ./scripts/sync-schema.sh --check             # verify backend/prisma/schema.prisma has not drifted
#   ./scripts/sync-schema.sh --source <path>     # override path to familiarise_web/prisma/schema.prisma
#   ./scripts/sync-schema.sh --regen             # sync schema and regenerate backend Prisma Dart client
#
# Environment variables:
#   WEB_SCHEMA_PATH  Optional override for canonical familiarise_web/prisma/schema.prisma path

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_SCHEMA="$ROOT_DIR/backend/prisma/schema.prisma"

# Resolve default source schema path (sibling checkout or Cloudtop path)
DEFAULT_SIBLING_SCHEMA="$(cd "$ROOT_DIR/.." && pwd)/familiarise_web/prisma/schema.prisma"
FALLBACK_WEB_SCHEMA="/usr/local/google/home/kaustavg/github/familiarise_web/prisma/schema.prisma"

if [ -n "${WEB_SCHEMA_PATH:-}" ]; then
  SOURCE_SCHEMA="$WEB_SCHEMA_PATH"
elif [ -f "$DEFAULT_SIBLING_SCHEMA" ]; then
  SOURCE_SCHEMA="$DEFAULT_SIBLING_SCHEMA"
else
  SOURCE_SCHEMA="$FALLBACK_WEB_SCHEMA"
fi

CHECK_ONLY=false
RUN_REGEN=false

while [ $# -gt 0 ]; do
  case "$1" in
    --check)
      CHECK_ONLY=true
      shift
      ;;
    --regen)
      RUN_REGEN=true
      shift
      ;;
    --source)
      if [ $# -lt 2 ]; then
        echo "Error: --source requires a file path argument" >&2
        exit 2
      fi
      SOURCE_SCHEMA="$2"
      shift 2
      ;;
    -h|--help)
      sed -n '2,12p' "$0"
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      sed -n '2,12p' "$0" >&2
      exit 2
      ;;
  esac
done

validate_schema_file() {
  local schema_file="$1"
  if [ ! -f "$schema_file" ]; then
    echo "Error: Schema file not found: $schema_file" >&2
    return 1
  fi
  if ! grep -q 'provider *= *"prisma-client-js"' "$schema_file"; then
    echo "Error: $schema_file is missing standard 'provider = \"prisma-client-js\"' generator block." >&2
    return 1
  fi
  if ! grep -q 'provider *= *"postgresql"' "$schema_file"; then
    echo "Error: $schema_file is missing 'provider = \"postgresql\"' datasource block." >&2
    return 1
  fi
}

count_models() {
  grep -cE '^model [A-Za-z0-9_]+ \{' "$1" || true
}

count_enums() {
  grep -cE '^enum [A-Za-z0-9_]+ \{' "$1" || true
}

if [ "$CHECK_ONLY" = true ]; then
  validate_schema_file "$TARGET_SCHEMA"
  target_models="$(count_models "$TARGET_SCHEMA")"
  target_enums="$(count_enums "$TARGET_SCHEMA")"

  if [ ! -f "$SOURCE_SCHEMA" ]; then
    echo "[sync-schema] Canonical web schema not present at $SOURCE_SCHEMA (standalone checkout)."
    echo "[sync-schema] Verified $TARGET_SCHEMA header and structure ($target_models models, $target_enums enums)."
    exit 0
  fi

  validate_schema_file "$SOURCE_SCHEMA"
  source_models="$(count_models "$SOURCE_SCHEMA")"
  source_enums="$(count_enums "$SOURCE_SCHEMA")"

  if cmp -s "$SOURCE_SCHEMA" "$TARGET_SCHEMA"; then
    echo "[sync-schema] OK: backend/prisma/schema.prisma is in sync with $SOURCE_SCHEMA ($target_models models, $target_enums enums)."
    exit 0
  else
    echo "[sync-schema] DRIFT DETECTED between canonical web schema and backend/prisma/schema.prisma:" >&2
    echo "  Canonical source ($SOURCE_SCHEMA): $source_models models, $source_enums enums" >&2
    echo "  Mobile backend   ($TARGET_SCHEMA): $target_models models, $target_enums enums" >&2
    echo "Run './scripts/sync-schema.sh' to synchronize backend/prisma/schema.prisma." >&2
    exit 1
  fi
fi

if [ ! -f "$SOURCE_SCHEMA" ]; then
  echo "Error: Canonical web schema not found at $SOURCE_SCHEMA" >&2
  echo "Set WEB_SCHEMA_PATH or pass --source /path/to/familiarise_web/prisma/schema.prisma" >&2
  exit 1
fi

validate_schema_file "$SOURCE_SCHEMA"

mkdir -p "$(dirname "$TARGET_SCHEMA")"
cp "$SOURCE_SCHEMA" "$TARGET_SCHEMA"
validate_schema_file "$TARGET_SCHEMA"

models="$(count_models "$TARGET_SCHEMA")"
enums="$(count_enums "$TARGET_SCHEMA")"
echo "[sync-schema] Synced $SOURCE_SCHEMA -> $TARGET_SCHEMA ($models models, $enums enums)."

if [ "$RUN_REGEN" = true ]; then
  echo "[sync-schema] Regenerating backend Prisma client and Freezed models..."
  "$ROOT_DIR/scripts/regenerate-build.sh" --prisma
fi
