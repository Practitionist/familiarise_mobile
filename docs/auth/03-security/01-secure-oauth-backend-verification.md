# Secure OAuth Backend Verification Patterns

## Overview

This document outlines security best practices for implementing OAuth authentication in mobile/web applications. The key principle: **never trust client-provided user data**.

---

## The Golden Rule

> **The backend must ALWAYS verify tokens directly with the OAuth provider. Never trust user information sent from the client.**

### Why?

```dart
// CLIENT CODE - Can be manipulated by attacker
final response = await http.post('/api/auth/google', body: {
  'email': 'admin@company.com',  // Attacker puts any email
  'name': 'Admin User',
  'sub': 'fake-google-id',
});
```

If your backend trusts this data, an attacker can impersonate any user.

---

## Secure Authentication Flow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Client    │     │   Google    │     │   Backend   │     │   Google    │
│  (Flutter)  │     │   OAuth     │     │  (Dart Frog)│     │    APIs     │
└──────┬──────┘     └──────┬──────┘     └──────┬──────┘     └──────┬──────┘
       │                   │                   │                   │
       │  1. Sign In       │                   │                   │
       │──────────────────>│                   │                   │
       │                   │                   │                   │
       │  2. Tokens        │                   │                   │
       │<──────────────────│                   │                   │
       │  (id_token,       │                   │                   │
       │   access_token)   │                   │                   │
       │                   │                   │                   │
       │  3. Send tokens only (no user data)   │                   │
       │──────────────────────────────────────>│                   │
       │                   │                   │                   │
       │                   │                   │  4. Verify token  │
       │                   │                   │──────────────────>│
       │                   │                   │                   │
       │                   │                   │  5. User info     │
       │                   │                   │<──────────────────│
       │                   │                   │                   │
       │  6. JWT + User    │                   │                   │
       │<──────────────────────────────────────│                   │
       │                   │                   │                   │
```

---

## Token Verification Methods

### Method 1: ID Token Verification (Preferred)

ID tokens are JWTs that can be verified cryptographically.

```dart
// Backend verifies ID token with Google
Future<GoogleUserInfo> verifyIdToken(String idToken) async {
  final response = await http.get(
    Uri.parse('https://oauth2.googleapis.com/tokeninfo?id_token=$idToken'),
  );

  if (response.statusCode != 200) {
    throw AuthException('Invalid ID token');
  }

  final data = jsonDecode(response.body);

  // IMPORTANT: Verify audience matches YOUR client ID
  if (data['aud'] != Platform.environment['GOOGLE_CLIENT_ID']) {
    throw AuthException('Token audience mismatch');
  }

  // Check expiration
  final exp = int.parse(data['exp']);
  if (DateTime.fromMillisecondsSinceEpoch(exp * 1000).isBefore(DateTime.now())) {
    throw AuthException('Token expired');
  }

  return GoogleUserInfo(
    sub: data['sub'],      // Stable user ID - use for account linking
    email: data['email'],
    name: data['name'],
    picture: data['picture'],
  );
}
```

### Method 2: Access Token + Userinfo API

When ID token isn't available (e.g., Flutter web).

```dart
// Backend fetches user info using access token
Future<GoogleUserInfo> getUserInfoFromAccessToken(String accessToken) async {
  final response = await http.get(
    Uri.parse('https://www.googleapis.com/oauth2/v3/userinfo'),
    headers: {'Authorization': 'Bearer $accessToken'},
  );

  if (response.statusCode != 200) {
    throw AuthException('Invalid access token');
  }

  final data = jsonDecode(response.body);
  return GoogleUserInfo(
    sub: data['sub'],
    email: data['email'],
    name: data['name'],
    picture: data['picture'],
  );
}
```

---

## Provider-Specific Endpoints

### Google

| Purpose | Endpoint |
|---------|----------|
| Verify ID token | `GET https://oauth2.googleapis.com/tokeninfo?id_token=XXX` |
| Get user info | `GET https://www.googleapis.com/oauth2/v3/userinfo` (with Bearer token) |
| Token info | `POST https://oauth2.googleapis.com/tokeninfo` |

### GitHub

| Purpose | Endpoint |
|---------|----------|
| Get user info | `GET https://api.github.com/user` (with Bearer token) |
| Get user emails | `GET https://api.github.com/user/emails` (with Bearer token) |

### Apple

| Purpose | Endpoint |
|---------|----------|
| Verify ID token | Decode JWT and verify with Apple's public keys |
| Public keys | `GET https://appleid.apple.com/auth/keys` |

### Microsoft/Azure AD

| Purpose | Endpoint |
|---------|----------|
| Verify ID token | `GET https://login.microsoftonline.com/{tenant}/v2.0/.well-known/openid-configuration` |
| Get user info | `GET https://graph.microsoft.com/v1.0/me` (with Bearer token) |

---

## User ID Best Practices

### Use `sub` (Subject) as Primary Identifier

