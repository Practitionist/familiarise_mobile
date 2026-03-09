# Phase 1: Core Infrastructure

## Overview

This phase establishes the foundational architecture for the Familiarise Mobile Flutter application. You will set up the project structure following Clean Architecture principles, implement error handling, configure the networking layer, and create core utilities that all subsequent phases will depend on.

**Target Completion:** Foundation for all other phases
**Dependencies:** None (this is the first phase)
**Platforms:** iOS 14+, Android API 24+
**Flutter Version:** 3.24.x (Dart 3.5.x)

---

## Project Context

Familiarise Mobile is a consultation/mentorship marketplace app where **consultees** (users seeking expert advice) can:
- Browse and discover consultants
- Book 1-on-1 video consultations
- Subscribe to ongoing mentorship
- Attend webinars and classes
- Chat with consultants

The app shares the same PostgreSQL database (via Supabase) as the existing Next.js web application.

---

## 1. Project Setup

### 1.1 Create Flutter Project

```bash
flutter create familiarise_mobile --org com.familiarise --platforms ios,android
cd familiarise_mobile
```

### 1.2 Flutter Version Configuration

Create `.fvmrc` for Flutter Version Management:

```json
{
  "flutter": "3.24.0",
  "flavors": {}
}
```

### 1.3 Required Dependencies

Add to `pubspec.yaml`:

```yaml
name: familiarise_mobile
description: Familiarise - Find Your Mentor
version: 1.0.0+1

environment:
  sdk: '>=3.5.0 <4.0.0'
  flutter: '>=3.24.0'

dependencies:
  flutter:
    sdk: flutter

  # State Management
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.5

  # Navigation
  go_router: ^14.2.0

  # Code Generation
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0

  # Networking
  dio: ^5.4.3+1
  connectivity_plus: ^6.0.3

  # Local Storage
  flutter_secure_storage: ^9.2.2
  shared_preferences: ^2.2.3

  # Environment Variables
  envied: ^0.5.4+1

  # Utilities
  fpdart: ^1.1.0           # Functional programming (Either, Option)
  equatable: ^2.0.5
  uuid: ^4.4.0
  intl: ^0.19.0
  logger: ^2.3.0
  cached_network_image: ^3.3.1

  # UI Components
  flutter_svg: ^2.0.10+1
  shimmer: ^3.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0

  # Code Generation
  build_runner: ^2.4.11
  riverpod_generator: ^2.4.0
  freezed: ^2.5.2
  json_serializable: ^6.8.0
  envied_generator: ^0.5.4+1

  # Testing
  mocktail: ^1.0.3

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: Inter
      fonts:
        - asset: assets/fonts/Inter-Regular.ttf
          weight: 400
        - asset: assets/fonts/Inter-Medium.ttf
          weight: 500
        - asset: assets/fonts/Inter-SemiBold.ttf
          weight: 600
        - asset: assets/fonts/Inter-Bold.ttf
          weight: 700
```

### 1.4 Run Code Generation

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

---

## 2. Project Structure

Create the following directory structure:

```
lib/
├── main.dart                 # App entry point
├── app/                      # App-level configuration
│   ├── app.dart              # MaterialApp widget
│   ├── router.dart           # GoRouter configuration
│   └── theme/                # Theme data, colors, typography
│       ├── app_theme.dart
│       ├── app_colors.dart
│       └── app_typography.dart
│
├── core/                     # Shared infrastructure
│   ├── config/               # Environment, API config
│   │   └── env_config.dart
│   ├── constants/            # App constants, enums
│   │   ├── app_constants.dart
│   │   ├── enums.dart
│   │   └── storage_keys.dart
│   ├── errors/               # Failure types, exceptions
│   │   ├── failures.dart
│   │   └── exceptions.dart
│   ├── network/              # HTTP client, interceptors
│   │   ├── dio_client.dart
│   │   ├── api_endpoints.dart
│   │   └── interceptors/
│   │       ├── auth_interceptor.dart
│   │       └── logging_interceptor.dart
│   ├── utils/                # Utilities
│   │   ├── validators.dart
│   │   ├── date_utils.dart
│   │   └── currency_utils.dart
│   └── extensions/           # Dart extensions
│       ├── string_extensions.dart
│       ├── context_extensions.dart
│       └── date_extensions.dart
│
├── data/                     # Data layer
│   ├── datasources/          # Remote and local data sources
│   │   ├── local/
│   │   └── remote/
│   ├── models/               # Data transfer objects (DTOs)
│   └── repositories/         # Repository implementations
│
├── domain/                   # Business logic layer
│   ├── entities/             # Business entities
│   ├── repositories/         # Repository interfaces
│   └── usecases/             # Use case classes (optional)
│
├── features/                 # Feature modules
│   ├── auth/
│   ├── onboarding/
│   ├── explore/
│   ├── booking/
│   ├── checkout/
│   ├── dashboard/
│   ├── meetings/
│   ├── chat/
│   └── profile/
│
└── shared/                   # Shared widgets and providers
    ├── widgets/              # Reusable UI components
    └── providers/            # Global providers
```

Create all directories:

```bash
mkdir -p lib/{app/theme,core/{config,constants,errors,network/interceptors,utils,extensions},data/{datasources/{local,remote},models,repositories},domain/{entities,repositories,usecases},features/{auth,onboarding,explore,booking,checkout,dashboard,meetings,chat,profile},shared/{widgets,providers}}
mkdir -p assets/{images,icons,fonts}
mkdir -p test/{data,domain,features}
```

---

## 3. Environment Configuration

### 3.1 Create Environment File

Create `.env` in project root (add to `.gitignore`):

