# Familiarise Backend

Dart Frog API server for the Familiarise consultation SaaS platform.

## Stack

| Component | Technology | Version |
|-----------|-----------|---------|
| **Framework** | [Dart Frog](https://dartfrog.vgv.dev/) | 1.2.x |
| **ORM** | [Prisma Flutter Connector](https://pub.dev/packages/prisma_flutter_connector) | ^0.5.5 |
| **Database** | PostgreSQL via Supabase | 15+ |
| **Auth** | BetterAuth-compatible JWT | - |
| **Error Tracking** | Sentry | 8.x |

## Prerequisites

- Dart SDK >=3.5.0
- Dart Frog CLI: `dart pub global activate dart_frog_cli`
- Node.js 18+ (for Prisma CLI, if running migrations)
- PostgreSQL / Supabase account

## Setup

```bash
# Install dependencies
dart pub get

# Copy environment file
cp .env.example .env
# Edit .env with your database credentials, JWT secret, etc.
```

## Code Generation (CRITICAL)

The backend uses generated code from the Prisma schema. **After cloning or pulling, you MUST regenerate before running the server:**

```bash
# From the repo root (NOT backend/):
./scripts/regenerate-build.sh --prisma
```

This runs 2 steps:
1. `dart run prisma_flutter_connector:generate` — generates models, delegates, filters, schema registry from `prisma/schema.prisma`
2. `dart run build_runner build` — generates `.freezed.dart` files for immutability

### When to regenerate

| Trigger | Command |
|---------|---------|
| Fresh clone / checkout | `./scripts/regenerate-build.sh --prisma` |
| After pulling changes | `./scripts/regenerate-build.sh --prisma` |
| After modifying `prisma/schema.prisma` | `./scripts/regenerate-build.sh --prisma` |
| After upgrading `prisma_flutter_connector` | `./scripts/regenerate-build.sh --prisma` |
| Backend + frontend together | `./scripts/regenerate-build.sh` (runs all 4 steps) |

### Generated files (gitignored)

`lib/generated/` is in `.gitignore`. These files are reproduced from the Prisma schema:

```
lib/generated/
├── models/          # Freezed model classes (User, Feedback, etc.)
├── delegates/       # Type-safe CRUD delegates (UserDelegate, etc.)
├── filters.dart     # WhereInput, StringFilter, IntFilter, etc.
├── prisma_client.dart  # Main PrismaClient class
├── schema_registry.g.dart  # Auto-generated model/relation metadata
└── index.dart       # Barrel export
```

## Running the Server

### Production mode (recommended for testing)

```bash
# Build then run
dart pub global run dart_frog_cli:dart_frog build
dart build/bin/server.dart
```

### Development mode (hot reload — may crash in non-interactive terminals)

```bash
dart pub global run dart_frog_cli:dart_frog dev
```

The server runs at `http://localhost:8080`.

## Testing with curl

```bash
# Generate a test JWT token
dart run tool/gen_test_token.dart

# Or for a specific user:
USER_ID=some-user-id dart run tool/gen_token_for.dart

# Example API calls
TOKEN="<paste token here>"

# Public endpoints
curl http://localhost:8080/api/domains
curl http://localhost:8080/api/consultants?page=1&pageSize=5

# Authenticated endpoints
curl -H "Authorization: Bearer $TOKEN" http://localhost:8080/api/feedback
curl -X POST http://localhost:8080/api/feedback \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $TOKEN" \
  -d '{"title":"Test","description":"Testing","rating":5}'
```

## Project Structure

```
backend/
├── lib/
│   ├── database/
│   │   ├── database_client.dart        # Singleton DB client, initializes all repos
│   │   ├── schema_registry_builder.dart # Manual schema registry (being replaced by auto-gen)
│   │   └── repositories/              # 33 repository files
│   │       ├── base_repository.dart   # Base class with executeQueryAsMaps, etc.
│   │       ├── user_repository.dart
│   │       ├── feedback_repository.dart
│   │       └── ...
│   ├── generated/                     # GITIGNORED — regenerate with script
│   ├── services/
│   │   └── auth/                      # JWT, OAuth, password hashing
│   └── utils/                         # Auth helpers, JSON serialization
├── routes/
│   └── api/                           # Dart Frog route handlers
│       ├── auth/
│       ├── consultants/
│       ├── dashboard/
│       ├── feedback/
│       └── ...
├── prisma/
│   └── schema.prisma                  # THE source of truth for the data model
├── test/
│   └── repositories/                  # Unit tests with MockQueryExecutor
├── tool/
│   ├── gen_test_token.dart            # Generate JWT for test_intg_cbj_cnt user
│   └── gen_token_for.dart             # Generate JWT for any user (USER_ID env var)
└── .env                               # Database URL, JWT secret, API keys
```

## Data Access Patterns

The backend uses two data access patterns:

### 1. Typed PrismaClient Delegates (preferred)

```dart
// Type-safe, compile-time checked
final feedbacks = await _prisma.feedback.findMany(
  where: FeedbackWhereInput(userId: StringFilter(equals: userId)),
  orderBy: FeedbackOrderByInput(createdAt: SortOrder.desc),
);

// With includes (returns raw maps)
final results = await _prisma.consultation.findManyRaw(
  where: {'requestedById': profileId},
  include: {'consultationPlan': {'include': {'consultantProfile': true}}},
);
```

### 2. JsonQueryBuilder (legacy, for advanced queries)

```dart
// Used for: ComputedField, FilterOperators.relationPath, transactions, raw SQL
final query = JsonQueryBuilder()
    .model('SlotOfAppointment')
    .action(QueryAction.findMany)
    .where({...})
    .include({...})
    .computed({...})
    .build();
final results = await executeQueryAsMaps(query);
```

~223 JsonQueryBuilder usages remain across 25 files (was 307). See [#106](https://github.com/Practitionist/familiarise_mobile/issues/106) for migration tracking.

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `DATABASE_URL` | PostgreSQL connection string (pooler) | Yes |
| `DIRECT_URL` | Direct database URL (for migrations) | Yes |
| `JWT_SECRET` | Secret for JWT token signing | Yes |
| `PORT` | Server port (default: 8080) | No |
| `GOOGLE_CLIENT_ID` | Google OAuth client ID | For Google sign-in |
| `GOOGLE_CLIENT_SECRET` | Google OAuth secret | For Google sign-in |
| `RAZORPAY_KEY_ID` | Razorpay API key | For payments |
| `RAZORPAY_KEY_SECRET` | Razorpay secret | For payments |
| `STRIPE_SECRET_KEY` | Stripe secret key | For international payments |
| `RESEND_API_KEY` | Resend email API key | For email notifications |
| `SENTRY_DSN` | Sentry error tracking DSN | No |
| `STREAM_API_KEY` | Stream video/chat API key | For meetings |
| `STREAM_API_SECRET` | Stream video/chat secret | For meetings |

## Prisma Flutter Connector

The ORM is [`prisma_flutter_connector`](https://github.com/teetangh/prisma-flutter-connector) (custom-built). Key capabilities:

| Feature | Typed Delegates | JsonQueryBuilder |
|---------|----------------|-----------------|
| Simple CRUD | Yes | Yes |
| `include()` for relations | Yes (v0.5.2+) | Yes |
| `selectFields()` | Yes (v0.5.2+) | Yes |
| `distinct()` | Yes (v0.5.2+) | Yes |
| `ComputedField` (subqueries) | `findManyRaw` only | Yes |
| `FilterOperators.relationPath()` | No | Yes |
| Transactions | No | Yes |
| Raw SQL | No | Yes |
| `groupBy()` | Yes (v0.4.0+) | Yes |
| `@default(uuid())` auto-gen | Yes (v0.4.0+) | Yes |

## Gotchas

- `backend/lib/generated/` is gitignored — **always run `./scripts/regenerate-build.sh --prisma` after checkout**
- `backend/lib/generated/` has a `Platform` enum (from Prisma schema) that conflicts with `dart:io.Platform`
- `flutter analyze` runs on both frontend AND backend (the whole workspace)
- The Prisma schema is at `backend/prisma/schema.prisma` (actual file, not a symlink)
- Use `dart pub global run dart_frog_cli:dart_frog build` (not `dart_frog build`) if the CLI isn't in PATH
- Test JWT tokens expire after 2 hours — regenerate with `dart run tool/gen_test_token.dart`

## Troubleshooting

### `uri_has_not_been_generated: schema_registry.g.dart`
Generated files are missing. Run:
```bash
./scripts/regenerate-build.sh --prisma
```

### `not_enough_positional_arguments` in tests
A repository constructor was updated to accept `PrismaClient`. Update the test to pass `MockPrismaClient()`.

### Server crashes on startup
Check `.env` file exists and `DATABASE_URL` is correct. Check with:
```bash
dart build/bin/server.dart 2>&1 | head -20
```

### `dart_frog: command not found`
```bash
dart pub global activate dart_frog_cli
# Or use the full path:
dart pub global run dart_frog_cli:dart_frog build
```
