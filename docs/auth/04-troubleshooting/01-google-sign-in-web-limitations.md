# Google Sign-In on Flutter Web: Limitations & Solutions

## Overview

This document covers the critical limitation with `google_sign_in` package on Flutter Web and the secure solution we implemented. This research saves significant debugging time for future projects.

---

## The Problem

### Symptoms
- Google Sign-In works on mobile (iOS/Android) but fails on web
- Error: "Failed to get Google ID token"
- `googleAuth.idToken` returns `null` on web
- `googleAuth.accessToken` works fine

### Console Warnings
```
The `signIn` method is discouraged on the web because it can't reliably provide an `idToken`.
Use `signInSilently` and `renderButton` to authenticate your users instead.
```

### Root Cause
The `google_sign_in` package version 6.x uses **Google Identity Services (GIS)** on web. The `signIn()` method in GIS does NOT return an ID token - this is by design, not a bug.

**Google's OAuth Response on Web:**
```json
{
  "access_token": "ya29.A0Aa7pCA_LBZED3sUYZ3UWz...",
  "token_type": "Bearer",
  "expires_in": 3599,
  "scope": "email profile openid ...",
  "authuser": "0",
  "prompt": "none"
}
```

Notice: No `id_token` field!

---

## Solution Options

| Option | Approach | Pros | Cons |
|--------|----------|------|------|
| **1. Access Token + Userinfo API** | Backend uses access token to fetch user info | Simple, secure, minimal changes | Different flow for web |
| 2. `renderButton` | Use Google's button component | Google-recommended | Major UI changes, loses custom styling |
| 3. Redirect Flow | Full OAuth redirect | Works reliably | Complex, breaks SPA experience |
| 4. Separate Web Auth | Use different auth for web | Platform-optimized | Code duplication |

**Recommended: Option 1** - Access Token with Google's Userinfo API

---

## Implementation

### Why Access Token Verification is Secure

1. **Access token comes from Google's OAuth flow** - Cannot be forged
2. **Backend calls Google's API directly** - `https://www.googleapis.com/oauth2/v3/userinfo`
3. **User info is from Google's servers** - Not from untrusted client
4. **The `sub` claim is available** - Stable user ID for account linking

### Backend: Token Verifier

```dart
// backend/lib/services/google_token_verifier.dart

class GoogleTokenVerifier {
  final http.Client _httpClient;

  /// Verify ID token (mobile) - preferred method
  Future<GoogleUserInfo> verifyIdToken(String idToken) async {
    final response = await _httpClient.get(
      Uri.parse('https://oauth2.googleapis.com/tokeninfo?id_token=$idToken'),
    );
    // ... parse and validate
  }

  /// Fetch user info via access token (web) - equally secure
  Future<GoogleUserInfo> getUserInfoFromAccessToken(String accessToken) async {
    final response = await _httpClient.get(
      Uri.parse('https://www.googleapis.com/oauth2/v3/userinfo'),
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode != 200) {
      throw AuthException('Invalid Google access token');
    }

    final data = jsonDecode(response.body);
    return GoogleUserInfo(
      sub: data['sub'],           // Stable Google user ID
      email: data['email'],
      name: data['name'],
      picture: data['picture'],
      emailVerified: data['email_verified'] ?? false,
    );
  }
}
```

### Backend: Auth Service

```dart
// backend/lib/services/auth_service.dart

Future<Map<String, dynamic>> signInWithGoogle({
  String? idToken,      // From mobile
  String? accessToken,  // From web (or mobile)
}) async {
  final GoogleUserInfo googleUser;

  if (idToken != null && idToken.isNotEmpty) {
    // Mobile: Use ID token (preferred)
    googleUser = await _tokenVerifier.verifyIdToken(idToken);
  } else if (accessToken != null && accessToken.isNotEmpty) {
    // Web: Use access token
    googleUser = await _tokenVerifier.getUserInfoFromAccessToken(accessToken);
  } else {
    throw AuthException('Either idToken or accessToken is required');
  }

  // Use googleUser.sub as providerAccountId (stable across sessions)
  // ... create/update user, create session, return JWT
}
```

### Backend: API Route

```dart
// backend/routes/api/auth/google.dart

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.json();
  final idToken = body['idToken'] as String?;
  final accessToken = body['accessToken'] as String?;

  // Accept either token
  if ((idToken == null || idToken.isEmpty) &&
      (accessToken == null || accessToken.isEmpty)) {
    return Response.json(
      statusCode: 400,
      body: {'error': {'message': 'Either idToken or accessToken is required'}},
    );
  }

  final result = await authService.signInWithGoogle(
    idToken: idToken,
    accessToken: accessToken,
  );
  return Response.json(body: result);
}
```

