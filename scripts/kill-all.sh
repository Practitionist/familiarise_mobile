#!/bin/bash
# Kill all running services (backend, simulators, emulators)

echo "Stopping backend server..."
lsof -ti:8080 | xargs kill -9 2>/dev/null

echo "Stopping iOS simulators..."
xcrun simctl shutdown all 2>/dev/null

echo "Stopping Android emulators..."
~/Library/Android/sdk/platform-tools/adb -s emulator-5554 emu kill 2>/dev/null

echo "All stopped!"
