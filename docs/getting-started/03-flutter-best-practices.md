# Flutter Best Practices & Common Bugs

> A reference guide compiled from code reviews. Use this checklist when building Flutter/Dart projects to avoid common pitfalls.

---

## Table of Contents

1. [Null Safety & Type Safety](#1-null-safety--type-safety)
2. [String Extensions](#2-string-extensions)
3. [Constants & Magic Strings](#3-constants--magic-strings)
4. [Error Handling](#4-error-handling)
5. [Network Layer](#5-network-layer)
6. [Dependency Management](#6-dependency-management)
7. [Code Organization](#7-code-organization)
8. [UI & Theming](#8-ui--theming)
9. [Validation](#9-validation)
10. [Testing Considerations](#10-testing-considerations)

---

## 1. Null Safety & Type Safety

### Don't return `null.toString()`

```dart
// BAD - returns literal string "null"
String get relativeDay {
  if (isToday) return 'Today';
  return null.toString(); // Returns "null" string!
}

// GOOD - use nullable return type
String? get relativeDay {
  if (isToday) return 'Today';
  return null; // Caller handles formatting
}
```

### Safe type casting from API responses

```dart
// BAD - crashes if server returns unexpected type
errors: errors.map(
  (key, value) => MapEntry(
    key,
    (value as List).cast<String>(), // TypeError if not List
  ),
),

// GOOD - handle unexpected types gracefully
errors: errors.map(
  (key, value) => MapEntry(
    key,
    value is List
        ? value.map((e) => e.toString()).toList()
        : [value.toString()],
  ),
),
```

### Guard against empty string access

```dart
// BAD - crashes on whitespace-only input
String get initials {
  final words = trim().split(RegExp(r'\s+'));
  return words[0][0].toUpperCase(); // RangeError on "   "
}

// GOOD - check for empty results
String get initials {
  if (isEmpty) return '';
  final words = trim().split(RegExp(r'\s+'));
  if (words.isEmpty || words.first.isEmpty) return '';
  return words[0][0].toUpperCase();
}
```

---

## 2. String Extensions

### Don't create redundant extensions on non-nullable types

```dart
// BAD - redundant on non-nullable String
extension StringX on String {
  bool get isNullOrEmpty => isEmpty;      // Just use isEmpty
  bool get isNotNullOrEmpty => isNotEmpty; // Just use isNotEmpty
}

// GOOD - only useful on nullable types
extension NullableStringX on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
```

---

## 3. Constants & Magic Strings

### Centralize storage keys in a dedicated file

```dart
// BAD - scattered magic strings
final token = storage.read(key: 'auth_token');
final completed = prefs.getBool('onboarding_completed');

// GOOD - centralized constants
// lib/core/constants/storage_keys.dart
abstract final class StorageKeys {
  static const String authToken = 'auth_token';
  static const String onboardingCompleted = 'onboarding_completed';
}

// Usage
final token = storage.read(key: StorageKeys.authToken);
```

### Place constants in `core/constants/` to avoid circular imports

```dart
// BAD - StorageKeys in providers file that exports other files
// lib/shared/providers/core_providers.dart
export 'dio_client.dart'; // dio_client needs StorageKeys = circular!
class StorageKeys { ... }

// GOOD - separate file in core layer
// lib/core/constants/storage_keys.dart
abstract final class StorageKeys { ... }
```

---

## 4. Error Handling

### Consistent toString() implementations

```dart
// BAD - inconsistent (ServerException has statusCode, AuthException doesn't)
class ServerException {
  String toString() => 'ServerException: $message (statusCode: $statusCode)';
}
class AuthException {
  String toString() => 'AuthException: $message'; // Missing statusCode!
}

// GOOD - consistent format across all exceptions
class AuthException {
  String toString() => 'AuthException: $message (statusCode: $statusCode)';
}
```

### Use dynamic resource identifiers in exceptions

```dart
// BAD - generic message
return NotFoundException(
  resource: 'Resource', // Unhelpful for debugging
);

// GOOD - specific context
return NotFoundException(
  resource: err.requestOptions.path, // "/api/users/123"
);
```

---

## 5. Network Layer

### Include all connection types in connectivity check

```dart
// BAD - VPN users shown as offline
bool _isConnected(List<ConnectivityResult> result) {
  return result.any((r) =>
      r == ConnectivityResult.mobile ||
      r == ConnectivityResult.wifi ||
      r == ConnectivityResult.ethernet);
}

// GOOD - include VPN
bool _isConnected(List<ConnectivityResult> result) {
  return result.any((r) =>
      r == ConnectivityResult.mobile ||
      r == ConnectivityResult.wifi ||
      r == ConnectivityResult.ethernet ||
      r == ConnectivityResult.vpn);
}
```

---

## 6. Dependency Management

### Never use `any` version constraint

```yaml
# BAD - can break unexpectedly
dependencies:
  intl: any

# GOOD - pin to specific range
dependencies:
  intl: ^0.20.0
```

### Don't repeat code - use extensions

```dart
// BAD - duplicate logic in Formatters class and Duration extension
class Formatters {
  static String duration(Duration d) {
    final hours = d.inHours;
    final minutes = d.inMinutes.remainder(60);
    // ... same logic as DurationX.formattedCompact
  }
}

// GOOD - delegate to extension
class Formatters {
  static String duration(Duration d) => d.formattedCompact;
}
```

---

## 7. Code Organization

### Clean Architecture layer rules

```
lib/
├── core/           # Shared infrastructure (no app imports!)
│   ├── constants/  # StorageKeys, Enums, etc.
│   ├── errors/     # Exceptions, Failures
│   ├── extensions/ # Dart extensions
│   ├── network/    # Dio, NetworkInfo
│   └── utils/      # Formatters, Validators
│
├── app/            # App configuration
│   ├── theme/      # AppTheme (can import core)
│   └── router.dart
│
├── shared/         # Shared widgets & providers
│   └── providers/  # Core providers (exports core)
│
└── features/       # Feature modules
```

**Rule:** `core/` should NEVER import from `app/` or `features/`

---

## 8. UI & Theming

### Use const colors when theme dependency isn't possible

```dart
// BAD - generic color
backgroundColor: Colors.green,

// BETTER - Material Design color (when theme import not possible)
backgroundColor: const Color(0xFF4CAF50), // Material Green 500

// BEST - use theme (only in app/features layer)
backgroundColor: Theme.of(context).colorScheme.primary,
```

### Be consistent with error/success colors

```dart
// BAD - error uses theme, success uses hardcoded
void showErrorSnackBar() {
  backgroundColor: colorScheme.error; // Theme
}
void showSuccessSnackBar() {
  backgroundColor: Colors.green; // Hardcoded
}

// GOOD - both use same approach
void showErrorSnackBar() {
  backgroundColor: colorScheme.error;
}
void showSuccessSnackBar() {
  backgroundColor: const Color(0xFF4CAF50); // Or add to ColorScheme
}
```

---

## 9. Validation

### Error messages must match validation logic

```dart
// BAD - regex allows apostrophe but message doesn't mention it
final nameRegex = RegExp(r"^[a-zA-Z\s\-']+$");
return 'Name can only contain letters, spaces, and hyphens';

// GOOD - message matches regex
final nameRegex = RegExp(r"^[a-zA-Z\s\-']+$");
return 'Name can only contain letters, spaces, hyphens, and apostrophes';
```

---

## 10. Testing Considerations

### Things to test for

| Category | Test Cases |
|----------|------------|
| String extensions | Empty string, whitespace-only, single char, unicode |
| API error handling | 401, 404, 422 with various response shapes |
| Connectivity | All ConnectivityResult types including VPN |
| Date extensions | Leap years, month boundaries, timezone edge cases |
| Validators | Valid inputs, boundary cases, special characters |

---

## Quick Checklist

Before submitting a PR, verify:

- [ ] No `null.toString()` calls
- [ ] No magic strings (use constants)
- [ ] Constants in separate files to avoid circular imports
- [ ] Safe type casting from API responses
- [ ] Guard against empty string/list access
- [ ] Pinned dependency versions (no `any`)
- [ ] No duplicate code (use extensions/shared methods)
- [ ] Consistent toString() in exception classes
- [ ] Include VPN in connectivity checks
- [ ] Error messages match validation logic
- [ ] No redundant extensions on non-nullable types

---

## References

- [Effective Dart](https://dart.dev/effective-dart)
- [Flutter Style Guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)
- [Clean Architecture in Flutter](https://resocoder.com/flutter-clean-architecture-tdd/)

---

*Last updated: December 2025*
*Compiled from Gemini Code Assist reviews*
