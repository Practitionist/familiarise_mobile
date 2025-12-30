#!/bin/bash
# Start everything for Android development (full rebuild)

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

echo "=== Starting Android emulator ==="
~/Library/Android/sdk/emulator/emulator -avd Medium_Phone_API_36.1 &

echo "=== Waiting for emulator to boot ==="
sleep 10

echo "=== Running Flutter app ==="
flutter run -d emulator-5554
