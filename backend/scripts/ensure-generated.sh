#!/usr/bin/env bash
# Regenerate backend codegen only when its inputs actually changed.
#
# ── The problem this solves ──────────────────────────────────────────────────
#
# scripts/regenerate-build.sh used to `rm -rf lib/generated` and delete every
# *.freezed.dart unconditionally, on every invocation. lib/generated is ~735k
# lines across 498 files, so that destroyed build_runner's asset graph and
# forced a full cold rebuild every single time — even when nothing had changed,
# which is the overwhelmingly common case (schema.prisma is launch-frozen).
#
# Only four things can invalidate the output:
#   - prisma/schema.prisma            (what the models are)
#   - prisma_flutter_connector version (the generator's output shape)
#   - freezed version                  (the .freezed.dart output shape)
#   - build.yaml                       (which builders run, over what)
#
# So hash those, stamp the result, and skip when it matches.
#
# Usage:
#   ./scripts/ensure-generated.sh            # regenerate if stale
#   FORCE_CODEGEN=1 ./scripts/ensure-generated.sh   # always regenerate

set -euo pipefail
cd "$(dirname "$0")/.."

FORCE="${FORCE_CODEGEN:-0}"
# The stamp lives inside lib/generated so that `rm -rf lib/generated` — by this
# script or by hand — also invalidates it. A stamp outside would survive the
# wipe and wrongly report "up to date" against an empty directory.
STAMP="lib/generated/.codegen-stamp"

sha() { shasum -a 256 | cut -d' ' -f1; }

# Read a package's resolved version out of pubspec.lock without needing yq.
locked() {
  awk -v pkg="  $1:" '
    $0 == pkg { f = 1; next }
    f && /^    version:/ { gsub(/"/, "", $2); print $2; exit }
    f && /^  [a-z_]+:/ { exit }
  ' pubspec.lock
}

[ -f pubspec.lock ] || dart pub get

WANT="$( {
  shasum -a 256 prisma/schema.prisma
  echo "connector=$(locked prisma_flutter_connector)"
  echo "freezed=$(locked freezed)"
  [ -f build.yaml ] && shasum -a 256 build.yaml
} | sha )"

if [ "$FORCE" != "1" ] \
  && [ -f "$STAMP" ] \
  && [ "$(cat "$STAMP")" = "$WANT" ] \
  && [ -f lib/generated/schema_registry.g.dart ]; then
  echo "[codegen] up to date (${WANT:0:12}) — skipping"
  exit 0
fi

echo "[codegen] stale or forced — regenerating"
dart pub get

# Full wipe ONLY on a real input change.
#
# Clear the CONTENTS rather than the directory itself: under docker-compose
# lib/generated is a named-volume mount point, and unlinking a mount point
# fails with "Device or resource busy". Emptying it works in both places.
mkdir -p lib/generated
find lib/generated -mindepth 1 -delete

dart run prisma_flutter_connector:generate \
  --schema prisma/schema.prisma \
  --output lib/generated \
  --server

dart run build_runner build --delete-conflicting-outputs

echo "$WANT" > "$STAMP"
echo "[codegen] done (${WANT:0:12})"
