# Familiarise Mobile

A Flutter-based mobile application for the Familiarise consultation and mentorship marketplace platform. This app enables users to discover experts, book consultations, and engage in video meetings and chat sessions.

[![CI](https://github.com/your-org/familiarise_mobile/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/your-org/familiarise_mobile/actions/workflows/flutter-ci.yml)

## Overview

| Aspect | Details |
|--------|---------|
| **Target Users** | Consultees seeking expert consultations |
| **Platforms** | iOS 14+, Android API 24+ |
| **Flutter Version** | 3.24.x (Dart 3.5.x) |
| **Architecture** | Clean Architecture with Feature-First Structure |
| **Backend** | Dart Frog with Prisma ORM |

## Features

- **Authentication** - Email/password, Google Sign-In, Apple Sign-In
- **Onboarding** - Multi-step user profile setup with draft persistence
- **Expert Discovery** - Browse and filter consultants by domain/expertise
- **Booking** - Schedule appointments with availability slots
- **Video Meetings** - Real-time video calls via Stream SDK
- **Chat** - Direct messaging with consultants via Stream SDK
- **Payments** - Razorpay (India) and Stripe (International)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.24.x or higher
- [Dart SDK](https://dart.dev/get-dart) 3.5.x (bundled with Flutter)
- [Android Studio](https://developer.android.com/studio) with Android SDK (for Android development)
- [Xcode](https://developer.apple.com/xcode/) 15+ (for iOS development, macOS only)
- [Node.js](https://nodejs.org/) 18+ (for Prisma CLI)
- [PostgreSQL](https://www.postgresql.org/) 14+ or a [Supabase](https://supabase.com/) account

### Required API Keys

| Service | Purpose | Required |
|---------|---------|----------|
| Supabase | Database (fallback) | Yes |
| Stream | Video calls & Chat | Yes |
| Razorpay | Payments (India) | For payments |
| Stripe | Payments (International) | For payments |
| Google OAuth | Social sign-in | Optional |
| Firebase | Analytics, Crashlytics, Push | Optional |

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-org/familiarise_mobile.git
cd familiarise_mobile
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Environment Setup

```bash
# Copy the example environment file
cp .env.example .env

# Edit .env with your credentials
# See .env.example for all available options
```

**Mandatory environment variables:**

```env
# Database
DATABASE_URL=postgresql://user:password@host:5432/database
DIRECT_URL=postgresql://user:password@host:5432/database

# Or Supabase (alternative)
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-supabase-anon-key

# Backend API
API_BASE_URL=http://localhost:8080

# Stream SDK
STREAM_API_KEY=your-stream-api-key
```

### 4. Code Generation

Generate required code (Freezed models, Riverpod providers, JSON serialization):

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 5. Backend Setup

The project includes a Dart Frog backend in the `backend/` directory:

```bash
# Navigate to backend
cd backend

# Install dependencies
dart pub get

# Set up Prisma
npm install -g prisma

# Copy and configure backend environment
cp .env.example .env
# Edit .env with your database URL and JWT secret

# Generate Prisma client
dart run orm generate

# Apply database migrations (if using Prisma migrations)
# npx prisma migrate deploy

# Start the development server
dart_frog dev
```

The backend will run at `http://localhost:8080`.

### 6. Run the Application

```bash
# List available devices
flutter devices

# Run on iOS Simulator
flutter run -d ios

# Run on Android Emulator
flutter run -d android

# Run on Chrome (web)
flutter run -d chrome
```

## Project Structure

```
familiarise_mobile/
├── lib/
│   ├── main.dart              # App entry point
│   ├── app/                   # App configuration, router, theme
│   ├── core/                  # Shared infrastructure (network, errors, utils)
│   ├── data/                  # Data layer (repositories, models, datasources)
│   ├── domain/                # Business logic (entities, interfaces)
│   ├── features/              # Feature modules
│   │   ├── auth/              # Authentication
│   │   ├── onboarding/        # User onboarding
│   │   ├── explore/           # Expert discovery
│   │   ├── booking/           # Appointment booking
│   │   ├── checkout/          # Payment processing
│   │   ├── dashboard/         # Main dashboard
│   │   ├── meetings/          # Video meetings
│   │   ├── chat/              # Messaging
│   │   └── profile/           # User profile
│   └── shared/                # Shared widgets and providers
├── backend/                   # Dart Frog backend
├── android/                   # Android platform files
├── ios/                       # iOS platform files
├── test/                      # Unit and widget tests
├── integration_test/          # Integration tests
└── docs/                      # Project documentation
```

For detailed architecture documentation, see [CLAUDE.md](./CLAUDE.md).

## Development

This section covers daily development workflow. All commands assume you're in the repo root directory.

### Scripts (Recommended)

The easiest way to run the app:

```bash
./scripts/start-android.sh    # Full rebuild + backend + Android emulator + app
./scripts/start-ios.sh        # Full rebuild + backend + iOS simulator + app
./scripts/kill-all.sh         # Stop everything (backend, simulators, emulators)
```

| Script | Purpose |
|--------|---------|
| `start-android.sh` | Full rebuild + start backend + run Android app |
| `start-ios.sh` | Full rebuild + start backend + run iOS app |
| `quick-android.sh` | Restart backend + run Android (skip rebuild) |
| `quick-ios.sh` | Restart backend + run iOS (skip rebuild) |
| `kill-all.sh` | Stop backend, iOS simulators, Android emulators |
| `rebuild.sh` | Only regenerate Freezed/Riverpod code |

---

### Manual Setup (Two Terminals)

If you prefer manual control, run backend in Terminal 1 and frontend in Terminal 2.

#### Kill Zombie Processes (Run First If Needed)

```bash
# Kill backend server on port 8080
lsof -ti:8080 | xargs kill -9 2>/dev/null || true

# Kill dart_frog processes
pkill -f dart_frog 2>/dev/null || true

# Kill dart server processes
pkill -f "dart build/bin/server.dart" 2>/dev/null || true

# Kill Flutter processes
pkill -f flutter_tools 2>/dev/null || true

# Kill Android emulator
pkill -f emulator 2>/dev/null || true

# Shutdown all iOS simulators
xcrun simctl shutdown all 2>/dev/null || true
```

#### Terminal 1 — Backend

```bash
# Kill any existing backend
lsof -ti:8080 | xargs kill -9 2>/dev/null || true

# Navigate to backend
cd backend

# Build the backend
~/.pub-cache/bin/dart_frog build

# Start the server
PORT=8080 dart build/bin/server.dart
```

#### Terminal 2 — Android

```bash
# Start the Android emulator (runs in background)
~/Library/Android/sdk/emulator/emulator -avd "Medium_Phone_API_36.1" &

# Wait for emulator to boot
sleep 10
~/Library/Android/sdk/platform-tools/adb wait-for-device

# Set up port forwarding (required for emulator to reach localhost backend)
~/Library/Android/sdk/platform-tools/adb reverse tcp:8080 tcp:8080

# Run the Flutter app
flutter run -d emulator-5554
```

#### Terminal 2 — iOS (Alternative)

```bash
# Boot the iOS simulator
xcrun simctl boot "iPhone 17 Pro" 2>/dev/null || true

# Open the Simulator app (to see the window)
open -a Simulator

# Wait for simulator to be ready
sleep 5

# Run the Flutter app
flutter run -d "iPhone 17 Pro"
```

---

### Code Generation

> **Important:** If you modify files with `@freezed` or `@riverpod` annotations, you MUST regenerate code. Hot reload will NOT pick up these changes.

```bash
# Full clean rebuild
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs

# Quick regenerate (no clean)
dart run build_runner build --delete-conflicting-outputs

# Watch mode (auto-regenerate on file changes)
dart run build_runner watch --delete-conflicting-outputs
```

---

### Quick Reference

| Action | Command |
|--------|---------|
| **List devices** | `flutter devices` |
| **List Android AVDs** | `~/Library/Android/sdk/emulator/emulator -list-avds` |
| **List iOS simulators** | `xcrun simctl list devices available` |
| **Start iOS simulator** | `xcrun simctl boot "iPhone 17 Pro"` |
| **Stop iOS simulator** | `xcrun simctl shutdown "iPhone 17 Pro"` |
| **Stop all iOS simulators** | `xcrun simctl shutdown all` |
| **Start Android emulator** | `~/Library/Android/sdk/emulator/emulator -avd "Medium_Phone_API_36.1" &` |
| **Stop Android emulator** | `~/Library/Android/sdk/platform-tools/adb -s emulator-5554 emu kill` |
| **Start backend** | `cd backend && ~/.pub-cache/bin/dart_frog build && PORT=8080 dart build/bin/server.dart` |
| **Start backend (dev mode)** | `cd backend && ~/.pub-cache/bin/dart_frog dev` |
| **Stop backend** | `lsof -ti:8080 \| xargs kill -9` |
| **Check port 8080** | `lsof -i:8080` |
| **Run on iOS** | `flutter run -d "iPhone 17 Pro"` |
| **Run on Android** | `flutter run -d emulator-5554` |
| **Regenerate code** | `dart run build_runner build --delete-conflicting-outputs` |
| **Run analysis** | `flutter analyze` |
| **Run tests** | `flutter test` |
| **Build Android APK** | `flutter build apk` |
| **Build iOS** | `flutter build ios` |

**Flutter run controls:** `r` = hot reload, `R` = hot restart, `q` = quit

## Testing

### Unit Tests

```bash
flutter test
```

### Integration Tests

```bash
flutter test integration_test/
```

### Coverage Report

```bash
flutter test --coverage
# Generate HTML report (requires lcov)
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## CI/CD

This project uses GitHub Actions for continuous integration and deployment.

**Workflow:** `.github/workflows/flutter-ci.yml`

| Stage | Triggers | Actions |
|-------|----------|---------|
| Analyze & Test | Push, PR | Lint, analyze, unit tests, coverage upload |
| Build Android | Push, PR, Release | Debug APK, Release AAB (on release) |
| Build iOS | Push, PR, Release | Release build, IPA (on release) |
| Deploy Android | Release | Upload to Play Store (internal track) |
| Deploy iOS | Release | Upload to App Store Connect |

## Documentation

| Document | Description |
|----------|-------------|
| [CLAUDE.md](./CLAUDE.md) | System architecture and design patterns |
| [UI.md](./UI.md) | UI specifications and wireframes |
| [docs/architecture/](./docs/architecture/) | Phase-by-phase implementation guides |
| [docs/auth/](./docs/auth/) | Authentication deep-dive |
| [docs/flutter-best-practices.md](./docs/flutter-best-practices.md) | Coding standards and conventions |

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute to this project.

## Troubleshooting

### Common Issues

**Build runner fails:**
```bash
# Clean and regenerate
flutter clean
flutter pub get
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

**iOS build fails with CocoaPods error:**
```bash
cd ios
pod deintegrate
pod install --repo-update
cd ..
flutter clean
flutter build ios
```

**Android build fails with Gradle error:**
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter build apk
```

**Backend connection issues:**
- Ensure backend is running at the URL specified in `API_BASE_URL`
- Check that your `.env` file is properly configured
- Verify database connectivity
