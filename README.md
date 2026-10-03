# Familiarise Mobile

A Flutter-based **Companion Starter** mobile application for the Familiarise consultation and mentorship marketplace platform. Connects users and enterprise teams with expert consultants for 1:1 sessions, subscriptions, webinars, and structured classes.

## Overview

| Aspect | Details |
|--------|---------|
| **Platforms** | iOS 14+, Android API 24+, Headless Web Server (for MCP E2E testing) |
| **Flutter** | **3.47.6** (Dart 3.11+) |
| **Architecture** | Clean Architecture, Feature-First, Companion Starter (`FeatureFlags`) |
| **Backend** | Dart Frog 1.2.x + `prisma_flutter_connector` **v1.0.0** (`0` `JsonQueryBuilder`) |
| **Database** | PostgreSQL 15+ (Supabase) — **93 Prisma models** synced with `familiarise_web` |
| **Backend Hosting** | Railway (`backend/Dockerfile`, `.railway/railway.ts`, `/api/health`) |
| **State Management** | Riverpod 2.x + Freezed 2.x |
| **Navigation** | GoRouter 14.x |
| **Video/Chat** | Stream Video & Chat SDKs (with DPDP recording consent gates) |
| **OTA Updates** | Shorebird (`shorebird.yaml`, `auto_update: true`, ~3-min Dart patches) |
| **Store Deployment** | Fastlane (`fastlane/Fastfile`) + GitHub Actions (`flutter-ci.yml`) |

## Companion Starter Features & Store Compliance

- **Authentication & Sessions** — Email/password, Google, GitHub, and Apple sign-in (BetterAuth-compatible), active device session listing, and remote session revocation
- **Onboarding** — Multi-step consultee & consultant profile setup (work experience, education, certifications)
- **Expert Discovery** — Browse consultants by domain/subdomain/tags, filter by price/rating/availability
- **Booking & Schedule** — Consultations, subscriptions, webinars, classes, free trial requests, and double-booking prevention
- **Companion Web Handoff** — Compliant with App Store `3.1.3(b)`/`3.1.3(d)` & Google Play policy: paid checkout and 1:many program purchases hand off seamlessly to `familiarise.com` (`WebHandoffDialog`), while free trials and pre-authorized/credit sessions book natively in-app
- **Video Meetings & DPDP Consent** — Stream Video SDK with explicit DPDP recording/processing consent audit (`ConsentRecord`)
- **Chat** — Stream Chat SDK for real-time 1:1 and group messaging
- **Monetization Companion Views** — Consultant earnings, payout accounts (`PayoutAccount`), referral codes & credits (`ReferralCode`), wallet ledgers, and webinar/class co-host collaborations (`Collaborator`)
- **Enterprise Organization Seats** — View organization seat allocations (`organizations`, `members`, `invitations`)
- **Notifications & Support** — Granular notification preferences (with quiet hours) and threaded support tickets (`support_tickets`)

## Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **3.47.6** (Dart 3.11+)
- [Android Studio](https://developer.android.com/studio) with Android SDK (optional when using Headless Web Server + Chrome DevTools MCP)
- [Xcode](https://developer.apple.com/xcode/) 15+ (macOS only, for iOS)
- [Docker](https://www.docker.com/) (optional, for local Postgres/Redis via `docker-compose.yml`)

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
# Edit .env with your API keys (set API_BASE_URL=http://localhost:8081 so backend and web server do not share port 8080)

cp backend/.env.example backend/.env
# Edit backend/.env with DATABASE_URL, DIRECT_URL, JWT_SECRET, PORT=8081
```

### 3. Sync schema & generate code (REQUIRED after clone)

```bash
# Optional: sync the 93-model Prisma schema from familiarise_web
./scripts/sync-schema.sh

# Regenerates Prisma v1.0.0 client + Freezed models + Dart Frog build + Flutter codegen
./scripts/regenerate-build.sh
```

This generates:
- **Backend:** 93 Prisma models, typed `PrismaClient` delegates, filters, and schema registry from `backend/prisma/schema.prisma` (`prisma_flutter_connector` v1.0.0)
- **Backend:** `.freezed.dart` files via `build_runner` and Dart Frog production build
- **Frontend:** `.freezed.dart` and `.g.dart` files via `build_runner`

### 4. Start the backend

```bash
cd backend
PORT=8081 dart build/bin/server.dart
# Or in dev mode: dart_frog dev --port 8081
# Server runs at http://localhost:8081 (health check: http://localhost:8081/api/health)
```

### 5. Run the app

```bash
# Headless Web Server on port 8080 (with API_BASE_URL=http://localhost:8081 in .env)
flutter run -d web-server --web-port 8080 --print-dtd

# Android (with port forwarding for emulator)
adb reverse tcp:8081 tcp:8081
flutter run -d emulator-5554

# iOS
xcrun simctl boot "iPhone 17 Pro"
flutter run -d "iPhone 17 Pro"
```

## Scripts

| Script | Purpose |
|--------|---------|
| `scripts/sync-schema.sh` | **Sync 93-model Prisma schema** from `familiarise_web` into `backend/prisma/schema.prisma` |
| `scripts/regenerate-build.sh` | **Regenerate all code** (Prisma v1.0.0 + Freezed + Dart Frog + Flutter) |
| `scripts/regenerate-build.sh --prisma` | Regenerate backend only (Prisma client + Freezed) |
| `scripts/regenerate-build.sh --backend` | Regenerate backend + build Dart Frog |
| `scripts/regenerate-build.sh --frontend` | Regenerate frontend only (Flutter Freezed/Riverpod) |
| `scripts/use-db.sh` | Switch backend between `local` Docker Postgres and `supabase` |
| `scripts/dev-backend.sh` | Start local development backend stack |
| `scripts/start-android.sh` | Full rebuild + start backend + run on Android |
| `scripts/start-ios.sh` | Full rebuild + start backend + run on iOS |
| `scripts/kill-all.sh` | Stop backend, simulators, emulators |

## CI/CD, Shorebird OTA & Fastlane Workflows

| Workflow / Config | File | Trigger & Purpose |
|-------------------|------|-------------------|
| **Flutter CI/CD** | `.github/workflows/flutter-ci.yml` | Push/PR to `dev` and `prod` (Flutter `3.47.6`). Runs `analyze`, `test-backend`, `build-android`, `build-ios`, and on `prod` runs **Fastlane + Shorebird** store releases (`release-android`, `release-ios`). |
| **Shorebird OTA Patch** | `.github/workflows/shorebird-patch.yml` | Push to `patch/**` or `hotfix/**` (or `workflow_dispatch`). Delivers ~3-minute Dart OTA patches via `shorebird patch android` and `shorebird patch ios`. |
| **Deploy to Railway** | `.github/workflows/deploy-railway.yml` | Push to `dev` or `prod` touching `backend/**`, `.railway/**`, or `.github/workflows/deploy-railway.yml` (or `workflow_dispatch`). Builds `backend/Dockerfile`, deploys to Railway, and verifies `/api/health`. |
| **Fastlane Lanes** | `fastlane/Fastfile` | Android (`internal`, `beta`, `production`, `patch`) & iOS (`beta`, `release` via `match` + TestFlight/App Store, `patch`). |

## Multi-MCP E2E Testing (`prompts/mcp-workflows/`)

Run complete end-to-end verification headlessly combining **Chrome DevTools MCP**, **Supabase MCP**, **Stream.io MCP**, and **Dart MCP**:

1. `prompts/mcp-workflows/00-headless-mcp-harness-setup.md` — Bootstrap headless web-server, reload once for DWDS `#125`, and click `<flt-semantics-placeholder>`
2. `prompts/mcp-workflows/01-auth-session-revocation-and-concurrency.md` — Auth, session revocation, and 10-way concurrency burst
3. `prompts/mcp-workflows/02-explore-schedule-and-companion-booking.md` — Explore, trial booking, Companion Web handoff, and slot double-booking race guard
4. `prompts/mcp-workflows/03-stream-video-chat-and-dpdp-consent.md` — Stream Video/Chat provisioning & DPDP recording consent audit
5. `prompts/mcp-workflows/04-monetization-wallet-referrals-and-collaborators.md` — Companion views for Payouts, Referrals, Wallet, and Co-Host Collaborations
6. `prompts/mcp-workflows/05-enterprise-org-seats-notifications-and-support.md` — Enterprise organization seats, notification quiet hours, and support tickets

## Migration & Architecture Status

| Area | Status | Notes |
|------|--------|-------|
| **Prisma Flutter Connector** | **v1.0.0** | Zero `buf.write`, `code_builder` AST generation, `$transaction` support |
| **`JsonQueryBuilder` → Typed Delegates** | **0 remaining (100% migrated)** | All 307 legacy `JsonQueryBuilder` usages retired across `backend/lib/` ([#106](https://github.com/Practitionist/familiarise_mobile/issues/106)) |
| **Prisma Schema Parity** | **93 / 93 models synced** | Synced with `familiarise_web` via `scripts/sync-schema.sh` |
| **Frontend Prisma Decoupling** | **100% HTTP REST (`Dio`)** | Client uses `ApiClient` (`USE_PRISMA=false`); Prisma runs strictly on the backend |
| **Flutter SDK** | **3.47.6** | Pinned across local tooling and GitHub Actions CI/CD |

## Documentation

| Document | Description |
|----------|-------------|
| [CLAUDE.md](./CLAUDE.md) | AI assistant architecture, Companion Starter flags, and infrastructure guide |
| [AGENTS.md](./AGENTS.md) | Multi-agent operating instructions, verification gates, and worktree hygiene |
| [backend/README.md](./backend/README.md) | Backend setup, 93-model Prisma v1.0.0 delegates, and Railway deployment |
| [FEATURE_PARITY.md](./FEATURE_PARITY.md) | Web vs. Mobile Companion Starter feature matrix |
| [prompts/testing/README.md](./prompts/testing/README.md) | Headless Flutter Web Server + Multi-MCP E2E testing documentation |
| [docs/deployment/](./docs/deployment/) | Railway, Shorebird OTA, and Fastlane deployment guides & checklists |
