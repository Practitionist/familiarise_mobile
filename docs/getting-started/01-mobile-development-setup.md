# Mobile Development Setup Guide

This document provides comprehensive setup instructions for running the Familiarise Mobile app on Android and iOS platforms, including known issues and fixes.

## Table of Contents

- [Environment Requirements](#environment-requirements)
- [Quick Start](#quick-start)
- [Android Setup](#android-setup)
- [iOS Setup](#ios-setup)
- [Known Issues & Fixes](#known-issues--fixes)
- [Version Compatibility Matrix](#version-compatibility-matrix)
- [Troubleshooting](#troubleshooting)
- [Resources](#resources)

---

## Environment Requirements

### Current Project Configuration (December 2025)

| Component | Version | Notes |
|-----------|---------|-------|
| **Flutter** | 3.38.4 | Stable channel |
| **Dart** | 3.10.3 | Bundled with Flutter |
| **Android SDK** | 36.1.0 | API Level 36 |
| **Android Emulator** | 36.3.10.0 | Medium Phone API 36 |
| **Xcode** | 26.1.1 | Beta - has compatibility issues |
| **iOS Runtime** | 26.1 | Beta |
| **CocoaPods** | 1.16.2 | Required for iOS |
| **Java** | 17 (OpenJDK 21) | Bundled with Android Studio |

### Minimum Requirements

| Platform | Minimum Version |
|----------|-----------------|
| Android API | 24 (Android 7.0) |
| iOS | 13.0 |
| Java | 17 |
| Gradle | 8.11.1+ |

---

## Quick Start

### 1. Verify Flutter Installation

```bash
flutter doctor -v
```

All checks should pass for the platforms you want to develop for.

### 2. Launch Emulators/Simulators

**Android:**
```bash
flutter emulators --launch Medium_Phone_API_36.1
```

**iOS:**
```bash
open -a Simulator
# Or boot a specific device:
xcrun simctl boot "iPhone 17 Pro"
```

### 3. List Available Devices

```bash
flutter devices
```

### 4. Run the App

```bash
# On specific device
flutter run -d <device_id>

# On Android emulator
flutter run -d emulator-5554

# On iOS simulator
flutter run -d "iPhone 17 Pro"

# On all connected devices
flutter run -d all
```

---

## Android Setup

### Prerequisites

1. **Android Studio** installed with:
   - Android SDK Platform 36
   - Android SDK Build-Tools 36.1.0
   - Android Emulator
   - Android SDK Platform-Tools

2. **SDK Platforms** (install via Android Studio SDK Manager):
   - Android 16 (API 36)
   - Android 15 (API 35) - for backward compatibility testing
   - Android 14 (API 34)
   - Android 13 (API 33)

### Create Android Emulator

```bash
# List available system images
flutter emulators

# Create new emulator
flutter emulators --create --name Pixel_8_API_36

# Launch emulator
flutter emulators --launch Pixel_8_API_36
```

### Build Configuration

The project uses Kotlin DSL (`build.gradle.kts`). Key configuration in `android/app/build.gradle.kts`:

```kotlin
android {
    namespace = "com.familiarise.familiarise_mobile"
    compileSdk = flutter.compileSdkVersion  // 36
    ndkVersion = flutter.ndkVersion

    compileOptions {
        isCoreLibraryDesugaringEnabled = true  // Required for flutter_local_notifications
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.familiarise.familiarise_mobile"
        minSdk = flutter.minSdkVersion  // 24
        targetSdk = flutter.targetSdkVersion  // 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
```

### First Build

The first Android build takes longer as it:
- Downloads Gradle dependencies
- Installs missing SDK platforms (33, 34, 35)
- Installs CMake 3.22.1
- Compiles native code

Expected time: **3-5 minutes** on first build.

---

## iOS Setup

### Prerequisites

1. **Xcode** installed from App Store or Apple Developer
2. **CocoaPods** installed:
   ```bash
   sudo gem install cocoapods
   ```
3. **iOS Simulator** runtimes

### List Available Simulators

```bash
xcrun simctl list devices available
```

### Boot Simulator

```bash
# Open Simulator app
open -a Simulator

# Or boot specific device
xcrun simctl boot "iPhone 17 Pro"
```

### Install CocoaPods Dependencies

```bash
cd ios
pod install --repo-update
cd ..
```

### Clean Build (if issues occur)

```bash
cd ios
rm -rf Pods Podfile.lock
pod install --repo-update
cd ..
flutter clean
flutter pub get
flutter run -d <ios_device>
```

---

## Known Issues & Fixes

### 1. Core Library Desugaring Error (Android)

**Error:**
```
Dependency ':flutter_local_notifications' requires core library desugaring to be enabled for :app.
```

**Cause:** `flutter_local_notifications` plugin v10+ uses Java 8+ APIs that require desugaring.

**Fix:** Add to `android/app/build.gradle.kts`:

```kotlin
android {
    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
```

**Reference:** [GitHub Issue #2286](https://github.com/MaikuB/flutter_local_notifications/issues/2286)

---

### 2. Xcode 26 / iOS 26 Simulator Not Found

**Error:**
```
Unable to find a destination matching the provided destination specifier:
    { id:A19229D1-5447-4E7B-83A5-D4A51E262BC5 }
```

**Cause:** Flutter has compatibility issues with Xcode 26 beta and iOS 26 beta simulators.

**Status:** This is a known issue being tracked by the Flutter team.

**Workarounds:**
1. Use a physical iOS device instead of simulator
2. Install stable Xcode 16.x alongside Xcode 26:
   ```bash
   # Switch to stable Xcode
   sudo xcode-select -s /Applications/Xcode-16.app/Contents/Developer
   ```
3. Wait for Flutter updates to support Xcode 26

**Reference:** [GitHub Issue #176188](https://github.com/flutter/flutter/issues/176188)

---

### 3. Framework 'Pods_Runner' Not Found (iOS)

**Error:**
```
Framework 'Pods_Runner' not found
Linker command failed with exit code 1
```

**Fix:**
```bash
cd ios
rm -rf Pods Podfile.lock
pod install --repo-update
cd ..
flutter clean
flutter pub get
```

---

### 4. Firebase Analytics Disabled Warning

**Warning:**
```
Missing google_app_id. Firebase Analytics disabled.
```

**Cause:** Firebase configuration files not set up.

**Fix:** Add Firebase configuration files:
- `android/app/google-services.json`
- `ios/Runner/GoogleService-Info.plist`

Download these from the [Firebase Console](https://console.firebase.google.com/).

---

### 5. UIScene Lifecycle Warning (iOS 26)

**Warning:**
```
UIScene lifecycle will soon be required. Failure to adopt will result in an assert in the future.
```

**Cause:** Apple mandated UIScene lifecycle adoption starting with iOS 26/Xcode 26.

**Status:** Flutter 3.38 includes support for UIScene lifecycle. Migration may be required for existing apps.

**Reference:** [Flutter iOS Latest Docs](https://docs.flutter.dev/platform-integration/ios/ios-latest)

---

### 6. Slow First Build

**Symptom:** First `flutter run` takes 5-10 minutes.

**Cause:** First build downloads:
- Gradle dependencies
- SDK platforms
- CMake
- CocoaPods
- Native compilation

**Solution:** This is normal. Subsequent builds are much faster (hot reload < 1 second).

---

## Version Compatibility Matrix

### Flutter 3.38.x Requirements

| Component | Required Version | Notes |
|-----------|-----------------|-------|
| Dart | 3.10.x | Bundled |
| Java | 17+ | Android builds |
| Gradle | 8.14+ | Android builds |
| Android NDK | r28 | Default in Flutter 3.38 |
| Xcode | 26+ | Full support in 3.38 |
| iOS SDK | 26+ | Full support in 3.38 |
| macOS SDK | 26+ | For macOS builds |
| Android API | 24-36 | Deployment targets |
| iOS | 13+ | Deployment target |

### Google Play Requirements (2025)

| Requirement | Deadline | Notes |
|-------------|----------|-------|
| 16KB Page Size | November 1, 2025 | Apps targeting Android 15+ |
| Target API 36 | August 31, 2025 | New apps |
| Target API 36 | November 1, 2025 | Existing apps |

**Reference:** [Flutter 3.38 Release Notes](https://docs.flutter.dev/release/release-notes/release-notes-3.38.0)

---

## Troubleshooting

### General Commands

```bash
# Full diagnostic
flutter doctor -v

# Clean everything
flutter clean
flutter pub get

# Rebuild generated code
dart run build_runner build --delete-conflicting-outputs

# Check devices
flutter devices

# Run with verbose logging
flutter run -v
```

### Android-Specific

```bash
# Clean Gradle cache
cd android && ./gradlew clean && cd ..

# Check SDK installation
sdkmanager --list

# Accept all licenses
flutter doctor --android-licenses
```

### iOS-Specific

```bash
# Clean Xcode derived data
rm -rf ~/Library/Developer/Xcode/DerivedData

# Reinstall pods
cd ios && rm -rf Pods Podfile.lock && pod install && cd ..

# List simulators
xcrun simctl list devices

# Reset simulator
xcrun simctl erase <device_id>
```

---

## Development Workflow

### Hot Reload vs Hot Restart

| Feature | Hot Reload | Hot Restart |
|---------|------------|-------------|
| Shortcut | `r` | `R` |
| Speed | < 1 second | 2-5 seconds |
| State | Preserved | Reset |
| Use Case | UI changes | Logic changes |

### Running Backend with Mobile

```bash
# Terminal 1: Run Dart Frog backend
cd backend
dart_frog dev  # or: PORT=8080 dart build/bin/server.dart

# Terminal 2: Run Flutter app
flutter run -d <device>
```

---

## Resources

### Official Documentation
- [Flutter Supported Platforms](https://docs.flutter.dev/reference/supported-platforms)
- [Flutter iOS Setup](https://docs.flutter.dev/platform-integration/ios/setup)
- [Flutter Android Setup](https://docs.flutter.dev/platform-integration/android/setup)
- [Flutter iOS Latest](https://docs.flutter.dev/platform-integration/ios/ios-latest)

### Flutter 3.38 Release
- [What's New in Flutter 3.38](https://blog.flutter.dev/whats-new-in-flutter-3-38-3f7b258f7228)
- [Flutter 3.38 Release Notes](https://docs.flutter.dev/release/release-notes/release-notes-3.38.0)

### Known Issues
- [iOS 26 Simulator Issues](https://github.com/flutter/flutter/issues/176188)
- [Xcode 26 Engine Compilation](https://github.com/flutter/flutter/issues/171755)
- [Core Library Desugaring](https://github.com/MaikuB/flutter_local_notifications/issues/2286)

### Guides
- [Fixing Core Library Desugaring](https://medium.com/@janviflutterwork/%EF%B8%8F-fixing-core-library-desugaring-error-in-flutter-when-using-flutter-local-notifications-c15ba5f69394)
- [Android API 36 Migration Guide](https://hasnainmirrani.medium.com/android-api-level-36-migration-guide-complete-flutter-app-update-for-android-16-346c3ca8fdf9)

---

## Summary of Our Setup Experience (December 2025)

### What Worked
- **Android Emulator**: Successfully running on Medium Phone API 36.1
- **Flutter 3.38.4**: Stable and working
- **Core Library Desugaring**: Fixed by adding to `build.gradle.kts`
- **Android SDK 36**: Fully compatible

### What Didn't Work (Yet)
- **iOS Simulator with Xcode 26 Beta**: Flutter has compatibility issues
- **Xcode 26 destination detection**: Known bug being tracked

### Recommendations
1. Use **Android for primary development** until Xcode 26 issues are resolved
2. Keep **Xcode 16.x** installed for iOS development if needed
3. Always run `flutter doctor` before debugging issues
4. First builds are slow - be patient!

---

*Last Updated: December 22, 2025*
*Flutter Version: 3.38.4 | Dart: 3.10.3*
