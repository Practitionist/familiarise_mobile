# Cross-Platform Authentication Synchronization

## Overview

Familiarise consists of two applications that share the same PostgreSQL database (hosted on Supabase) but use completely different authentication stacks:

| Application | Auth Library | Backend | Session Strategy |
|-------------|--------------|---------|------------------|
| **Web** (familiarise_web) | NextAuth v4 | Next.js API Routes | JWT in HTTP-only cookies |
| **Mobile** (familiarise_mobile) | better_auth_flutter + Custom Backend | Dart Frog | JWT in Bearer token |

This document explains how these systems work together, their limitations, and recommendations for true synchronization.

---

## Architecture Comparison

### High-Level View

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                              SHARED DATABASE                                 │
│                          PostgreSQL (Supabase)                               │
├─────────────────────────────────────────────────────────────────────────────┤
│  users table         │  accounts table       │  sessions table              │
│  - id (cuid)         │  - userId (FK)        │  - userId (FK)               │
│  - email             │  - provider           │  - sessionToken              │
│  - password          │  - providerAccountId  │  - expires                   │
│  - name, image...    │  - type               │                              │
├─────────────────────────────────────────────────────────────────────────────┤
              ▲                         ▲                      ▲
              │                         │                      │
    ┌─────────┴─────────┐     ┌────────┴────────┐    ┌────────┴────────┐
    │   NextAuth (Web)  │     │  Dart Frog      │    │  Dart Frog      │
    │   PrismaAdapter   │     │  (Mobile)       │    │  (Mobile only)  │
    │                   │     │                 │    │                 │
    │   ✓ Reads/Writes  │     │  ✓ Reads/Writes │    │  ✓ Creates      │
    │   ✗ No sessions   │     │  ✓ Reads/Writes │    │  ✓ sessions     │
    └───────────────────┘     └─────────────────┘    └─────────────────┘
```

### Web Application Stack

```
User → Next.js App → NextAuth v4 → PrismaAdapter → PostgreSQL
                         │
                         ├── OAuth Providers: Google, GitHub, Facebook
                         ├── Credentials Provider: Email/Password
                         ├── Session Strategy: JWT (stateless)
                         └── Token Storage: HTTP-only cookies
```

**Key Files:**
- `/app/api/auth/[...nextauth]/options.ts` - NextAuth configuration
- `/app/api/auth/[...nextauth]/route.ts` - Route handler
- `/prisma/schema.prisma` - Database schema

### Mobile Application Stack

```
User → Flutter App → better_auth_flutter SDK → Dart Frog Backend → Prisma Flutter → PostgreSQL
           │                                          │
           │                                          ├── Email/Password auth
           │                                          ├── Google OAuth verification
           │                                          └── Session management in DB
           │
           └── iOS/Android: SDK calls
               Web: Direct HTTP calls (SDK not supported)
```

**Key Files:**
- `lib/data/datasources/remote/auth_remote_source.dart` - API integration
- `backend/lib/services/auth_service.dart` - Core auth logic
- `backend/lib/database/database_client.dart` - Prisma connector

---

## What Actually Works Cross-Platform

### Shared Components (Synchronized)

| Component | Shared? | Explanation |
|-----------|---------|-------------|
| **User records** | ✅ Yes | Same `users` table, same user IDs |
| **OAuth accounts** | ✅ Yes | Same `accounts` table linking providers |
| **Password hashes** | ✅ Yes | Both use bcrypt with compatible settings |
| **User profiles** | ✅ Yes | `consulteeProfile`, `consultantProfile` shared |
| **Email uniqueness** | ✅ Yes | Database constraint prevents duplicates |

### Independent Components (NOT Synchronized)

| Component | Shared? | Explanation |
|-----------|---------|-------------|
| **Sessions** | ❌ No | Web uses stateless JWT, mobile uses DB sessions |
| **JWT tokens** | ❌ No | Different secrets, different payloads |
| **Logout events** | ❌ No | Logging out on one doesn't affect the other |
| **Token refresh** | ❌ No | Independent token lifecycle |

---

## Detailed Flow Comparison

### Email/Password Registration

#### Web (NextAuth)

```
POST /api/auth/register
    │
    ├── Validate input
    ├── Hash password with bcrypt (cost: 10)
    ├── Create user in database:
    │   └── prisma.user.create({
    │         data: {
    │           name, email, password,
    │           role: 'CONSULTEE',
    │           cookiePreferences: { create: {} },      ← Web-only
    │           notificationPreferences: { create: {} }, ← Web-only
    │           consulteeProfile: { create: {} }
    │         }
    │       })
    └── Return user (NextAuth handles session via signIn)
