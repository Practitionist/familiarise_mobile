# Familiarise Backend

[![style: dart frog lint][dart_frog_lint_badge]][dart_frog_lint_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dart-frog.dev)

Dart Frog backend API for the Familiarise mobile application.

## Prerequisites

- Dart SDK 3.5.x+
- Dart Frog CLI (`dart pub global activate dart_frog_cli`)
- PostgreSQL database (or Supabase)

## Setup

```bash
# Install dependencies
dart pub get

# Copy environment file
cp .env.example .env
# Edit .env with your database credentials and JWT secret

# Generate Prisma client (if using Prisma)
dart run orm generate
```

## Running the Server

### Development Mode (with hot reload)

```bash
~/.pub-cache/bin/dart_frog dev
```

### Production Mode

```bash
# Build the server
~/.pub-cache/bin/dart_frog build

# Run on port 8080
PORT=8080 dart build/bin/server.dart
```

## Server Management

| Action | Command |
|--------|---------|
| Start (dev) | `~/.pub-cache/bin/dart_frog dev` |
| Build | `~/.pub-cache/bin/dart_frog build` |
| Start (prod) | `PORT=8080 dart build/bin/server.dart` |
| Stop | `lsof -ti:8080 \| xargs kill -9` |
| Restart | `lsof -ti:8080 \| xargs kill -9 2>/dev/null; PORT=8080 dart build/bin/server.dart` |

## API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/auth/*` | Various | Authentication endpoints |
| `/api/consultants` | GET | List consultants |
| `/api/consultants/:id` | GET | Get consultant details |
| `/api/slots/availability` | GET | Get consultant availability |
| `/api/appointments` | GET/POST | User appointments |
| `/api/checkout/*` | Various | Payment processing |

## Project Structure

```
backend/
├── lib/
│   ├── database/           # Database configuration and repositories
│   │   ├── prisma_client.dart
│   │   └── repositories/   # Data access layer
│   ├── middleware/         # Request middleware
│   └── services/           # Business logic services
├── routes/
│   └── api/               # API route handlers
├── build/                 # Generated production build
└── prisma/               # Prisma schema and migrations
```

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `DATABASE_URL` | PostgreSQL connection string | Yes |
| `DIRECT_URL` | Direct database URL (for Prisma) | Yes |
| `JWT_SECRET` | Secret for JWT token signing | Yes |
| `PORT` | Server port (default: 8080) | No |
| `RAZORPAY_KEY_ID` | Razorpay API key | For payments |
| `RAZORPAY_KEY_SECRET` | Razorpay secret | For payments |
| `SENTRY_DSN` | Sentry error tracking DSN | No |

[dart_frog_lint_badge]: https://img.shields.io/badge/style-dart_frog_lint-1DF9D2.svg
[dart_frog_lint_link]: https://pub.dev/packages/dart_frog_lint
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT