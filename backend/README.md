# Familiarise Backend

Dart Frog API server for the Familiarise consultation and mentorship SaaS platform, deployed on **Railway** and backed by **Supabase PostgreSQL** (93 Prisma models).

## Stack

| Component | Technology | Version |
|-----------|-----------|---------|
| **Framework** | [Dart Frog](https://dartfrog.vgv.dev/) | 1.2.x |
| **ORM** | [`prisma_flutter_connector`](https://pub.dev/packages/prisma_flutter_connector) | **v1.0.0** (`0` `JsonQueryBuilder` usages) |
| **Database** | PostgreSQL via Supabase | 15+ (**93 Prisma models** synced with `familiarise_web`) |
| **Runtime / SDK** | Flutter / Dart | **Flutter 3.47.6** (Dart 3.11+) |
| **Hosting** | Railway (Docker AOT executable) | `backend/Dockerfile` + `.railway/railway.ts` |
| **Auth** | BetterAuth-compatible JWT & Sessions | Active session tracking & revocation |
| **Error Tracking** | Sentry | 8.x |

## Prerequisites

- **Flutter SDK 3.47.6** (Dart 3.11+) — required because `prisma_flutter_connector` resolves via the Flutter SDK
- Dart Frog CLI: `dart pub global activate dart_frog_cli`
- PostgreSQL 15+ (local via `docker-compose.yml` or Supabase pooler/direct URLs)

## Setup & Schema Sync

```bash
# 1. Sync the 93-model Prisma schema from familiarise_web (from repo root)
./scripts/sync-schema.sh

# 2. Regenerate Prisma v1.0.0 client, Freezed models, and schema registry
./scripts/regenerate-build.sh --prisma

# 3. Configure environment
cp backend/.env.example backend/.env
```

## Code Generation (CRITICAL)

`backend/lib/generated/` is gitignored. **After cloning, pulling, or modifying `prisma/schema.prisma`, always regenerate:**

```bash
# From the repository root:
./scripts/regenerate-build.sh --prisma
```

This executes:
1. `dart run prisma_flutter_connector:generate --schema prisma/schema.prisma --output lib/generated --server` — generates 93 Freezed model classes, typed CRUD delegates, filter inputs, and `schema_registry.g.dart`
2. `dart run build_runner build --delete-conflicting-outputs` — compiles `.freezed.dart` files

## Data Access Architecture (`prisma_flutter_connector` v1.0.0 — `0` `JsonQueryBuilder`)

All 307 legacy `JsonQueryBuilder` usages have been **100% migrated and retired (`0` remaining across `backend/lib/`)**. Every repository uses compile-time checked `PrismaClient` delegates:

```dart
// 1. Typed CRUD via PrismaClient delegate
final feedbacks = await _prisma.feedback.findMany(
  where: FeedbackWhereInput(userId: StringFilter(equals: userId)),
  orderBy: [FeedbackOrderByInput(createdAt: SortOrder.desc)],
);

// 2. Relational queries with nested includes
final consultations = await _prisma.consultation.findManyRaw(
  where: {'requestedById': profileId},
  include: {
    'consultationPlan': {
      'include': {'consultantProfile': true},
    },
  },
);

// 3. Atomic multi-statement transactions
await _prisma.$transaction((tx) async {
  await tx.slotOfAppointment.create(data: ...);
  await tx.appointment.update(where: ..., data: ...);
});
```

## Running the Server

### Local Production Build (Recommended)

```bash
cd backend
dart pub global run dart_frog_cli:dart_frog build
PORT=8081 dart build/bin/server.dart
# Listening on http://localhost:8081 (Healthcheck: GET /api/health)
```

### Docker Build (Mirrors Railway Production)

```bash
cd backend
docker build -t familiarise-mobile-backend .
docker run -p 8081:8081 --env-file .env familiarise-mobile-backend
curl http://localhost:8081/api/health
# {"status":"ok","timestamp":"..."}
```

## Railway Deployment (`deploy-railway.yml` & `.railway/railway.ts`)

- **Configuration:** `.railway/railway.ts` defines the Railway Infrastructure-as-Code config for `familiarise-mobile-backend` pointing to `backend/Dockerfile` with `/api/health` healthcheck (`60s` timeout, `ON_FAILURE` restart policy, `5` max retries, `2` replicas).
- **CI/CD:** `.github/workflows/deploy-railway.yml` runs on pushes to `dev` (staging) and `prod` (production) when `backend/**`, `.railway/**`, or `.github/workflows/deploy-railway.yml` changes (or on `workflow_dispatch`), executing `dart analyze --fatal-infos` + `dart test` before deploying with `railway up` and probing `/api/health`.
- **Environment Loading:** `backend/main.dart` loads `.env` and `.env.local` first and overlays `io.Platform.environment` last so platform environment variables inside Railway/Docker containers always take precedence.

## Environment Variables (`backend/.env`)

| Variable | Description | Required |
|----------|-------------|----------|
| `DATABASE_URL` | PostgreSQL connection string (Supabase transaction pooler, port 6543) | Yes |
| `DIRECT_URL` | Direct PostgreSQL connection string (port 5432, for migrations) | Yes |
| `JWT_SECRET` | Secret key for signing/verifying JWT & session tokens | Yes |
| `PORT` | HTTP listen port (default: `8080`) | No |
| `DART_ENV` | `development`, `staging`, or `production` | No |
| `ALLOWED_ORIGINS` | Comma-separated CORS origins | No |
| `SUPABASE_URL` | Supabase project URL | Yes |
| `SUPABASE_SERVICE_ROLE_KEY` | Supabase service role key (storage & admin ops) | Yes |
| `STREAM_API_KEY` | Stream Video & Chat API key | Yes |
| `STREAM_API_SECRET` | Stream Video & Chat secret | Yes |
| `RAZORPAY_KEY_ID` | Razorpay key ID | For webhooks/verification |
| `RAZORPAY_KEY_SECRET` | Razorpay secret | For webhooks/verification |
| `STRIPE_SECRET_KEY` | Stripe secret key | For webhooks/verification |
| `RESEND_API_KEY` | Resend transactional email API key | For email notifications |
| `UPSTASH_REDIS_REST_URL` | Upstash Redis URL for rate limiting / caching | Optional |
| `UPSTASH_REDIS_REST_TOKEN` | Upstash Redis token | Optional |
| `SENTRY_DSN` | Sentry error reporting DSN | Optional |

## Testing & Verification

```bash
# Run from repo root
./scripts/regenerate-build.sh --prisma
cd backend
dart analyze --fatal-infos
dart test
```
