# Migration & Infrastructure Verification Checklist

## Phase 1 — Railway Migration (complete before April 3, 2026)

- [ ] `backend/Dockerfile` created and tested locally (`docker build -t test-api .`)
- [ ] `backend/railway.toml` created
- [ ] `backend/routes/api/health.dart` created and returns `{"status": "ok"}`
- [ ] `backend/main.dart` uses `DotEnv(includePlatformEnvironment: true)` for Docker compat
- [ ] Dart Frog server binds to `0.0.0.0` / `anyIPv6` (not `localhost`)
- [ ] Railway project created at railway.com
- [ ] GitHub repo connected to Railway project
- [ ] All environment variables set in Railway dashboard (21 vars — see backend/.env.example)
- [ ] `DATABASE_URL` uses Supabase pooler URL (port 6543)
- [ ] `DIRECT_URL` uses Supabase direct URL (port 5432)
- [ ] Backend deployed and accessible at Railway URL
- [ ] Health check passes: `curl https://<railway-url>/api/health`
- [ ] Auth endpoint tested: `POST /api/auth/sign-in`
- [ ] `RAILWAY_TOKEN` secret added to GitHub
- [ ] `PRODUCTION_API_BASE_URL` secret added to GitHub
- [ ] `.github/workflows/backend-deploy.yml` created
- [ ] `prod` branch created from `dev`
- [ ] Push to `prod` triggers auto-deploy to Railway
- [ ] Stripe webhook URL updated in Stripe dashboard
- [ ] Razorpay webhook URL updated in Razorpay dashboard
- [ ] `API_BASE_URL` in `.env.example` updated

## Phase 2 — Shorebird OTA

- [ ] `shorebird_code_push` added to `dependencies` in pubspec.yaml
- [ ] `shorebird init` run locally (generates `shorebird.yaml` with real app_id)
- [ ] `shorebird.yaml` committed to repo with real app_id
- [ ] Shorebird update check added to `lib/main.dart`
- [ ] `SHOREBIRD_TOKEN` secret added to GitHub
- [ ] Shorebird release job added to `flutter-ci.yml`
- [ ] Shorebird patch job added to `flutter-ci.yml`
- [ ] Test patch: push to `hotfix/test-patch` → verify patch job runs

## Phase 3 — GitHub Actions

- [ ] `flutter-ci.yml` updated with `workflow_dispatch` trigger
- [ ] Branch references updated: `main`/`develop` → `prod`/`dev`
- [ ] Deprecated `flutter pub run` → `dart run` fixed
- [ ] Backend test job added to `flutter-ci.yml`
- [ ] Shorebird release + patch jobs added
- [ ] All GitHub Secrets created (see full list in migration plan)
- [ ] Full CI run passes on a test PR

## Phase 4 — Documentation

- [ ] `CLAUDE.md` created with infrastructure section
- [ ] `README.md` — CI/CD section updated
- [ ] `README.md` — Overview table updated (backend → Railway)
- [ ] `backend/README.md` — updated with Railway info and complete env vars
- [ ] `docs/deployment/03-migration-checklist.md` — this file committed

## Post-migration validation

- [ ] Create a test PR → analyze and test-backend jobs pass
- [ ] Push to `prod` → backend auto-deploys, health check passes
- [ ] Create a tag → shorebird-release job runs
- [ ] Push to `hotfix/test` → shorebird-patch job runs
- [ ] Flutter app on a device points to Railway URL and can sign in
- [ ] Booking flow end-to-end works against Railway backend
- [ ] Payment webhook received by Railway (check Railway logs)
