# Platform Setup Guide

This document covers all platform-specific configurations required for the Familiarise Mobile app to work correctly on Android and iOS.

---

## Table of Contents

1. [Android Setup](#android-setup)
2. [iOS Setup](#ios-setup)
3. [Backend Configuration](#backend-configuration)
4. [Common Issues & Solutions](#common-issues--solutions)

---

## Android Setup

### 1. Package Name Configuration

The app uses `com.familiarise.mobile` as its package name. Ensure consistency across:

**`android/app/build.gradle.kts`:**
```kotlin
android {
    namespace = "com.familiarise.mobile"
    // ...
    defaultConfig {
        applicationId = "com.familiarise.mobile"
        // ...
    }
}
```

**`android/app/src/main/kotlin/com/familiarise/mobile/MainActivity.kt`:**
```kotlin
package com.familiarise.mobile

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity()
```

> **Important:** The directory structure must match: `android/app/src/main/kotlin/com/familiarise/mobile/`

### 2. Firebase & Google Services Configuration

**Required:** `android/app/google-services.json`

Since the app uses Firebase (analytics, crashlytics, messaging), you must have a `google-services.json` file:

1. Go to [Firebase Console](https://console.firebase.google.com)
2. Select/create your project
3. Add Android app with:
   - Package name: `com.familiarise.mobile`
   - SHA-1: `F6:97:3E:9E:E0:90:3B:86:E7:C4:85:89:C6:8E:7F:59:E4:BE:7C:4F`
4. Download `google-services.json`
5. Place in `android/app/google-services.json`

### 3. Google Sign-In Configuration

#### Required in Google Cloud Console:
1. Go to [Google Cloud Console](https://console.cloud.google.com) > APIs & Services > Credentials
2. Create/Edit Android OAuth Client
3. Add these configurations:
   - **Package name:** `com.familiarise.mobile`
   - **SHA-1 fingerprint (Debug):** `F6:97:3E:9E:E0:90:3B:86:E7:C4:85:89:C6:8E:7F:59:E4:BE:7C:4F`
   - **SHA-1 fingerprint (Release):** Get from your release keystore

#### To get SHA-1 fingerprints:

**Debug keystore:**
```bash
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android
```

**Release keystore:**
```bash
keytool -list -v -keystore <path-to-keystore> -alias <alias-name>
```

### 3. Network Configuration for Emulator

The Android emulator uses `10.0.2.2` to reach the host machine's `localhost`. This is handled automatically in `lib/core/config/env_config.dart`:

```dart
static String get apiBaseUrl {
  final url = _apiBaseUrlRaw;

  if (kIsWeb) return url;

  // On Android, replace localhost with 10.0.2.2 for emulator support
  if (Platform.isAndroid && (url.contains('localhost') || url.contains('127.0.0.1'))) {
    return url.replaceFirst('localhost', '10.0.2.2').replaceFirst('127.0.0.1', '10.0.2.2');
  }

  return url;
}
```

---

## iOS Setup

### 1. Google Sign-In Configuration

#### Info.plist Requirements

Add these entries to `ios/Runner/Info.plist`:

**1. URL Scheme for Google Sign-In callback:**
```xml
<key>CFBundleURLTypes</key>
<array>
    <!-- Google Sign-In URL scheme (reversed iOS client ID) -->
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLName</key>
        <string>com.googleusercontent.apps.YOUR_IOS_CLIENT_ID</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>com.googleusercontent.apps.YOUR_IOS_CLIENT_ID</string>
        </array>
    </dict>
</array>
```

**2. GIDClientID (REQUIRED - app will crash without this):**
```xml
<key>GIDClientID</key>
<string>YOUR_IOS_CLIENT_ID.apps.googleusercontent.com</string>
```

> **Critical:** The `GIDClientID` key is required for Google Sign-In SDK to initialize. Without it, the app will crash with SIGABRT when attempting Google Sign-In.

#### Google Cloud Console:
1. Create an iOS OAuth Client
2. Add your iOS Bundle ID: `com.familiarise.familiariseMobile`
3. Download the `GoogleService-Info.plist` if using Firebase

### 2. Apple Silicon Simulator Support

For Apple Silicon Macs, ensure arm64 is NOT excluded for simulators.

**`ios/Podfile` - post_install block:**
```ruby
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    # Remove arm64 from excluded architectures for simulator (Apple Silicon support)
    target.build_configurations.each do |config|
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = ''
    end
  end

  # Also update the main Pods-Runner config
  installer.aggregate_targets.each do |target|
    target.xcconfigs.each do |config_name, config_file|
      config_file.attributes['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = ''
      xcconfig_path = target.xcconfig_path(config_name)
      config_file.save_as(xcconfig_path)
    end
  end
end
```

After modifying Podfile, run:
```bash
cd ios
rm -rf Pods Podfile.lock
pod install
```

### 3. Network Configuration for Simulator

Unlike Android, the iOS Simulator can access `localhost` directly to reach the host machine. No special configuration needed.

---

## Backend Configuration

### Starting the Backend

```bash
cd backend

# Build
~/.pub-cache/bin/dart_frog build

# Run on port 8080
PORT=8080 dart build/bin/server.dart
```

### Environment Variables

Ensure `.env` has the correct `API_BASE_URL`:
```
API_BASE_URL=http://localhost:8080
```

---

## Common Issues & Solutions

### Android: `PlatformException(sign_in_failed, ApiException: 10)`

**Cause:** Package name or SHA-1 mismatch in Google Cloud Console, OR old app with different package name still installed

**Solution:**
1. **Check for duplicate apps:** If you changed the package name, uninstall the OLD app from the device/emulator first
2. Verify package name in `build.gradle.kts` matches Google Console
3. Verify SHA-1 fingerprint is added to Google Console
4. Rebuild the app: `flutter clean && flutter build apk --debug`

> **Important:** When changing package names, both old and new apps can be installed simultaneously. Always uninstall the old package first!

### iOS: App crashes on "Continue with Google" (SIGABRT)

**Cause:** Missing `GIDClientID` in Info.plist

**Solution:** Add the GIDClientID key to `ios/Runner/Info.plist`:
```xml
<key>GIDClientID</key>
<string>YOUR_IOS_CLIENT_ID.apps.googleusercontent.com</string>
```

### iOS: Build produces x86_64 only (won't install on Apple Silicon simulator)

**Cause:** `arm64` is excluded for simulator builds (legacy Intel Mac compatibility)

**Solution:** Update Podfile post_install hook to clear EXCLUDED_ARCHS (see iOS Setup section)

### Android: `SocketException: Connection refused` to localhost

**Cause:** Android emulator can't reach host's localhost

**Solution:** Already handled in `env_config.dart` - localhost is automatically replaced with `10.0.2.2` on Android

### iOS: `SocketException: Connection refused` to localhost

**Cause:** Backend not running

**Solution:** Start the backend on the correct port:
```bash
cd backend
PORT=8080 dart build/bin/server.dart
```

### Both: Auth initialization hangs on splash screen

**Cause:** Network timeout or auth state not properly handled

**Solution:** Auth provider has a 5-second timeout. Check `lib/features/auth/providers/auth_provider.dart`:
```dart
final result = await repository.getCurrentUser().timeout(
  const Duration(seconds: 5),
  onTimeout: () => throw TimeoutException('Auth check timed out'),
);
```

---

## Verification Checklist

### Android
- [ ] Package name is `com.familiarise.mobile` in build.gradle.kts
- [ ] MainActivity.kt is at correct path with correct package
- [ ] SHA-1 (debug) added to Google Console: `F6:97:3E:9E:E0:90:3B:86:E7:C4:85:89:C6:8E:7F:59:E4:BE:7C:4F`
- [ ] SHA-1 (release) added to Google Console

### iOS
- [ ] GIDClientID in Info.plist
- [ ] URL scheme for Google callback in Info.plist
- [ ] Podfile has EXCLUDED_ARCHS fix for Apple Silicon
- [ ] Bundle ID matches Google Console

### Backend
- [ ] Running on port 8080
- [ ] `/api/auth/google` endpoint working
