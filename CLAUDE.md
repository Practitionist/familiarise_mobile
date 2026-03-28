# Familiarise Mobile — System Architecture

## Infrastructure

### Backend hosting — Railway

The Dart Frog API (`backend/`) is deployed on Railway.

- Auto-deploys on every push to `prod` that touches `backend/**`
- Health check endpoint: `GET /api/health`
- Environment variables are set in the Railway dashboard (not in code)
- Uses Supabase connection pooler (port 6543) for `DATABASE_URL` at runtime
- Uses direct connection (port 5432) for `DIRECT_URL` (migrations only)
- The backend uses `DotEnv(includePlatformEnvironment: true)` so it works both locally (with `.env` file) and in Docker/Railway (where env vars are injected by the platform)

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
│   └── Push to prod → auto-deploys to Railway → users see it instantly
│
├── Flutter Dart code (UI, state, business logic, API calls)
│   ├── Minor hotfix → push to hotfix/* branch → shorebird patch
│   └── Larger change with tests → PR → merge to dev → tag release
│
└── Native code (new plugin, permission, asset, icon)
    └── Full release: tag → GitHub Actions builds + deploys to stores
```

### Branch strategy

- `dev` — development branch (default)
- `prod` — production branch (Railway deploys from here)
- `feature/*` — feature branches (PR to dev)
- `hotfix/*` — hotfix branches (triggers Shorebird patch)

### Environment configuration

- **Flutter app:** Uses `envied` package to read from `.env` at build time. CI generates `.env` from GitHub Secrets. Do NOT use `--dart-define` — it's incompatible with the envied approach.
- **Backend:** Uses `dotenv` package with `includePlatformEnvironment: true`. Works with both `.env` file (local) and platform env vars (Railway/Docker).

### CI/CD workflows

| Workflow | File | Triggers |
|----------|------|----------|
| Flutter CI/CD | `flutter-ci.yml` | Push to prod/dev, PRs, releases, tags, manual |
| Backend Deploy | `backend-deploy.yml` | Push to prod (backend/** changes) |

### Known gotchas

- `backend/lib/generated/` has a `Platform` enum (from Prisma schema) that conflicts with `dart:io.Platform`. Use `import 'dart:io' as io show Platform;` or explicit `show` clauses.
- `flutter analyze` runs on both frontend AND backend (the whole workspace).
- Use `scripts/regenerate-build.sh --prisma` when generated models are stale.