```env
# API Configuration
API_BASE_URL=https://api.familiarise.com
BACKEND_BASE_URL=http://localhost:8080

# Supabase (Fallback)
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key

# External Services
STREAM_API_KEY=your-stream-api-key
RAZORPAY_KEY_ID=your-razorpay-key
STRIPE_PUBLISHABLE_KEY=pk_test_xxx

# Feature Flags
ENABLE_ANALYTICS=true
DEBUG_MODE=true
```

### 3.2 Environment Configuration Class

Create `lib/core/config/env_config.dart`:

```dart
import 'package:envied/envied.dart';

part 'env_config.g.dart';

@Envied(path: '.env')
abstract class EnvConfig {
  @EnviedField(varName: 'API_BASE_URL')
  static const String apiBaseUrl = _EnvConfig.apiBaseUrl;

  @EnviedField(varName: 'BACKEND_BASE_URL')
  static const String backendBaseUrl = _EnvConfig.backendBaseUrl;

  @EnviedField(varName: 'SUPABASE_URL')
  static const String supabaseUrl = _EnvConfig.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static const String supabaseAnonKey = _EnvConfig.supabaseAnonKey;

  @EnviedField(varName: 'STREAM_API_KEY')
  static const String streamApiKey = _EnvConfig.streamApiKey;

  @EnviedField(varName: 'RAZORPAY_KEY_ID')
  static const String razorpayKeyId = _EnvConfig.razorpayKeyId;

  @EnviedField(varName: 'STRIPE_PUBLISHABLE_KEY')
  static const String stripePublishableKey = _EnvConfig.stripePublishableKey;

  @EnviedField(varName: 'ENABLE_ANALYTICS', defaultValue: 'false')
  static const String enableAnalytics = _EnvConfig.enableAnalytics;

  @EnviedField(varName: 'DEBUG_MODE', defaultValue: 'false')
  static const String debugMode = _EnvConfig.debugMode;

  static bool get isDebugMode => debugMode.toLowerCase() == 'true';
  static bool get isAnalyticsEnabled => enableAnalytics.toLowerCase() == 'true';
}
```

---

## 4. Constants and Enums

### 4.1 App Constants

Create `lib/core/constants/app_constants.dart`:

```dart
abstract class AppConstants {
  // API
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Validation
  static const int minPasswordLength = 8;
  static const int maxNameLength = 100;
  static const int maxBioLength = 500;

  // Session
  static const Duration sessionMaxAge = Duration(days: 30);
  static const Duration tokenRefreshThreshold = Duration(days: 7);

  // UI
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration snackBarDuration = Duration(seconds: 4);

  // Meetings
  static const Duration meetingJoinBeforeMinutes = Duration(minutes: 15);

  // Deep Links
  static const String deepLinkScheme = 'familiarise';
  static const String universalLinkHost = 'familiarise.com';
}
```

### 4.2 Storage Keys

Create `lib/core/constants/storage_keys.dart`:

```dart
abstract class StorageKeys {
  // Auth
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';
  static const String sessionExpiry = 'session_expiry';

  // User Preferences
  static const String themeMode = 'theme_mode';
  static const String locale = 'locale';
  static const String notificationsEnabled = 'notifications_enabled';

  // Onboarding
  static const String onboardingCompleted = 'onboarding_completed';
  static const String onboardingStep = 'onboarding_step';

  // Cache
  static const String cachedUser = 'cached_user';
  static const String lastSync = 'last_sync';
}
```

### 4.3 Enums

Create `lib/core/constants/enums.dart`:

```dart
/// User roles in the system
enum UserRole {
  consultant,
  consultee,
  admin,
  staff;

  String get value => name.toUpperCase();

  static UserRole fromString(String value) {
    return UserRole.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => UserRole.consultee,
    );
  }
}

/// Gender options
enum Gender {
  male,
  female,
  nonBinary,
  preferNotToSay;

  String get displayName {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.nonBinary:
        return 'Non-binary';
      case Gender.preferNotToSay:
        return 'Prefer not to say';
    }
  }

  String get value {
    switch (this) {
      case Gender.male:
        return 'MALE';
      case Gender.female:
        return 'FEMALE';
      case Gender.nonBinary:
        return 'NON_BINARY';
      case Gender.preferNotToSay:
        return 'PREFER_NOT_TO_SAY';
    }
  }

  static Gender fromString(String? value) {
    if (value == null) return Gender.preferNotToSay;
    return Gender.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => Gender.preferNotToSay,
    );
  }
}

/// Career stage for consultee profiles
enum CareerStage {
  student,
  earlyCareer,
  midCareer,
  senior,
  executive;

  String get displayName {
    switch (this) {
      case CareerStage.student:
        return 'Student';
      case CareerStage.earlyCareer:
        return 'Early Career';
      case CareerStage.midCareer:
        return 'Mid Career';
      case CareerStage.senior:
        return 'Senior';
      case CareerStage.executive:
        return 'Executive';
    }
  }

  String get value {
    switch (this) {
      case CareerStage.student:
        return 'STUDENT';
      case CareerStage.earlyCareer:
        return 'EARLY_CAREER';
      case CareerStage.midCareer:
        return 'MID_CAREER';
      case CareerStage.senior:
        return 'SENIOR';
      case CareerStage.executive:
        return 'EXECUTIVE';
    }
  }

  static CareerStage fromString(String? value) {
    if (value == null) return CareerStage.student;
    return CareerStage.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => CareerStage.student,
    );
  }
}

/// Appointment types
enum AppointmentType {
  consultation,
  subscription,
  webinar,
  classSession;

  String get value {
    switch (this) {
      case AppointmentType.consultation:
        return 'CONSULTATION';
      case AppointmentType.subscription:
        return 'SUBSCRIPTION';
      case AppointmentType.webinar:
        return 'WEBINAR';
      case AppointmentType.classSession:
        return 'CLASS';
    }
  }

  static AppointmentType fromString(String value) {
    return AppointmentType.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => AppointmentType.consultation,
    );
  }
}

/// Request status for appointments
enum RequestStatus {
  pending,
  approved,
  approvedPendingPayment,
  scheduled,
  rejected,
  cancelled,
  expired;

  String get value {
    switch (this) {
      case RequestStatus.pending:
        return 'PENDING';
      case RequestStatus.approved:
        return 'APPROVED';
      case RequestStatus.approvedPendingPayment:
        return 'APPROVED_PENDING_PAYMENT';
      case RequestStatus.scheduled:
        return 'SCHEDULED';
      case RequestStatus.rejected:
        return 'REJECTED';
      case RequestStatus.cancelled:
        return 'CANCELLED';
      case RequestStatus.expired:
        return 'EXPIRED';
    }
  }

  static RequestStatus fromString(String value) {
    return RequestStatus.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => RequestStatus.pending,
    );
  }
}

/// Payment status
enum PaymentStatus {
  pending,
  succeeded,
  failed;

  String get value => name.toUpperCase();

  static PaymentStatus fromString(String value) {
    return PaymentStatus.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => PaymentStatus.pending,
    );
  }
}

/// Payment gateway
enum PaymentGateway {
  stripe,
  razorpay,
  lemonSqueezy,
  xflow,
  card;

  String get value => name.toUpperCase();

  static PaymentGateway fromString(String value) {
    return PaymentGateway.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => PaymentGateway.razorpay,
    );
  }
}
```

---

## 5. Error Handling

### 5.1 Exceptions

Create `lib/core/errors/exceptions.dart`:

```dart
/// Base class for all app exceptions
abstract class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic originalError;
  final StackTrace? stackTrace;

  const AppException({
    required this.message,
    this.code,
    this.originalError,
    this.stackTrace,
  });

  @override
  String toString() => 'AppException: $message (code: $code)';
}

/// Server-related exceptions
class ServerException extends AppException {
  final int? statusCode;

  const ServerException({
    required super.message,
    this.statusCode,
    super.code,
    super.originalError,
    super.stackTrace,
  });

  factory ServerException.fromStatusCode(int statusCode, [String? message]) {
    final defaultMessage = _getDefaultMessage(statusCode);
    return ServerException(
      message: message ?? defaultMessage,
      statusCode: statusCode,
      code: 'HTTP_$statusCode',
    );
  }

  static String _getDefaultMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request. Please check your input.';
      case 401:
        return 'Unauthorized. Please sign in again.';
      case 403:
        return 'Access forbidden.';
      case 404:
        return 'Resource not found.';
      case 409:
        return 'Conflict. This resource already exists.';
      case 422:
        return 'Validation failed. Please check your input.';
      case 429:
        return 'Too many requests. Please try again later.';
      case 500:
        return 'Server error. Please try again later.';
      case 502:
        return 'Bad gateway. Please try again later.';
      case 503:
        return 'Service unavailable. Please try again later.';
      default:
        return 'An unexpected error occurred.';
    }
  }
}

/// Network-related exceptions
class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection. Please check your network.',
    super.code = 'NETWORK_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Cache-related exceptions
class CacheException extends AppException {
  const CacheException({
    super.message = 'Failed to access local storage.',
    super.code = 'CACHE_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Authentication exceptions
class AuthException extends AppException {
  const AuthException({
    required super.message,
    super.code = 'AUTH_ERROR',
    super.originalError,
    super.stackTrace,
  });

  factory AuthException.invalidCredentials() => const AuthException(
        message: 'Invalid email or password.',
        code: 'INVALID_CREDENTIALS',
      );

  factory AuthException.sessionExpired() => const AuthException(
        message: 'Your session has expired. Please sign in again.',
        code: 'SESSION_EXPIRED',
      );

  factory AuthException.emailAlreadyExists() => const AuthException(
        message: 'An account with this email already exists.',
        code: 'EMAIL_EXISTS',
      );

  factory AuthException.weakPassword() => const AuthException(
        message: 'Password is too weak. Please use a stronger password.',
        code: 'WEAK_PASSWORD',
      );
}

/// Validation exceptions
class ValidationException extends AppException {
  final Map<String, List<String>>? fieldErrors;

  const ValidationException({
    required super.message,
    this.fieldErrors,
    super.code = 'VALIDATION_ERROR',
    super.originalError,
    super.stackTrace,
  });

  factory ValidationException.fromFieldErrors(
      Map<String, List<String>> errors) {
    final firstError =
        errors.values.expand((e) => e).firstOrNull ?? 'Validation failed';
    return ValidationException(
      message: firstError,
      fieldErrors: errors,
    );
  }
}
```

### 5.2 Failures (for Result Types)

Create `lib/core/errors/failures.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Represents a failure that can occur during operations
@freezed
class Failure with _$Failure {
  /// Server error (HTTP errors, API failures)
  const factory Failure.server({
    required String message,
    int? statusCode,
    String? code,
  }) = ServerFailure;

  /// Network error (no connection, timeout)
  const factory Failure.network({
    String? message,
  }) = NetworkFailure;

  /// Authentication error
  const factory Failure.auth({
    required String message,
    String? code,
  }) = AuthFailure;

  /// Validation error with field-specific errors
  const factory Failure.validation({
    required String message,
    Map<String, List<String>>? errors,
  }) = ValidationFailure;

  /// Resource not found
  const factory Failure.notFound({
    required String resource,
  }) = NotFoundFailure;

  /// Cache/storage error
  const factory Failure.cache({
    String? message,
  }) = CacheFailure;

  /// Unknown/unexpected error
  const factory Failure.unknown({
    String? message,
  }) = UnknownFailure;
}

/// Extension to get user-friendly messages
extension FailureX on Failure {
  String get userMessage => when(
        server: (message, _, __) => message,
        network: (message) =>
            message ?? 'No internet connection. Please check your network.',
        auth: (message, _) => message,
        validation: (message, _) => message,
        notFound: (resource) => '$resource not found.',
        cache: (message) => message ?? 'Failed to access local storage.',
        unknown: (message) => message ?? 'An unexpected error occurred.',
      );
}
```

