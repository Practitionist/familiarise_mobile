# Authentication Migration Options

This document analyzes the current authentication architecture across the Familiarise
platform and outlines options for unifying or improving the auth systems.

## Current State Analysis

### Mobile App (familiarise_mobile)

| Component | Implementation | Notes |
|-----------|----------------|-------|
| Client Library | `better_auth_flutter` v0.0.7 | Only used on mobile (iOS/Android) |
| Backend | Custom Dart Frog | 100% custom implementation |
| Auth Logic | JWT + bcrypt + sessions | Using `dart_jsonwebtoken` + `bcrypt` |
| Web Support | Direct HTTP calls | `better_auth_flutter` doesn't support web |
| Database | Supabase PostgreSQL | Shared with web app |

**Backend Endpoints:**
```
POST /api/auth/sign-in/email    - Email/password sign-in
POST /api/auth/sign-up/email    - Email/password registration
POST /api/auth/google           - Google OAuth (ID token or access token)
GET  /api/auth/session          - Validate session
POST /api/auth/sign-out         - Invalidate session
```

### Web App (familiarise_web)

| Component | Implementation | Notes |
|-----------|----------------|-------|
| Framework | NextAuth v4.24.11 | Industry standard for Next.js |
| Adapter | PrismaAdapter | Auto-manages accounts, sessions, tokens |
| Providers | Google, GitHub, Facebook, Credentials | 4 providers configured |
| Session | JWT strategy | 30-day expiry |
| Database | Same Supabase PostgreSQL | **Shared with mobile** |

**NextAuth Endpoints:**
```
GET/POST /api/auth/[...nextauth] - All NextAuth operations
POST     /api/auth/register      - Custom email registration
POST     /api/auth/forgot-password
POST     /api/auth/reset-password
```

### The Problem: Two Auth Systems, One Database

```
┌─────────────────────┐      ┌─────────────────────┐
│   Next.js Web App   │      │   Flutter App       │
│   (NextAuth)        │      │   (Custom Backend)  │
└──────────┬──────────┘      └──────────┬──────────┘
           │                            │
           │  Different auth logic      │
           │  Different token formats   │
           │  Different session mgmt    │
           │                            │
           └──────────┬─────────────────┘
                      │
           ┌──────────▼──────────┐
           │  Supabase Database  │
           │  (Shared Tables)    │
           │  - users            │
           │  - accounts         │
           │  - sessions         │
           └─────────────────────┘
```

**Issues:**
1. **Data inconsistency risk** - Both systems write auth data independently
2. **Duplicate maintenance** - Any auth feature needs implementing twice
3. **Session incompatibility** - Tokens from one system won't work with other
4. **OAuth account linking** - Different strategies, potential conflicts

---

## Migration Options

### Option A: Simplify Mobile (Remove better_auth_flutter)

**Objective:** Remove the `better_auth_flutter` dependency since it's barely used.

**Effort: 1-2 days** | **Risk: Very Low**

#### What Changes

| Task | File(s) | Complexity |
|------|---------|------------|
| Remove dependency | `pubspec.yaml` | Trivial |
| Delete stub file | `lib/core/utils/better_auth_stub.dart` | Trivial |
| Update mobile impl | `lib/data/datasources/remote/auth_remote_source.dart` | Low |
| Remove initialization | `lib/main.dart` | Trivial |
| Test all flows | - | Low |

#### Implementation Details

**1. Remove from pubspec.yaml:**
```yaml
# Remove this:
better_auth_flutter: ^0.0.7
```

**2. Update AuthRemoteSourceImpl to use HTTP (like web impl):**

Current mobile implementation uses BetterAuth client:
```dart
// Current (mobile)
await BetterAuth.instance.client.signInWithEmailAndPassword(
  email: email,
  password: password,
);
```

Change to HTTP calls (like AuthRemoteSourceWebImpl already does):
```dart
// Updated (unified)
final response = await http.post(
  Uri.parse('$_baseUrl/api/auth/sign-in/email'),
  headers: {'Content-Type': 'application/json'},
  body: jsonEncode({'email': email, 'password': password}),
);
```

**3. Remove BetterAuth initialization from main.dart:**
```dart
// Remove this block:
if (!kIsWeb) {
  await BetterAuth.initialize(
    baseUrl: EnvConfig.apiBaseUrl,
  );
}
```

