# Flutter Project Common Issues & Fixes

This document catalogues common problems encountered during Flutter development with Supabase OAuth integration and their solutions.

## Critical Build Fixes

### 1. OAuth Provider Import Errors

**Problem**: Compilation errors with undefined `Provider` enum:
```
lib/services/auth/oauth_service.dart:49:21: Error: The getter 'Provider' isn't defined for the class 'OAuthService'.
```

**Root Cause**: Using incorrect OAuth provider enum from Supabase Flutter SDK.

**Solution**: Use `OAuthProvider` instead of `Provider`:
```dart
// ❌ Incorrect
provider: Provider.facebook,
provider: Provider.apple,

// ✅ Correct
provider: OAuthProvider.facebook,
provider: OAuthProvider.apple,
```

**Files Fixed**:
- `lib/services/auth/oauth_service.dart:49`
- `lib/services/auth/oauth_service.dart:74`

### 2. Android NDK Version Mismatch

**Problem**: Build failure due to NDK version conflicts:
```
Your project is configured with Android NDK 26.3.11579264, but the following plugin(s) depend on a different Android NDK version:
- app_links requires Android NDK 27.0.12077973
- flutter_facebook_auth requires Android NDK 27.0.12077973
- google_sign_in_android requires Android NDK 27.0.12077973
```

**Root Cause**: OAuth plugins require newer NDK version than project default.

**Solution**: Update NDK version in `android/app/build.gradle.kts`:
```kotlin
android {
    namespace = "com.example.familiarise_mobile"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"  // Updated from flutter.ndkVersion
}
```

**Impact**: Resolves all OAuth plugin compatibility issues.

## Code Quality Issues

### 3. Deprecated withOpacity() Method

**Problem**: Flutter analyzer warnings about deprecated method:
```
info • 'withOpacity' is deprecated and shouldn't be used. Use .withValues() to avoid precision loss
```

**Root Cause**: Flutter deprecated `withOpacity()` in favor of `withValues()` for better precision.

**Solution**: Replace all instances:
```dart
// ❌ Deprecated
Colors.black.withOpacity(0.05)
Colors.white.withOpacity(0.3)

// ✅ Current
Colors.black.withValues(alpha: 0.05)
Colors.white.withValues(alpha: 0.3)
```

**Files Fixed**:
- `lib/screens/auth/login_screen.dart`
- `lib/screens/auth/register_screen.dart`
- `lib/screens/home_screen.dart`
- `lib/screens/booking_screen.dart`
- `lib/screens/video_call_screen.dart`

**Impact**: Reduced Flutter analyzer issues from 64 to 2.

### 4. Dead Null-Aware Expression

**Problem**: Warning about unnecessary null check:
```
warning • The left operand can't be null, so the right operand is never executed • lib/screens/explore_experts_screen.dart:300:47 • dead_null_aware_expression
```

**Root Cause**: Using null-aware operator on non-nullable field.

**Solution**: Remove unnecessary null check:
```dart
// ❌ Unnecessary null check
(consultant.rating ?? 0).toStringAsFixed(1)

// ✅ Direct access (rating is non-nullable)
consultant.rating.toStringAsFixed(1)
```

### 5. Production Print Statements

**Problem**: Print statements in production code trigger linting warnings.

**Solutions**:

**For Production Code**: Replace with comments:
```dart
// ❌ Print in production
print('Error searching consultants: $e');

// ✅ Comment for production
// Error searching consultants: $e
```

**For Debug Scripts**: Add lint suppression:
```dart
// ignore_for_file: avoid_print
import 'package:supabase_flutter/supabase_flutter.dart';
```

## Repository Management

### 6. Git Ignore Optimization

**Problem**: Build artifacts and temporary files tracked in git.

**Solution**: Enhanced `.gitignore` patterns:
```gitignore
# Android Kotlin build artifacts
android/.kotlin/

# Implementation summary and generated files
IMPLEMENTATION_SUMMARY.md
```

## System-Level Issues

### 7. Java VM Crashes During Build

