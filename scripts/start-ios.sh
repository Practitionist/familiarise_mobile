#!/bin/bash
# Start everything for iOS development (full rebuild)

set -e
cd "$(dirname "$0")/.."

echo "=== Regenerating code ==="
dart run build_runner build --delete-conflicting-outputs

echo "=== Building backend ==="
cd backend
~/.pub-cache/bin/dart_frog build

echo "=== Starting backend server ==="
PORT=8080 dart build/bin/server.dart &
cd ..

echo "=== Waiting for backend to start ==="
sleep 3

echo "=== Booting iOS simulator ==="
xcrun simctl boot "iPhone 17 Pro" 2>/dev/null || true

echo "=== Running Flutter app ==="
flutter run -d "iPhone 17 Pro"