### Flutter: Web Implementation

```dart
// lib/data/datasources/remote/auth_remote_source.dart

// For web, don't pass clientId - it's read from meta tag in index.html
GoogleSignIn get googleSignIn {
  _googleSignIn ??= GoogleSignIn(
    scopes: ['email', 'profile', 'openid'],
    // Don't pass clientId on web - causes conflicts with GIS
  );
  return _googleSignIn!;
}

Future<UserModel> signInWithGoogle() async {
  final googleUser = await googleSignIn.signIn();
  final googleAuth = await googleUser!.authentication;

  final idToken = googleAuth.idToken;      // null on web
  final accessToken = googleAuth.accessToken;  // always available

  // Check access token (required for web)
  if (accessToken == null) {
    throw AuthException('Failed to get Google credentials');
  }

  // Send both - backend uses whichever is available
  final response = await http.post(
    Uri.parse('$baseUrl/api/auth/google'),
    body: jsonEncode({
      'idToken': idToken,       // May be null on web
      'accessToken': accessToken,
    }),
  );
  // ... handle response
}
```

---

## Web Setup Requirements

### 1. index.html Meta Tag
```html
<meta name="google-signin-client_id"
      content="YOUR_WEB_CLIENT_ID.apps.googleusercontent.com">
```

### 2. Google Cloud Console
- Create OAuth 2.0 Client ID (Web application)
- Add Authorized JavaScript origins:
  - `http://localhost:3000` (dev)
  - `https://yourdomain.com` (prod)
- Add Authorized redirect URIs if using redirect flow

### 3. Flutter pubspec.yaml
```yaml
dependencies:
  google_sign_in: ^6.2.1
```

---

## Google API Endpoints Reference

| Endpoint | Purpose | Input |
|----------|---------|-------|
| `https://oauth2.googleapis.com/tokeninfo?id_token=XXX` | Verify ID token | ID token as query param |
| `https://www.googleapis.com/oauth2/v3/userinfo` | Get user info | Access token in Authorization header |
| `https://oauth2.googleapis.com/token` | Refresh tokens | Refresh token |

### Userinfo Response Example
```json
{
  "sub": "110248495921238986420",
  "name": "John Doe",
  "given_name": "John",
  "family_name": "Doe",
  "picture": "https://lh3.googleusercontent.com/...",
  "email": "john@example.com",
  "email_verified": true,
  "locale": "en"
}
```

---

## Common Pitfalls

### 1. Passing clientId on Web
```dart
// WRONG - causes conflicts with meta tag
GoogleSignIn(clientId: EnvConfig.googleClientIdWeb)

// CORRECT - let it read from meta tag
GoogleSignIn(scopes: ['email', 'profile', 'openid'])
```

### 2. Requiring ID Token on Web
```dart
// WRONG - ID token is null on web
if (idToken == null) throw Exception('No ID token');

// CORRECT - accept either token
if (idToken == null && accessToken == null) throw Exception('No token');
```

### 3. Trusting Client User Data
```dart
// WRONG - client can send fake data
body: jsonEncode({
  'email': googleUser.email,  // Can be spoofed!
  'name': googleUser.displayName,
})

// CORRECT - only send tokens, backend fetches from Google
body: jsonEncode({
  'idToken': idToken,
  'accessToken': accessToken,
})
```

---

## Testing Checklist

- [ ] Web: Sign in works with access token
- [ ] Mobile iOS: Sign in works with ID token
- [ ] Mobile Android: Sign in works with ID token
- [ ] New users are created correctly
- [ ] Existing users can sign in
- [ ] User info (name, email, picture) is populated
- [ ] `sub` is used as providerAccountId (not email)

---

## References

- [google_sign_in package](https://pub.dev/packages/google_sign_in)
- [Google Identity Services Migration](https://developers.google.com/identity/gsi/web/guides/migration)
- [Google OAuth 2.0 for Web](https://developers.google.com/identity/protocols/oauth2/web-server)
- [Userinfo Endpoint](https://developers.google.com/identity/protocols/oauth2/openid-connect#obtainuserinfo)

---

## Related Documentation

- [Google OAuth Setup](../02-setup/01-google-oauth-setup.md)
- [Secure OAuth Backend Verification](../03-security/01-secure-oauth-backend-verification.md)
- [Authentication Architecture](../01-architecture/01-authentication-architecture.md)