**Problem**: JVM SIGBUS errors during Gradle builds:
```
# A fatal error has been detected by the Java Runtime Environment:
#  SIGBUS (0x7) at pc=0x000072621b14c7b2, pid=66248, tid=66261
```

**Root Cause**: System-level memory or hardware issues, not code-related.

**Solutions**:
1. **Increase JVM memory**: Add to `android/gradle.properties`:
   ```properties
   org.gradle.jvmargs=-Xmx4g -XX:MaxMetaspaceSize=512m
   ```

2. **Use different build target**:
   ```bash
   flutter build apk --debug --target-platform android-arm
   ```

3. **Clean and retry**:
   ```bash
   flutter clean
   flutter pub get
   flutter build apk --debug
   ```

## Flutter + Supabase Integration Best Practices

### OAuth Service Implementation

1. **Always use Supabase's OAuth enums**:
   ```dart
   import 'package:supabase_flutter/supabase_flutter.dart';
   
   // Use OAuthProvider, not custom Provider enum
   provider: OAuthProvider.google,
   ```

2. **Handle OAuth errors gracefully**:
   ```dart
   try {
     final AuthResponse response = await _client.auth.signInWithIdToken(
       provider: OAuthProvider.google,
       idToken: googleAuth.idToken!,
       accessToken: googleAuth.accessToken,
     );
   } catch (e) {
     throw OAuthException('Google sign-in failed: ${e.toString()}');
   }
   ```

3. **Implement proper user creation/retrieval**:
   ```dart
   Future<User?> _getOrCreateUserFromSupabaseUser(User supabaseUser) async {
     final userResponse = await _client
         .from('users')
         .select()
         .eq('id', supabaseUser.id)
         .maybeSingle();
     
     if (userResponse != null) {
       return User.fromJson(userResponse);
     } else {
       // Create new user with OAuth metadata
       final newUserData = {
         'id': supabaseUser.id,
         'email': supabaseUser.email,
         'name': supabaseUser.userMetadata?['full_name'] ?? 
                 supabaseUser.email?.split('@').first,
         // ... other fields
       };
       // Insert and return
     }
   }
   ```

## Troubleshooting Checklist

### Before Starting Development
- [ ] Verify NDK version compatibility with OAuth plugins
- [ ] Check Flutter and Dart SDK versions
- [ ] Ensure Supabase project configuration is correct

### During Development
- [ ] Run `flutter analyze` frequently
- [ ] Use `withValues()` instead of deprecated `withOpacity()`
- [ ] Avoid print statements in production code
- [ ] Use proper null-safety patterns

### Build Issues
- [ ] Check NDK version in `build.gradle.kts`
- [ ] Verify OAuth provider imports use Supabase enums
- [ ] Clean build if encountering system errors: `flutter clean`
- [ ] Monitor JVM memory usage during builds

### Post-Development
- [ ] Run final `flutter analyze --no-fatal-infos`
- [ ] Test OAuth flows with actual providers
- [ ] Verify database integration with verification scripts
- [ ] Update `.gitignore` for new artifacts

## Prevention Strategies

1. **Use IDE Extensions**:
   - Flutter/Dart extensions with real-time linting
   - Automatic import organization
   - Deprecation warnings

2. **CI/CD Integration**:
   - Automated `flutter analyze` checks
   - Build verification on multiple platforms
   - Dependency vulnerability scanning

3. **Regular Maintenance**:
   - Update dependencies monthly
   - Review Flutter deprecation announcements
   - Monitor Supabase SDK changes

4. **Documentation**:
   - Document custom OAuth configurations
   - Maintain changelog of dependency updates
   - Create troubleshooting runbooks

## Summary

This project successfully resolved:
- ✅ OAuth Provider import errors (2 critical fixes)
- ✅ Android NDK compatibility (1 critical fix)
- ✅ Deprecated API usage (29+ fixes across multiple files)
- ✅ Code quality issues (reduced from 64 to 2 warnings)
- ✅ Repository management improvements

The fixes ensure compatibility with modern Flutter SDK versions while maintaining proper OAuth integration with Supabase.