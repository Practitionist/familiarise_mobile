# Google OAuth Setup

## Overview

Familiarise Mobile uses Google Sign-In for authentication. Each platform (Web, iOS, Android) requires its own OAuth client ID configured in Google Cloud Console.

---

## Understanding OAuth Callbacks (Web vs Mobile)

Before diving into setup, it's important to understand **why** each platform is configured differently.

### Web OAuth Flow

```
1. User clicks "Sign in with Google"
2. Browser redirects to Google's login page
3. User logs in
4. Google redirects back to YOUR website: https://yoursite.com/auth/callback
5. Your server receives the token at that URL
```

The callback URL is a **real web URL** that Google navigates to in the browser.

### Mobile OAuth Flow

Mobile apps **don't have URLs** - they're installed apps! So how does the callback work?

```
1. User taps "Sign in with Google"
2. App opens Google sign-in (in-app browser or Google app)
3. User logs in
4. Google needs to "redirect" back... but to WHERE?
```

**The answer: App Identity Verification**

Instead of redirect URIs, Google verifies the app's identity directly:

| Platform | How Google Identifies Your App |
|----------|-------------------------------|
| **Web** | Redirect URI (real URL) |
| **Android** | Package name + SHA-1 fingerprint |
| **iOS** | Bundle ID |

### Why No Redirect URI for Mobile?

When you create an Android or iOS OAuth client in Google Cloud Console, you'll notice there's **no redirect URI field**. That's because:

- **Android:** Google verifies your app using its package name (`com.familiarise.mobile`) and SHA-1 certificate fingerprint. This cryptographically proves it's really your app.

- **iOS:** Google verifies your app using its Bundle ID (`com.familiarise.mobile`). The OS ensures only your app can receive the callback.

The `google_sign_in` Flutter package handles the callback internally - the token is passed directly to your app through secure OS mechanisms, not through a URL redirect.

### Simple Analogy

Think of it like mail delivery:

- **Web:** "Deliver to 123 Main Street" (a real address anyone could visit)
- **Mobile:** "Deliver to the person with fingerprint #12345" (identity verified, handed directly)

### iOS URL Scheme (Special Case)

iOS does use a "URL scheme" in `Info.plist`, but this is **not** a redirect URI for Google Cloud Console. It's a local mechanism for the Google Sign-In SDK to return control to your app after authentication. The format is:

```
com.googleusercontent.apps.YOUR_CLIENT_ID_PREFIX
```

This is registered locally on the device, not with Google's servers.

### Summary

| Question | Web | Mobile (Android/iOS) |
|----------|-----|----------------------|
| Needs redirect URI in GCP? | ✅ Yes | ❌ No |
| How does callback work? | Browser navigates to URL | OS opens app directly |
| What identifies your app? | Redirect URI | Package/Bundle ID + fingerprint |
| Where is callback configured? | Google Cloud Console | Locally in app + GCP app identity |

---

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