#### Outcome
- Cleaner codebase (one less dependency)
- Same functionality (HTTP calls work identically)
- Still have two separate auth systems (web: NextAuth, mobile: custom)

---

### Option B: Migrate Web to Better Auth

**Objective:** Replace NextAuth with Better Auth in the web app.

**Effort: 2-3 weeks** | **Risk: High**

#### What Changes

| Task | Complexity | Risk |
|------|------------|------|
| Database schema migration | HIGH | Data loss if incorrect |
| OAuth account link migration | HIGH | Users locked out |
| Rewrite auth config | MEDIUM | Breaking changes |
| Re-implement callbacks | MEDIUM | Feature regression |
| Frontend session changes | LOW | Minor |
| Force user re-authentication | HIGH IMPACT | UX disruption |

#### Database Migration Required

**NextAuth Tables:**
```sql
-- Current structure
Account (id, userId, type, provider, providerAccountId, refresh_token,
         access_token, expires_at, token_type, scope, id_token, session_state)
Session (id, sessionToken, userId, expires)
VerificationToken (identifier, token, expires)
```

**Better Auth Tables:**
```sql
-- Different structure
user (id, email, emailVerified, name, image, createdAt, updatedAt)
session (id, expiresAt, ipAddress, userAgent, userId)
account (id, accountId, providerId, userId, accessToken, refreshToken, ...)
verification (id, identifier, value, expiresAt)
```

**Migration Script Needed:**
```typescript
// Pseudo-code for migration
async function migrateAuthData() {
  // 1. Migrate users (mostly compatible)
  // 2. Transform Account records to Better Auth format
  // 3. Re-create sessions (or invalidate all - users must re-login)
  // 4. Migrate verification tokens
}
```

#### Implementation Phases

**Phase 1: Setup Better Auth (1-2 days)**
```typescript
// lib/auth.ts
import { betterAuth } from "better-auth";
import { prismaAdapter } from "better-auth/adapters/prisma";

export const auth = betterAuth({
  database: prismaAdapter(prisma, {
    provider: "postgresql",
  }),
  emailAndPassword: {
    enabled: true,
    requireEmailVerification: false,
  },
  socialProviders: {
    google: {
      clientId: process.env.GOOGLE_CLIENT_ID!,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET!,
    },
    github: {
      clientId: process.env.GITHUB_CLIENT_ID!,
      clientSecret: process.env.GITHUB_CLIENT_SECRET!,
    },
  },
});
```

**Phase 2: Data Migration (3-5 days)**
- Create migration scripts
- Test with copy of production data
- Handle OAuth account linking differences
- Plan for session invalidation

**Phase 3: Frontend Migration (2-3 days)**
```typescript
// From NextAuth:
import { signIn, signOut, useSession } from "next-auth/react";
const { data: session } = useSession();
await signIn("credentials", { email, password });

// To Better Auth:
import { createAuthClient } from "better-auth/react";
const client = createAuthClient();
const { data: session } = client.useSession();
await client.signIn.email({ email, password });
```

**Phase 4: Cleanup (1-2 days)**
- Remove next-auth dependency
- Delete old auth routes
- Update TypeScript types

#### Outcome
- Unified auth library (Better Auth everywhere)
- Modern, actively maintained library
- Built-in features (MFA, sessions, etc.)
- **All users must re-authenticate**

---

### Option C: Unified Custom Backend (RECOMMENDED)

**Objective:** Web app uses the same Dart Frog backend as mobile.

**Effort: 1-2 weeks** | **Risk: Low**

#### Architecture After Migration

```
┌─────────────────┐     ┌─────────────────┐
│   Next.js Web   │     │  Flutter Mobile │
│   (API client)  │     │  (API client)   │
└────────┬────────┘     └────────┬────────┘
         │                       │
         │    HTTP REST API      │
         └───────────┬───────────┘
                     │
         ┌───────────▼───────────┐
         │   Dart Frog Backend   │
         │   (Single Auth API)   │
         │                       │
         │  Endpoints:           │
         │  - /api/auth/sign-in  │
         │  - /api/auth/sign-up  │
         │  - /api/auth/google   │
         │  - /api/auth/session  │
         │  - /api/auth/sign-out │
         └───────────┬───────────┘
                     │
         ┌───────────▼───────────┐
         │  Supabase PostgreSQL  │
         └───────────────────────┘
```

#### Implementation Phases

**Phase 1: Simplify Mobile (1-2 days)**
- Remove `better_auth_flutter` (Option A)
- All platforms use HTTP calls

