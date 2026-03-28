# Deployment Guide

This document outlines the deployment strategy for the Familiarise Mobile monorepo, covering both the Flutter mobile app (Android/iOS) and the Dart Frog backend.

## Table of Contents

- [Architecture Overview](#architecture-overview)
- [The Deployment Challenge](#the-deployment-challenge)
- [Backend Deployment Options](#backend-deployment-options)
- [Mobile CI/CD Options](#mobile-cicd-options)
- [Pricing Comparison](#pricing-comparison)
- [Recommended Stack](#recommended-stack)
- [Implementation Guide](#implementation-guide)
- [Required Secrets](#required-secrets)
- [Globe.dev Setup Guide](#globedev-setup-guide)

---

## Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                      GitHub Monorepo                            │
│  familiarise_mobile/                                            │
│  ├── lib/, android/, ios/  ──→ GitHub Actions ──→ App Stores   │
│  └── backend/              ──→ Globe.dev ──→ Cloud Server       │
└─────────────────────────────────────────────────────────────────┘

                         ┌─────────────────┐
                         │   GitHub Push   │
                         │   (tag: v1.x)   │
                         └────────┬────────┘
                                  │
                    ┌─────────────┴─────────────┐
                    ▼                           ▼
           ┌───────────────┐           ┌───────────────┐
           │    Backend    │           │  Mobile App   │
           │   (backend/)  │           │ (lib/, ios/,  │
           │               │           │  android/)    │
           └───────┬───────┘           └───────┬───────┘
                   │                           │
                   ▼                           ▼
           ┌───────────────┐           ┌───────────────┐
           │   Globe.dev   │           │ GitHub Actions│
           │   (or Railway)│           │ (or Codemagic)│
           └───────┬───────┘           └───────┬───────┘
                   │                           │
                   ▼                     ┌─────┴─────┐
           ┌───────────────┐             ▼           ▼
           │  Cloud Server │      ┌──────────┐ ┌──────────┐
           │  (API running)│      │Play Store│ │App Store │
           └───────────────┘      └──────────┘ └──────────┘
```

---

## The Deployment Challenge

### Why Mobile Apps and Backends Can't Be "Packaged Together"

| Component | Distribution Method | Runtime |
|-----------|---------------------|---------|
| **Android APK/AAB** | Uploaded to Google Play Store | User's device |
| **iOS IPA** | Uploaded to Apple App Store | User's device |
| **Backend Server** | Deployed to cloud | Runs 24/7 on server |

Mobile apps are downloaded by users from app stores and run on their devices. The backend must be running on a server for the apps to connect to. They're fundamentally different deployment targets.

**However**, you CAN deploy both from a **single CI/CD pipeline** with coordinated releases.

---

## Backend Deployment Options

### Comparison Table

| Platform | Dart Support | Dart Frog Detection | Monorepo Support | Free Tier |
|----------|-------------|---------------------|------------------|-----------|
| **Globe.dev** | Native | Auto-detect | Excellent | 50K req/mo |
| **Railway** | Via Docker | Template available | Good | $5/mo credit |
| **Fly.io** | Via Docker | Manual config | Good | 3 VMs free |
| **Google Cloud Run** | Via Docker | Manual config | Good | 2M req/mo |

### Globe.dev (Recommended)

[Globe.dev](https://globe.dev/) is built specifically for Dart/Flutter and has first-class Dart Frog support.

**Advantages:**
- Auto-detects Dart Frog projects
- Zero DevOps (no Docker, YAML, or cloud setup required)
- Global edge network with automatic scaling
- Native monorepo support with Melos
- Dart-native platform

**Deployment:**
```bash
# Install CLI
dart pub global activate globe_cli

# Login
globe login

# Deploy (auto-detects Dart Frog)
cd backend
globe deploy
```

### Railway

[Railway](https://railway.app/) offers easy deployment with a Dart Frog template.

**Advantages:**
- Simple UI and good developer experience
- Template available for Dart Frog
- Easy environment variable management

**Deployment:**
```bash
# Install CLI
npm install -g @railway/cli

# Login and deploy
railway login
cd backend
railway init
railway up
```

### Fly.io

[Fly.io](https://fly.io/) offers edge deployment with more control.

**Advantages:**
- Multi-region deployment
- More control over infrastructure
- Static IP addresses

**Requires:** Dockerfile configuration (see [Implementation Guide](#implementation-guide))

---

## Mobile CI/CD Options

### Comparison Table

| Factor | GitHub Actions | Codemagic |
|--------|---------------|-----------|
| **Cost** | Free (2,000 mins/mo) | Free (500 mins/mo) |
| **iOS Builds** | macOS runners (x86) | Apple Silicon M2 (faster) |
| **Setup** | YAML config (more control) | GUI editor (easier) |
| **Code Signing** | Manual setup | Built-in management |
| **Flutter Support** | Via actions | Native, first-class |
| **Already Configured** | Yes | No |

### GitHub Actions (Recommended)

You already have GitHub Actions configured in `.github/workflows/flutter-ci.yml`.

**Advantages:**
- Already set up in your repository
- Generous free tier (2,000 mins/month)
- Full control via YAML
- Integrated with GitHub ecosystem

### Codemagic

[Codemagic](https://codemagic.io/) is purpose-built for Flutter.

**Advantages:**
- Apple Silicon M2 machines (2-3x faster iOS builds)
- Automatic code signing management
- GUI workflow editor
- Flutter-native tooling

**When to choose Codemagic:**
- iOS builds are too slow on GitHub Actions
- You want easier code signing management
- You prefer a GUI over YAML configuration

---

## Pricing Comparison

### Globe.dev

| Plan | Cost | Requests | Bandwidth | Memory | Databases |
|------|------|----------|-----------|--------|-----------|
| **Hobby** | **Free** | 50K/month | 2 GB | 256 MB | 2 |
| **Pro** | $20/month | Unlimited | 50 GB (+$0.09/GB) | 512 MB | More |
| **Enterprise** | Custom | Custom | Custom | Custom | Custom |

### Codemagic

| Plan | Cost | macOS M2 Minutes | Parallel Builds | Team Size |
|------|------|------------------|-----------------|-----------|
| **Free** | **$0** | 500/month | 1 | 1 |
| **Pay As You Go** | Usage-based | $0.095/min | +$49/mo each | Unlimited |
| **Fixed** | $3,990/year | **Unlimited** | 3 | Unlimited |
| **Enterprise** | $12,000+/year | Unlimited | Custom | Unlimited |

**Build rates (Pay As You Go):**
- Linux: $0.045/min
- macOS M2: $0.095/min

### GitHub Actions

| Plan | Cost | Minutes | Parallel Jobs |
|------|------|---------|---------------|
| **Free** | $0 | 2,000 Linux / 200 macOS | 20 |
| **Team** | $4/user/month | 3,000 Linux / 300 macOS | 60 |
| **Enterprise** | $21/user/month | 50,000 Linux / 1,000 macOS | 180 |

**Overage rates:**
- Linux: $0.008/min
- macOS: $0.08/min

### Cost Estimate (10 releases/month, ~15 min build time)

| Service | Monthly Cost | Notes |
|---------|--------------|-------|
| **Globe.dev (Hobby)** | **$0** | 50K requests likely enough for MVP |
| **GitHub Actions (Free)** | **$0** | 2,000 mins covers ~130 builds |
| **Codemagic (Free)** | **$0** | 500 mins covers ~33 iOS builds |

---

## Recommended Stack

### Starting Out (Free Tier)

| Component | Service | Cost |
|-----------|---------|------|
| Backend Hosting | Globe.dev Hobby | **Free** |
| CI/CD Pipeline | GitHub Actions Free | **Free** |
| **Total** | | **$0/month** |

### When to Upgrade

| Trigger | Upgrade To | Cost |
|---------|------------|------|
| Backend > 50K requests/mo | Globe Pro | $20/mo |
| iOS builds > 500 mins/mo | Codemagic Pay As You Go | ~$15-50/mo |
| Need faster iOS builds | Codemagic (M2 vs GitHub x86) | Variable |
| Team > 1 person | GitHub Team or Codemagic | $4+/user/mo |

---

## Implementation Guide

### GitHub Actions Monorepo Workflow

Create or update `.github/workflows/deploy.yml`:

```yaml
name: Deploy Monorepo

on:
  push:
    branches: [main]
  release:
    types: [published]

jobs:
  # ============================================
  # DETECT CHANGES (Smart builds)
  # ============================================
  changes:
    runs-on: ubuntu-latest
    outputs:
      mobile: ${{ steps.filter.outputs.mobile }}
      backend: ${{ steps.filter.outputs.backend }}
    steps:
      - uses: actions/checkout@v4
      - uses: dorny/paths-filter@v3
        id: filter
        with:
          filters: |
            mobile:
              - 'lib/**'
              - 'android/**'
              - 'ios/**'
              - 'pubspec.yaml'
            backend:
              - 'backend/**'

  # ============================================
  # BACKEND DEPLOYMENT (Globe.dev)
  # ============================================
  deploy-backend:
    needs: changes
    if: needs.changes.outputs.backend == 'true' || github.event_name == 'release'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Dart
        uses: dart-lang/setup-dart@v1

      - name: Install Globe CLI
        run: dart pub global activate globe_cli

      - name: Deploy to Globe
        working-directory: backend
        env:
          GLOBE_TOKEN: ${{ secrets.GLOBE_TOKEN }}
        run: globe deploy --token $GLOBE_TOKEN

  # ============================================
  # ANDROID DEPLOYMENT
  # ============================================
  deploy-android:
    needs: changes
    if: needs.changes.outputs.mobile == 'true' || github.event_name == 'release'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Java
        uses: actions/setup-java@v4
        with:
          distribution: 'temurin'
          java-version: '17'

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.24.3'
          channel: 'stable'

      - name: Setup Ruby (for Fastlane)
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: '3.2'
          bundler-cache: true
          working-directory: android

      - name: Generate code
        run: |
          flutter pub get
          dart run build_runner build --delete-conflicting-outputs

      - name: Decode Keystore
        env:
          KEYSTORE_BASE64: ${{ secrets.ANDROID_KEYSTORE_BASE64 }}
        run: echo "$KEYSTORE_BASE64" | base64 -d > android/app/keystore.jks

      - name: Create key.properties
        run: |
          cat > android/key.properties << EOF
          storePassword=${{ secrets.ANDROID_KEYSTORE_PASSWORD }}
          keyPassword=${{ secrets.ANDROID_KEY_PASSWORD }}
          keyAlias=${{ secrets.ANDROID_KEY_ALIAS }}
          storeFile=keystore.jks
          EOF

      - name: Build Release AAB
        run: flutter build appbundle --release
        env:
          API_BASE_URL: ${{ secrets.API_BASE_URL }}

      - name: Deploy to Play Store
        if: github.event_name == 'release'
        working-directory: android
        env:
          PLAY_STORE_JSON_KEY: ${{ secrets.PLAY_STORE_SERVICE_ACCOUNT }}
        run: |
          echo "$PLAY_STORE_JSON_KEY" > play-store-key.json
          bundle exec fastlane deploy

      - name: Upload AAB Artifact
        uses: actions/upload-artifact@v4
        with:
          name: android-release
          path: build/app/outputs/bundle/release/app-release.aab

  # ============================================
  # iOS DEPLOYMENT
  # ============================================
  deploy-ios:
    needs: changes
    if: needs.changes.outputs.mobile == 'true' || github.event_name == 'release'
    runs-on: macos-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.24.3'
          channel: 'stable'

      - name: Setup Ruby (for Fastlane)
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: '3.2'
          bundler-cache: true
          working-directory: ios

      - name: Install CocoaPods
        run: |
          cd ios
          pod install --repo-update

      - name: Generate code
        run: |
          flutter pub get
          dart run build_runner build --delete-conflicting-outputs

      - name: Setup code signing
        if: github.event_name == 'release'
        env:
          CERTIFICATE_BASE64: ${{ secrets.IOS_CERTIFICATE_BASE64 }}
          CERTIFICATE_PASSWORD: ${{ secrets.IOS_CERTIFICATE_PASSWORD }}
          PROVISIONING_PROFILE_BASE64: ${{ secrets.IOS_PROVISIONING_PROFILE_BASE64 }}
        run: |
          # Create temporary keychain
          security create-keychain -p "" build.keychain
          security default-keychain -s build.keychain
          security unlock-keychain -p "" build.keychain

          # Import certificate
          echo "$CERTIFICATE_BASE64" | base64 -d > certificate.p12
          security import certificate.p12 -k build.keychain -P "$CERTIFICATE_PASSWORD" -T /usr/bin/codesign
          security set-key-partition-list -S apple-tool:,apple: -s -k "" build.keychain

          # Install provisioning profile
          mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
          echo "$PROVISIONING_PROFILE_BASE64" | base64 -d > ~/Library/MobileDevice/Provisioning\ Profiles/profile.mobileprovision

      - name: Build iOS
        run: flutter build ios --release --no-codesign
        env:
          API_BASE_URL: ${{ secrets.API_BASE_URL }}

      - name: Build IPA & Deploy to TestFlight
        if: github.event_name == 'release'
        working-directory: ios
        env:
          APP_STORE_CONNECT_API_KEY: ${{ secrets.APP_STORE_CONNECT_API_KEY }}
          APP_STORE_CONNECT_KEY_ID: ${{ secrets.APP_STORE_CONNECT_KEY_ID }}
          APP_STORE_CONNECT_ISSUER_ID: ${{ secrets.APP_STORE_CONNECT_ISSUER_ID }}
        run: bundle exec fastlane beta
```

### Codemagic Alternative

If you prefer Codemagic, create `codemagic.yaml` in the project root:

```yaml
workflows:
  # ==========================================
  # FULL MONOREPO RELEASE
  # ==========================================
  monorepo-release:
    name: Full Monorepo Release
    instance_type: mac_mini_m2
    max_build_duration: 90

    triggering:
      events:
        - tag
      tag_patterns:
        - pattern: 'v*'

    environment:
      flutter: stable
      vars:
        GLOBE_TOKEN: $GLOBE_TOKEN
      groups:
        - google_play
        - app_store

    scripts:
      # ========== BACKEND DEPLOYMENT ==========
      - name: Deploy Backend to Globe
        script: |
          dart pub global activate globe_cli
          cd backend
          globe deploy --token $GLOBE_TOKEN
          echo "Backend deployed to Globe!"

      # ========== MOBILE APP BUILD ==========
      - name: Get dependencies
        script: flutter pub get

      - name: Generate code
        script: dart run build_runner build --delete-conflicting-outputs

      - name: Build Android AAB
        script: flutter build appbundle --release

      - name: Build iOS IPA
        script: |
          flutter build ipa --release \
            --export-options-plist=/Users/builder/export_options.plist

    artifacts:
      - build/app/outputs/bundle/release/*.aab
      - build/ios/ipa/*.ipa

    publishing:
      google_play:
        credentials: $GCLOUD_SERVICE_ACCOUNT_CREDENTIALS
        track: internal
        submit_as_draft: true

      app_store_connect:
        api_key: $APP_STORE_CONNECT_PRIVATE_KEY
        key_id: $APP_STORE_CONNECT_KEY_IDENTIFIER
        issuer_id: $APP_STORE_CONNECT_ISSUER_ID
        submit_to_testflight: true
```

### Fastlane Setup

#### Android (`android/fastlane/Fastfile`)

```ruby
default_platform(:android)

platform :android do
  desc "Deploy to Play Store Internal Track"
  lane :deploy do
    upload_to_play_store(
      track: 'internal',
      aab: '../build/app/outputs/bundle/release/app-release.aab',
      json_key: 'play-store-key.json',
      skip_upload_metadata: true,
      skip_upload_images: true,
      skip_upload_screenshots: true
    )
  end

  desc "Promote to Production"
  lane :promote_to_production do
    upload_to_play_store(
      track: 'internal',
      track_promote_to: 'production',
      json_key: 'play-store-key.json',
      skip_upload_aab: true
    )
  end
end
```

#### iOS (`ios/fastlane/Fastfile`)

```ruby
default_platform(:ios)

platform :ios do
  desc "Push to TestFlight"
  lane :beta do
    api_key = app_store_connect_api_key(
      key_id: ENV["APP_STORE_CONNECT_KEY_ID"],
      issuer_id: ENV["APP_STORE_CONNECT_ISSUER_ID"],
      key_content: ENV["APP_STORE_CONNECT_API_KEY"]
    )

    build_app(
      workspace: "Runner.xcworkspace",
      scheme: "Runner",
      export_method: "app-store"
    )

    upload_to_testflight(api_key: api_key)
  end

  desc "Deploy to App Store"
  lane :release do
    api_key = app_store_connect_api_key(
      key_id: ENV["APP_STORE_CONNECT_KEY_ID"],
      issuer_id: ENV["APP_STORE_CONNECT_ISSUER_ID"],
      key_content: ENV["APP_STORE_CONNECT_API_KEY"]
    )

    deliver(
      api_key: api_key,
      submit_for_review: true,
      automatic_release: true
    )
  end
end
```

### Backend Dockerfile (for Railway/Fly.io)

If using Railway or Fly.io instead of Globe.dev, create `backend/Dockerfile`:

```dockerfile
# Build stage
FROM dart:stable AS build
WORKDIR /app
COPY . .
RUN dart pub global activate dart_frog_cli
RUN dart pub get
RUN dart_frog build

# Compile to native executable
RUN dart compile exe build/bin/server.dart -o build/bin/server

# Runtime stage
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/build/bin/server /app/bin/server
EXPOSE 8080
ENTRYPOINT ["/app/bin/server"]
```

---

## Required Secrets

### GitHub Actions Secrets

| Secret | Purpose | How to Obtain |
|--------|---------|---------------|
| `GLOBE_TOKEN` | Backend deployment to Globe | `globe login` then check `~/.globe/credentials` |
| `API_BASE_URL` | Production backend URL | Your Globe/Railway deployment URL |
| `ANDROID_KEYSTORE_BASE64` | Android signing key | `base64 -i keystore.jks` |
| `ANDROID_KEYSTORE_PASSWORD` | Keystore password | Your keystore password |
| `ANDROID_KEY_PASSWORD` | Key password | Your key password |
| `ANDROID_KEY_ALIAS` | Key alias | Your key alias |
| `PLAY_STORE_SERVICE_ACCOUNT` | Play Store API JSON | Google Play Console → API access |
| `IOS_CERTIFICATE_BASE64` | iOS distribution cert | Export from Keychain, then `base64 -i cert.p12` |
| `IOS_CERTIFICATE_PASSWORD` | Cert password | Password used when exporting |
| `IOS_PROVISIONING_PROFILE_BASE64` | Provisioning profile | Download from Apple Developer, then `base64 -i profile.mobileprovision` |
| `APP_STORE_CONNECT_API_KEY` | App Store Connect API | App Store Connect → Users → Keys |
| `APP_STORE_CONNECT_KEY_ID` | API Key ID | From the key you created |
| `APP_STORE_CONNECT_ISSUER_ID` | Issuer ID | App Store Connect → Users → Keys |

### Codemagic Environment Variables

Same secrets, configured via Codemagic UI under Settings → Environment variables.

---

## Globe.dev Setup Guide

### 1. Install the CLI

```bash
dart pub global activate globe_cli
```

### 2. Login

```bash
globe login
```

This opens a browser for authentication.

### 3. Initialize Project (First Time)

```bash
cd backend
globe link
```

### 4. Deploy

```bash
globe deploy
```

Globe auto-detects Dart Frog and applies the correct build settings.

### 5. View Logs

```bash
globe logs
```

### 6. Environment Variables

Set via Globe dashboard or CLI:

```bash
globe env set DATABASE_URL "postgresql://..."
globe env set JWT_SECRET "your-secret"
```

---

## Release Process

### Creating a Release

```bash
# Tag the release
git tag v1.0.0
git push --tags

# This triggers:
# 1. Backend deploys to Globe
# 2. Android AAB uploads to Play Store (internal track)
# 3. iOS IPA uploads to TestFlight
```

### Promoting to Production

1. **Android:** Use Play Console or Fastlane `promote_to_production`
2. **iOS:** Promote from TestFlight in App Store Connect

---

## Troubleshooting

### Backend Issues

**Globe deployment fails:**
```bash
# Check logs
globe logs

# Verify Dart Frog builds locally
cd backend
dart_frog build
dart build/bin/server.dart
```

### Mobile Build Issues

**Android signing fails:**
- Verify keystore is base64 encoded correctly
- Check key.properties values match secrets

**iOS code signing fails:**
- Ensure certificate and profile match
- Check provisioning profile includes the correct app ID
- Verify certificate is not expired

### CI/CD Issues

**Workflow not triggering:**
- Check branch/tag patterns match
- Verify paths-filter is detecting changes correctly

---

## References

- [Globe.dev Documentation](https://docs.globe.dev/)
- [Globe Dart Frog Deployment](https://docs.globe.dev/frameworks/dart-frog)
- [Codemagic Documentation](https://docs.codemagic.io/)
- [Flutter CI/CD Official Guide](https://docs.flutter.dev/deployment/cd)
- [Fastlane Documentation](https://docs.fastlane.tools/)
- [GitHub Actions for Flutter](https://github.com/subosito/flutter-action)
