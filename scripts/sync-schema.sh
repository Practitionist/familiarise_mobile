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

  # Verify balanced braces across all blocks (models, enums, datasource, generator)
  if ! awk '
    {
      line = $0
      sub(/\/\/.*$/, "", line)
      open_count += gsub(/\{/, "{", line)
      close_count += gsub(/\}/, "}", line)
      if (close_count > open_count) exit 1
    }
    END {
      if (open_count == 0 || open_count != close_count) exit 1
    }
  ' "$schema_file"; then
    echo "Error: $schema_file has unbalanced block braces." >&2
    return 1
  fi

  # BetterAuth schema guard (mirroring familiarise_web/scripts/ci/check-auth-schema.ts)
  for required_auth_model in "model User" "model Session" "model Account" "model Verification"; do
    if ! grep -q "^${required_auth_model} " "$schema_file"; then
      echo "Error: $schema_file is missing required BetterAuth model '${required_auth_model}'." >&2
      return 1
    fi
  done

  # Money-column BigInt guard (mirroring familiarise_web/scripts/ci/check-money-columns.ts)
  if ! grep -qE '[A-Za-z0-9_]+[[:space:]]+BigInt' "$schema_file"; then
    echo "Error: $schema_file is missing BigInt money columns." >&2
    return 1
  fi

  # Validate full AST parse & codegen with prisma_flutter_connector if dart is available
  local dart_bin=""
  if command -v dart >/dev/null 2>&1; then
    dart_bin="$(command -v dart)"
  elif [ -x "$HOME/.local/bin/dart" ]; then
    dart_bin="$HOME/.local/bin/dart"
  fi
  if [ -n "$dart_bin" ] && [ -f "$ROOT_DIR/backend/.dart_tool/package_config.json" ]; then
    local tmp_out
    tmp_out="$(mktemp -d)"
    if ! (cd "$ROOT_DIR/backend" && "$dart_bin" run prisma_flutter_connector:generate --schema "$schema_file" --output "$tmp_out" --server >/dev/null 2>&1); then
      rm -rf "$tmp_out"
      echo "Error: prisma_flutter_connector:generate failed to parse $schema_file." >&2
      return 1
    fi
    rm -rf "$tmp_out"
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
    echo "Error: Canonical web schema not found at $SOURCE_SCHEMA; cannot complete --check drift verification." >&2
    echo "Set WEB_SCHEMA_PATH or pass --source /path/to/familiarise_web/prisma/schema.prisma" >&2
    exit 1
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
  "$ROOT_DIR/backend/scripts/regenerate-build.sh" --prisma
fi
