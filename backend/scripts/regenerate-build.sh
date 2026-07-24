#!/usr/bin/env bash
#
# Regenerate the backend's generated code.
#
#   ./scripts/regenerate-build.sh            # build_runner only (freezed/json)
#   ./scripts/regenerate-build.sh --prisma   # also regenerate the Prisma client
#
# The Prisma client (lib/generated/**) is gitignored and derived from
# prisma/schema.prisma, which is copied verbatim from familiarise_web (which
# owns the database and its migrations). Never hand-edit either.
set -euo pipefail

cd "$(dirname "$0")/.."

REGEN_PRISMA=false
for arg in "$@"; do
  case "$arg" in
    --prisma) REGEN_PRISMA=true ;;
    -h|--help) sed -n '2,9p' "$0"; exit 0 ;;
    *) echo "Unknown option: $arg" >&2; exit 2 ;;
  esac
done

# prisma_flutter_connector depends on the Flutter SDK, so resolution must go
# through `flutter pub` when Flutter is available (it always is in CI and on
# dev machines); plain `dart pub get` fails with "the Flutter SDK is not
# available".
if command -v flutter >/dev/null 2>&1; then
  PUB="flutter pub"
else
  PUB="dart pub"
fi

echo "==> $PUB get"
$PUB get

if [ "$REGEN_PRISMA" = true ] || [ ! -d lib/generated ]; then
  echo "==> Generating Prisma client from prisma/schema.prisma"
  rm -rf lib/generated
  dart run prisma_flutter_connector:generate \
    --schema prisma/schema.prisma \
    --output lib/generated \
    --server
fi

echo "==> build_runner (freezed / json_serializable)"
dart run build_runner build --delete-conflicting-outputs

echo "==> Done."
