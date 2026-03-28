# Familiarise — Infrastructure Migration & CI/CD Implementation Plan

**Document version:** 1.0  
**Created:** March 2026  
**Deadline:** April 3, 2026 (Globe.dev shutdown)  
**Audience:** AI coding agent — implement everything in this document exactly as described.

---

## Table of Contents

1. [Context & Background](#1-context--background)
2. [Current Stack Inventory](#2-current-stack-inventory)
3. [Target Stack](#3-target-stack)
4. [Impact Analysis](#4-impact-analysis)
5. [Phase 1 — Railway Migration (URGENT, by April 3)](#5-phase-1--railway-migration-urgent-by-april-3)
6. [Phase 2 — Shorebird OTA Integration](#6-phase-2--shorebird-ota-integration)
7. [Phase 3 — GitHub Actions Overhaul](#7-phase-3--github-actions-overhaul)
8. [Phase 4 — Documentation Updates](#8-phase-4--documentation-updates)
9. [Secrets & Environment Variables Reference](#9-secrets--environment-variables-reference)
10. [Verification Checklist](#10-verification-checklist)

---

## 1. Context & Background

### Why this plan exists

Globe.dev — the platform previously used (or being considered) to host the Dart Frog backend — is **shutting down on Friday, April 3, 2026 at 5pm GMT**. All deployments, data, and account information will be permanently deleted after that point.

Additionally, this plan integrates **Shorebird** for over-the-air (OTA) Flutter app patching, which allows Dart-only hotfixes to be shipped without going through App Store or Play Store review (1–3 day wait).

### What the AI agent must do

This document is a complete implementation spec. The agent must:

1. Create all new files listed exactly at the paths specified
2. Modify all existing files listed, making only the changes described
3. Not remove any existing functionality unless explicitly told to
4. Add all referenced GitHub Secrets as comments/placeholders — it cannot set them in GitHub itself, but must document where each is used
5. Update README.md and CLAUDE.md to reflect the new infrastructure

---

## 2. Current Stack Inventory

### Infrastructure (before this plan)

| Component | Current platform | Status |
|---|---|---|
| Dart Frog backend | Globe.dev (or local only) | MUST MIGRATE before April 3 |
| Database | Supabase (PostgreSQL) | Keep — no change |
| Auth | Supabase Auth | Keep — no change |
| File storage | Supabase Storage | Keep — no change |
| Flutter app distribution | Google Play + App Store | Keep — no change |
| OTA updates | None | ADD — Shorebird |
| Backend hosting | None / Globe.dev | REPLACE — Railway |

### Existing GitHub Actions workflows

| File | Purpose | Action |
|---|---|---|
| `.github/workflows/flutter-ci.yml` | Analyze, test, build, deploy to stores | MODIFY — add Shorebird patch step |
| `.github/workflows/cleanup-abandoned-payments.yml` | Cron: cleanup stale payments every 15 min | KEEP unchanged |
| `.github/workflows/stream_sync.yml` | Cron: sync Stream Chat users daily | KEEP unchanged |
| `.github/workflows/race-condition-tests.yml` | Tests on push to dev | KEEP unchanged |
| `.github/workflows/quality-checks.yaml` | PR quality gates | KEEP unchanged |

### Backend structure

```
backend/
├── pubspec.yaml          # dart_frog: ^1.2.0, postgres: ^3.4.5
├── routes/               # Dart Frog route handlers
│   └── api/
│       ├── auth/
│       ├── consultants/
│       ├── appointments/
│       ├── checkout/
│       ├── stream/
│       ├── notifications/
│       ├── reviews/
│       └── upload/
└── README.md
```

### Flutter app env vars consumed at runtime

```
API_BASE_URL          # Points to backend — MUST be updated to Railway URL after deploy
SUPABASE_URL
SUPABASE_ANON_KEY
STREAM_API_KEY
```

---

## 3. Target Stack

```
┌─────────────────────────────────────────────────────────────┐
│                     FAMILIARISE STACK                       │
├─────────────────────────────────────────────────────────────┤
│  Flutter App (iOS + Android)                                │
│  ├── Store releases via GitHub Actions (flutter-ci.yml)     │
│  └── Dart-only hotfixes via Shorebird patch                 │
├─────────────────────────────────────────────────────────────┤
│  Dart Frog API — hosted on Railway                          │
│  ├── Auto-deploy on push to main                            │
│  ├── Preview environments on PRs                            │
│  └── Environment variables set in Railway dashboard         │
├─────────────────────────────────────────────────────────────┤
│  Supabase                                                   │
│  ├── PostgreSQL (via Prisma ORM)                            │
│  ├── Auth (email/password, Google, Apple)                   │
│  └── Storage (media uploads)                                │
└─────────────────────────────────────────────────────────────┘
```

---

## 4. Impact Analysis

### Risk levels

| Area | Risk | Notes |
|---|---|---|
| Backend downtime | HIGH if not migrated by April 3 | Globe shuts down; all API calls fail |
| App store rejection | LOW | Shorebird is approved by both stores |
| Supabase connection | LOW | Railway supports persistent Postgres connections; use pooler URL |
| Existing cron jobs | NONE | Cron jobs run in GitHub Actions, not Globe — unaffected |
| Payment webhooks | MEDIUM | Stripe/Razorpay webhook URLs must be updated to Railway URL |
| Stream SDK tokens | LOW | Token endpoint moves to Railway; update API_BASE_URL |

### What changes for developers

- `dart_frog dev` locally is unchanged
- Backend deploys no longer need Globe CLI — Railway auto-deploys from GitHub
- New command added: `shorebird patch` for hotfixes
- `API_BASE_URL` in `.env` changes from Globe URL to Railway URL

### What changes for end users

- Zero visible change — same app, same API behavior
- Hotfixes arrive silently in the background (Shorebird) without an update prompt

---

## 5. Phase 1 — Railway Migration (URGENT, by April 3)

### 5.1 Create Dockerfile for Dart Frog backend

**Create file:** `backend/Dockerfile`

```dockerfile
# ── Stage 1: Build ──────────────────────────────────────────
FROM dart:stable AS build

WORKDIR /app

# Copy the entire backend directory
COPY . .

# Install Dart Frog CLI globally
RUN dart pub global activate dart_frog_cli
ENV PATH="/root/.pub-cache/bin:${PATH}"

# Install dependencies
RUN dart pub get

# Generate Dart Frog build output (creates build/bin/server.dart)
RUN dart_frog build

# Compile the generated server to a native binary
RUN dart build cli --target build/bin/server.dart -o output

# ── Stage 2: Runtime ────────────────────────────────────────
FROM scratch

# Copy Dart runtime and compiled binary
COPY --from=build /runtime/ /
COPY --from=build /app/output/bundle/ /app/

EXPOSE 8080

CMD ["/app/bin/server"]
```

**Important notes for the agent:**
- This Dockerfile must live inside `backend/` not at the repo root
- The Railway project must be configured to use `backend/` as the root directory
- The server must bind to `0.0.0.0` not `localhost` — verify this in the Dart Frog entry point

### 5.2 Verify server binding

**Check file:** `backend/main.dart` or wherever the Dart Frog server starts.

Ensure the server binds to `0.0.0.0` and respects the `PORT` environment variable. If not, the entry point should contain:

```dart
import 'dart:io';
import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, InternetAddress.anyIPv4, port);
}
```

The `InternetAddress.anyIPv4` is equivalent to `0.0.0.0` and is required for Railway containers.

### 5.3 Create Railway configuration file

**Create file:** `backend/railway.toml`

```toml
[build]
builder = "dockerfile"
dockerfilePath = "Dockerfile"

[deploy]
startCommand = "/app/bin/server"
healthcheckPath = "/api/health"
healthcheckTimeout = 30
restartPolicyType = "on_failure"
restartPolicyMaxRetries = 3
```

### 5.4 Create a health check route

**Create file:** `backend/routes/api/health.dart`

```dart
import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/health
/// Railway uses this endpoint to verify the server is running.
Response onRequest(RequestContext context) {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return Response.json(
    body: {
      'status': 'ok',
      'timestamp': DateTime.now().toIso8601String(),
      'service': 'familiarise-api',
    },
  );
}
```

### 5.5 Create new GitHub Actions workflow for backend deployment

**Create file:** `.github/workflows/backend-deploy.yml`

```yaml
name: Deploy Backend to Railway

on:
  push:
    branches:
      - main
    paths:
      - 'backend/**'
      - '.github/workflows/backend-deploy.yml'
  pull_request:
    branches:
      - main
    paths:
      - 'backend/**'

jobs:
  # ── Test backend before deploying ──────────────────────────
  test-backend:
    name: Test Dart Frog Backend
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Dart SDK
        uses: dart-lang/setup-dart@v1
        with:
          sdk: stable

      - name: Install dependencies
        working-directory: backend
        run: dart pub get

      - name: Analyze backend code
        working-directory: backend
        run: dart analyze --fatal-infos

      - name: Run backend tests
        working-directory: backend
        run: dart test

  # ── Deploy to Railway on push to main ──────────────────────
  deploy-backend:
    name: Deploy to Railway
    needs: test-backend
    runs-on: ubuntu-latest
    # Only deploy on push to main, not on PRs
    if: github.event_name == 'push' && github.ref == 'refs/heads/main'

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Install Railway CLI
        run: npm install -g @railway/cli

      - name: Deploy to Railway
        working-directory: backend
        run: railway up --service familiarise-api --detach
        env:
          RAILWAY_TOKEN: ${{ secrets.RAILWAY_TOKEN }}

      - name: Notify deployment success
        if: success()
        run: |
          echo "✅ Backend deployed to Railway successfully"
          echo "Service: familiarise-api"
          echo "Commit: ${{ github.sha }}"

      - name: Notify deployment failure
        if: failure()
        run: |
          echo "❌ Backend deployment to Railway failed"
          echo "Check Railway dashboard for logs"
          exit 1
```

**GitHub Secrets required (add in GitHub → Settings → Secrets → Actions):**

| Secret name | Where to get it |
|---|---|
| `RAILWAY_TOKEN` | Railway dashboard → Account Settings → Tokens → New Token |

### 5.6 Environment variables to set on Railway

After creating the Railway project, set these environment variables in the Railway dashboard under the `familiarise-api` service → Variables:

```
DATABASE_URL          = postgresql://[user]:[password]@[host]:6543/[db]?pgbouncer=true
DIRECT_URL            = postgresql://[user]:[password]@[host]:5432/[db]
SUPABASE_URL          = https://[project-ref].supabase.co
SUPABASE_ANON_KEY     = [your-supabase-anon-key]
SUPABASE_SERVICE_KEY  = [your-supabase-service-role-key]
JWT_SECRET            = [your-jwt-secret]
STREAM_API_KEY        = [your-stream-api-key]
STREAM_API_SECRET     = [your-stream-api-secret]
RAZORPAY_KEY_ID       = [your-razorpay-key-id]
RAZORPAY_SECRET       = [your-razorpay-secret]
STRIPE_SECRET_KEY     = [your-stripe-secret-key]
STRIPE_WEBHOOK_SECRET = [your-stripe-webhook-secret]
PORT                  = 8080
```

**Critical note on DATABASE_URL:** Supabase has two connection strings:
- Port `5432` = direct connection (use for `DIRECT_URL` / migrations)
- Port `6543` = connection pooler via PgBouncer (use for `DATABASE_URL` / runtime)

Railway does not maintain persistent TCP connections the way a traditional VPS does. Always use the **pooler URL (port 6543)** for `DATABASE_URL` at runtime to avoid connection exhaustion.

### 5.7 Update webhook URLs after Railway deployment

After Railway assigns a URL (e.g. `https://familiarise-api.up.railway.app`), update webhooks in:

- **Stripe dashboard** → Developers → Webhooks → update endpoint to `https://familiarise-api.up.railway.app/api/webhooks/stripe`
- **Razorpay dashboard** → Settings → Webhooks → update endpoint to `https://familiarise-api.up.railway.app/api/webhooks/razorpay`

### 5.8 Update API_BASE_URL in Flutter app

**Modify file:** `.env.example`

Update the `API_BASE_URL` placeholder:

```env
# Backend API — update to Railway URL after deployment
API_BASE_URL=https://familiarise-api.up.railway.app
```

Also update `lib/core/network/dio_client.dart` or wherever `API_BASE_URL` is consumed to ensure it falls back to `http://localhost:8080` for local dev only:

```dart
// In your environment/config setup
static const String apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'http://localhost:8080',
);
```

---

## 6. Phase 2 — Shorebird OTA Integration

### 6.1 What Shorebird does

Shorebird patches Dart bytecode in the installed Flutter app on the user's device, bypassing app store review for Dart-only changes. It cannot patch native code (Kotlin/Swift) or add new Flutter plugins with native bindings.

**Update types:**
| Change type | How to ship |
|---|---|
| Bug fix in Dart UI or business logic | `shorebird patch` — minutes, silent |
| New API endpoint consumption | `shorebird patch` — minutes, silent |
| New native plugin or permission | Full store release via `flutter-ci.yml` |
| Backend change only | Push to Railway — instant |

### 6.2 Add Shorebird to pubspec

**Modify file:** `pubspec.yaml`

Add to `dev_dependencies`:

```yaml
dev_dependencies:
  shorebird_code_push: ^1.0.0  # OTA update client
```

### 6.3 Initialize Shorebird in Flutter app

**Modify file:** `lib/main.dart`

Wrap the app initialization with Shorebird's updater:

```dart
import 'package:shorebird_code_push/shorebird_code_push.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Shorebird — checks for available patches on launch
  final shorebirdCodePush = ShorebirdCodePush();
  final isUpdateAvailable = await shorebirdCodePush.isNewPatchAvailableForDownload();
  if (isUpdateAvailable) {
    await shorebirdCodePush.downloadUpdateIfAvailable();
    // Patch applies on next app launch — no restart forced on user
  }

  // Rest of your existing initialization
  runApp(const ProviderScope(child: FamiliariseApp()));
}
```

### 6.4 Add Shorebird release step to existing CI workflow

**Modify file:** `.github/workflows/flutter-ci.yml`

Add a new job after the existing store deployment jobs. This runs on every tagged release and creates a Shorebird release (separate from store releases, but in sync):

```yaml
  # ── Shorebird Release (runs alongside store release) ───────
  shorebird-release:
    name: Shorebird Release
    needs: [deploy-android, deploy-ios]
    runs-on: ubuntu-latest
    if: startsWith(github.ref, 'refs/tags/')

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.24.x'
          channel: 'stable'
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Install Shorebird CLI
        uses: shorebirdtech/setup-shorebird@v1

      - name: Shorebird release (Android)
        run: shorebird release android --flutter-version 3.24.x
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

      - name: Shorebird release (iOS)
        run: shorebird release ios --flutter-version 3.24.x
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}
```

Add a new job for patching (used for hotfixes — triggered manually or on push to `hotfix/*` branches):

```yaml
  # ── Shorebird Patch (hotfix — no store review needed) ──────
  shorebird-patch:
    name: Shorebird Hotfix Patch
    runs-on: ubuntu-latest
    # Trigger: manual dispatch OR push to hotfix/* branches
    if: |
      github.event_name == 'workflow_dispatch' ||
      startsWith(github.ref, 'refs/heads/hotfix/')

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.24.x'
          channel: 'stable'
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Install Shorebird CLI
        uses: shorebirdtech/setup-shorebird@v1

      - name: Apply patch (Android)
        run: shorebird patch android
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

      - name: Apply patch (iOS)
        run: shorebird patch ios
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}
```

Also add `workflow_dispatch` to the `on:` triggers at the top of `flutter-ci.yml` if not already present:

```yaml
on:
  push:
    branches: [main, develop]
    tags: ['v*']
  pull_request:
    branches: [main]
  workflow_dispatch:  # ADD THIS — enables manual trigger from GitHub UI
```

**GitHub Secrets required:**

| Secret name | Where to get it |
|---|---|
| `SHOREBIRD_TOKEN` | `shorebird login` locally → copies token to clipboard → paste here |

### 6.5 Create shorebird.yaml

**Create file:** `shorebird.yaml`

```yaml
# Shorebird configuration for Familiarise
# See https://docs.shorebird.dev

app_id: YOUR_SHOREBIRD_APP_ID  # Replace after running `shorebird init`

# Auto-update behavior
# silent: downloads patch in background, applies on next launch (recommended)
# prompt: asks user before downloading
# none: download only when app calls ShorebirdCodePush manually
update_strategy: silent
```

**Agent note:** The actual `app_id` is generated by running `shorebird init` locally. Leave the placeholder — a developer must run `shorebird init` once manually in the project root to register the app and get the ID.

---

## 7. Phase 3 — GitHub Actions Overhaul

### 7.1 Full updated flutter-ci.yml

**Replace file:** `.github/workflows/flutter-ci.yml`

This is the complete replacement of the existing workflow. It preserves all existing behavior and adds Railway backend verification, Shorebird, and improved job structure:

```yaml
name: Familiarise CI/CD

on:
  push:
    branches: [main, develop]
    tags: ['v*.*.*']
  pull_request:
    branches: [main, develop]
  workflow_dispatch:
    inputs:
      deploy_type:
        description: 'Deployment type'
        required: false
        default: 'patch'
        type: choice
        options:
          - patch
          - release

env:
  FLUTTER_VERSION: '3.24.x'
  JAVA_VERSION: '17'

jobs:
  # ════════════════════════════════════════════════════════════
  # JOB 1 — Analyze & Test (runs on every push and PR)
  # ════════════════════════════════════════════════════════════
  analyze-and-test:
    name: Analyze & Test
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: ${{ env.FLUTTER_VERSION }}
          channel: stable
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Generate code (Freezed, Riverpod, JSON)
        run: dart run build_runner build --delete-conflicting-outputs

      - name: Analyze Flutter code
        run: flutter analyze --fatal-infos

      - name: Run unit tests
        run: flutter test --coverage

      - name: Upload coverage to Codecov
        uses: codecov/codecov-action@v4
        with:
          file: coverage/lcov.info
          fail_ci_if_error: false

  # ════════════════════════════════════════════════════════════
  # JOB 2 — Test Dart Frog Backend (runs on every push and PR)
  # ════════════════════════════════════════════════════════════
  test-backend:
    name: Test Backend
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Dart SDK
        uses: dart-lang/setup-dart@v1
        with:
          sdk: stable

      - name: Install backend dependencies
        working-directory: backend
        run: dart pub get

      - name: Analyze backend code
        working-directory: backend
        run: dart analyze --fatal-infos

      - name: Run backend tests
        working-directory: backend
        run: dart test

  # ════════════════════════════════════════════════════════════
  # JOB 3 — Build Android
  # ════════════════════════════════════════════════════════════
  build-android:
    name: Build Android
    needs: analyze-and-test
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Java
        uses: actions/setup-java@v4
        with:
          distribution: temurin
          java-version: ${{ env.JAVA_VERSION }}

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: ${{ env.FLUTTER_VERSION }}
          channel: stable
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Generate code
        run: dart run build_runner build --delete-conflicting-outputs

      - name: Build debug APK (on PR / push to develop)
        if: "!startsWith(github.ref, 'refs/tags/')"
        run: flutter build apk --debug

      - name: Decode keystore
        if: startsWith(github.ref, 'refs/tags/')
        run: |
          echo "${{ secrets.ANDROID_KEYSTORE_BASE64 }}" | base64 --decode > android/app/keystore.jks

      - name: Build release AAB (on tag)
        if: startsWith(github.ref, 'refs/tags/')
        run: |
          flutter build appbundle --release \
            --dart-define=API_BASE_URL=${{ secrets.PRODUCTION_API_BASE_URL }}
        env:
          KEY_STORE_PASSWORD: ${{ secrets.ANDROID_KEY_STORE_PASSWORD }}
          KEY_ALIAS: ${{ secrets.ANDROID_KEY_ALIAS }}
          KEY_PASSWORD: ${{ secrets.ANDROID_KEY_PASSWORD }}

      - name: Upload AAB artifact
        if: startsWith(github.ref, 'refs/tags/')
        uses: actions/upload-artifact@v4
        with:
          name: android-release-aab
          path: build/app/outputs/bundle/release/*.aab
          retention-days: 7

  # ════════════════════════════════════════════════════════════
  # JOB 4 — Build iOS
  # ════════════════════════════════════════════════════════════
  build-ios:
    name: Build iOS
    needs: analyze-and-test
    runs-on: macos-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: ${{ env.FLUTTER_VERSION }}
          channel: stable
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Generate code
        run: dart run build_runner build --delete-conflicting-outputs

      - name: Install CocoaPods dependencies
        run: |
          cd ios
          pod install --repo-update

      - name: Build iOS (debug, on PR / push to develop)
        if: "!startsWith(github.ref, 'refs/tags/')"
        run: flutter build ios --debug --no-codesign

      - name: Import certificates and provisioning profiles
        if: startsWith(github.ref, 'refs/tags/')
        uses: apple-actions/import-codesign-certs@v3
        with:
          p12-file-base64: ${{ secrets.IOS_CERTIFICATE_BASE64 }}
          p12-password: ${{ secrets.IOS_CERTIFICATE_PASSWORD }}

      - name: Build release IPA (on tag)
        if: startsWith(github.ref, 'refs/tags/')
        run: |
          flutter build ipa --release \
            --dart-define=API_BASE_URL=${{ secrets.PRODUCTION_API_BASE_URL }} \
            --export-options-plist=ios/ExportOptions.plist

      - name: Upload IPA artifact
        if: startsWith(github.ref, 'refs/tags/')
        uses: actions/upload-artifact@v4
        with:
          name: ios-release-ipa
          path: build/ios/ipa/*.ipa
          retention-days: 7

  # ════════════════════════════════════════════════════════════
  # JOB 5 — Deploy Android to Play Store (on tag only)
  # ════════════════════════════════════════════════════════════
  deploy-android:
    name: Deploy Android → Play Store
    needs: build-android
    runs-on: ubuntu-latest
    if: startsWith(github.ref, 'refs/tags/')

    steps:
      - name: Download AAB artifact
        uses: actions/download-artifact@v4
        with:
          name: android-release-aab

      - name: Upload to Play Store (internal track)
        uses: r0adkll/upload-google-play@v1
        with:
          serviceAccountJsonPlainText: ${{ secrets.GOOGLE_PLAY_SERVICE_ACCOUNT_JSON }}
          packageName: com.familiarise.app
          releaseFiles: '*.aab'
          track: internal
          status: completed

  # ════════════════════════════════════════════════════════════
  # JOB 6 — Deploy iOS to App Store Connect (on tag only)
  # ════════════════════════════════════════════════════════════
  deploy-ios:
    name: Deploy iOS → App Store Connect
    needs: build-ios
    runs-on: macos-latest
    if: startsWith(github.ref, 'refs/tags/')

    steps:
      - name: Download IPA artifact
        uses: actions/download-artifact@v4
        with:
          name: ios-release-ipa

      - name: Upload to App Store Connect
        uses: apple-actions/upload-testflight-build@v1
        with:
          app-path: '*.ipa'
          issuer-id: ${{ secrets.APP_STORE_CONNECT_ISSUER_ID }}
          api-key-id: ${{ secrets.APP_STORE_CONNECT_API_KEY_ID }}
          api-private-key: ${{ secrets.APP_STORE_CONNECT_API_PRIVATE_KEY }}

  # ════════════════════════════════════════════════════════════
  # JOB 7 — Deploy Backend to Railway (on push to main)
  # ════════════════════════════════════════════════════════════
  deploy-backend:
    name: Deploy Backend → Railway
    needs: test-backend
    runs-on: ubuntu-latest
    if: github.event_name == 'push' && github.ref == 'refs/heads/main'

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Install Railway CLI
        run: npm install -g @railway/cli

      - name: Deploy to Railway
        working-directory: backend
        run: railway up --service familiarise-api --detach
        env:
          RAILWAY_TOKEN: ${{ secrets.RAILWAY_TOKEN }}

      - name: Verify deployment health
        run: |
          echo "Waiting for deployment to stabilize..."
          sleep 30
          curl --fail --retry 5 --retry-delay 10 \
            https://familiarise-api.up.railway.app/api/health || \
            echo "Health check failed — check Railway dashboard"

  # ════════════════════════════════════════════════════════════
  # JOB 8 — Shorebird Release (runs after store deploys, on tag)
  # ════════════════════════════════════════════════════════════
  shorebird-release:
    name: Shorebird Release
    needs: [deploy-android, deploy-ios]
    runs-on: ubuntu-latest
    if: startsWith(github.ref, 'refs/tags/')

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: ${{ env.FLUTTER_VERSION }}
          channel: stable
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Install Shorebird CLI
        uses: shorebirdtech/setup-shorebird@v1

      - name: Create Shorebird release (Android)
        run: shorebird release android --flutter-version ${{ env.FLUTTER_VERSION }}
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

      - name: Create Shorebird release (iOS)
        run: shorebird release ios --flutter-version ${{ env.FLUTTER_VERSION }}
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

  # ════════════════════════════════════════════════════════════
  # JOB 9 — Shorebird Patch (hotfix — no store review)
  # Triggers on: push to hotfix/* OR manual workflow_dispatch
  # ════════════════════════════════════════════════════════════
  shorebird-patch:
    name: Shorebird Hotfix Patch
    runs-on: ubuntu-latest
    if: |
      github.event_name == 'workflow_dispatch' ||
      startsWith(github.ref, 'refs/heads/hotfix/')

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: ${{ env.FLUTTER_VERSION }}
          channel: stable
          cache: true

      - name: Install dependencies
        run: flutter pub get

      - name: Generate code
        run: dart run build_runner build --delete-conflicting-outputs

      - name: Install Shorebird CLI
        uses: shorebirdtech/setup-shorebird@v1

      - name: Apply patch (Android)
        run: shorebird patch android
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

      - name: Apply patch (iOS)
        run: shorebird patch ios
        env:
          SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}
```

---

## 8. Phase 4 — Documentation Updates

### 8.1 Update README.md

**Modify file:** `README.md`

Replace the existing **CI/CD** section with:

```markdown
## CI/CD

This project uses GitHub Actions for continuous integration and deployment.

**Workflow:** `.github/workflows/flutter-ci.yml`

| Job | Triggers | Actions |
|-----|----------|---------|
| Analyze & Test | Push, PR | Lint, analyze, unit tests, coverage upload |
| Test Backend | Push, PR | Dart analyze, backend unit tests |
| Build Android | Push, PR, Release tag | Debug APK / Release AAB |
| Build iOS | Push, PR, Release tag | Debug build / Release IPA |
| Deploy Android | Release tag | Upload to Play Store (internal track) |
| Deploy iOS | Release tag | Upload to App Store Connect (TestFlight) |
| Deploy Backend | Push to main | Auto-deploy Dart Frog API to Railway |
| Shorebird Release | Release tag | Register release with Shorebird |
| Shorebird Patch | Push to `hotfix/*` / manual | OTA patch — no store review required |

### Shipping a hotfix (no App Store wait)

For Dart-only bug fixes (UI, business logic, API calls):

```bash
# Create a hotfix branch
git checkout -b hotfix/fix-booking-crash

# Make your Dart code changes
# ...

# Push — GitHub Actions automatically runs shorebird patch
git push origin hotfix/fix-booking-crash
```

The patch is delivered silently to all users on their next app launch.
For native code changes (new plugins, permissions), a full store release is required.
```

Replace the existing **Backend Setup** section with:

```markdown
### 5. Backend Setup

The project includes a Dart Frog backend in the `backend/` directory.

**Local development:**

```bash
cd backend
dart pub get
dart run orm generate         # Generate Prisma client
dart_frog dev                 # Starts at http://localhost:8080
```

**Production:** The backend is hosted on Railway and auto-deploys when you push to `main`. No manual deploy steps needed.

**Environment variables:** Copy `backend/.env.example` to `backend/.env` and fill in values. For production values, see the Railway dashboard.
```

Update the **Overview** table to reflect the new backend hosting:

```markdown
| Aspect | Details |
|--------|---------|
| **Target Users** | Consultees seeking expert consultations |
| **Platforms** | iOS 14+, Android API 24+ |
| **Flutter Version** | 3.24.x (Dart 3.5.x) |
| **Architecture** | Clean Architecture with Feature-First Structure |
| **Backend** | Dart Frog on Railway |
| **Database** | Supabase (PostgreSQL via Prisma ORM) |
| **OTA Updates** | Shorebird (Dart-only patches, no store review) |
```

### 8.2 Update CLAUDE.md

**Modify file:** `CLAUDE.md`

Add a new top-level section titled `## Infrastructure` (insert after the existing architecture overview):

```markdown
## Infrastructure

### Backend hosting — Railway

The Dart Frog API (`backend/`) is deployed on Railway at:
`https://familiarise-api.up.railway.app`

- Auto-deploys on every push to `main` that touches `backend/**`
- Health check endpoint: `GET /api/health`
- Environment variables are set in the Railway dashboard (not in code)
- Uses Supabase connection pooler (port 6543) for DATABASE_URL at runtime
- Uses direct connection (port 5432) for DIRECT_URL (migrations only)

**Local dev:** `cd backend && dart_frog dev` → `http://localhost:8080`

### OTA updates — Shorebird

Shorebird enables Dart-only patches to be delivered to users without App Store/Play Store review.

- A Shorebird **release** is created automatically alongside every tagged store release
- A Shorebird **patch** is applied automatically when pushing to any `hotfix/*` branch
- Patches can also be triggered manually via GitHub Actions → workflow_dispatch
- Patches apply silently on the user's next app launch (no update prompt)

**Limitation:** Shorebird patches Dart code only. Changes to native Android/iOS code, new Flutter plugins with native bindings, or new assets require a full store release.

### Update decision tree

```
Need to fix something?
│
├── Backend logic / API / DB query
│   └── Push to main → auto-deploys to Railway → users see it instantly
│
├── Flutter Dart code (UI, state, business logic, API calls)
│   ├── Minor hotfix → push to hotfix/* branch → shorebird patch
│   └── Larger change with tests → PR → merge to main → tag release
│
└── Native code (new plugin, permission, asset, icon)
    └── Full release: tag → GitHub Actions builds + deploys to stores
```
```

### 8.3 Update backend README

**Modify file:** `backend/README.md`

Replace its contents with:

```markdown
# Familiarise Backend

Dart Frog REST API for the Familiarise consultation marketplace.

[![Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dart-frog.dev)

## Overview

| Aspect | Details |
|--------|---------|
| **Framework** | Dart Frog 1.2.x |
| **ORM** | Prisma (via prisma_flutter_connector) |
| **Database** | Supabase PostgreSQL |
| **Hosting** | Railway (auto-deploy from main branch) |
| **Port** | 8080 (local) / set by Railway in production |

## Local development

```bash
# Install dependencies
dart pub get

# Generate Prisma client
dart run orm generate

# Copy and fill environment variables
cp .env.example .env

# Start dev server (hot reload)
dart_frog dev
# → http://localhost:8080
```

## Environment variables

| Variable | Description | Required |
|---|---|---|
| `DATABASE_URL` | Supabase pooler URL (port 6543) | Yes |
| `DIRECT_URL` | Supabase direct URL (port 5432) | Yes |
| `SUPABASE_URL` | Supabase project URL | Yes |
| `SUPABASE_ANON_KEY` | Supabase anonymous key | Yes |
| `SUPABASE_SERVICE_KEY` | Supabase service role key | Yes |
| `JWT_SECRET` | Secret for JWT signing | Yes |
| `STREAM_API_KEY` | Stream SDK API key | Yes |
| `STREAM_API_SECRET` | Stream SDK API secret | Yes |
| `RAZORPAY_KEY_ID` | Razorpay API key | For payments |
| `RAZORPAY_SECRET` | Razorpay secret | For payments |
| `STRIPE_SECRET_KEY` | Stripe secret key | For payments |
| `STRIPE_WEBHOOK_SECRET` | Stripe webhook signing secret | For webhooks |
| `PORT` | Server port (Railway sets this automatically) | Auto |

## API routes

| Method | Route | Description |
|---|---|---|
| GET | `/api/health` | Health check (used by Railway) |
| POST | `/api/auth/sign-in` | Sign in |
| POST | `/api/auth/sign-up` | Register |
| DELETE | `/api/auth/sign-out` | Sign out |
| GET | `/api/auth/session` | Get current session |
| GET | `/api/consultants` | List consultants |
| GET | `/api/consultants/:id` | Get consultant by ID |
| GET | `/api/consultants/:id/availability` | Get available slots |
| GET | `/api/appointments` | List user appointments |
| POST | `/api/checkout/create-order` | Create payment order |
| POST | `/api/checkout/verify` | Verify payment |
| GET | `/api/stream/token` | Get Stream chat token |
| GET | `/api/stream/video-token` | Get Stream video token |

## Production deployment

Production deploys are automated via GitHub Actions. Pushing to `main` triggers `.github/workflows/backend-deploy.yml`, which runs `railway up`.

To deploy manually (requires Railway CLI and token):

```bash
npm install -g @railway/cli
railway login
cd backend
railway up --service familiarise-api
```
```

---

## 9. Secrets & Environment Variables Reference

### Complete GitHub Secrets list

Add all of these in: **GitHub repo → Settings → Secrets and variables → Actions → Repository secrets**

| Secret | Used in | How to obtain |
|---|---|---|
| `RAILWAY_TOKEN` | `backend-deploy.yml`, `flutter-ci.yml` | Railway → Account Settings → Tokens |
| `PRODUCTION_API_BASE_URL` | `flutter-ci.yml` (build step) | The Railway URL assigned to your service |
| `SHOREBIRD_TOKEN` | `flutter-ci.yml` | Run `shorebird login` locally |
| `ANDROID_KEYSTORE_BASE64` | `flutter-ci.yml` | `base64 -i your.keystore` |
| `ANDROID_KEY_STORE_PASSWORD` | `flutter-ci.yml` | Your keystore password |
| `ANDROID_KEY_ALIAS` | `flutter-ci.yml` | Your key alias |
| `ANDROID_KEY_PASSWORD` | `flutter-ci.yml` | Your key password |
| `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` | `flutter-ci.yml` | Google Play Console → Setup → API access |
| `IOS_CERTIFICATE_BASE64` | `flutter-ci.yml` | Export .p12 from Keychain, then base64 encode |
| `IOS_CERTIFICATE_PASSWORD` | `flutter-ci.yml` | Password you set when exporting .p12 |
| `APP_STORE_CONNECT_ISSUER_ID` | `flutter-ci.yml` | App Store Connect → Users & Access → Keys |
| `APP_STORE_CONNECT_API_KEY_ID` | `flutter-ci.yml` | App Store Connect → Users & Access → Keys |
| `APP_STORE_CONNECT_API_PRIVATE_KEY` | `flutter-ci.yml` | App Store Connect → Users & Access → Keys → download .p8 |
| `DATABASE_URL` | Existing cron workflows | Supabase pooler URL (port 6543) |
| `RAZORPAY_KEY_ID` | Existing cron workflows | Razorpay dashboard |
| `RAZORPAY_SECRET` | Existing cron workflows | Razorpay dashboard |
| `STRIPE_SECRET_KEY` | Existing cron workflows | Stripe dashboard |
| `PAYOUT_CRON_SECRET` | Existing cron workflows | Any strong random string |

---

## 10. Verification Checklist

The agent should add this checklist to a new file `docs/migration-checklist.md`:

**Create file:** `docs/migration-checklist.md`

```markdown
# Migration & Infrastructure Verification Checklist

## Phase 1 — Railway Migration (complete before April 3, 2026)

- [ ] `backend/Dockerfile` created and tested locally (`docker build -t test-api . && docker run -p 8080:8080 test-api`)
- [ ] `backend/railway.toml` created
- [ ] `backend/routes/api/health.dart` created and returns `{"status": "ok"}`
- [ ] Dart Frog server binds to `0.0.0.0` (not `localhost`)
- [ ] Railway project created at railway.com
- [ ] GitHub repo connected to Railway project
- [ ] All environment variables set in Railway dashboard (see Section 9)
- [ ] `DATABASE_URL` uses Supabase pooler URL (port 6543)
- [ ] Backend deployed and accessible at Railway URL
- [ ] Health check passes: `curl https://familiarise-api.up.railway.app/api/health`
- [ ] Auth endpoint tested: `POST /api/auth/sign-in`
- [ ] `RAILWAY_TOKEN` secret added to GitHub
- [ ] `.github/workflows/backend-deploy.yml` created
- [ ] Push to main triggers auto-deploy to Railway
- [ ] Stripe webhook URL updated in Stripe dashboard
- [ ] Razorpay webhook URL updated in Razorpay dashboard
- [ ] `API_BASE_URL` in `.env.example` updated to Railway URL
- [ ] `PRODUCTION_API_BASE_URL` secret added to GitHub

## Phase 2 — Shorebird (complete within 1 week of Phase 1)

- [ ] `shorebird_code_push` added to `pubspec.yaml`
- [ ] `shorebird init` run locally (generates `shorebird.yaml` with real app_id)
- [ ] `shorebird.yaml` committed to repo
- [ ] Shorebird initialization added to `lib/main.dart`
- [ ] `SHOREBIRD_TOKEN` secret added to GitHub
- [ ] Shorebird release job added to `flutter-ci.yml`
- [ ] Shorebird patch job added to `flutter-ci.yml`
- [ ] Test patch: push to `hotfix/test-patch` → verify patch job runs in GitHub Actions

## Phase 3 — GitHub Actions

- [ ] `flutter-ci.yml` updated with all 9 jobs
- [ ] `workflow_dispatch` trigger added to `flutter-ci.yml`
- [ ] All existing cron workflows (`cleanup-abandoned-payments.yml`, `stream_sync.yml`, etc.) verified unaffected
- [ ] Full CI run passes on a test PR

## Phase 4 — Documentation

- [ ] `README.md` — CI/CD section updated
- [ ] `README.md` — Overview table updated (backend → Railway)
- [ ] `README.md` — Backend Setup section updated
- [ ] `CLAUDE.md` — Infrastructure section added
- [ ] `backend/README.md` — Fully rewritten
- [ ] `docs/migration-checklist.md` — This file committed

## Post-migration validation

- [ ] Create a test PR → both analyze-and-test and test-backend jobs pass
- [ ] Push to main → backend auto-deploys, health check passes
- [ ] Create a `v0.0.1-test` tag → all 9 jobs run (build, deploy, shorebird-release)
- [ ] Push to `hotfix/test` → shorebird-patch job runs
- [ ] Flutter app on a device points to Railway URL and can sign in
- [ ] Booking flow end-to-end works against Railway backend
- [ ] Payment webhook received by Railway (check Railway logs)
```

---

*End of implementation plan. All files listed above must be created or modified exactly as specified. No existing functionality should be removed unless explicitly stated.*
