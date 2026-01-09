#!/bin/bash
# Start everything for Android development (full rebuild)

set -e
cd "$(dirname "$0")/.."

# Kill existing processes on port 8080
echo "=== Killing processes on port 8080 ==="
lsof -ti:8080 | xargs kill -9 2>/dev/null || true

echo "=== Cleaning Flutter build ==="
flutter clean

echo "=== Getting dependencies ==="
flutter pub get

echo "=== Regenerating code ==="
dart run build_runner build --delete-conflicting-outputs

echo "=== Building backend ==="
cd backend
~/.pub-cache/bin/dart_frog build

echo "=== Starting backend server ==="
PORT=8080 dart build/bin/server.dart &
BACKEND_PID=$!
cd ..

echo "=== Waiting for backend to start ==="
sleep 3

echo "=== Starting Android emulator ==="
~/Library/Android/sdk/emulator/emulator -avd "Medium_Phone_API_36.1" &

echo "=== Waiting for emulator to boot ==="
~/Library/Android/sdk/platform-tools/adb wait-for-device
sleep 5

echo "=== Setting up port forwarding ==="
~/Library/Android/sdk/platform-tools/adb reverse tcp:8080 tcp:8080

echo "=== Running Flutter app ==="
flutter run -d emulator-5554