```

#### Mobile (Dart Frog)

```
POST /api/auth/sign-up/email
    │
    ├── Validate input (password >= 8 chars)
    ├── Hash password with bcrypt (cost: 10)
    ├── Create user in database:
    │   └── db.createUser(id, email, name, hashedPassword, 'CONSULTEE')
    ├── Create consultee profile:
    │   └── db.createConsulteeProfile(userId)
    ├── Create credentials account:
    │   └── db.createCredentialsAccount(userId, 'credentials', 'credentials', id)
    ├── Create session in database:          ← Mobile-only
    │   └── db.createSession(sessionId, sessionToken, userId, expires: +30 days)
    ├── Generate JWT token
    └── Return { user, token, session }
```

**Difference:** Mobile creates `sessions` table records; web does not.

### Google OAuth Sign-In

#### Web (NextAuth)

```
User clicks "Sign in with Google"
    │
    ├── NextAuth redirects to Google OAuth
    ├── User authenticates
    ├── Google redirects back with code
    ├── NextAuth exchanges code for tokens
    ├── PrismaAdapter:
    │   ├── Creates/updates user (by email)
    │   ├── Creates account record:
    │   │   └── { provider: 'google', providerAccountId: <google_sub> }
    │   └── Does NOT create session record (JWT strategy)
    └── Returns JWT cookie with user data
```

#### Mobile (Dart Frog)

```
User taps "Sign in with Google"
    │
    ├── google_sign_in SDK opens picker
    ├── User authenticates
    ├── SDK returns idToken + accessToken
    ├── App sends to backend:
    │   └── POST /api/auth/google { idToken, accessToken }
    ├── Backend verifies with Google:
    │   └── https://oauth2.googleapis.com/tokeninfo?id_token=...
    ├── Backend extracts verified claims:
    │   └── { sub, email, name, picture, email_verified }
    ├── Creates/updates user (by email)
    ├── Creates account record:
    │   └── { provider: 'google', providerAccountId: <google_sub> }
    ├── Creates session in database        ← Mobile-only
    ├── Generates JWT token
    └── Returns { user, token, session }
```

---

## JWT Token Comparison

### Web JWT (NextAuth)

```json
{
  "sub": "clxxxxxxxxxx",
  "name": "John Doe",
  "email": "john@example.com",
  "picture": "https://...",
  "onboardingCompleted": true,
  "role": "CONSULTEE",
  "consulteeProfileId": "clxxxxxxxxxx",
  "iat": 1702819200,
  "exp": 1705411200,
  "jti": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}
