# Authentication Architecture

## Overview

Familiarise Mobile implements a custom authentication system using a Dart Frog backend with JWT-based sessions. The system supports email/password and social authentication (Google, Apple).

## System Components

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│  Flutter App    │────▶│  Dart Frog      │────▶│  PostgreSQL     │
│  (Frontend)     │◀────│  Backend        │◀────│  (Supabase)     │
└─────────────────┘     └─────────────────┘     └─────────────────┘
        │                       │
        │                       │
        ▼                       ▼
┌─────────────────┐     ┌─────────────────┐
│  Google OAuth   │     │  Google OAuth   │
│  (Client SDK)   │     │  (Verification) │
└─────────────────┘     └─────────────────┘
```

## Authentication Flow

### Email/Password Sign Up

```
1. User enters email, password, name
2. App calls POST /api/auth/sign-up
3. Backend:
   - Validates input
   - Hashes password with bcrypt
   - Creates user in database
   - Generates JWT session token
4. App stores token in secure storage
5. App updates auth state to authenticated
```

### Email/Password Sign In

```
1. User enters email, password
2. App calls POST /api/auth/sign-in
3. Backend:
   - Finds user by email
   - Verifies password hash
   - Generates JWT session token
4. App stores token in secure storage
5. App updates auth state to authenticated
```

### Google Sign In

```
1. User taps "Sign in with Google"
2. google_sign_in SDK opens Google auth
3. User authenticates with Google
4. SDK returns GoogleSignInAccount with idToken
5. App calls POST /api/auth/google with idToken
6. Backend:
   - Verifies idToken with Google
   - Extracts user info (email, name, picture)
   - Creates user if not exists, or retrieves existing
   - Generates JWT session token
7. App stores token in secure storage
8. App updates auth state to authenticated
```

## Backend API Endpoints

### POST /api/auth/sign-up
```json
Request:
{
  "email": "user@example.com",
  "password": "securePassword123",
  "name": "John Doe"
}

Response (200):
{
  "user": {
    "id": "uuid",
    "email": "user@example.com",
    "name": "John Doe",
    "role": "CONSULTEE"
  },
  "token": "jwt.token.here"
}
```

### POST /api/auth/sign-in
```json
Request:
{
  "email": "user@example.com",
  "password": "securePassword123"
}

Response (200):
{
  "user": { ... },
  "token": "jwt.token.here"
}
```

### POST /api/auth/google
```json
Request:
{
  "idToken": "google.id.token"
}

Response (200):
{
  "user": { ... },
  "token": "jwt.token.here"
}
```

### GET /api/auth/session
```
Headers:
  Authorization: Bearer <jwt.token>

Response (200):
{
  "user": { ... }
}
```

## Code Structure

### Flutter App

```
lib/
├── data/
│   ├── datasources/
│   │   ├── local/
│   │   │   └── auth_local_source.dart    # Secure token storage
│   │   └── remote/
│   │       └── auth_remote_source.dart   # API calls + Google SDK
│   ├── models/
│   │   └── user_model.dart               # JSON serialization
│   └── repositories/
│       └── auth_repository_impl.dart     # Repository implementation
├── domain/
│   ├── entities/
│   │   ├── user.dart                     # User entity
│   │   └── auth_state.dart               # Auth state (freezed)
│   └── repositories/
│       └── auth_repository.dart          # Repository interface
└── features/
    └── auth/
        ├── providers/
        │   └── auth_provider.dart        # Riverpod state management
        └── screens/
            ├── sign_in_screen.dart
            ├── sign_up_screen.dart
            └── forgot_password_screen.dart
```

### Backend

```
backend/
├── lib/
│   ├── database/
│   │   └── database_client.dart          # Prisma Flutter Connector
│   └── services/
│       └── auth_service.dart             # Business logic
└── routes/
    └── api/
        └── auth/
            ├── sign-up.dart
            ├── sign-in.dart
            ├── google.dart
            └── session.dart
