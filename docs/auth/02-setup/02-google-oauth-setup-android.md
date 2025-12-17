# Android Google OAuth Setup - Complete Guide

This guide documents the complete process for setting up Java, generating signing certificates, and obtaining SHA fingerprints required for Android Google OAuth configuration.

## Prerequisites

- macOS with Homebrew installed
- Flutter SDK installed
- Android project initialized (`android/` directory exists)

## Step 1: Install Java (OpenJDK 17)

Android development requires Java. OpenJDK 17 is recommended for compatibility with Gradle and Android tooling.

### Install via Homebrew

```bash
brew install openjdk@17
```

### Configure Environment

Add the following to your `~/.zshrc` (in the "User configuration" section):

```bash
# Java (OpenJDK 17 for Android development)
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export PATH="$JAVA_HOME/bin:$PATH"
```

### Apply Changes

```bash
source ~/.zshrc
```

### Verify Installation

```bash
java -version
```

Expected output:
```
openjdk version "17.0.17" 2025-10-21
OpenJDK Runtime Environment Homebrew (build 17.0.17+0)
OpenJDK 64-Bit Server VM Homebrew (build 17.0.17+0, mixed mode, sharing)
```

## Step 2: Generate Debug Keystore

The debug keystore is used for development builds. It's automatically used by Flutter/Gradle for debug builds.

### Check if Debug Keystore Exists

```bash
ls ~/.android/debug.keystore
```

### Generate Debug Keystore (if missing)

```bash
keytool -genkey -v \
  -keystore ~/.android/debug.keystore \
  -storepass android \
  -alias AndroidDebugKey \
  -keypass android \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -dname "CN=Android Debug,O=Android,C=US"
```

## Step 3: Get SHA Fingerprints

### Option 1: Using Gradle (Recommended)

Navigate to the Android directory and run the signing report:

```bash
cd android
./gradlew signingReport
```

This outputs all signing configurations including SHA-1 and SHA-256 for all build variants.

### Option 2: Using keytool

For debug keystore:
```bash
keytool -list -v \
  -keystore ~/.android/debug.keystore \
  -alias AndroidDebugKey \
  -storepass android
```

For release keystore:
```bash
keytool -list -v \
  -keystore /path/to/release.keystore \
  -alias your-alias \
  -storepass your-password
```

## SHA Fingerprint Values

### Debug Build (Development)

| Field | Value |
|-------|-------|
| **SHA-1** | `F6:97:3E:9E:E0:90:3B:86:E7:C4:85:89:C6:8E:7F:59:E4:BE:7C:4F` |
| **SHA-256** | `E9:59:B8:A7:B8:23:93:53:10:7A:3A:14:B6:D1:F3:8C:2F:52:3D:2F:2F:51:46:6E:8D:69:75:AB:D3:8C:2E:85` |
| **MD5** | `AC:CB:FA:17:9D:32:44:B2:7F:EF:76:4D:5D:ED:B2:FB` |
| **Keystore** | `~/.android/debug.keystore` |
| **Alias** | `AndroidDebugKey` |
| **Password** | `android` |
| **Valid Until** | Saturday, 3 May, 2053 |

### Release Build (Production)

> **Note:** Create a separate release keystore for production builds. Never commit release keystores to version control.

## Step 4: Configure Google Cloud Console

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Navigate to **APIs & Services** > **Credentials**
3. Click **Create Credentials** > **OAuth client ID**
4. Select **Android** as application type
5. Fill in the details:
   - **Name:** `Familiarise Android (Debug)` or `Familiarise Android (Release)`
   - **Package name:** `com.familiarise.mobile`
   - **SHA-1 certificate fingerprint:** Paste the SHA-1 from above
6. Click **Create**
7. Copy the generated Client ID

### Multiple Certificates

For development workflows, you may need multiple Android OAuth clients:
- One with **debug SHA-1** for local development
- One with **release SHA-1** for production builds

## Step 5: Update Environment Configuration

Add the Android Client ID to your `.env` file:

```env
GOOGLE_CLIENT_ID_ANDROID=xxxxx.apps.googleusercontent.com
```

Then regenerate the environment config:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Troubleshooting

### "Unable to locate a Java Runtime"

**Cause:** Java is not installed or not in PATH.

**Solution:**
1. Install OpenJDK 17: `brew install openjdk@17`
2. Add to `~/.zshrc`:
   ```bash
   export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
   export PATH="$JAVA_HOME/bin:$PATH"
   ```
3. Run `source ~/.zshrc`

### "Missing keystore" in Signing Report

**Cause:** Debug keystore doesn't exist at `~/.android/debug.keystore`.

**Solution:** Generate it using the keytool command in Step 2.

### Gradle Build Fails with Java Version Error

**Cause:** Using incompatible Java version (e.g., Java 25 with older Gradle).

**Solution:** Use OpenJDK 17 which is well-supported by Android tooling.

### "SHA-1 mismatch" Error During Google Sign-In

**Cause:** The SHA-1 in Google Cloud Console doesn't match the signing certificate.

**Solution:**
1. Run `./gradlew signingReport` to get the actual SHA-1
2. Update the OAuth client in Google Cloud Console with the correct SHA-1
3. Make sure you're using the correct keystore (debug vs release)

### BFG or Other Java Tools Not Working

**Cause:** Tools may have hardcoded paths to Java.

**Solution:** Create a symlink:
```bash
ln -sfn /opt/homebrew/opt/openjdk@17 /opt/homebrew/opt/openjdk
```

## Quick Reference Commands

| Task | Command |
|------|---------|
| Check Java version | `java -version` |
| Check JAVA_HOME | `echo $JAVA_HOME` |
| Generate debug keystore | `keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias AndroidDebugKey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"` |
| Get signing report | `cd android && ./gradlew signingReport` |
| Reload shell config | `source ~/.zshrc` |

---

## Related Documentation

- [Google OAuth Setup (All Platforms)](./01-google-oauth-setup.md)
- [OAuth Setup Checklist](./03-oauth-checklist.md)
- [Authentication Architecture](../01-architecture/01-authentication-architecture.md)