**Phase 2: Extend Dart Frog Backend (2-3 days)**

Add endpoints for web-specific needs:

```dart
// backend/routes/api/auth/github.dart
Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.json();
  final accessToken = body['accessToken'] as String?;

  // Verify with GitHub API
  final userInfo = await verifyGitHubToken(accessToken);

  // Create/update user and session
  // Return JWT token
}
```

CORS configuration for web domain:
```dart
// backend/routes/_middleware.dart
final allowedOrigins = Platform.environment['ALLOWED_ORIGINS']
    ?.split(',') ?? ['http://localhost:3000'];
```

**Phase 3: Create Web Auth Service (3-4 days)**

```typescript
// familiarise_web/lib/auth/api-client.ts
const BACKEND_URL = process.env.NEXT_PUBLIC_AUTH_BACKEND_URL;

export async function signInWithEmail(email: string, password: string) {
  const response = await fetch(`${BACKEND_URL}/api/auth/sign-in/email`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ email, password }),
  });

  if (!response.ok) {
    const error = await response.json();
    throw new Error(error.error?.message || 'Sign in failed');
  }

  const data = await response.json();
  // Store token in httpOnly cookie or localStorage
  return data;
}

export async function signInWithGoogle(idToken: string) {
  const response = await fetch(`${BACKEND_URL}/api/auth/google`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ idToken }),
  });
  // ...
}
```

**Phase 4: Gradual NextAuth Removal (2-3 days)**

```typescript
// Step 1: Create parallel auth routes
// /api/auth/unified/sign-in.ts (new)
// /api/auth/[...nextauth]/route.ts (keep for now)

// Step 2: Update frontend to use new routes
// Step 3: Monitor for issues
// Step 4: Remove NextAuth once stable
```

**Phase 5: Remove NextAuth (1-2 days)**
```bash
npm uninstall next-auth @next-auth/prisma-adapter
rm -rf app/api/auth/[...nextauth]
```

#### Benefits
1. **Single codebase** - One auth implementation to maintain
2. **Consistent behavior** - Same logic for all platforms
3. **No data migration** - Backend already uses same database
4. **Full control** - No third-party library constraints
5. **Simpler debugging** - One system to troubleshoot

#### Considerations
- Need to handle web-specific OAuth (redirect vs popup)
- Cookie vs localStorage for token storage
- CORS configuration for web domains

---

## Comparison Matrix

| Criterion | Option A | Option B | Option C |
|-----------|----------|----------|----------|
| **Effort** | 1-2 days | 2-3 weeks | 1-2 weeks |
| **Risk** | Very Low | High | Low |
| **Unifies Auth?** | No | Yes | Yes |
| **Data Migration** | None | Required | None |
| **User Disruption** | None | Re-login required | Minimal |
| **Long-term Maint.** | Two systems | One (Better Auth) | One (Custom) |
| **Flexibility** | Limited | Plugin system | Full control |

---

## Recommendation

### Short Term: Option A
Remove `better_auth_flutter` from mobile. It's barely used and adds unnecessary
complexity. This is a quick win that improves code clarity.

### Long Term: Option C
When ready for a larger effort, migrate web to use the Dart Frog backend. This
provides true unification with minimal risk since the backend already exists and
is tested.

### Not Recommended: Option B
While Better Auth is a good library, migrating NextAuth to it involves:
- High-risk database migration
- All users must re-authenticate
- 2-3 weeks of development
- Similar end result to Option C but more effort

---

## Decision Checklist

Before implementing any option, consider:

- [ ] Is auth unification a current priority?
- [ ] Can we afford user disruption (re-login)?
- [ ] Do we have time for proper testing?
- [ ] Is the database backed up?
- [ ] Have we tested the migration scripts?
- [ ] Is there a rollback plan?

---

## Related Documentation

- [Authentication Architecture](../01-architecture/01-authentication-architecture.md)
- [Secure OAuth Backend Verification](../03-security/01-secure-oauth-backend-verification.md)
- [Google Sign-In Web Limitations](../04-troubleshooting/01-google-sign-in-web-limitations.md)

## Related Code

**Mobile:**
- `backend/lib/services/auth_service.dart` - Custom auth logic
- `lib/data/datasources/remote/auth_remote_source.dart` - API client

**Web:**
- `app/api/auth/[...nextauth]/options.ts` - NextAuth configuration
- `middleware.ts` - Route protection