```

## Security Considerations

### Password Hashing
- bcrypt with default work factor (10)
- Passwords never stored in plain text

### JWT Tokens
- Signed with HS256 algorithm
- Secret key from environment variable
- Contains: userId, sessionId, iat (issued at)
- Expiration: 30 days (configurable)

### Token Storage
- Flutter: flutter_secure_storage
- iOS: Keychain
- Android: EncryptedSharedPreferences

### Google ID Token Verification
- Backend verifies token signature
- Validates audience matches client ID
- Checks token expiration

---

## Architecture Evolution: Better Auth to Custom Solution

### Original Plan vs Current Implementation

| Aspect | Original Plan | Current Implementation |
|--------|---------------|------------------------|
| **Backend** | Better Auth server | Custom Dart Frog backend |
| **Flutter Mobile** | `better_auth_flutter` client | `better_auth_flutter` (partially used) |
| **Flutter Web** | `better_auth_flutter` client | Custom HTTP calls |
| **JWT Management** | Better Auth built-in | Custom `dart_jsonwebtoken` |
| **Password Hashing** | Better Auth built-in | Custom `bcrypt` |
| **Session Management** | Better Auth sessions | Custom database sessions |

### Why We Diverged

1. **`better_auth_flutter` doesn't support web** - The package uses platform-specific features unavailable on web
2. **Better Auth server is TypeScript/Node.js** - We wanted a Dart-native backend (Dart Frog)
3. **Full control over auth flow** - Custom implementation allows precise control over security, validation, and user creation
4. **Database integration** - Direct integration with existing PostgreSQL schema via Prisma Flutter Connector

### Current Hybrid State

```
┌─────────────────────────────────────────────────────────────────────────┐
│                           FLUTTER APP                                    │
├─────────────────────────────────┬───────────────────────────────────────┤
│         MOBILE (iOS/Android)    │              WEB                       │
│                                 │                                        │
│  ┌─────────────────────────┐    │    ┌─────────────────────────┐        │
│  │  better_auth_flutter    │    │    │  Direct HTTP Calls      │        │
│  │  (partially used)       │    │    │  (SharedPreferences)    │        │
│  └───────────┬─────────────┘    │    └───────────┬─────────────┘        │
│              │                  │                │                       │
│              │  BetterAuth.     │                │  http.post()          │
│              │  instance.client │                │                       │
└──────────────┼──────────────────┴────────────────┼───────────────────────┘
               │                                   │
               └───────────────┬───────────────────┘
                               │
                               ▼
               ┌───────────────────────────────────┐
               │      DART FROG BACKEND            │
               │      (100% Custom)                │
               │                                   │
               │  • auth_service.dart              │
               │  • jwt_service.dart               │
               │  • google_token_verifier.dart     │
               │  • bcrypt password hashing        │
               │  • Custom session management      │
               └───────────────────────────────────┘
```

### Package Dependencies

**Flutter App (`pubspec.yaml`):**
```yaml
dependencies:
  better_auth_flutter: ^0.0.7    # Used on mobile, stubbed on web
  google_sign_in: ^6.2.1         # Google OAuth on all platforms
  flutter_secure_storage: ^9.2.2 # Secure token storage (mobile)
  shared_preferences: ^2.2.3     # Token storage (web fallback)
```

**Backend (`backend/pubspec.yaml`):**
```yaml
dependencies:
  dart_frog: ^1.2.0              # Server framework
  dart_jsonwebtoken: ^2.14.1     # JWT creation/verification
  bcrypt: ^1.1.3                 # Password hashing
  prisma_flutter_connector: ^0.1.4  # Database access
  http: ^1.2.0                   # Google token verification
