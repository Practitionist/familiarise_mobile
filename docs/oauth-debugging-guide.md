# OAuth Configuration Debugging Guide

## Current Issues - Updated Analysis
Based on the authentication failures and enhanced logging, here are the most likely OAuth configuration issues and debugging steps:

### Latest Error Analysis
The Google OAuth is consistently failing with "Google sign-in failed" error. Based on our enhanced error logging, this indicates one of these specific issues:

## Google OAuth Configuration

### 1. Supabase Configuration
Check your Supabase dashboard (Authentication > Providers > Google):

**Required Settings:**
- ✅ **Enable Google provider**
- ✅ **Client ID (Web)**: From Google Cloud Console
- ✅ **Client Secret (Web)**: From Google Cloud Console
- ✅ **Redirect URLs**: Must include your app's URL scheme

### 2. Google Cloud Console Setup
Verify in Google Cloud Console (APIs & Services > Credentials):

**OAuth 2.0 Client IDs needed:**
- **Web application**: For Supabase integration
- **Android**: For mobile app (if using native Google Sign-In)
- **iOS**: For iOS builds (if applicable)

**Common Issues:**
- Using wrong Client ID type (Android vs Web)
- Missing SHA-1 certificate fingerprints for Android
- Incorrect package name in Android client

### 3. Android Configuration
Check `android/app/src/main/AndroidManifest.xml`:

```xml
<!-- Add if missing -->
<meta-data
    android:name="com.google.android.gms.version"
    android:value="@integer/google_play_services_version" />
```

### 4. pubspec.yaml Dependencies
Ensure correct versions:
```yaml
google_sign_in: ^6.3.0  # Check for latest
google_sign_in_android: ^6.2.1
google_sign_in_ios: ^5.9.0
```

## Facebook OAuth Configuration

### 1. Supabase Configuration
Check Supabase dashboard (Authentication > Providers > Facebook):

**Required Settings:**
- ✅ **Enable Facebook provider**
- ✅ **Facebook App ID**: From Facebook Developers Console
- ✅ **Facebook App Secret**: From Facebook Developers Console

### 2. Facebook Developers Console
Verify in Facebook Developers Console:

**App Settings:**
- Add platform: Android
- Add Google Play Package Name
- Add Key Hashes (important!)
- Enable Facebook Login product

**Common Issues:**
- Missing or incorrect key hashes
- App not in production mode (limited to test users)
- Wrong package name

### 3. Android Configuration
Check `android/app/src/main/res/values/strings.xml`:

```xml
<string name="facebook_app_id">YOUR_FACEBOOK_APP_ID</string>
<string name="fb_login_protocol_scheme">fbYOUR_FACEBOOK_APP_ID</string>
```

Check `android/app/src/main/AndroidManifest.xml`:

```xml
<meta-data 
    android:name="com.facebook.sdk.ApplicationId" 
    android:value="@string/facebook_app_id"/>
    
<activity 
    android:name="com.facebook.FacebookActivity"
    android:configChanges="keyboard|keyboardHidden|screenLayout|screenSize|orientation"
    android:label="@string/app_name" />
    
<activity
    android:name="com.facebook.CustomTabActivity"
    android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />
        <data android:scheme="@string/fb_login_protocol_scheme" />
    </intent-filter>
</activity>
```

## GitHub OAuth Configuration

### 1. Supabase Configuration
Check Supabase dashboard (Authentication > Providers > GitHub):

**Required Settings:**
- ✅ **Enable GitHub provider**
- ✅ **Client ID**: From GitHub OAuth App
- ✅ **Client Secret**: From GitHub OAuth App

### 2. GitHub OAuth App Setup
In GitHub Settings > Developer settings > OAuth Apps:

**Authorization callback URL:**
- Must match Supabase redirect URL
- Format: `https://your-project.supabase.co/auth/v1/callback`

## Debugging Steps

### 1. Enable Debug Logging
With the new logging system, you can see detailed OAuth flow:

```dart
// In your app, logs will show:
// OAuth: Starting Google authentication
// OAuth: Google user obtained, getting authentication tokens
// OAuth: Authenticating with Supabase using Google tokens
// OAuth: Google authentication successful for user: user@email.com
```

### 2. Check Supabase Logs
In Supabase dashboard, check Logs for authentication errors:
- Go to Project > Logs
- Filter by "auth" to see OAuth-related logs
- Look for error messages about invalid clients or configuration

### 3. Test OAuth Providers Individually

**Test Google OAuth:**
```bash
# Check if Google Sign-In works in browser
https://your-project.supabase.co/auth/v1/authorize?provider=google
```

**Test Facebook OAuth:**
```bash
# Check if Facebook OAuth works in browser
https://your-project.supabase.co/auth/v1/authorize?provider=facebook
```

### 4. Common Error Solutions

**"Google sign-in failed: No ID token received"**
- Solution: Check Google Cloud Console OAuth client type (should be Web)
- Verify Client ID in Supabase matches Web client, not Android client

**"Facebook authentication failed"**
- Solution: Generate and add correct key hashes to Facebook Console
- Check app is in production mode or user is added as test user

**"Invalid OAuth client"**
- Solution: Double-check Client ID and Secret in Supabase
- Verify OAuth app is active in provider console

### 5. Key Hash Generation (Facebook)

For Android Facebook login, generate key hash:

```bash
# Debug key hash
keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore | openssl sha1 -binary | openssl base64

# Release key hash (when publishing)
keytool -exportcert -alias YOUR_RELEASE_KEY_ALIAS -keystore YOUR_RELEASE_KEY_PATH | openssl sha1 -binary | openssl base64
```

## Test User Credentials

Updated test credentials for development:
- **Email**: `temp@gmail.com`
- **Password**: `123456` (6 characters to meet validation)

## Next Steps

1. **Immediate**: Check Supabase OAuth provider configuration
2. **Android**: Verify Google/Facebook console setup with correct package names
3. **Testing**: Use browser OAuth URLs to test Supabase configuration
4. **Debugging**: Monitor new logging system for detailed error information
5. **Production**: Ensure all OAuth apps are in production mode

## Production Checklist

Before production deployment:
- [ ] All OAuth apps approved and in production mode
- [ ] Release key hashes added to Facebook
- [ ] Production domain added to Google OAuth
- [ ] Supabase project in production mode
- [ ] Test credentials removed or restricted
- [ ] Logging level set to INFO (not DEBUG)

## Support

If issues persist:
1. Check logs in Supabase dashboard
2. Review provider console error messages
3. Test OAuth in browser first
4. Verify all redirect URLs match exactly
5. Consider creating new OAuth apps with clean configuration