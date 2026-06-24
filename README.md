# Familiarise Mobile

A Flutter-based mobile application for the Familiarise consultation and mentorship marketplace platform. Connects users with expert consultants for 1:1 sessions, subscriptions, webinars, and structured classes.

## Overview

| Aspect | Details |
|--------|---------|
| **Platforms** | iOS 14+, Android API 24+ |
| **Flutter** | 3.27.x (Dart 3.6.x) |
| **Architecture** | Clean Architecture, Feature-First |
| **Backend** | Dart Frog + Prisma Flutter Connector (PostgreSQL/Supabase) |
| **State Management** | Riverpod 2.x + Freezed 2.x |
| **Navigation** | GoRouter 14.x |
| **Video/Chat** | Stream SDK |
| **Payments** | Razorpay (India) + Stripe (International) |

## Features

- **Authentication** — Email/password, Google, Apple sign-in (BetterAuth-compatible)
- **Onboarding** — Multi-step consultee/consultant profile setup
- **Expert Discovery** — Browse consultants by domain, filter by price/rating/availability
- **Booking** — 4 plan types: consultations, subscriptions, webinars, classes
- **Video Meetings** — Stream Video SDK with recording support
- **Chat** — Stream Chat SDK for async messaging
- **Payments** — Razorpay (India), Stripe (international), with discount codes and referrals
- **Dashboard** — Stats, upcoming sessions, booking history
- **Support** — In-app support tickets with priority levels
- **Trials** — Free trial sessions before committing to subscriptions

## Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.27.x
- [Android Studio](https://developer.android.com/studio) with Android SDK
- [Xcode](https://developer.apple.com/xcode/) 15+ (macOS only, for iOS)
- [Node.js](https://nodejs.org/) 18+ (for Prisma CLI migrations)

## Quick Start

### 1. Clone and install

```bash
git clone https://github.com/Practitionist/familiarise_mobile.git
cd familiarise_mobile
flutter pub get
```

### 2. Environment setup

```bash
cp .env.example .env
# Edit .env with your API keys (see Environment Variables below)

cp backend/.env.example backend/.env
# Edit backend/.env with database URL, JWT secret
```

### 3. Generate code (REQUIRED after clone)

```bash
# This regenerates Prisma client + Freezed models + Dart Frog build
./scripts/regenerate-build.sh
```

This is the **single most important step**. It generates:
- Backend: Prisma models, delegates, filters, schema registry from `backend/prisma/schema.prisma`
- Backend: `.freezed.dart` files via build_runner
- Backend: Dart Frog production build
- Frontend: `.freezed.dart` and `.g.dart` files via build_runner

### 4. Start the backend

```bash
cd backend
dart build/bin/server.dart
# Server runs at http://localhost:8080
```

### 5. Run the app

```bash
# Android (with port forwarding for emulator)
~/Library/Android/sdk/emulator/emulator -avd "Medium_Phone_API_36.1" &
~/Library/Android/sdk/platform-tools/adb reverse tcp:8080 tcp:8080
flutter run -d emulator-5554

# iOS
xcrun simctl boot "iPhone 17 Pro"
flutter run -d "iPhone 17 Pro"
```

Or use the convenience scripts:

```bash
./scripts/start-android.sh    # Full rebuild + backend + Android
./scripts/start-ios.sh        # Full rebuild + backend + iOS
./scripts/kill-all.sh         # Stop everything
```

## Scripts

| Script | Purpose |
|--------|---------|
| `scripts/regenerate-build.sh` | **Regenerate all code** (Prisma + Freezed + Dart Frog + Flutter) |
| `scripts/regenerate-build.sh --prisma` | Regenerate backend only (Prisma client + Freezed) |
| `scripts/regenerate-build.sh --backend` | Regenerate backend + build Dart Frog |
| `scripts/regenerate-build.sh --frontend` | Regenerate frontend only (Flutter Freezed/Riverpod) |
| `scripts/start-android.sh` | Full rebuild + start backend + run on Android |
| `scripts/start-ios.sh` | Full rebuild + start backend + run on iOS |
| `scripts/quick-android.sh` | Restart backend + run on Android (skip rebuild) |
| `scripts/quick-ios.sh` | Restart backend + run on iOS (skip rebuild) |
| `scripts/kill-all.sh` | Stop backend, simulators, emulators |

## Project Structure

```
familiarise_mobile/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── app/                      # Router, theme, app config
│   ├── core/                     # Network, errors, utils
│   ├── features/                 # Feature modules
│   │   ├── auth/                 # Sign-in, sign-up, OAuth
│   │   ├── onboarding/           # Profile setup wizard
│   │   ├── explore/              # Consultant discovery + profiles
│   │   ├── booking/              # Slot selection, plan booking
│   │   ├── checkout/             # Payment processing
│   │   ├── dashboard/            # Main dashboard + stats
│   │   ├── meetings/             # Video calls (Stream)
│   │   ├── chat/                 # Messaging (Stream)
│   │   ├── profile/              # User profile + settings
│   │   ├── feedback/             # App feedback
│   │   ├── notifications/        # Notification center
│   │   └── support/              # Support tickets
│   └── shared/                   # Shared widgets, providers
├── backend/                      # Dart Frog API server (see backend/README.md)
│   ├── lib/database/repositories/ # 33 data access repositories
│   ├── lib/generated/            # GITIGNORED — regenerate with script
│   ├── prisma/schema.prisma      # THE data model source of truth
│   ├── routes/api/               # API route handlers
│   └── tool/                     # JWT token generators for testing
├── scripts/                      # Build, run, and regeneration scripts
├── test/                         # Unit and widget tests
└── integration_test/             # E2E tests
```

## Code Generation

The project uses code generation extensively. **If you modify annotated files, regenerate:**

| What Changed | Regenerate With |
|-------------|----------------|
| `backend/prisma/schema.prisma` | `./scripts/regenerate-build.sh --prisma` |
| Backend files with `@freezed` | `cd backend && dart run build_runner build --delete-conflicting-outputs` |
| Frontend files with `@freezed` or `@riverpod` | `dart run build_runner build --delete-conflicting-outputs` |
| Upgraded `prisma_flutter_connector` | `./scripts/regenerate-build.sh --prisma` |
| Everything (after pulling) | `./scripts/regenerate-build.sh` |

## Development Workflow

### Daily development

```bash
# Pull latest
git pull origin dev

# Regenerate if schema or deps changed
./scripts/regenerate-build.sh --prisma

# Start backend
cd backend && dart build/bin/server.dart &

# Run app
flutter run -d <device>
```

### Running analysis

```bash
# Full workspace (frontend + backend)
dart analyze

# Backend only
dart analyze backend/lib/database/

# Check for errors only
dart analyze | grep error
```

### Running tests

```bash
# Frontend tests
flutter test

# Backend tests
cd backend && dart test

# Specific test file
dart test test/repositories/user_repository_test.dart
```

### Testing API endpoints

```bash
cd backend

# Generate a test JWT
dart run tool/gen_test_token.dart
# Or for a specific user:
USER_ID=some-user-id dart run tool/gen_token_for.dart

# Test endpoints
TOKEN="<paste token>"
curl http://localhost:8080/api/domains
curl -H "Authorization: Bearer $TOKEN" http://localhost:8080/api/feedback
```

## Troubleshooting

| Symptom | Cause | Fix |
|---------|-------|-----|
| `uri_has_not_been_generated: 'schema_registry.g.dart'` | Generated files missing | `./scripts/regenerate-build.sh --prisma` |
| `not_enough_positional_arguments` in tests | Repo constructor changed, test not updated | Add `MockPrismaClient` to test file |
| `dart_frog build` fails with missing imports | Generated code stale | `./scripts/regenerate-build.sh --backend` |
| `foreign key constraint` on POST | Test user doesn't exist in DB | Use real user: `USER_ID=test_intg_cbj_cnt dart run tool/gen_token_for.dart` |
| Server starts but endpoints 500 | Schema registry missing model/relation data | Regenerate: `./scripts/regenerate-build.sh --prisma` |
| `dart_frog: command not found` | CLI not in PATH | Use `dart pub global run dart_frog_cli:dart_frog build` |

## Environment Variables

### Frontend (`.env`)

| Variable | Purpose | Required |
|----------|---------|----------|
| `API_BASE_URL` | Backend API URL | Yes |
| `SUPABASE_URL` | Supabase project URL | Yes |
| `SUPABASE_ANON_KEY` | Supabase anon key | Yes |
| `STREAM_API_KEY` | Stream video/chat key | Yes |
| `RAZORPAY_KEY_ID` | Razorpay key (India) | For payments |
| `STRIPE_PUBLISHABLE_KEY` | Stripe key (international) | For payments |

### Backend (`backend/.env`)

See [backend/README.md](./backend/README.md#environment-variables) for full list.

## Key Gotchas

1. **Always regenerate after clone/pull** — `./scripts/regenerate-build.sh --prisma`
2. **`backend/lib/generated/` is gitignored** — the 347 generated files are NOT in git. If `dart analyze` shows `uri_has_not_been_generated`, run the regenerate script. **Never `git add -f` generated files.**
3. **`flutter analyze` covers the whole workspace** — both frontend and backend. Backend errors will show up too. For backend-only: `dart analyze backend/`
4. **`Platform` enum conflict** — `backend/lib/generated/` has a `Platform` enum from Prisma schema that conflicts with `dart:io.Platform`. Use specific imports.
5. **Prisma schema is the source of truth** — `backend/prisma/schema.prisma` defines the data model (real file, not a symlink). Models, delegates, filters, and schema registry are all generated from it.
6. **Hot reload doesn't pick up `@freezed`/`@riverpod` changes** — you must run `build_runner` after modifying annotated files.
7. **Android emulator needs port forwarding** — `adb reverse tcp:8080 tcp:8080` to reach localhost backend.
8. **Test JWT tokens expire after 2 hours** — regenerate with `cd backend && dart run tool/gen_test_token.dart`.
9. **Run `dart analyze` from repo root** — running from `backend/` misses cross-package import errors.
10. **After modifying a repo constructor**, also update `database_client.dart` and the test file — `dart analyze | grep error` catches these quickly.

## Tech Debt & Migration Status

| Area | Status | Tracking |
|------|--------|----------|
| Prisma Flutter Connector | v0.5.5 (zero buf.write, code_builder architecture) | Published on pub.dev |
| JsonQueryBuilder → typed delegates | 223/307 remaining (26% converted) | [#106](https://github.com/Practitionist/familiarise_mobile/issues/106) |
| Freezed 2.x → 3.x | Blocked by Flutter SDK 3.6 analyzer constraint | [Connector #23](https://github.com/teetangh/prisma-flutter-connector/issues/23) |
| Riverpod 2.x → 3.x | Blocked by Freezed 3.x | [#47](https://github.com/Practitionist/familiarise_mobile/issues/47) |

## Quick Reference

| Action | Command |
|--------|---------|
| **Regenerate everything** | `./scripts/regenerate-build.sh` |
| **Regenerate backend only** | `./scripts/regenerate-build.sh --prisma` |
| **Start backend** | `cd backend && dart build/bin/server.dart` |
| **Stop backend** | `lsof -ti:8080 \| xargs kill -9` |
| **Run on Android** | `flutter run -d emulator-5554` |
| **Run on iOS** | `flutter run -d "iPhone 17 Pro"` |
| **Run analysis** | `dart analyze` |
| **Run tests** | `flutter test` |
| **Generate test JWT** | `cd backend && dart run tool/gen_test_token.dart` |

**Flutter run controls:** `r` = hot reload, `R` = hot restart, `q` = quit

## Documentation

| Document | Description |
|----------|-------------|
| [CLAUDE.md](./CLAUDE.md) | AI assistant instructions and codebase context |
| [backend/README.md](./backend/README.md) | Backend setup, API docs, Prisma Flutter Connector details |
| [docs/architecture/](./docs/architecture/) | Phase-by-phase implementation guides |
