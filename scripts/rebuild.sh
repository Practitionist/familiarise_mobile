#!/bin/bash
# Regenerate freezed/riverpod code only

set -e
cd "$(dirname "$0")/.."

echo "=== Regenerating code ==="
dart run build_runner build --delete-conflicting-outputs

echo "Done! Now restart your Flutter app with 'R' (capital R) for full restart."
