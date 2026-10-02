# Migration & Infrastructure Verification Checklist

## Phase 1 — Railway Migration

- [x] `backend/Dockerfile` created and tested locally (`docker build -t familiarise-mobile-api .`)
- [x] `railway.json` created at repository root configuring `backend/Dockerfile`, `/api/health`, restart policy, and replicas
- [x] `backend/routes/api/health.dart` created and returns `{"status": "ok"}`
- [x] `backend/main.dart` uses `DotEnv(includePlatformEnvironment: true)` for Docker/Railway compatibility
- [x] Dart Frog server binds to `0.0.0.0` / `anyIPv6` (not `localhost`)
- [x] Railway project created at railway.com (`familiarise-mobile-api`)
- [x] All environment variables set in Railway dashboard (21 vars)
- [x] `DATABASE_URL` uses Supabase pooler URL (port 6543)
- [x] `DIRECT_URL` uses Supabase direct URL (port 5432)
- [x] Backend deployed and accessible at Railway URL
- [x] Health check passes: `curl https://familiarise-mobile-api-production.up.railway.app/api/health`
- [x] Auth endpoint tested: `POST /api/auth/email/sign-in` returns proper error response
- [x] `.github/workflows/deploy-railway.yml` created (triggers on `dev` and `prod` for `backend/**`)
- [x] `prod` branch created on remote from `origin/dev` (`refs/heads/prod`)
- [x] `API_BASE_URL` in `.env.example` updated

## Phase 2 — Shorebird OTA & Fastlane

- [x] `shorebird init` run locally (`app_id: f9b217a0-1007-48a5-bd41-d381568e23f1`)
- [x] `shorebird.yaml` committed to repo with real `app_id`, flavors (`dev`, `staging`, `prod`), and `auto_update: true`
- [x] `fastlane/Appfile` and `fastlane/Fastfile` created for Android (`internal`, `beta`, `production`, `patch`) and iOS (`beta`, `release`, `patch`)
- [x] `.github/workflows/shorebird-patch.yml` created (`push` to `patch/**` or `hotfix/**` + `workflow_dispatch`)
- [x] Deprecated `xcrun altool` and manual keychain scripts replaced with Fastlane + Shorebird in `flutter-ci.yml`

## Phase 3 — GitHub Actions (`flutter-ci.yml`)

- [x] Triggered on `push` and `pull_request` to `dev` and `prod`
- [x] Flutter version pinned to `3.47.6`
- [x] Deprecated `flutter pub run` replaced with `dart run`
- [x] `test-backend` job regenerates Prisma client (`prisma_flutter_connector` v1.0.0), runs `build_runner`, `dart analyze --fatal-infos`, and `dart test`
- [x] `release-android` and `release-ios` jobs use Fastlane + Shorebird on `prod` / `release`

## Phase 4 — Documentation & E2E MCP Prompts

- [x] `CLAUDE.md` and `AGENTS.md` created at repo root
- [x] `README.md`, `backend/README.md`, and `FEATURE_PARITY.md` updated (`PFC v1.0.0`, `Flutter 3.47.6`, `0` `JsonQueryBuilder`, Companion Starter feature flags)
- [x] `prompts/testing/README.md` updated with Companion Starter `FeatureFlags` and headless Flutter Web Server + Chrome DevTools MCP semantics workflow
- [x] `prompts/mcp-workflows/` created with 6 end-to-end session prompts (`00` through `05`) combining Chrome DevTools MCP + Supabase MCP + Stream.io MCP + Dart MCP
