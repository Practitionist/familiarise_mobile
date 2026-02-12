#!/bin/bash
# Regenerate all build systems (Prisma client, Dart Frog, Flutter codegen)
#
# Usage:
#   ./scripts/regenerate-build.sh            # all three
#   ./scripts/regenerate-build.sh --backend   # Prisma client + Dart Frog build only
#   ./scripts/regenerate-build.sh --frontend  # Flutter codegen only
#   ./scripts/regenerate-build.sh --prisma    # Prisma client only

set -e
cd "$(dirname "$0")/.."
ROOT_DIR=$(pwd)

# Ensure pub-cache bin is in PATH (for dart_frog, etc.)
export PATH="$HOME/.pub-cache/bin:$PATH"

# Parse args
RUN_PRISMA=false
RUN_DARTFROG=false
RUN_FLUTTER=false

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
      *)
        echo "Unknown option: $arg"
        echo "Usage: $0 [--backend] [--frontend] [--prisma]"
        exit 1
        ;;
    esac
  done
fi

# ============================================
# 1. Prisma Dart Client (backend/lib/generated/)
# ============================================
if [ "$RUN_PRISMA" = true ]; then
  echo ""
  echo "=== [1/3] Prisma Dart Client ==="
  echo "Deleting backend/lib/generated/..."
  rm -rf backend/lib/generated

  echo "Running dart pub get in backend/..."
  cd "$ROOT_DIR/backend"
  dart pub get

  echo "Generating Prisma client from schema..."
  dart run prisma_flutter_connector:generate \
    --schema prisma/schema.prisma \
    --output lib/generated \
    --server

  cd "$ROOT_DIR"
  echo "Prisma client generated."
fi

# ============================================
# 2. Dart Frog Build (backend/build/)
# ============================================
if [ "$RUN_DARTFROG" = true ]; then
  echo ""
  echo "=== [2/3] Dart Frog Build ==="
  echo "Deleting backend/build/..."
  rm -rf backend/build

  cd "$ROOT_DIR/backend"
  echo "Building Dart Frog server..."
  dart_frog build

  cd "$ROOT_DIR"
  echo "Dart Frog build complete."
fi

# ============================================
# 3. Flutter CodeGen (*.g.dart, *.freezed.dart)
# ============================================
if [ "$RUN_FLUTTER" = true ]; then
  echo ""
  echo "=== [3/3] Flutter CodeGen ==="
  echo "Deleting *.g.dart and *.freezed.dart files..."
  find lib -name "*.g.dart" -o -name "*.freezed.dart" | xargs rm -f 2>/dev/null || true

  echo "Running flutter pub get..."
  flutter pub get

  echo "Running build_runner..."
  dart run build_runner build --delete-conflicting-outputs

  echo "Flutter codegen complete."
fi

echo ""
echo "=== All done! ==="
