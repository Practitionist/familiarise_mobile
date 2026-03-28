# Familiarise Backend

[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dart-frog.dev)

Dart Frog REST API for the Familiarise consultation marketplace.

## Overview

| Aspect | Details |
|--------|---------|
| **Framework** | Dart Frog 1.2.x |
| **ORM** | Prisma (via prisma_flutter_connector) |
| **Database** | Supabase PostgreSQL |
| **Hosting** | Railway (auto-deploy from `prod` branch) |
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
# -> http://localhost:8080
```

## Environment variables

| Variable | Description | Required |
|---|---|---|
| `DATABASE_URL` | Supabase pooler URL (port 6543) | Yes |
| `DIRECT_URL` | Supabase direct URL (port 5432) | Yes |
| `JWT_SECRET` | Secret for JWT signing | Yes |
| `STREAM_API_KEY` | Stream SDK API key | Yes |
| `STREAM_API_SECRET` | Stream SDK API secret | Yes |
| `SUPABASE_URL` | Supabase project URL | Yes |
| `SUPABASE_SERVICE_ROLE_KEY` | Supabase service role key | Yes |
| `RAZORPAY_KEY_ID` | Razorpay API key | For payments |
| `RAZORPAY_KEY_SECRET` | Razorpay secret | For payments |
| `RAZORPAY_WEBHOOK_SECRET` | Razorpay webhook signing secret | For webhooks |
| `STRIPE_SECRET_KEY` | Stripe secret key | For payments |
| `STRIPE_WEBHOOK_SECRET` | Stripe webhook signing secret | For webhooks |
| `SENTRY_DSN` | Sentry error tracking DSN | Recommended |
| `GOOGLE_CLIENT_ID` | Google OAuth client ID | For Google auth |
| `RESEND_API_KEY` | Resend email API key | For emails |
| `APP_BASE_URL` | App base URL (default: familiarise.com) | Optional |
| `UPSTASH_REDIS_REST_URL` | Upstash Redis URL | For slot locking |
| `UPSTASH_REDIS_REST_TOKEN` | Upstash Redis token | For slot locking |
| `DART_ENV` | Set to `production` in prod | Production only |
| `ALLOWED_ORIGINS` | CORS allowed origins | Production only |
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

Production deploys are automated via GitHub Actions. Pushing to `prod` triggers `.github/workflows/backend-deploy.yml`, which runs `railway up`.

To deploy manually (requires Railway CLI and token):

```bash
npm install -g @railway/cli
railway login
cd backend
railway up --service familiarise-mobile-api
```

## Docker

```bash
# Build
docker build -t familiarise-mobile-api .

# Run locally with env file
docker run -p 8080:8080 --env-file .env familiarise-mobile-api

# Test health check
curl http://localhost:8080/api/health
```