```dart
// CORRECT: Use stable 'sub' claim
await db.createOAuthAccount(
  userId: internalUserId,
  provider: 'google',
  providerAccountId: googleUser.sub,  // "110248495921238986420"
);

// WRONG: Email can change
providerAccountId: googleUser.email,  // User might change email
```

### Why `sub` is Better Than Email

| Attribute | Stability | Uniqueness | Notes |
|-----------|-----------|------------|-------|
| `sub` | Permanent | Globally unique | Never changes for a user |
| `email` | Can change | Not unique | User can change email, multiple accounts |

---

## Database Schema Pattern

```sql
-- Users table (your internal user)
CREATE TABLE users (
  id UUID PRIMARY KEY,
  email VARCHAR(255),
  name VARCHAR(255),
  image TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

-- OAuth accounts (links to providers)
CREATE TABLE accounts (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  provider VARCHAR(50) NOT NULL,           -- 'google', 'github', 'apple'
  provider_account_id VARCHAR(255) NOT NULL, -- The 'sub' claim
  access_token TEXT,
  refresh_token TEXT,
  id_token TEXT,
  expires_at TIMESTAMP,
  UNIQUE(provider, provider_account_id)
);

-- Sessions
CREATE TABLE sessions (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  session_token VARCHAR(255) UNIQUE,
  expires TIMESTAMP NOT NULL
);
```

---

## Security Checklist

### Client-Side
- [ ] Only send tokens to backend, never user data
- [ ] Store tokens securely (flutter_secure_storage)
- [ ] Clear tokens on sign out
- [ ] Handle token expiration gracefully

### Backend
- [ ] Always verify tokens with OAuth provider
- [ ] Verify token audience matches your client ID
- [ ] Check token expiration
- [ ] Use `sub` as providerAccountId, not email
- [ ] Implement rate limiting on auth endpoints
- [ ] Log authentication attempts (without sensitive data)
- [ ] Use HTTPS in production

### Database
- [ ] Hash refresh tokens before storing
- [ ] Set appropriate session expiration
- [ ] Implement session cleanup for expired sessions
- [ ] Use database transactions for user creation

---

## Common Security Mistakes

### 1. Trusting Client Data
```dart
// INSECURE
final email = body['email'];  // From client
await db.createUser(email: email);

// SECURE
final googleUser = await verifyToken(body['idToken']);
await db.createUser(email: googleUser.email);  // From Google
```

### 2. Not Verifying Audience
```dart
// INSECURE - Token could be from different app
final data = await verifyIdToken(token);
return data;

// SECURE - Verify it's for YOUR app
final data = await verifyIdToken(token);
if (data['aud'] != MY_CLIENT_ID) {
  throw AuthException('Invalid audience');
}
```

### 3. Using Email as Account ID
```dart
// INSECURE - Email can change
WHERE provider_account_id = $email

// SECURE - sub never changes
WHERE provider_account_id = $sub
```

### 4. Exposing Tokens in Logs
```dart
// INSECURE
print('Token: $idToken');
logger.info('Auth with token: $token');

// SECURE
logger.info('Auth attempt for user: ${userData.email}');
```

---

## Multi-Provider Support

```dart
Future<Map<String, dynamic>> signInWithOAuth({
  required String provider,
  String? idToken,
  String? accessToken,
}) async {
  final UserInfo userInfo;

  switch (provider) {
    case 'google':
      userInfo = await _verifyGoogleToken(idToken, accessToken);
      break;
    case 'github':
      userInfo = await _verifyGitHubToken(accessToken!);
      break;
    case 'apple':
      userInfo = await _verifyAppleToken(idToken!);
      break;
    default:
      throw AuthException('Unsupported provider');
  }

  // Find or create user
  var user = await db.findUserByProviderAccount(provider, userInfo.sub);
  user ??= await db.createUserWithOAuth(provider, userInfo);

  // Create session and return JWT
  final session = await createSession(user.id);
  final jwt = createJWT(userId: user.id, sessionId: session.id);

  return {'user': user, 'token': jwt};
}
```

---

## JWT Best Practices

### Token Contents
```dart
// Include minimal necessary claims
final jwt = JWT({
  'userId': userId,
  'sessionId': sessionId,
  'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
  'exp': expiration.millisecondsSinceEpoch ~/ 1000,
});

// DON'T include sensitive data
// 'email', 'password', 'role' - fetch from DB instead
```

### Token Expiration Strategy
| Token Type | Expiration | Use Case |
|------------|------------|----------|
| Access JWT | 15-60 minutes | API requests |
| Refresh Token | 7-30 days | Get new access tokens |
| Session | 30 days | Server-side session |

---

## References

- [OAuth 2.0 Security Best Practices](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-security-topics)
- [OpenID Connect Core](https://openid.net/specs/openid-connect-core-1_0.html)
- [Google Identity - Verify ID Tokens](https://developers.google.com/identity/gsi/web/guides/verify-google-id-token)
- [OWASP Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)

---

## Related Documentation

- [Authentication Architecture](../01-architecture/01-authentication-architecture.md)
- [Google Sign-In Web Limitations](../04-troubleshooting/01-google-sign-in-web-limitations.md)