```

### Platform-Specific Implementations

#### Mobile (`AuthRemoteSourceImpl`)
- Uses `better_auth_flutter` for email sign-in/sign-up
- Uses `google_sign_in` + sends ID token to backend
- Token storage via `flutter_secure_storage`

#### Web (`AuthRemoteSourceWebImpl`)
- Direct HTTP calls to backend (no better_auth_flutter)
- Uses `google_sign_in` + sends access token to backend (ID token unavailable on web)
- Token storage via `SharedPreferences`

```dart
// Provider selects implementation based on platform
@riverpod
AuthRemoteSource authRemoteSource(Ref ref) {
  if (kIsWeb) {
    return AuthRemoteSourceWebImpl();  // Direct HTTP
  }
  return AuthRemoteSourceImpl();       // better_auth_flutter
}
```

### The Compatibility Question

**Potential Issue:** `better_auth_flutter` expects to communicate with a Better Auth server, but our backend is custom.

**Why it works (mostly):**
- Our API endpoints mirror Better Auth conventions (`/api/auth/sign-in/email`, etc.)
- Response formats are similar (user object + token)
- The mobile implementation may have subtle compatibility issues we haven't discovered yet

**Recommendation:** Consider migrating mobile to use direct HTTP calls (like web) for consistency and to eliminate dependency on `better_auth_flutter` matching our custom backend.

### Backend Services Detail

#### `auth_service.dart`
Core authentication business logic:
- `signInWithEmail()` - Verify password, create session
- `signUpWithEmail()` - Hash password, create user, create session
- `signInWithGoogle()` - Verify token (ID or access), create/find user, create session
- `signOut()` - Invalidate session
- `getSession()` - Validate JWT, return user

#### `jwt_service.dart`
Custom JWT implementation:
```dart
class JwtService {
  String createToken({
    required String userId,
    required String sessionId,
  }) {
    final jwt = JWT({
      'userId': userId,
      'sessionId': sessionId,
    }, issuer: 'familiarise-backend');

    return jwt.sign(SecretKey(_secret), expiresIn: Duration(days: 30));
  }

  Map<String, dynamic> verify(String token) {
    return JWT.verify(token, SecretKey(_secret)).payload;
  }
}
```

#### `google_token_verifier.dart`
Secure Google OAuth verification:
```dart
class GoogleTokenVerifier {
  // Mobile: Verify ID token
  Future<GoogleUserInfo> verifyIdToken(String idToken) async {
    // Calls https://oauth2.googleapis.com/tokeninfo
  }

  // Web: Fetch user info via access token
  Future<GoogleUserInfo> getUserInfoFromAccessToken(String accessToken) async {
    // Calls https://www.googleapis.com/oauth2/v3/userinfo
  }
}
```

### Future Considerations

1. **Unify Mobile & Web:** Migrate mobile to direct HTTP calls for consistency
2. **Remove better_auth_flutter:** Eliminates potential compatibility issues
3. **Add Refresh Tokens:** Current implementation only has access tokens
4. **Consider Rate Limiting:** Protect auth endpoints from brute force
5. **Add Email Verification:** Currently not implemented

---

## State Management

### AuthState (Freezed)

```dart
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.authenticated(User user) = AuthStateAuthenticated;
  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;
  const factory AuthState.error(String message) = AuthStateError;
}
```

### Auth Provider (Riverpod)

```dart
@riverpod
class Auth extends _$Auth {
  @override
  Future<AuthState> build() async {
    // Check for existing session on app start
    return _checkSession();
  }

  Future<void> signInWithEmail(String email, String password) async { ... }
  Future<void> signInWithGoogle() async { ... }
  Future<void> signUp(String email, String password, String name) async { ... }
  Future<void> signOut() async { ... }
}
```

## Router Integration

```dart
GoRouter(
  redirect: (context, state) {
    final isAuthenticated = authState.isAuthenticated;
    final isAuthRoute = state.matchedLocation.startsWith('/auth');

    if (!isAuthenticated && !isAuthRoute) {
      return '/auth/sign-in';
    }
    if (isAuthenticated && isAuthRoute) {
      return '/dashboard';
    }
    return null;
  },
)
```

---

## Related Documentation

- [Google OAuth Setup](../02-setup/01-google-oauth-setup.md)
- [Secure OAuth Backend Verification](../03-security/01-secure-oauth-backend-verification.md)
