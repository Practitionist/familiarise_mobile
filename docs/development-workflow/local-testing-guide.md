# Local Development & Testing Guide

This document outlines the recommended workflow for developing and testing the Familiarise mobile app with the Dart Frog backend.

---

## Table of Contents

1. [Overview](#overview)
2. [Local Development Setup](#local-development-setup)
3. [Testing on Different Devices](#testing-on-different-devices)
4. [Development Workflow Stages](#development-workflow-stages)
5. [Cost Optimization](#cost-optimization)
6. [Troubleshooting](#troubleshooting)
7. [Quick Reference](#quick-reference)

---

## Overview

The Familiarise app consists of:
- **Flutter Mobile App** - Cross-platform iOS/Android application
- **Dart Frog Backend** - REST API server running on port 8080
- **PostgreSQL Database** - Accessed via Prisma Flutter Connector

During development, the mobile app needs to communicate with the backend server. The method varies depending on your testing environment.

---

## Local Development Setup

### Starting the Backend Server

#### Development Mode (with hot reload)
```bash
cd backend
dart_frog dev
```
> Note: May have terminal stdin issues in some environments

#### Production Build (recommended)
```bash
cd backend
dart_frog build
dart build/bin/server.dart
```

**Server Output:**
```
INFO: Sentry initialized successfully
INFO: [Startup] Connecting to database...
INFO: [Startup] Database connected successfully!
INFO: [Startup] Starting server on http://:::8080
```

### Starting the Flutter App

```bash
# For Android emulator
flutter run

# For specific device
flutter devices  # List available devices
flutter run -d <device_id>
```

---

## Testing on Different Devices

### Device Connectivity Matrix

| Device Type | Can Reach `localhost`? | Solution | Cost |
|-------------|------------------------|----------|------|
| Android Emulator | No (but auto-handled) | Uses `10.0.2.2` automatically | Free |
| iOS Simulator | Yes | Direct connection | Free |
| Physical Android | No | ngrok / Mac IP | Free-Cheap |
| Physical iOS | No | ngrok / Mac IP | Free-Cheap |

### Android Emulator (Recommended for Daily Development)

The app automatically handles localhost → 10.0.2.2 conversion for Android emulators.

**How it works** (`lib/core/config/env_config.dart`):
```dart
static String get apiBaseUrl {
  final url = _apiBaseUrlRaw;

  if (kIsWeb) return url;

  // On Android, replace localhost with 10.0.2.2 for emulator support
  if (Platform.isAndroid &&
      (url.contains('localhost') || url.contains('127.0.0.1'))) {
    return url
        .replaceFirst('localhost', '10.0.2.2')
        .replaceFirst('127.0.0.1', '10.0.2.2');
  }

  return url;
}
```

**Usage:**
```bash
# Start an emulator
flutter emulators --launch <emulator_id>

# Run the app
flutter run
```

### iOS Simulator

iOS simulators share the host's network stack and can reach `localhost` directly.

```bash
# List iOS simulators
xcrun simctl list devices

# Run on iOS simulator
flutter run -d <ios_simulator_id>
```

### Physical Android Device

Physical devices cannot reach `localhost` or `10.0.2.2`. The app has **automatic device detection** with a dedicated environment variable.

#### Recommended: PHYSICAL_DEVICE_API_URL (Auto-Detection)

The app automatically detects if running on a physical device and uses a separate URL.

1. Find your Mac's IP:
```bash
ifconfig | grep "inet " | grep -v 127.0.0.1
# Example output: inet 192.168.0.121
```

2. Set `PHYSICAL_DEVICE_API_URL` in `.env`:
```bash
API_BASE_URL=http://localhost:8080
PHYSICAL_DEVICE_API_URL=http://192.168.0.121:8080
```

3. Rebuild and run:
```bash
flutter run -d <physical_device_id>
```

**How it works:**
- App startup calls `EnvConfig.initializeDeviceDetection()`
- Uses `device_info_plus` to detect emulator vs physical device
- Physical device → uses `PHYSICAL_DEVICE_API_URL`
- Emulator → uses `API_BASE_URL` (with localhost → 10.0.2.2 conversion)

**Debug log output:**
```
[EnvConfig] Device detection initialized: isPhysicalDevice=true, apiBaseUrl=http://192.168.0.121:8080
```

> **Benefit:** No need to change `API_BASE_URL` when switching between emulator and physical device!

#### Alternative: ngrok Tunnel

Creates a public URL that tunnels to your local server.

```bash
# Install ngrok
brew install ngrok

# Start tunnel
ngrok http 8080
```

**Output:**
```
Forwarding  https://abc123.ngrok.io -> http://localhost:8080
```

Update `.env`:
```bash
PHYSICAL_DEVICE_API_URL=https://abc123.ngrok.io
```

> **Free Tier:** 500 requests/month, sufficient for testing

#### Alternative: mDNS Hostname (Limited Support)

```bash
# Get Mac's local hostname
scutil --get LocalHostName
# Example: MyMacBook
```

Use `http://MyMacBook.local:8080` in `PHYSICAL_DEVICE_API_URL`

> **Warning:** Android has unreliable mDNS support. Not recommended.

### Physical iOS Device

Same options as Physical Android:
- ngrok tunnel
- Mac's IP address

---

## Development Workflow Stages

```
┌─────────────────────────────────────────────────────────────┐
│  STAGE 1: LOCAL DEVELOPMENT                                 │
│  Cost: FREE | Speed: INSTANT                                │
├─────────────────────────────────────────────────────────────┤
│  • Run backend locally (dart_frog dev)                      │
│  • Test on Android EMULATOR or iOS SIMULATOR                │
│  • 90% of your development work happens here                │
│  • Fast iteration, hot reload supported                     │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│  STAGE 2: PHYSICAL DEVICE TESTING                           │
│  Cost: FREE/CHEAP | Speed: FAST                             │
├─────────────────────────────────────────────────────────────┤
│  • Use ngrok free tier OR update IP in .env                 │
│  • Test device-specific features:                           │
│    - Camera/microphone permissions                          │
│    - Push notifications                                     │
│    - Real performance/battery impact                        │
│    - Biometric authentication                               │
│  • Only when emulator testing isn't sufficient              │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│  STAGE 3: STAGING ON GLOBE.DEV                              │
│  Cost: PAY PER USAGE | Speed: SLOW                          │
├─────────────────────────────────────────────────────────────┤
│  • Deploy when feature is complete and tested locally       │
│  • Test with real cloud infrastructure                      │
│  • Pre-release validation                                   │
│  • Share with testers/stakeholders                          │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│  STAGE 4: PRODUCTION                                        │
│  Cost: PAY PER USAGE | Speed: N/A                           │
├─────────────────────────────────────────────────────────────┤
│  • Final deployment for end users                           │
│  • App store releases                                       │
└─────────────────────────────────────────────────────────────┘
```

### When to Use Each Stage

| Scenario | Recommended Stage |
|----------|-------------------|
| Writing new features | Stage 1 (Emulator) |
| Fixing bugs | Stage 1 (Emulator) |
| UI development | Stage 1 (Emulator) |
| Testing video calls | Stage 2 (Physical Device) |
| Testing camera/microphone | Stage 2 (Physical Device) |
| Performance profiling | Stage 2 (Physical Device) |
| QA testing before release | Stage 3 (Staging) |
| Beta testing with users | Stage 3 (Staging) |

---

## Cost Optimization

### Development Phase Costs

| Activity | Platform | Cost |
|----------|----------|------|
| Local backend | Mac | Free |
| Android emulator | Mac | Free |
| iOS simulator | Mac | Free |
| ngrok free tier | Cloud | Free (500 req/month) |
| Physical device testing | Local | Free |
| Globe.dev staging | Cloud | Pay per usage |

### Tips to Minimize Costs

1. **Do most development on emulator** - It's free and fast
2. **Batch physical device testing** - Test multiple features in one session
3. **Use ngrok free tier wisely** - 500 requests should cover occasional testing
4. **Deploy to staging only when ready** - Avoid frequent deploys during active development
5. **Use feature flags** - Test incomplete features locally before staging

---

## Troubleshooting

### App Stuck on Loading Spinner After Google Sign-In

**Cause:** Physical device cannot reach `localhost:8080`

**Solution:**
1. Check if using physical device: `flutter devices`
2. If physical device, use ngrok or Mac IP (see [Physical Android Device](#physical-android-device))

### Backend "Failed to fetch" Errors

**Cause:** Database connection or network issues

**Check:**
```bash
# Verify backend is running
curl http://localhost:8080/

# Check backend logs for errors
```

### Emulator Cannot Connect to Backend

**Cause:** Backend not running or firewall blocking

**Solution:**
1. Ensure backend is running on port 8080
2. Check `API_BASE_URL` in `.env` is `http://localhost:8080`
3. Restart the app after .env changes

### Hot Reload Not Working

**Cause:** Dart Frog dev mode stdin issues

**Solution:** Use production build instead:
```bash
dart_frog build && dart build/bin/server.dart
```

---

## Quick Reference

### Essential Commands

```bash
# Start backend (production)
cd backend && dart_frog build && dart build/bin/server.dart

# Start backend (dev with hot reload)
cd backend && dart_frog dev

# List devices
flutter devices

# Run on emulator
flutter run

# Run on specific device
flutter run -d <device_id>

# Get Mac IP
ifconfig | grep "inet " | grep -v 127.0.0.1

# Start ngrok tunnel
ngrok http 8080
```

### Environment Configuration

**File:** `.env`
```bash
# For emulators/simulators (always keep this as localhost)
API_BASE_URL=http://localhost:8080

# For physical devices (Mac IP or ngrok URL)
# Leave empty to fallback to API_BASE_URL
PHYSICAL_DEVICE_API_URL=http://192.168.x.x:8080
```

### Device-Specific API URL Resolution

| Device Type | Detection | URL Used |
|-------------|-----------|----------|
| Android Emulator | `isPhysicalDevice=false` | `API_BASE_URL` → 10.0.2.2 |
| iOS Simulator | `isPhysicalDevice=false` | `API_BASE_URL` |
| Physical Android | `isPhysicalDevice=true` | `PHYSICAL_DEVICE_API_URL` |
| Physical iOS | `isPhysicalDevice=true` | `PHYSICAL_DEVICE_API_URL` |

> **Note:** If `PHYSICAL_DEVICE_API_URL` is empty, physical devices fall back to `API_BASE_URL`

---

## Related Documentation

- [Mobile Development Setup](../mobile-development-setup.md)
- [Platform Setup](../PLATFORM_SETUP.md)
- [Troubleshooting](../troubleshooting/)

---

*Last updated: January 2026*