### 5.3 Result Type

Create `lib/core/errors/result.dart`:

```dart
import 'package:fpdart/fpdart.dart';
import 'failures.dart';

/// Type alias for operations that can fail
/// Left = Failure, Right = Success
typedef Result<T> = Either<Failure, T>;

/// Type alias for async operations that can fail
typedef AsyncResult<T> = Future<Result<T>>;

/// Extension methods for Result
extension ResultX<T> on Result<T> {
  /// Returns true if this is a success (Right)
  bool get isSuccess => isRight();

  /// Returns true if this is a failure (Left)
  bool get isFailure => isLeft();

  /// Get the success value or null
  T? get successOrNull => fold((l) => null, (r) => r);

  /// Get the failure or null
  Failure? get failureOrNull => fold((l) => l, (r) => null);

  /// Get the success value or throw
  T get successOrThrow => fold(
        (failure) => throw Exception(failure.userMessage),
        (value) => value,
      );
}

/// Helper functions for creating Results
Result<T> success<T>(T value) => Right(value);
Result<T> failure<T>(Failure failure) => Left(failure);
```

---

## 6. Networking Layer

### 6.1 API Endpoints

Create `lib/core/network/api_endpoints.dart`:

```dart
import '../config/env_config.dart';

abstract class ApiEndpoints {
  static String get baseUrl => EnvConfig.backendBaseUrl;

  // Auth
  static const String signIn = '/api/auth/sign-in';
  static const String signUp = '/api/auth/sign-up';
  static const String signOut = '/api/auth/sign-out';
  static const String session = '/api/auth/session';
  static const String googleAuth = '/api/auth/google';
  static const String appleAuth = '/api/auth/apple';
  static const String forgotPassword = '/api/auth/forgot-password';
  static const String resetPassword = '/api/auth/reset-password';

  // User
  static const String user = '/api/user';
  static const String userProfile = '/api/user/profile';
  static const String userOnboarding = '/api/user/onboarding';

  // Consultants
  static const String consultants = '/api/consultants';
  static String consultantById(String id) => '/api/consultants/$id';
  static String consultantAvailability(String id) =>
      '/api/consultants/$id/availability';
  static String consultantReviews(String id) => '/api/consultants/$id/reviews';

  // Domains
  static const String domains = '/api/domains';

  // Bookings
  static const String bookings = '/api/bookings';
  static String bookingById(String id) => '/api/bookings/$id';
  static const String requestSlot = '/api/slots/request-for-approval';

  // Appointments
  static const String appointments = '/api/appointments';
  static String appointmentById(String id) => '/api/appointments/$id';
  static String cancelAppointment(String id) => '/api/appointments/$id/cancel';

  // Payments
  static const String checkout = '/api/checkout';
  static const String verifyPayment = '/api/checkout/verify';
  static const String paymentHistory = '/api/payments';

  // Stream
  static const String streamToken = '/api/stream/token';

  // Chat
  static const String channels = '/api/chat/channels';
}
```

### 6.2 Dio Client

Create `lib/core/network/dio_client.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/env_config.dart';
import '../constants/app_constants.dart';
import '../errors/exceptions.dart';
import 'api_endpoints.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: AppConstants.connectionTimeout,
      receiveTimeout: AppConstants.receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // Add interceptors
  dio.interceptors.addAll([
    AuthInterceptor(ref),
    if (EnvConfig.isDebugMode) LoggingInterceptor(),
  ]);

  return dio;
}

/// Extension to handle Dio errors
extension DioErrorHandler on DioException {
  AppException toAppException() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(
          message: 'Connection timed out. Please try again.',
          code: 'TIMEOUT',
        );
      case DioExceptionType.connectionError:
        return const NetworkException();
      case DioExceptionType.badResponse:
        final statusCode = response?.statusCode ?? 500;
        final data = response?.data;
        String? message;

        if (data is Map<String, dynamic>) {
          message = data['message'] as String? ??
              data['error'] as String?;
        }

        return ServerException.fromStatusCode(statusCode, message);
      case DioExceptionType.cancel:
        return const ServerException(
          message: 'Request was cancelled.',
          code: 'CANCELLED',
        );
      default:
        return ServerException(
          message: message ?? 'An unexpected error occurred.',
          code: 'UNKNOWN',
          originalError: this,
        );
    }
  }
}
```

### 6.3 Auth Interceptor

Create `lib/core/network/interceptors/auth_interceptor.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/storage_keys.dart';
import '../../../shared/providers/secure_storage_provider.dart';

class AuthInterceptor extends Interceptor {
  final Ref _ref;

  AuthInterceptor(this._ref);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skip auth header for auth endpoints
    final noAuthPaths = [
      '/api/auth/sign-in',
      '/api/auth/sign-up',
      '/api/auth/google',
      '/api/auth/apple',
      '/api/auth/forgot-password',
    ];

    if (noAuthPaths.any((path) => options.path.contains(path))) {
      return handler.next(options);
    }

    // Add auth token if available
    try {
      final storage = _ref.read(secureStorageProvider);
      final token = await storage.read(key: StorageKeys.accessToken);

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    } catch (e) {
      // Continue without token if storage fails
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Token expired - clear storage and redirect to login
      try {
        final storage = _ref.read(secureStorageProvider);
        await storage.delete(key: StorageKeys.accessToken);
        await storage.delete(key: StorageKeys.userId);
        // The auth provider will handle the redirect
      } catch (e) {
        // Ignore storage errors
      }
    }

    handler.next(err);
  }
}
```

