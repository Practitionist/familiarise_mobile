# Prisma Setup and Troubleshooting Guide

This document chronicles the complete setup process for Prisma Dart ORM in a Flutter macOS application, including all errors encountered and their resolutions.

## Initial Setup

### 1. Dependencies Added to `pubspec.yaml`
```yaml
dependencies:
  orm: ^5.3.4  # Prisma Dart client
```

### 2. Prisma Schema Configuration
Created `prisma/schema.prisma` with the following generator configuration:

```prisma
generator client {
  provider = "flutter pub run orm"
  output   = "../lib/_generated_prisma_client"
}

datasource db {
  provider  = "postgresql"
  url       = env("DATABASE_URL")
  directUrl = env("DIRECT_URL")
}
```

### 3. Generated Prisma Client
```bash
npx prisma generate
```

## Errors Encountered and Resolutions

### Error 1: Generator Configuration Issue
**Error Message:**
```
Generator "dart run orm" failed:
Because familiarise_mobile depends on flutter_test from sdk which doesn't exist (the Flutter SDK is not available), version solving failed.
Flutter users should use `flutter pub` instead of `dart pub`.
```

**Root Cause:** The Prisma schema was configured to use `dart run orm` instead of `flutter pub run orm`.

**Resolution:** Updated the generator in `prisma/schema.prisma`:
```prisma
generator client {
  provider = "flutter pub run orm"  # Changed from "dart run orm"
  output   = "../lib/_generated_prisma_client"
}
```

### Error 2: Missing PrismaService Class
**Error Messages:**
```
Target of URI doesn't exist: 'services/prisma_service.dart'
Undefined name 'PrismaService'
```

**Root Cause:** The `PrismaService` class file was missing but referenced in `main.dart` and other files.

**Resolution:** Restored the `PrismaService` class from backup file:
```bash
cp lib/services/prisma_service.dart.backup lib/services/prisma_service.dart
```

### Error 3: QE404 - Prisma Query Engine Binary Not Found (Primary Issue)
**Error Message:**
```
PrismaClientInitializationError: QE404 No binary engine found, please make sure any of the following locations contain the executable file: {prisma-query-engine, prisma/prisma-query-engine, .dart_tool/prisma-query-engine}
```

**Root Cause:** Prisma Dart ORM requires a native query engine binary to be available at runtime. In Flutter macOS apps, this is complicated by the app sandbox environment.

**Investigation Steps Taken:**

1. **Initial Binary Placement:** Copied the binary to `.dart_tool/prisma-query-engine`
   ```bash
   cp prisma-query-engine .dart_tool/prisma-query-engine
   chmod +x .dart_tool/prisma-query-engine
   ```

2. **Working Directory Analysis:** Added debugging code to understand the runtime environment:
   ```dart
   final currentDir = Directory.current.path;
   print('DEBUG: Current working directory: $currentDir');
   ```
   
   **Finding:** macOS Flutter apps run in a sandboxed container:
   ```
   Current working directory: /Users/kaustavghosh/Library/Containers/com.example.familiariseMobile/Data
   ```

3. **Sandbox File Access Issue:** Attempted to copy binary at runtime from project to sandbox:
   ```
   PathAccessException: Cannot copy file to '/Users/kaustavghosh/Library/Containers/com.example.familiariseMobile/Data/prisma-query-engine'
   Operation not permitted, errno = 1
   ```

4. **Latest Debug Output (Bundle Detection Attempt):** From the most recent run after implementing bundle resource logic:
   ```
   DEBUG: Current working directory: /Users/kaustavghosh/Library/Containers/com.example.familiariseMobile/Data
   DEBUG: Found binary at /Users/kaustavghosh/Desktop/familiarise_mobile/prisma-query-engine, copying to sandbox...
   DEBUG: Error copying binary: PathAccessException: Cannot copy file to '/Users/kaustavghosh/Library/Containers/com.example.familiariseMobile/Data/prisma-query-engine', path = '/Users/kaustavghosh/Desktop/familiarise_mobile/prisma-query-engine' (OS Error: Operation not permitted, errno = 1)
   DEBUG: Failed to copy binary - Prisma will try default locations
   ```
   
   **Analysis:** The bundle binary detection is not finding the binary in app resources, falling back to development paths which fail due to sandbox restrictions.

### Current Status: Unresolved macOS Sandbox Issue

**Problem:** macOS app sandboxing prevents:
- Access to files outside the app container
- Runtime copying of binaries from the development directory
- Dynamic loading of native binaries not bundled with the app

**Attempted Solutions:**
1.  Corrected generator configuration
2.  Restored PrismaService class
3.  Placed binaries in expected locations
4.  Added runtime binary copying logic
5. L **Blocked by sandbox permissions**

## Platform-Specific Solutions

### macOS Platform
**Current Status:** ❌ **UNRESOLVED** - Sandbox restrictions prevent binary access

**Challenges:**
- App sandboxing prevents file system access outside container
- Bundle resource detection not working (binary not found in app bundle)
- Runtime binary copying blocked by permission restrictions

**Attempted Solutions:**
1. ✅ Bundle binary as app resource (`macos/Runner/Resources/`)
2. ❌ Runtime binary copying (blocked by sandbox)
3. ❌ Bundle binary detection (paths not found)

**Debug Output:**
```
DEBUG: Current working directory: /Users/kaustavghosh/Library/Containers/com.example.familiariseMobile/Data
DEBUG: Found binary at /Users/kaustavghosh/Desktop/familiarise_mobile/prisma-query-engine, copying to sandbox...
DEBUG: Error copying binary: PathAccessException: Operation not permitted, errno = 1
```