```

- **Signed with:** `NEXTAUTH_SECRET`
- **Stored in:** HTTP-only cookie (`next-auth.session-token`)
- **Expiry:** 30 days
- **Contains:** User profile data embedded in token

### Mobile JWT (Dart Frog)

```json
{
  "userId": "clxxxxxxxxxx",
  "sessionId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "iss": "familiarise-backend",
  "iat": 1702819200,
  "exp": 1705411200
}
```

- **Signed with:** `JWT_SECRET` (from backend .env)
- **Stored in:** FlutterSecureStorage (iOS Keychain / Android EncryptedSharedPreferences)
- **Sent as:** `Authorization: Bearer <token>`
- **Expiry:** 30 days
- **Contains:** Minimal claims, fetches user data from DB

### Incompatibility

The tokens are **NOT interchangeable** because:

1. Different signing secrets
2. Different payload structure
3. Different storage mechanisms
4. Different validation logic

---

## Session Management Differences

### Web: Stateless JWT Sessions

```
┌─────────────────────────────────────────────┐
│  Browser Cookie                              │
│  next-auth.session-token = <JWT>             │
│                                              │
│  ┌─────────────────────────────────────┐    │
│  │  JWT contains all user data          │    │
│  │  No database lookup needed           │    │
│  │  Validated by signature only         │    │
│  └─────────────────────────────────────┘    │
└─────────────────────────────────────────────┘
```

The `sessions` table in the database **exists but is NOT used** when using JWT strategy.

### Mobile: Database-Backed Sessions

```
┌─────────────────────────────────────────────┐
│  FlutterSecureStorage                        │
│  auth_token = <JWT>                          │
│                                              │
│  ┌─────────────────────────────────────┐    │
│  │  JWT contains userId + sessionId     │    │
│  │  Session looked up in database       │    │
│  │  Can be invalidated server-side      │    │
│  └─────────────────────────────────────┘    │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  Database: sessions table                    │
│                                              │
│  id          │ sessionToken │ userId │ expires│
│  ────────────┼──────────────┼────────┼────────│
│  sess_123... │ token_abc... │ usr_1  │ +30d   │
└─────────────────────────────────────────────┘
```

---

## User Creation Differences

### Web Creates Additional Records

```typescript
await prisma.user.create({
  data: {
    name,
    email,
    password: hashedPassword,
    role: UserRole.CONSULTEE,
    cookiePreferences: { create: {} },       // ← Not created by mobile
    notificationPreferences: { create: {} }, // ← Not created by mobile
    consulteeProfile: { create: {} },
  },
});
```

### Mobile Creates Minimal Records

```dart
await db.createUser(id, email, name, hashedPassword, 'CONSULTEE');
await db.createConsulteeProfile(userId: id);
await db.createCredentialsAccount(userId, 'credentials', 'credentials', id);
```

**Impact:** Users created on mobile won't have `cookiePreferences` or `notificationPreferences` records, which could cause null reference errors on web if those are expected.

---

## Cross-Platform Scenarios

| Scenario | Works? | Notes |
|----------|--------|-------|
| Register on web, login on mobile | ✅ | Same email/password in DB |
| Register on mobile, login on web | ⚠️ | Works, but missing preference records |
| Google sign-in on web, then mobile | ✅ | Same account record found by email |
| Google sign-in on mobile, then web | ✅ | NextAuth links existing account |
| Simultaneous sessions | ✅ | Independent, both work |
| Logout on web affects mobile | ❌ | Sessions are independent |
| Logout on mobile affects web | ❌ | Web has no DB session to delete |
| Password reset on web | ✅ | Updates password in shared DB |
| Login with new password on mobile | ✅ | Reads updated password from DB |

---

## Understanding the "Better Auth" Confusion

### What's Actually Being Used

| Component | What It Is | Used? |
|-----------|-----------|-------|
| **Better Auth Server** | TypeScript auth library for Node.js | ❌ Not used |
| **better_auth_flutter** | Flutter SDK client (v0.0.7) | ✅ Used on iOS/Android |
| **Custom Dart Frog Backend** | Your own implementation | ✅ Used |
| **Supabase Auth** | Supabase's built-in auth | ❌ Not used (dependency exists but commented out) |
| **NextAuth** | Next.js auth library | ✅ Used on web |

### The Architecture Reality

```
┌─────────────────────────────────────────────────────────────────────────┐
│                           MOBILE APP                                     │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  iOS/Android:                          Web (Flutter Web):                │
│  ┌──────────────────────────┐         ┌──────────────────────────┐      │
│  │ better_auth_flutter SDK  │         │ Direct HTTP calls        │      │
│  │ (real package from pub)  │         │ (SDK not supported)      │      │
│  └────────────┬─────────────┘         └────────────┬─────────────┘      │
│               │                                     │                    │
│               └──────────────┬──────────────────────┘                   │
│                              ▼                                           │
│               ┌──────────────────────────────┐                          │
│               │  Your Dart Frog Backend       │                          │
│               │  ─────────────────────────────│                          │
│               │  NOT a Better Auth server!    │                          │
│               │  Just implements similar API  │                          │
│               │  endpoints for compatibility  │                          │
│               └──────────────┬───────────────┘                          │
│                              │                                           │
│                              ▼                                           │
│               ┌──────────────────────────────┐                          │
│               │  Prisma Flutter Connector     │                          │
│               └──────────────┬───────────────┘                          │
│                              │                                           │
└──────────────────────────────┼───────────────────────────────────────────┘
                               ▼
                    ┌─────────────────────┐
                    │   PostgreSQL        │  ← Same DB as web app
                    │   (Supabase)        │
                    └─────────────────────┘
