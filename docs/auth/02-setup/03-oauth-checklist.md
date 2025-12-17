# OAuth Setup Checklist

Quick reference for setting up OAuth clients.

## Google Cloud Console Setup

### 1. Create OAuth Consent Screen
- [ ] Go to APIs & Services > OAuth consent screen
- [ ] Select User Type (External for public apps)
- [ ] Fill app name, support email, developer email
- [ ] Add scopes: `email`, `profile`, `openid`

### 2. Enable APIs
- [ ] APIs & Services > Library > Search "People API" > Enable

### 3. Create OAuth Clients

#### Web Client
- [ ] APIs & Services > Credentials > Create Credentials > OAuth client ID
- [ ] Application type: **Web application**
- [ ] Name: `Familiarise Web`
- [ ] Authorized JavaScript origins: `http://localhost`
- [ ] Copy Client ID and Client Secret

#### iOS Client
- [ ] Application type: **iOS**
- [ ] Name: `Familiarise iOS`
- [ ] Bundle ID: `com.familiarise.mobile`
- [ ] Copy Client ID

#### Android Client
- [ ] Application type: **Android**
- [ ] Name: `Familiarise Android`
- [ ] Package name: `com.familiarise.mobile`
- [ ] SHA-1 fingerprint: (from `./gradlew signingReport`)
- [ ] Copy Client ID

## App Configuration

### Environment Files

#### `.env` (Flutter app root)
```env
GOOGLE_CLIENT_ID_WEB=<web-client-id>
GOOGLE_CLIENT_SECRET_WEB=<web-client-secret>
GOOGLE_CLIENT_ID_IOS=<ios-client-id>
GOOGLE_CLIENT_ID_ANDROID=<android-client-id>
```

#### `backend/.env`
```env
GOOGLE_CLIENT_ID=<web-client-id>
GOOGLE_CLIENT_SECRET=<web-client-secret>
```

### Platform Files

#### Web: `web/index.html`
```html
<meta name="google-signin-client_id" content="<web-client-id>">
```

#### iOS: `ios/Runner/Info.plist`
Update URL scheme with reversed client ID (e.g., `com.googleusercontent.apps.384845845365-xxxxx`)

#### Android: No additional config needed
The `google_sign_in` plugin handles it automatically.

### Regenerate Code
```bash
dart run build_runner build --delete-conflicting-outputs
```

## Values Quick Reference

| Platform | Package/Bundle ID | Notes |
|----------|-------------------|-------|
| iOS | `com.familiarise.mobile` | Bundle ID |
| Android | `com.familiarise.mobile` | Package name |
| Web | N/A | Uses JavaScript origins |

## Common Issues

| Issue | Solution |
|-------|----------|
| ClientID not set | Add meta tag to web/index.html |
| serverClientId not supported on Web | Use kIsWeb check |
| People API not enabled | Enable in Google Cloud Console |
| redirect_uri_mismatch | Check OAuth client type matches platform |
| Invalid Bundle ID (iOS) | Verify in Xcode > General > Bundle Identifier |
| SHA-1 mismatch (Android) | Regenerate with correct keystore |

---

## Related Documentation

- [Google OAuth Setup](./01-google-oauth-setup.md)
- [Android Setup Guide](./02-google-oauth-setup-android.md)
- [Authentication Architecture](../01-architecture/01-authentication-architecture.md)