### 6.4 Logging Interceptor

Create `lib/core/network/interceptors/logging_interceptor.dart`:

```dart
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor extends Interceptor {
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
    ),
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.i(
      '┌──────────────────────────────────────────────────────────────────\n'
      '│ REQUEST: ${options.method} ${options.uri}\n'
      '│ Headers: ${_formatHeaders(options.headers)}\n'
      '│ Data: ${_formatData(options.data)}\n'
      '└──────────────────────────────────────────────────────────────────',
    );
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d(
      '┌──────────────────────────────────────────────────────────────────\n'
      '│ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}\n'
      '│ Data: ${_formatData(response.data)}\n'
      '└──────────────────────────────────────────────────────────────────',
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.e(
      '┌──────────────────────────────────────────────────────────────────\n'
      '│ ERROR: ${err.response?.statusCode ?? 'N/A'} ${err.requestOptions.uri}\n'
      '│ Type: ${err.type}\n'
      '│ Message: ${err.message}\n'
      '│ Response: ${_formatData(err.response?.data)}\n'
      '└──────────────────────────────────────────────────────────────────',
    );
    handler.next(err);
  }

  String _formatHeaders(Map<String, dynamic> headers) {
    final filtered = Map.of(headers)
      ..removeWhere((key, _) =>
          key.toLowerCase() == 'authorization' ||
          key.toLowerCase() == 'cookie');
    return const JsonEncoder.withIndent('  ').convert(filtered);
  }

  String _formatData(dynamic data) {
    if (data == null) return 'null';
    if (data is Map || data is List) {
      try {
        final json = const JsonEncoder.withIndent('  ').convert(data);
        if (json.length > 500) {
          return '${json.substring(0, 500)}...';
        }
        return json;
      } catch (e) {
        return data.toString();
      }
    }
    return data.toString();
  }
}
```

### 6.5 Network Info

Create `lib/core/network/network_info.dart`:

```dart
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

@riverpod
NetworkInfo networkInfo(NetworkInfoRef ref) {
  return NetworkInfoImpl(Connectivity());
}

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<bool> get onConnectivityChanged;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return !result.contains(ConnectivityResult.none);
  }

  @override
  Stream<bool> get onConnectivityChanged {
    return _connectivity.onConnectivityChanged.map(
      (results) => !results.contains(ConnectivityResult.none),
    );
  }
}
```

---

## 7. Shared Providers

### 7.1 Secure Storage Provider

Create `lib/shared/providers/secure_storage_provider.dart`:

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );
});
```

### 7.2 Shared Preferences Provider

Create `lib/shared/providers/shared_preferences_provider.dart`:

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) async {
  return SharedPreferences.getInstance();
}
```

---

## 8. Theme System

### 8.1 App Colors

Create `lib/app/theme/app_colors.dart`:

```dart
import 'package:flutter/material.dart';

abstract class AppColors {
  // Light Mode - Primary
  static const Color background = Color(0xFFFFFFFF);
  static const Color foreground = Color(0xFF0A0A0B);
  static const Color primary = Color(0xFF18181B);
  static const Color primaryForeground = Color(0xFFFAFAFA);

  // Light Mode - Secondary
  static const Color secondary = Color(0xFFF4F4F5);
  static const Color secondaryForeground = Color(0xFF18181B);

  // Light Mode - Muted
  static const Color muted = Color(0xFFF4F4F5);
  static const Color mutedForeground = Color(0xFF71717A);

  // Light Mode - Accent
  static const Color accent = Color(0xFFF4F4F5);
  static const Color accentForeground = Color(0xFF18181B);

  // Semantic Colors
  static const Color destructive = Color(0xFFEF4444);
  static const Color destructiveForeground = Color(0xFFFAFAFA);
  static const Color success = Color(0xFF22C55E);
  static const Color successForeground = Color(0xFFFAFAFA);
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningForeground = Color(0xFF18181B);
  static const Color info = Color(0xFF3B82F6);
  static const Color infoForeground = Color(0xFFFAFAFA);

  // Borders & Inputs
  static const Color border = Color(0xFFE4E4E7);
  static const Color input = Color(0xFFE4E4E7);
  static const Color ring = Color(0xFF18181B);

  // Card
  static const Color card = Color(0xFFFFFFFF);
  static const Color cardForeground = Color(0xFF0A0A0B);

  // Popover
  static const Color popover = Color(0xFFFFFFFF);
  static const Color popoverForeground = Color(0xFF0A0A0B);

  // Dark Mode Colors
  static const Color backgroundDark = Color(0xFF0A0A0B);
  static const Color foregroundDark = Color(0xFFFAFAFA);
  static const Color primaryDark = Color(0xFFFAFAFA);
  static const Color primaryForegroundDark = Color(0xFF18181B);
  static const Color secondaryDark = Color(0xFF27272A);
  static const Color mutedDark = Color(0xFF27272A);
  static const Color borderDark = Color(0xFF27272A);
  static const Color cardDark = Color(0xFF0A0A0B);
}
```

### 8.2 App Typography

Create `lib/app/theme/app_typography.dart`:

```dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTypography {
  static const String fontFamily = 'Inter';

  // Font Sizes
  static const double textXs = 12.0;
  static const double textSm = 14.0;
  static const double textBase = 16.0;
  static const double textLg = 18.0;
  static const double textXl = 20.0;
  static const double text2Xl = 24.0;
  static const double text3Xl = 30.0;
  static const double text4Xl = 36.0;

  // Font Weights
  static const FontWeight fontNormal = FontWeight.w400;
  static const FontWeight fontMedium = FontWeight.w500;
  static const FontWeight fontSemibold = FontWeight.w600;
  static const FontWeight fontBold = FontWeight.w700;

  // Text Styles
  static TextStyle get h1 => const TextStyle(
        fontFamily: fontFamily,
        fontSize: text4Xl,
        fontWeight: fontBold,
        color: AppColors.foreground,
        height: 1.2,
      );

  static TextStyle get h2 => const TextStyle(
        fontFamily: fontFamily,
        fontSize: text3Xl,
        fontWeight: fontSemibold,
        color: AppColors.foreground,
        height: 1.3,
      );

  static TextStyle get h3 => const TextStyle(
        fontFamily: fontFamily,
        fontSize: text2Xl,
        fontWeight: fontSemibold,
        color: AppColors.foreground,
        height: 1.3,
      );

  static TextStyle get h4 => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textXl,
        fontWeight: fontSemibold,
        color: AppColors.foreground,
        height: 1.4,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textLg,
        fontWeight: fontNormal,
        color: AppColors.foreground,
        height: 1.5,
      );

  static TextStyle get body => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textBase,
        fontWeight: fontNormal,
        color: AppColors.foreground,
        height: 1.5,
      );

  static TextStyle get bodySmall => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textSm,
        fontWeight: fontNormal,
        color: AppColors.mutedForeground,
        height: 1.5,
      );

  static TextStyle get caption => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textXs,
        fontWeight: fontNormal,
        color: AppColors.mutedForeground,
        height: 1.4,
      );

  static TextStyle get button => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textBase,
        fontWeight: fontMedium,
        height: 1.0,
      );

  static TextStyle get buttonSmall => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textSm,
        fontWeight: fontMedium,
        height: 1.0,
      );

  static TextStyle get label => const TextStyle(
        fontFamily: fontFamily,
        fontSize: textSm,
        fontWeight: fontMedium,
        color: AppColors.foreground,
        height: 1.0,
      );
}
```

### 8.3 App Theme

Create `lib/app/theme/app_theme.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_typography.dart';

abstract class AppTheme {
  // Spacing
  static const double space1 = 4.0;
  static const double space2 = 8.0;
  static const double space3 = 12.0;
  static const double space4 = 16.0;
  static const double space5 = 20.0;
  static const double space6 = 24.0;
  static const double space8 = 32.0;
  static const double space10 = 40.0;
  static const double space12 = 48.0;
  static const double space16 = 64.0;

  // Border Radius
  static const double radiusSm = 4.0;
  static const double radiusMd = 6.0;
  static const double radiusLg = 8.0;
  static const double radiusXl = 12.0;
  static const double radius2Xl = 16.0;
  static const double radiusFull = 9999.0;

  // Button Height
  static const double buttonHeight = 48.0;
  static const double buttonHeightSm = 40.0;
  static const double buttonHeightXs = 32.0;

  // Input Height
  static const double inputHeight = 48.0;

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: AppTypography.fontFamily,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          onPrimary: AppColors.primaryForeground,
          secondary: AppColors.secondary,
          onSecondary: AppColors.secondaryForeground,
          surface: AppColors.background,
          onSurface: AppColors.foreground,
          error: AppColors.destructive,
          onError: AppColors.destructiveForeground,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.foreground,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          titleTextStyle: AppTypography.h4,
          iconTheme: const IconThemeData(
            color: AppColors.foreground,
            size: 24,
          ),
        ),
        cardTheme: CardTheme(
          color: AppColors.card,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusXl),
            side: const BorderSide(color: AppColors.border),
          ),
          margin: EdgeInsets.zero,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.primaryForeground,
            elevation: 0,
            minimumSize: const Size.fromHeight(buttonHeight),
            padding: const EdgeInsets.symmetric(horizontal: space4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusLg),
            ),
            textStyle: AppTypography.button,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.foreground,
            elevation: 0,
            minimumSize: const Size.fromHeight(buttonHeight),
            padding: const EdgeInsets.symmetric(horizontal: space4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusLg),
            ),
            side: const BorderSide(color: AppColors.border),
            textStyle: AppTypography.button,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(horizontal: space4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusLg),
            ),
            textStyle: AppTypography.button,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.background,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: space4,
            vertical: space3,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusLg),
            borderSide: const BorderSide(color: AppColors.input),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusLg),
            borderSide: const BorderSide(color: AppColors.input),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusLg),
            borderSide: const BorderSide(color: AppColors.ring, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusLg),
            borderSide: const BorderSide(color: AppColors.destructive),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusLg),
            borderSide: const BorderSide(color: AppColors.destructive, width: 2),
          ),
          labelStyle: AppTypography.label,
          hintStyle: AppTypography.body.copyWith(
            color: AppColors.mutedForeground,
          ),
          errorStyle: AppTypography.caption.copyWith(
            color: AppColors.destructive,
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.border,
          thickness: 1,
          space: 1,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.background,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.mutedForeground,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColors.foreground,
          contentTextStyle: AppTypography.body.copyWith(
            color: AppColors.background,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusLg),
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primary,
        ),
      );

  static ThemeData get dark => light.copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.backgroundDark,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryDark,
          onPrimary: AppColors.primaryForegroundDark,
          secondary: AppColors.secondaryDark,
          surface: AppColors.backgroundDark,
          onSurface: AppColors.foregroundDark,
          error: AppColors.destructive,
        ),
        appBarTheme: light.appBarTheme.copyWith(
          backgroundColor: AppColors.backgroundDark,
          foregroundColor: AppColors.foregroundDark,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        cardTheme: light.cardTheme.copyWith(
          color: AppColors.cardDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusXl),
            side: const BorderSide(color: AppColors.borderDark),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.borderDark,
          thickness: 1,
          space: 1,
        ),
      );
}
```