### Windows Platform
**Current Status:** 🚧 **NOT TESTED**

**Expected Challenges:**
- Similar binary engine requirement
- Different file system permissions
- Windows app sandboxing considerations

**Planned Solutions:**
1. Bundle binary as Windows app resource
2. Copy binary to writable temp directory
3. Set executable permissions via PowerShell/cmd

### Linux Platform  
**Current Status:** 🚧 **NOT TESTED**

**Expected Challenges:**
- Similar binary engine requirement
- Linux-specific file permissions
- Different executable formats

**Planned Solutions:**
1. Bundle binary as Linux app resource
2. Copy to `/tmp` or user-writable directory
3. Set executable permissions via `chmod`

### Mobile Platforms (iOS/Android)
**Current Status:** 🚧 **NOT TESTED**

**Expected Status:** ❌ **LIKELY UNSUPPORTED**
- Mobile platforms typically don't support native query engines
- Prisma Dart ORM may not work on mobile
- Should use direct database connections or REST APIs

## Current Working Solution Approaches

### Option 1: Bundle Binary as macOS App Resource (Recommended) ✅ IMPLEMENTED
This requires modifying the macOS app bundle to include the Prisma query engine as a bundled resource:

1. **✅ Add binary to macOS bundle resources**
   ```bash
   mkdir -p macos/Runner/Resources
   cp prisma-query-engine macos/Runner/Resources/prisma-query-engine
   ```

2. **✅ Extract from bundle to temporary location at runtime**
   - Updated `PrismaService._copyBinaryToSandbox()` method
   - Added `_getBundleBinaryPath()` to locate binary in app bundle
   - Attempts to copy from bundle resources first, then fallback to development paths

3. **✅ Set executable permissions**
   ```dart
   await Process.run('chmod', ['+x', targetPath]);
   ```

4. **✅ Configure Prisma to use the extracted binary**
   ```dart
   Platform.environment['PRISMA_QUERY_ENGINE_BINARY'] = targetPath;
   ```

**Status:** Implemented but requires Xcode project configuration to include the binary as a bundled resource.

### Option 2: Disable Prisma for macOS (Temporary Workaround)
Use Supabase-only mode for macOS development:

```dart
if (Platform.isMacOS) {
  print('macOS detected - using Supabase only mode');
  // Skip Prisma initialization
} else {
  await PrismaService.initialize();
}
```

### Option 3: Development vs Production Configuration
Use different database access methods:
- **Development (macOS):** Direct Supabase REST API
- **Production (Mobile):** Prisma ORM with pre-bundled binary

## Technical Details

### Prisma Binary Search Logic
The ORM library searches for the binary in this order:
1. `{currentDirectory}/prisma-query-engine`
2. `{currentDirectory}/prisma/prisma-query-engine`
3. `{currentDirectory}/.dart_tool/prisma-query-engine`
4. `{projectRoot}/prisma-query-engine`
5. `{projectRoot}/prisma/prisma-query-engine`
6. `{projectRoot}/.dart_tool/prisma-query-engine`

### macOS Sandbox Limitations
- Apps run in `/Users/{user}/Library/Containers/{app-id}/Data`
- No access to development project directory
- Binary files must be bundled with the app or downloaded at runtime
- Requires code signing for native executables

## Current PrismaService Implementation

The service now includes platform-specific initialization logic:

```dart
class PrismaService {
  static Future<void> initialize({String? databaseUrl}) async {
    try {
      // Platform-specific initialization
      if (Platform.isMacOS) {
        await _initializeMacOS(databaseUrl);
      } else if (Platform.isWindows) {
        await _initializeWindows(databaseUrl);
      } else if (Platform.isLinux) {
        await _initializeLinux(databaseUrl);
      } else if (Platform.isIOS || Platform.isAndroid) {
        throw Exception('Prisma ORM is not supported on mobile platforms. Use direct database connections or REST APIs.');
      } else {
        await _initializeDefault(databaseUrl);
      }
    } catch (e) {
      print('Failed to initialize Prisma: $e');
      rethrow;
    }
  }

  // === macOS Platform Initialization ===
  static Future<void> _initializeMacOS(String? databaseUrl) async {
    print('DEBUG: Initializing Prisma for macOS platform');
    final currentDir = Directory.current.path;
    print('DEBUG: Current working directory: $currentDir');
    
    // Enhanced bundle binary detection with 10+ possible paths
    bool binaryCopied = await _copyBinaryToSandboxMacOS(targetPath);
    
    if (binaryCopied) {
      Platform.environment['PRISMA_QUERY_ENGINE_BINARY'] = targetPath;
    }
    
    await _connectPrismaClient(databaseUrl);
  }
}
```

### Enhanced Bundle Detection

The updated service now checks **10+ possible bundle locations**:
- Standard app bundle paths (`../Resources/`, `../../Resources/`)
- Flutter-specific locations (`flutter_assets/`)
- Alternative bundle structures (`Contents/Resources/`)
- Framework locations (`Frameworks/App.framework/Resources/`)

## Next Steps

1. **Immediate:** Implement macOS app bundle resource inclusion
2. **Short-term:** Create platform-specific database access strategies
3. **Long-term:** Consider hybrid approach with Prisma for mobile and direct PostgreSQL for desktop

## Environment Information

- **Prisma Dart ORM Version:** 5.3.4
- **Flutter Version:** Latest stable
- **macOS Target:** arm64 (Apple Silicon)
- **Database:** PostgreSQL (Supabase)
- **Binary Architecture:** Mach-O 64-bit executable arm64

---

*This document will be updated as solutions are implemented and tested.*