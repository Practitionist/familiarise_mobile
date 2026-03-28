# Migration & Infrastructure Verification Checklist

## Phase 1 — Railway Migration (complete before April 3, 2026)

- [x] `backend/Dockerfile` created and tested locally (`docker build -t test-api .`)
- [x] `backend/railway.toml` created
- [x] `backend/routes/api/health.dart` created and returns `{"status": "ok"}`
- [x] `backend/main.dart` uses `DotEnv(includePlatformEnvironment: true)` for Docker compat
- [x] Dart Frog server binds to `0.0.0.0` / `anyIPv6` (not `localhost`)
- [x] Railway project created at railway.com (familiarise-mobile-api)
- [ ] GitHub repo connected to Railway project
- [x] All environment variables set in Railway dashboard (21 vars via MCP)
- [x] `DATABASE_URL` uses Supabase pooler URL (port 6543)
- [x] `DIRECT_URL` uses Supabase direct URL (port 5432)
- [x] Backend deployed and accessible at Railway URL
- [x] Health check passes: `curl https://familiarise-mobile-api-production.up.railway.app/api/health`
- [x] Auth endpoint tested: `POST /api/auth/email/sign-in` returns proper error response
- [ ] `RAILWAY_TOKEN` secret added to GitHub
- [ ] `PRODUCTION_API_BASE_URL` secret added to GitHub
- [x] `.github/workflows/backend-deploy.yml` created
- [ ] `prod` branch created from `dev`
- [ ] Push to `prod` triggers auto-deploy to Railway
- [ ] Stripe webhook URL updated in Stripe dashboard
- [ ] Razorpay webhook URL updated in Razorpay dashboard
- [x] `API_BASE_URL` in `.env.example` updated

## Phase 2 — Shorebird OTA

- [x] `shorebird_code_push` added to `dependencies` in pubspec.yaml
- [x] `shorebird init` run locally (app_id: f9b217a0-1007-48a5-bd41-d381568e23f1)
- [x] `shorebird.yaml` committed to repo with real app_id
- [x] Shorebird update check added to `lib/main.dart`
- [ ] `SHOREBIRD_TOKEN` secret added to GitHub
- [x] Shorebird release job added to `flutter-ci.yml`
- [x] Shorebird patch job added to `flutter-ci.yml`
- [ ] Test patch: push to `hotfix/test-patch` → verify patch job runs

## Phase 3 — GitHub Actions

- [x] `flutter-ci.yml` updated with `workflow_dispatch` trigger
- [x] Branch references updated: `main`/`develop` → `prod`/`dev`
- [x] Deprecated `flutter pub run` → `dart run` fixed
- [x] Backend test job added to `flutter-ci.yml`
- [x] Shorebird release + patch jobs added
- [ ] All GitHub Secrets created (see full list in migration plan)
- [ ] Full CI run passes on a test PR

## Phase 4 — Documentation

- [x] `CLAUDE.md` created with infrastructure section
- [x] `README.md` — CI/CD section updated
- [x] `README.md` — Overview table updated (backend → Railway)
- [x] `backend/README.md` — updated with Railway info and complete env vars
- [x] `docs/deployment/03-migration-checklist.md` — this file committed

## Post-migration validation

- [ ] Create a test PR → analyze and test-backend jobs pass
- [ ] Push to `prod` → backend auto-deploys, health check passes
- [ ] Create a tag → shorebird-release job runs
- [ ] Push to `hotfix/test` → shorebird-patch job runs
- [ ] Flutter app on a device points to Railway URL and can sign in
- [ ] Booking flow end-to-end works against Railway backend
- [ ] Payment webhook received by Railway (check Railway logs)
