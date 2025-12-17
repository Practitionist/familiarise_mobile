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
- Contains: userId, email, iat (issued at)
- Expiration: 30 days (configurable)

### Token Storage
- Flutter: flutter_secure_storage
- iOS: Keychain
- Android: EncryptedSharedPreferences

### Google ID Token Verification
- Backend verifies token signature
- Validates audience matches client ID
- Checks token expiration

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
