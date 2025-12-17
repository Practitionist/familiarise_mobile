# Google OAuth Setup

## Overview

Familiarise Mobile uses Google Sign-In for authentication. Each platform (Web, iOS, Android) requires its own OAuth client ID configured in Google Cloud Console.

## Prerequisites

1. Google Cloud Project with OAuth consent screen configured
2. People API enabled in APIs & Services > Library

## Platform Configuration

### Web

**Google Cloud Console:**
- Application type: **Web application**
- Authorized JavaScript origins: `http://localhost` (for development)
- Authorized redirect URIs: `http://localhost`

**Files to update:**
- `web/index.html`: Add client ID in meta tag
- `.env`: Set `GOOGLE_CLIENT_ID_WEB`

### iOS

**Google Cloud Console:**
- Application type: **iOS**
- Bundle ID: `com.familiarise.mobile`
- App Store ID: (optional, leave empty for development)
- Team ID: (optional, from Apple Developer account)

**Files to update:**
- `.env`: Set `GOOGLE_CLIENT_ID_IOS`
- `ios/Runner/Info.plist`: Update URL scheme with reversed client ID

**Info.plist URL Scheme:**
```xml
<dict>
    <key>CFBundleTypeRole</key>
    <string>Editor</string>
    <key>CFBundleURLName</key>
    <string>com.googleusercontent.apps.YOUR_CLIENT_ID</string>
    <key>CFBundleURLSchemes</key>
    <array>
        <string>com.googleusercontent.apps.YOUR_CLIENT_ID</string>
    </array>
</dict>
```

Replace `YOUR_CLIENT_ID` with the client ID prefix (e.g., `384845845365-xxxxxx`).

### Android

**Google Cloud Console:**
- Application type: **Android**
- Package name: `com.familiarise.mobile`
- SHA-1 certificate fingerprint: (see below)

**Getting SHA-1 fingerprint:**

Option 1 - Using Gradle (requires Java):
```bash
cd android && ./gradlew signingReport
```

Option 2 - Using keytool:
```bash
# Debug keystore (development)
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android

# Release keystore (production)
keytool -list -v -keystore /path/to/release.keystore -alias your-alias
```

**Files to update:**
- `.env`: Set `GOOGLE_CLIENT_ID_ANDROID`

## Environment Variables

```env
# Web
GOOGLE_CLIENT_ID_WEB=xxxxx.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET_WEB=GOCSPX-xxxxx

# iOS
GOOGLE_CLIENT_ID_IOS=xxxxx.apps.googleusercontent.com

# Android
GOOGLE_CLIENT_ID_ANDROID=xxxxx.apps.googleusercontent.com

# Backend (Web client for token verification)
GOOGLE_CLIENT_ID=xxxxx.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=GOCSPX-xxxxx
```

## Code Architecture

### Platform-specific Client ID Selection

`lib/core/config/env_config.dart`:
```dart
static String get googleClientId {
  if (kIsWeb) return googleClientIdWeb;
  if (Platform.isIOS) return googleClientIdIos;
  if (Platform.isAndroid) return googleClientIdAndroid;
  return googleClientIdWeb;
}
```

### Auth Flow

1. User taps "Sign in with Google"
2. `google_sign_in` package initiates OAuth flow
3. User authenticates with Google
4. App receives ID token
5. ID token sent to backend for verification
6. Backend verifies token with Google and creates/retrieves user
7. Backend returns session token
8. App stores session and updates auth state

## Troubleshooting

### "ClientID not set"
- Ensure `web/index.html` has the `google-signin-client_id` meta tag
- Run `dart run build_runner build` to regenerate env_config.g.dart

### "serverClientId is not supported on Web"
- The code should skip `serverClientId` on web platform
- Check that `kIsWeb` check is in place in auth_remote_source.dart

### "People API has not been used"
- Enable People API in Google Cloud Console > APIs & Services > Library

### "Storagerelay URI mismatch" or "redirect_uri_mismatch"
- Ensure you're using the correct OAuth client type for the platform
- Web apps need "Web application" type, not "Native" or "Desktop"

### iOS: "Invalid redirect URI"
- Check Info.plist has correct reversed client ID URL scheme
- Format: `com.googleusercontent.apps.CLIENT_ID_PREFIX`

---

## Related Documentation

- [Android-Specific Setup](./02-google-oauth-setup-android.md)
- [OAuth Setup Checklist](./03-oauth-checklist.md)
- [Web Limitations & Solutions](../04-troubleshooting/01-google-sign-in-web-limitations.md)
