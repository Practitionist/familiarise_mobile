#!/bin/bash
# Quick restart for iOS (no code regeneration)

set -e
cd "$(dirname "$0")/.."

echo "=== Stopping backend ==="
lsof -ti:8080 | xargs kill -9 2>/dev/null || true

echo "=== Starting backend server ==="
cd backend
PORT=8080 dart build/bin/server.dart &
cd ..

sleep 2

echo "=== Running Flutter app ==="
flutter run -d "iPhone 17 Pro"