---

## 9. Main App Entry

### 9.1 Main Entry Point

Create `lib/main.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock orientation to portrait
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    const ProviderScope(
      child: FamiliariseApp(),
    ),
  );
}
```

### 9.2 App Widget

Create `lib/app/app.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class FamiliariseApp extends ConsumerWidget {
  const FamiliariseApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Familiarise',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
```

### 9.3 Router Configuration

Create `lib/app/router.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      // Splash/Loading screen
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),

      // TODO: Auth routes will be added in Phase 2
      // TODO: Main shell will be added in Phase 4
    ],
  );
}
```

---

## 10. Utilities

### 10.1 Validators

Create `lib/core/utils/validators.dart`:

```dart
import '../constants/app_constants.dart';

abstract class Validators {
  /// Validates email format
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  /// Validates password strength
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < AppConstants.minPasswordLength) {
      return 'Password must be at least ${AppConstants.minPasswordLength} characters';
    }
    return null;
  }

  /// Validates password confirmation
  static String? confirmPassword(String? value, String password) {
    final error = Validators.password(value);
    if (error != null) return error;
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  /// Validates required field
  static String? required(String? value, [String fieldName = 'This field']) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  /// Validates name (letters, spaces, hyphens only)
  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }
    if (value.length > AppConstants.maxNameLength) {
      return 'Name is too long (max ${AppConstants.maxNameLength} characters)';
    }
    final nameRegex = RegExp(r"^[a-zA-Z\s\-']+$");
    if (!nameRegex.hasMatch(value)) {
      return 'Name can only contain letters, spaces, and hyphens';
    }
    return null;
  }

  /// Validates phone number (basic format)
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Phone is optional
    }
    final phoneRegex = RegExp(r'^\+?[\d\s\-\(\)]{10,}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  /// Validates minimum length
  static String? minLength(String? value, int minLength, [String? fieldName]) {
    if (value == null || value.length < minLength) {
      return '${fieldName ?? 'This field'} must be at least $minLength characters';
    }
    return null;
  }

  /// Validates maximum length
  static String? maxLength(String? value, int maxLength, [String? fieldName]) {
    if (value != null && value.length > maxLength) {
      return '${fieldName ?? 'This field'} must be at most $maxLength characters';
    }
    return null;
  }
}
```

### 10.2 Date Utilities

Create `lib/core/utils/date_utils.dart`:

```dart
import 'package:intl/intl.dart';

abstract class AppDateUtils {
  /// Format: Dec 14, 2024
  static String formatDate(DateTime date) {
    return DateFormat('MMM d, y').format(date);
  }

  /// Format: December 14, 2024
  static String formatDateLong(DateTime date) {
    return DateFormat('MMMM d, y').format(date);
  }

  /// Format: 3:00 PM
  static String formatTime(DateTime time) {
    return DateFormat('h:mm a').format(time);
  }

  /// Format: Dec 14, 2024 at 3:00 PM
  static String formatDateTime(DateTime dateTime) {
    return DateFormat('MMM d, y \'at\' h:mm a').format(dateTime);
  }

  /// Format: Today, Tomorrow, or date
  static String formatRelativeDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    final dateOnly = DateTime(date.year, date.month, date.day);

    if (dateOnly == today) {
      return 'Today';
    } else if (dateOnly == tomorrow) {
      return 'Tomorrow';
    } else {
      return formatDate(date);
    }
  }

  /// Format: 2 hours ago, 3 days ago, etc.
  static String formatTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks week${weeks > 1 ? 's' : ''} ago';
    } else {
      return formatDate(dateTime);
    }
  }

  /// Format: 1h 30m
  static String formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);

    if (hours > 0 && minutes > 0) {
      return '${hours}h ${minutes}m';
    } else if (hours > 0) {
      return '${hours}h';
    } else {
      return '${minutes}m';
    }
  }

  /// Get start of day
  static DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Get end of day
  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  /// Check if two dates are the same day
  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
```

### 10.3 Currency Utilities

Create `lib/core/utils/currency_utils.dart`:

```dart
import 'package:intl/intl.dart';

abstract class CurrencyUtils {
  /// Format amount with currency symbol (INR default)
  static String format(
    num amount, {
    String currency = 'INR',
    bool showDecimals = false,
  }) {
    final symbol = _getCurrencySymbol(currency);
    final formatter = NumberFormat.currency(
      symbol: symbol,
      decimalDigits: showDecimals ? 2 : 0,
      locale: 'en_IN',
    );
    return formatter.format(amount);
  }

  /// Format amount in compact form (e.g., 1.2K, 1.5M)
  static String formatCompact(num amount, {String currency = 'INR'}) {
    final symbol = _getCurrencySymbol(currency);
    if (amount >= 10000000) {
      return '$symbol${(amount / 10000000).toStringAsFixed(1)}Cr';
    } else if (amount >= 100000) {
      return '$symbol${(amount / 100000).toStringAsFixed(1)}L';
    } else if (amount >= 1000) {
      return '$symbol${(amount / 1000).toStringAsFixed(1)}K';
    } else {
      return '$symbol${amount.toStringAsFixed(0)}';
    }
  }

  /// Get currency symbol
  static String _getCurrencySymbol(String currency) {
    switch (currency.toUpperCase()) {
      case 'INR':
        return '\u20B9'; // ₹
      case 'USD':
        return '\$';
      case 'EUR':
        return '\u20AC'; // €
      case 'GBP':
        return '\u00A3'; // £
      default:
        return currency;
    }
  }

  /// Parse amount from string
  static num? parse(String value) {
    final cleaned = value.replaceAll(RegExp(r'[^\d.]'), '');
    return num.tryParse(cleaned);
  }
}
```