```

The `better_auth_flutter` package expects to communicate with a Better Auth server, but your Dart Frog backend **mimics** those API endpoints. This works because:

1. The SDK just makes HTTP calls to specific endpoints
2. Your backend responds with the expected JSON structure
3. The SDK doesn't care what server implementation is behind it

---

## Recommendations for True Synchronization

### Option 1: Use Supabase Auth for Both (Recommended)

Replace both NextAuth and custom Dart Frog auth with Supabase Auth:

```
Web:  @supabase/auth-helpers-nextjs
Mobile: supabase_flutter

Both share:
- auth.users table (Supabase managed)
- Session tokens
- OAuth handling
```

**Pros:**
- True single sign-on
- Shared session management
- Less code to maintain

**Cons:**
- Migration effort
- Different schema from current setup

### Option 2: Mobile Calls Web Auth API

Have mobile app call the web's NextAuth endpoints directly:

```dart
// Instead of calling Dart Frog
final response = await http.post(
  Uri.parse('https://web.familiarise.com/api/auth/callback/credentials'),
  body: { 'email': email, 'password': password },
);
```

**Pros:**
- Single auth implementation
- Shared session validation

**Cons:**
- CORS configuration needed
- Mobile depends on web deployment

### Option 3: Shared Session Validation

Keep separate auth but validate sessions against database:

```typescript
// Web: Change to database sessions
session: { strategy: "database" }
```

```dart
// Mobile: Validate session exists in DB
final session = await db.findSessionById(sessionId);
if (session == null || session.expires.isBefore(DateTime.now())) {
  throw AuthException('Session expired');
}
```

**Pros:**
- Minimal changes
- Can invalidate sessions cross-platform

**Cons:**
- More database queries on web
- Need to sync session creation logic

### Option 4: Accept Independent Sessions (Current State)

Keep the current architecture and accept that:

- Users can be logged in on both platforms simultaneously
- Logging out on one doesn't affect the other
- Sessions are managed independently

**Pros:**
- No migration needed
- Already working

**Cons:**
- No "logout everywhere" feature
- Potential security concerns for shared accounts

---

## Summary

The current architecture provides **partial synchronization** through the shared database:

- **Users and credentials**: Fully synchronized
- **OAuth accounts**: Fully synchronized
- **Sessions**: Completely independent
- **Logout events**: Not propagated

For most use cases, this is sufficient. Users can authenticate on either platform using the same credentials. However, if you need features like "logout all devices" or single sign-on, you'll need to implement one of the synchronization options above.

---

## Related Documentation

- [Authentication Architecture](./01-authentication-architecture.md)
- [Google OAuth Setup](../02-setup/01-google-oauth-setup.md)
- [Secure OAuth Backend Verification](../03-security/01-secure-oauth-backend-verification.md)
