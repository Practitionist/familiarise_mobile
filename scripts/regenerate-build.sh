#!/bin/bash
# Regenerate all build systems (Prisma client, backend codegen, Dart Frog, Flutter codegen)
#
# Usage:
#   ./scripts/regenerate-build.sh            # all four
#   ./scripts/regenerate-build.sh --backend   # Prisma client + backend codegen + Dart Frog only
#   ./scripts/regenerate-build.sh --frontend  # Flutter codegen only
#   ./scripts/regenerate-build.sh --prisma    # Prisma client + backend codegen only

set -e
cd "$(dirname "$0")/.."
ROOT_DIR=$(pwd)

# Ensure pub-cache bin is in PATH (for dart_frog, etc.)
export PATH="$HOME/.pub-cache/bin:$PATH"

# Parse args
RUN_PRISMA=false
RUN_DARTFROG=false
RUN_FLUTTER=false
FORCE=0

if [ $# -eq 0 ]; then
  RUN_PRISMA=true
  RUN_DARTFROG=true
  RUN_FLUTTER=true
else
  for arg in "$@"; do
    case $arg in
      --backend)
        RUN_PRISMA=true
        RUN_DARTFROG=true
        ;;
      --frontend)
        RUN_FLUTTER=true
        ;;
      --prisma)
        RUN_PRISMA=true
        ;;
      --force)
        FORCE=1
        ;;
      *)
        echo "Unknown option: $arg"
        echo "Usage: $0 [--backend] [--frontend] [--prisma] [--force]"
        echo ""
        echo "  --force  Wipe and regenerate even when inputs are unchanged."
        echo "           Without it, codegen is skipped when prisma/schema.prisma,"
        echo "           the connector/freezed versions and build.yaml all match"
        echo "           the last run."
        exit 1
        ;;
    esac
  done
fi

# ============================================
# 1-2. Backend codegen (Prisma client + freezed), hash-guarded
# ============================================
# Previously these were two stages that each began by deleting their own
# output — `rm -rf backend/lib/generated` and a `find … | xargs rm -f` over
# every *.freezed.dart. That ran on every invocation regardless of whether
# anything had changed, destroying build_runner's asset graph and forcing a
# cold rebuild of ~735k generated lines each time.
#
# ensure-generated.sh now owns both stages and skips them when schema.prisma,
# the connector/freezed versions and build.yaml are all unchanged. Pass
# --force to get the old wipe-and-rebuild behaviour.
if [ "$RUN_PRISMA" = true ]; then
  echo ""
  echo "=== [1-2/4] Backend codegen (Prisma client + freezed) ==="
  cd "$ROOT_DIR/backend"
  FORCE_CODEGEN="$FORCE" ./scripts/ensure-generated.sh
  cd "$ROOT_DIR"
fi

# ============================================
# 3. Dart Frog Build (backend/build/)
# ============================================
if [ "$RUN_DARTFROG" = true ]; then
  echo ""
  echo "=== [3/4] Dart Frog Build ==="
  echo "Deleting backend/build/..."
  rm -rf backend/build

  cd "$ROOT_DIR/backend"
  echo "Building Dart Frog server..."
  dart_frog build

  cd "$ROOT_DIR"
  echo "Dart Frog build complete."
fi

# ============================================
# 4. Flutter CodeGen (*.g.dart, *.freezed.dart)
# ============================================
if [ "$RUN_FLUTTER" = true ]; then
  echo ""
  echo "=== [4/4] Flutter CodeGen ==="
  # Only wipe on --force. Deleting every generated file discards build_runner's
  # asset graph, which turns an incremental rebuild (seconds) into a cold one
  # (minutes) across freezed + json_serializable + riverpod_generator + envied.
  # --delete-conflicting-outputs below already resolves the collisions this
  # was guarding against.
  if [ "$FORCE" = "1" ]; then
    echo "Deleting *.g.dart and *.freezed.dart files (--force)..."
    find lib -name "*.g.dart" -o -name "*.freezed.dart" | xargs rm -f 2>/dev/null || true
  fi

  echo "Running flutter pub get..."
  flutter pub get

  echo "Running build_runner..."
  dart run build_runner build --delete-conflicting-outputs

  echo "Flutter codegen complete."
fi

echo ""
echo "=== All done! ==="