---

## 11. Extensions

### 11.1 String Extensions

Create `lib/core/extensions/string_extensions.dart`:

```dart
extension StringExtension on String {
  /// Capitalize first letter
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalize each word
  String get titleCase {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize).join(' ');
  }

  /// Check if string is a valid email
  bool get isValidEmail {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(this);
  }

  /// Truncate string with ellipsis
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }

  /// Get initials (first letter of first two words)
  String get initials {
    final words = trim().split(' ');
    if (words.isEmpty) return '';
    if (words.length == 1) return words[0][0].toUpperCase();
    return '${words[0][0]}${words[1][0]}'.toUpperCase();
  }

  /// Convert to URL-safe slug
  String get toSlug {
    return toLowerCase()
        .replaceAll(RegExp(r'[^\w\s-]'), '')
        .replaceAll(RegExp(r'\s+'), '-')
        .replaceAll(RegExp(r'-+'), '-');
  }
}

extension NullableStringExtension on String? {
  /// Returns true if null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Returns true if not null and not empty
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  /// Returns the string or empty string if null
  String get orEmpty => this ?? '';
}
```

### 11.2 Context Extensions

Create `lib/core/extensions/context_extensions.dart`:

```dart
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  // Theme shortcuts
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Media query shortcuts
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
  EdgeInsets get padding => MediaQuery.paddingOf(this);
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  double get bottomPadding => MediaQuery.paddingOf(this).bottom;
  double get topPadding => MediaQuery.paddingOf(this).top;

  // Responsive breakpoints
  bool get isMobile => screenWidth < 600;
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;
  bool get isDesktop => screenWidth >= 1024;

  // Keyboard visibility
  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom > 0;

  // Show snackbar
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 4),
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        action: action,
      ),
    );
  }

  // Show error snackbar
  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: colorScheme.error,
      ),
    );
  }

  // Show success snackbar
  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }

  // Pop route
  void pop<T>([T? result]) => Navigator.of(this).pop(result);

  // Focus helpers
  void unfocus() => FocusScope.of(this).unfocus();
}
```

---

## 12. Testing

### 12.1 Test Structure

```
test/
├── core/
│   ├── errors/
│   │   └── failures_test.dart
│   ├── network/
│   │   └── dio_client_test.dart
│   └── utils/
│       └── validators_test.dart
├── helpers/
│   ├── test_helpers.dart
│   └── mock_providers.dart
└── fixtures/
    └── test_data.dart
```

### 12.2 Sample Test

Create `test/core/utils/validators_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:familiarise_mobile/core/utils/validators.dart';

void main() {
  group('Validators', () {
    group('email', () {
      test('returns null for valid email', () {
        expect(Validators.email('test@example.com'), isNull);
        expect(Validators.email('user.name@domain.co.uk'), isNull);
      });

      test('returns error for invalid email', () {
        expect(Validators.email('invalid'), isNotNull);
        expect(Validators.email('no@domain'), isNotNull);
        expect(Validators.email('@nodomain.com'), isNotNull);
      });

      test('returns error for empty email', () {
        expect(Validators.email(''), isNotNull);
        expect(Validators.email(null), isNotNull);
      });
    });

    group('password', () {
      test('returns null for valid password', () {
        expect(Validators.password('password123'), isNull);
        expect(Validators.password('StrongP@ss1'), isNull);
      });

      test('returns error for short password', () {
        expect(Validators.password('short'), isNotNull);
        expect(Validators.password('1234567'), isNotNull);
      });

      test('returns error for empty password', () {
        expect(Validators.password(''), isNotNull);
        expect(Validators.password(null), isNotNull);
      });
    });

    group('name', () {
      test('returns null for valid name', () {
        expect(Validators.name('John Doe'), isNull);
        expect(Validators.name("Mary-Jane O'Connor"), isNull);
      });

      test('returns error for invalid name', () {
        expect(Validators.name('Name123'), isNotNull);
        expect(Validators.name('Name@#'), isNotNull);
      });
    });
  });
}
```

---

## 13. Running the Project

### 13.1 Generate Code

```bash
# Generate all code (freezed, riverpod, json_serializable, envied)
dart run build_runner build --delete-conflicting-outputs

# Watch for changes during development
dart run build_runner watch --delete-conflicting-outputs
```

### 13.2 Run the App

```bash
# Run on connected device
flutter run

# Run on specific device
flutter run -d <device_id>

# Run in release mode
flutter run --release
```

### 13.3 Run Tests

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/core/utils/validators_test.dart
```

---

## 14. Acceptance Criteria

Before completing Phase 1, verify:

- [ ] Project structure follows Clean Architecture pattern
- [ ] All dependencies installed and code generation works
- [ ] Environment configuration loads correctly
- [ ] Theme system applies throughout the app
- [ ] Dio client configured with interceptors
- [ ] Error handling framework complete (Exceptions + Failures)
- [ ] All utility functions implemented with tests
- [ ] App runs without errors on both iOS and Android
- [ ] Basic router navigation works
- [ ] Code passes `flutter analyze` with no issues

---

## 15. Next Phase

After completing Phase 1, proceed to **Phase 2: Authentication** which builds on this infrastructure to implement:
- Sign in / Sign up screens
- Google OAuth integration
- Session management
- Protected route handling

---

## References

- [Flutter Riverpod Documentation](https://riverpod.dev)
- [GoRouter Documentation](https://pub.dev/packages/go_router)
- [Freezed Package](https://pub.dev/packages/freezed)
- [Dio HTTP Client](https://pub.dev/packages/dio)
- [fpdart Functional Programming](https://pub.dev/packages/fpdart)
