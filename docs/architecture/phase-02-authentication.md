# Phase 2: Authentication

## Overview

This phase implements the complete authentication system for Familiarise Mobile, including email/password authentication, Google OAuth, Apple Sign-In, session management, and protected routes. The authentication layer connects to a Dart Frog backend that manages JWT tokens and user sessions.

**Prerequisites:** Phase 1 (Core Infrastructure) must be completed
**Target Completion:** Full authentication flow with social login
**Platforms:** iOS 14+, Android API 24+

---

## Architecture Overview

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│  Flutter App    │────▶│  Dart Frog      │────▶│  PostgreSQL     │
│  (Frontend)     │◀────│  Backend        │◀────│  (Supabase)     │
└─────────────────┘     └─────────────────┘     └─────────────────┘
        │                       │
        │                       │
        ▼                       ▼
┌─────────────────┐     ┌─────────────────┐
│  Google OAuth   │     │  JWT Token      │
│  (Client SDK)   │     │  Verification   │
└─────────────────┘     └─────────────────┘
```

### Authentication Flow

1. **Email/Password**: User enters credentials → Backend validates → Returns JWT
2. **Google OAuth**: Google SDK returns idToken → Backend verifies with Google → Returns JWT
3. **Apple Sign-In**: Apple returns authorization → Backend verifies → Returns JWT

---

## 1. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # ... existing dependencies from Phase 1

  # Authentication
  google_sign_in: ^6.2.1
  sign_in_with_apple: ^6.1.1

  # Form handling
  flutter_hooks: ^0.20.5
  hooks_riverpod: ^2.5.1
```

Run:

```bash
flutter pub get
```

---

## 2. Domain Layer

### 2.1 User Entity

Create `lib/domain/entities/user.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    String? name,
    String? email,
    String? image,
    String? phone,
    String? timezone,
    @Default(UserRole.consultee) UserRole role,
    @Default(false) bool emailVerified,
    @Default(false) bool onboardingCompleted,
    String? consulteeProfileId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  /// Get user initials for avatar fallback
  String get initials {
    if (name == null || name!.isEmpty) return '?';
    final words = name!.trim().split(' ');
    if (words.length == 1) return words[0][0].toUpperCase();
    return '${words[0][0]}${words.last[0]}'.toUpperCase();
  }

  /// Get display name
  String get displayName => name ?? email?.split('@').first ?? 'User';

  /// Check if profile is complete
  bool get hasCompletedProfile =>
      name != null && name!.isNotEmpty && onboardingCompleted;
}
```

### 2.2 Auth State Entity

Create `lib/domain/entities/auth_state.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  /// Initial state - checking session
  const factory AuthState.initial() = AuthStateInitial;

  /// Loading state - during authentication
  const factory AuthState.loading() = AuthStateLoading;

  /// User is authenticated
  const factory AuthState.authenticated(User user) = AuthStateAuthenticated;

  /// User is not authenticated
  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;

  /// Authentication error occurred
  const factory AuthState.error(String message) = AuthStateError;

  /// Check if user is authenticated
  bool get isAuthenticated => this is AuthStateAuthenticated;

  /// Check if in loading state
  bool get isLoading => this is AuthStateLoading;

  /// Get user if authenticated, null otherwise
  User? get user => maybeMap(
        authenticated: (state) => state.user,
        orElse: () => null,
      );
}
```

### 2.3 Auth Credentials

Create `lib/domain/entities/auth_credentials.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_credentials.freezed.dart';

@freezed
class SignInCredentials with _$SignInCredentials {
  const factory SignInCredentials({
    required String email,
    required String password,
  }) = _SignInCredentials;
}

@freezed
class SignUpCredentials with _$SignUpCredentials {
  const factory SignUpCredentials({
    required String name,
    required String email,
    required String password,
  }) = _SignUpCredentials;
}

@freezed
class GoogleAuthCredentials with _$GoogleAuthCredentials {
  const factory GoogleAuthCredentials({
    required String idToken,
    String? accessToken,
  }) = _GoogleAuthCredentials;
}

@freezed
class AppleAuthCredentials with _$AppleAuthCredentials {
  const factory AppleAuthCredentials({
    required String identityToken,
    required String authorizationCode,
    String? email,
    String? givenName,
    String? familyName,
  }) = _AppleAuthCredentials;
}
```

### 2.4 Auth Repository Interface

Create `lib/domain/repositories/auth_repository.dart`:

```dart
import '../entities/user.dart';
import '../entities/auth_credentials.dart';
import '../../core/errors/result.dart';

abstract class AuthRepository {
  /// Sign in with email and password
  AsyncResult<User> signInWithEmail(SignInCredentials credentials);

  /// Sign up with email and password
  AsyncResult<User> signUpWithEmail(SignUpCredentials credentials);

  /// Sign in with Google
  AsyncResult<User> signInWithGoogle(GoogleAuthCredentials credentials);

  /// Sign in with Apple
  AsyncResult<User> signInWithApple(AppleAuthCredentials credentials);

  /// Sign out current user
  AsyncResult<void> signOut();

  /// Get current session
  AsyncResult<User?> getSession();

  /// Request password reset
  AsyncResult<void> forgotPassword(String email);

  /// Reset password with token
  AsyncResult<void> resetPassword({
    required String token,
    required String newPassword,
  });

  /// Check if user is authenticated
  Future<bool> isAuthenticated();

  /// Get stored auth token
  Future<String?> getToken();
}
```

---

## 3. Data Layer

### 3.1 User Model (DTO)

Create `lib/data/models/user_model.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    String? name,
    String? email,
    String? image,
    String? phone,
    String? timezone,
    String? role,
    @JsonKey(name: 'email_verified') @Default(false) bool emailVerified,
    @JsonKey(name: 'onboarding_completed') @Default(false) bool onboardingCompleted,
    @JsonKey(name: 'consultee_profile_id') String? consulteeProfileId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Convert to domain entity
  User toEntity() => User(
        id: id,
        name: name,
        email: email,
        image: image,
        phone: phone,
        timezone: timezone,
        role: UserRole.fromString(role ?? 'CONSULTEE'),
        emailVerified: emailVerified,
        onboardingCompleted: onboardingCompleted,
        consulteeProfileId: consulteeProfileId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
```

### 3.2 Auth Response Model

Create `lib/data/models/auth_response_model.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required UserModel user,
    required String token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
```

### 3.3 Auth Local Data Source

Create `lib/data/datasources/local/auth_local_source.dart`:

```dart
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/storage_keys.dart';
import '../../../core/errors/exceptions.dart';
import '../../../shared/providers/secure_storage_provider.dart';
import '../../models/user_model.dart';

part 'auth_local_source.g.dart';

@riverpod
AuthLocalSource authLocalSource(AuthLocalSourceRef ref) {
  return AuthLocalSourceImpl(ref.watch(secureStorageProvider));
}

abstract class AuthLocalSource {
  /// Save auth token
  Future<void> saveToken(String token);

  /// Get stored auth token
  Future<String?> getToken();

  /// Delete auth token
  Future<void> deleteToken();

  /// Save cached user
  Future<void> cacheUser(UserModel user);

  /// Get cached user
  Future<UserModel?> getCachedUser();

  /// Delete cached user
  Future<void> deleteCachedUser();

  /// Clear all auth data
  Future<void> clearAll();

  /// Check if token exists
  Future<bool> hasToken();
}

class AuthLocalSourceImpl implements AuthLocalSource {
  final FlutterSecureStorage _storage;

  AuthLocalSourceImpl(this._storage);

  @override
  Future<void> saveToken(String token) async {
    try {
      await _storage.write(key: StorageKeys.accessToken, value: token);
    } catch (e) {
      throw CacheException(
        message: 'Failed to save authentication token',
        originalError: e,
      );
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      return await _storage.read(key: StorageKeys.accessToken);
    } catch (e) {
      throw CacheException(
        message: 'Failed to read authentication token',
        originalError: e,
      );
    }
  }

  @override
  Future<void> deleteToken() async {
    try {
      await _storage.delete(key: StorageKeys.accessToken);
    } catch (e) {
      throw CacheException(
        message: 'Failed to delete authentication token',
        originalError: e,
      );
    }
  }

  @override
  Future<void> cacheUser(UserModel user) async {
    try {
      final jsonString = jsonEncode(user.toJson());
      await _storage.write(key: StorageKeys.cachedUser, value: jsonString);
      await _storage.write(key: StorageKeys.userId, value: user.id);
    } catch (e) {
      throw CacheException(
        message: 'Failed to cache user data',
        originalError: e,
      );
    }
  }

  @override
  Future<UserModel?> getCachedUser() async {
    try {
      final jsonString = await _storage.read(key: StorageKeys.cachedUser);
      if (jsonString == null) return null;
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return UserModel.fromJson(json);
    } catch (e) {
      // Return null if cache is corrupted
      return null;
    }
  }

  @override
  Future<void> deleteCachedUser() async {
    try {
      await _storage.delete(key: StorageKeys.cachedUser);
      await _storage.delete(key: StorageKeys.userId);
    } catch (e) {
      throw CacheException(
        message: 'Failed to delete cached user',
        originalError: e,
      );
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await Future.wait([
        _storage.delete(key: StorageKeys.accessToken),
        _storage.delete(key: StorageKeys.refreshToken),
        _storage.delete(key: StorageKeys.userId),
        _storage.delete(key: StorageKeys.cachedUser),
        _storage.delete(key: StorageKeys.sessionExpiry),
      ]);
    } catch (e) {
      throw CacheException(
        message: 'Failed to clear auth data',
        originalError: e,
      );
    }
  }

  @override
  Future<bool> hasToken() async {
    try {
      final token = await _storage.read(key: StorageKeys.accessToken);
      return token != null && token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
```

### 3.4 Auth Remote Data Source

Create `lib/data/datasources/remote/auth_remote_source.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'dart:io' show Platform;

import '../../../core/config/env_config.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/auth_credentials.dart';
import '../../models/auth_response_model.dart';
import '../../models/user_model.dart';

part 'auth_remote_source.g.dart';

@riverpod
AuthRemoteSource authRemoteSource(AuthRemoteSourceRef ref) {
  return AuthRemoteSourceImpl(
    dio: ref.watch(dioProvider),
    googleSignIn: GoogleSignIn(
      scopes: ['email', 'profile'],
    ),
  );
}

abstract class AuthRemoteSource {
  /// Sign in with email and password
  Future<AuthResponseModel> signInWithEmail(SignInCredentials credentials);

  /// Sign up with email and password
  Future<AuthResponseModel> signUpWithEmail(SignUpCredentials credentials);

  /// Initiate Google sign in flow
  Future<GoogleAuthCredentials?> initiateGoogleSignIn();

  /// Complete Google sign in with backend
  Future<AuthResponseModel> completeGoogleSignIn(GoogleAuthCredentials credentials);

  /// Initiate Apple sign in flow
  Future<AppleAuthCredentials?> initiateAppleSignIn();

  /// Complete Apple sign in with backend
  Future<AuthResponseModel> completeAppleSignIn(AppleAuthCredentials credentials);

  /// Get current session from server
  Future<UserModel?> getSession();

  /// Sign out on server
  Future<void> signOut();

  /// Request password reset email
  Future<void> forgotPassword(String email);

  /// Reset password with token
  Future<void> resetPassword({required String token, required String newPassword});
}

class AuthRemoteSourceImpl implements AuthRemoteSource {
  final Dio _dio;
  final GoogleSignIn _googleSignIn;

  AuthRemoteSourceImpl({
    required Dio dio,
    required GoogleSignIn googleSignIn,
  })  : _dio = dio,
        _googleSignIn = googleSignIn;

  @override
  Future<AuthResponseModel> signInWithEmail(SignInCredentials credentials) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.signIn,
        data: {
          'email': credentials.email,
          'password': credentials.password,
        },
      );

      return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<AuthResponseModel> signUpWithEmail(SignUpCredentials credentials) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.signUp,
        data: {
          'name': credentials.name,
          'email': credentials.email,
          'password': credentials.password,
        },
      );

      return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<GoogleAuthCredentials?> initiateGoogleSignIn() async {
    try {
      // Sign out first to allow account selection
      await _googleSignIn.signOut();

      final account = await _googleSignIn.signIn();
      if (account == null) {
        return null; // User cancelled
      }

      final authentication = await account.authentication;
      final idToken = authentication.idToken;

      if (idToken == null) {
        throw const AuthException(
          message: 'Failed to get ID token from Google',
          code: 'GOOGLE_TOKEN_ERROR',
        );
      }

      return GoogleAuthCredentials(
        idToken: idToken,
        accessToken: authentication.accessToken,
      );
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(
        message: 'Google sign in failed: ${e.toString()}',
        code: 'GOOGLE_SIGN_IN_ERROR',
        originalError: e,
      );
    }
  }

  @override
  Future<AuthResponseModel> completeGoogleSignIn(GoogleAuthCredentials credentials) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.googleAuth,
        data: {
          'idToken': credentials.idToken,
          'accessToken': credentials.accessToken,
        },
      );

      return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<AppleAuthCredentials?> initiateAppleSignIn() async {
    if (!Platform.isIOS) {
      throw const AuthException(
        message: 'Apple Sign In is only available on iOS',
        code: 'APPLE_NOT_SUPPORTED',
      );
    }

    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final identityToken = credential.identityToken;
      if (identityToken == null) {
        throw const AuthException(
          message: 'Failed to get identity token from Apple',
          code: 'APPLE_TOKEN_ERROR',
        );
      }

      return AppleAuthCredentials(
        identityToken: identityToken,
        authorizationCode: credential.authorizationCode,
        email: credential.email,
        givenName: credential.givenName,
        familyName: credential.familyName,
      );
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        return null; // User cancelled
      }
      throw AuthException(
        message: 'Apple sign in failed: ${e.message}',
        code: 'APPLE_SIGN_IN_ERROR',
        originalError: e,
      );
    }
  }

  @override
  Future<AuthResponseModel> completeAppleSignIn(AppleAuthCredentials credentials) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.appleAuth,
        data: {
          'identityToken': credentials.identityToken,
          'authorizationCode': credentials.authorizationCode,
          'email': credentials.email,
          'givenName': credentials.givenName,
          'familyName': credentials.familyName,
        },
      );

      return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<UserModel?> getSession() async {
    try {
      final response = await _dio.get(ApiEndpoints.session);
      final data = response.data as Map<String, dynamic>;

      if (data['user'] == null) return null;

      return UserModel.fromJson(data['user'] as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return null; // Not authenticated
      }
      throw e.toAppException();
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _dio.post(ApiEndpoints.signOut);
      await _googleSignIn.signOut();
    } on DioException catch (e) {
      // Ignore errors during sign out
      if (e.response?.statusCode != 401) {
        throw e.toAppException();
      }
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await _dio.post(
        ApiEndpoints.forgotPassword,
        data: {'email': email},
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    try {
      await _dio.post(
        ApiEndpoints.resetPassword,
        data: {
          'token': token,
          'password': newPassword,
        },
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
```

### 3.5 Auth Repository Implementation

Create `lib/data/repositories/auth_repository_impl.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/errors/result.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/auth_credentials.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/local/auth_local_source.dart';
import '../datasources/remote/auth_remote_source.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(
    remoteSource: ref.watch(authRemoteSourceProvider),
    localSource: ref.watch(authLocalSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteSource _remoteSource;
  final AuthLocalSource _localSource;
  final NetworkInfo _networkInfo;

  AuthRepositoryImpl({
    required AuthRemoteSource remoteSource,
    required AuthLocalSource localSource,
    required NetworkInfo networkInfo,
  })  : _remoteSource = remoteSource,
        _localSource = localSource,
        _networkInfo = networkInfo;

  @override
  AsyncResult<User> signInWithEmail(SignInCredentials credentials) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final response = await _remoteSource.signInWithEmail(credentials);

      // Save token and user locally
      await _localSource.saveToken(response.token);
      await _localSource.cacheUser(response.user);

      return success(response.user.toEntity());
    } on AuthException catch (e) {
      return failure(Failure.auth(message: e.message, code: e.code));
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return failure(Failure.network(message: e.message));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<User> signUpWithEmail(SignUpCredentials credentials) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final response = await _remoteSource.signUpWithEmail(credentials);

      // Save token and user locally
      await _localSource.saveToken(response.token);
      await _localSource.cacheUser(response.user);

      return success(response.user.toEntity());
    } on AuthException catch (e) {
      return failure(Failure.auth(message: e.message, code: e.code));
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return failure(Failure.network(message: e.message));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<User> signInWithGoogle(GoogleAuthCredentials credentials) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final response = await _remoteSource.completeGoogleSignIn(credentials);

      // Save token and user locally
      await _localSource.saveToken(response.token);
      await _localSource.cacheUser(response.user);

      return success(response.user.toEntity());
    } on AuthException catch (e) {
      return failure(Failure.auth(message: e.message, code: e.code));
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<User> signInWithApple(AppleAuthCredentials credentials) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final response = await _remoteSource.completeAppleSignIn(credentials);

      // Save token and user locally
      await _localSource.saveToken(response.token);
      await _localSource.cacheUser(response.user);

      return success(response.user.toEntity());
    } on AuthException catch (e) {
      return failure(Failure.auth(message: e.message, code: e.code));
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<void> signOut() async {
    try {
      // Sign out on server (ignore errors)
      try {
        await _remoteSource.signOut();
      } catch (_) {}

      // Always clear local data
      await _localSource.clearAll();

      return success(null);
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<User?> getSession() async {
    try {
      // Check if we have a token
      final hasToken = await _localSource.hasToken();
      if (!hasToken) {
        return success(null);
      }

      // Try to get session from server
      if (await _networkInfo.isConnected) {
        try {
          final userModel = await _remoteSource.getSession();
          if (userModel != null) {
            await _localSource.cacheUser(userModel);
            return success(userModel.toEntity());
          }
          // Token is invalid, clear local data
          await _localSource.clearAll();
          return success(null);
        } on ServerException catch (e) {
          if (e.statusCode == 401) {
            await _localSource.clearAll();
            return success(null);
          }
          // Network issue, try cached user
        }
      }

      // Fallback to cached user
      final cachedUser = await _localSource.getCachedUser();
      return success(cachedUser?.toEntity());
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<void> forgotPassword(String email) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      await _remoteSource.forgotPassword(email);
      return success(null);
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      await _remoteSource.resetPassword(token: token, newPassword: newPassword);
      return success(null);
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    return _localSource.hasToken();
  }

  @override
  Future<String?> getToken() async {
    return _localSource.getToken();
  }
}
```

---

## 4. Presentation Layer

### 4.1 Auth Provider

Create `lib/features/auth/providers/auth_provider.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/datasources/remote/auth_remote_source.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../../domain/entities/auth_credentials.dart';
import '../../../domain/entities/auth_state.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/repositories/auth_repository.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  AuthRepository get _repository => ref.read(authRepositoryProvider);
  AuthRemoteSource get _remoteSource => ref.read(authRemoteSourceProvider);

  @override
  Future<AuthState> build() async {
    // Check for existing session on app start
    final result = await _repository.getSession();

    return result.fold(
      (failure) => const AuthState.unauthenticated(),
      (user) => user != null
          ? AuthState.authenticated(user)
          : const AuthState.unauthenticated(),
    );
  }

  /// Sign in with email and password
  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.data(AuthState.loading());

    final result = await _repository.signInWithEmail(
      SignInCredentials(email: email, password: password),
    );

    state = AsyncValue.data(
      result.fold(
        (failure) => AuthState.error(failure.userMessage),
        (user) => AuthState.authenticated(user),
      ),
    );
  }

  /// Sign up with email and password
  Future<void> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.data(AuthState.loading());

    final result = await _repository.signUpWithEmail(
      SignUpCredentials(name: name, email: email, password: password),
    );

    state = AsyncValue.data(
      result.fold(
        (failure) => AuthState.error(failure.userMessage),
        (user) => AuthState.authenticated(user),
      ),
    );
  }

  /// Sign in with Google
  Future<void> signInWithGoogle() async {
    state = const AsyncValue.data(AuthState.loading());

    try {
      // Initiate Google sign in
      final credentials = await _remoteSource.initiateGoogleSignIn();

      if (credentials == null) {
        // User cancelled
        state = const AsyncValue.data(AuthState.unauthenticated());
        return;
      }

      // Complete sign in with backend
      final result = await _repository.signInWithGoogle(credentials);

      state = AsyncValue.data(
        result.fold(
          (failure) => AuthState.error(failure.userMessage),
          (user) => AuthState.authenticated(user),
        ),
      );
    } catch (e) {
      state = AsyncValue.data(
        AuthState.error('Google sign in failed: ${e.toString()}'),
      );
    }
  }

  /// Sign in with Apple
  Future<void> signInWithApple() async {
    state = const AsyncValue.data(AuthState.loading());

    try {
      // Initiate Apple sign in
      final credentials = await _remoteSource.initiateAppleSignIn();

      if (credentials == null) {
        // User cancelled
        state = const AsyncValue.data(AuthState.unauthenticated());
        return;
      }

      // Complete sign in with backend
      final result = await _repository.signInWithApple(credentials);

      state = AsyncValue.data(
        result.fold(
          (failure) => AuthState.error(failure.userMessage),
          (user) => AuthState.authenticated(user),
        ),
      );
    } catch (e) {
      state = AsyncValue.data(
        AuthState.error('Apple sign in failed: ${e.toString()}'),
      );
    }
  }

  /// Sign out
  Future<void> signOut() async {
    await _repository.signOut();
    state = const AsyncValue.data(AuthState.unauthenticated());
  }

  /// Request password reset
  Future<bool> forgotPassword(String email) async {
    final result = await _repository.forgotPassword(email);
    return result.isSuccess;
  }

  /// Update user after profile changes
  void updateUser(User user) {
    final currentState = state.valueOrNull;
    if (currentState is AuthStateAuthenticated) {
      state = AsyncValue.data(AuthState.authenticated(user));
    }
  }

  /// Clear any error state
  void clearError() {
    final currentState = state.valueOrNull;
    if (currentState is AuthStateError) {
      state = const AsyncValue.data(AuthState.unauthenticated());
    }
  }
}

/// Provider to check if user is authenticated
@riverpod
bool isAuthenticated(IsAuthenticatedRef ref) {
  final authState = ref.watch(authProvider);
  return authState.valueOrNull?.isAuthenticated ?? false;
}

/// Provider to get current user
@riverpod
User? currentUser(CurrentUserRef ref) {
  final authState = ref.watch(authProvider);
  return authState.valueOrNull?.user;
}
```

### 4.2 Shared Widgets

Create `lib/shared/widgets/app_text_field.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_theme.dart';
import '../../app/theme/app_typography.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final bool obscureText;
  final bool enabled;
  final bool autofocus;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final bool showCounter;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.obscureText = false,
    this.enabled = true,
    this.autofocus = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.focusNode,
    this.showCounter = false,
    this.contentPadding,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: AppTypography.label,
          ),
          const SizedBox(height: AppTheme.space2),
        ],
        TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          obscureText: _obscureText,
          enabled: widget.enabled,
          autofocus: widget.autofocus,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          maxLength: widget.maxLength,
          style: AppTypography.body,
          decoration: InputDecoration(
            hintText: widget.hint,
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.mutedForeground,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : widget.suffixIcon,
            counterText: widget.showCounter ? null : '',
            contentPadding: widget.contentPadding,
          ),
        ),
      ],
    );
  }
}
```

Create `lib/shared/widgets/loading_button.dart`:

```dart
import 'package:flutter/material.dart';

import '../../app/theme/app_theme.dart';

class LoadingButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final IconData? icon;
  final double? width;
  final double height;

  const LoadingButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.icon,
    this.width,
    this.height = AppTheme.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    final Widget child = isLoading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                isOutlined
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20),
                const SizedBox(width: AppTheme.space2),
              ],
              Text(text),
            ],
          );

    final button = isOutlined
        ? OutlinedButton(
            onPressed: isLoading ? null : onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width ?? double.infinity, height),
            ),
            child: child,
          )
        : ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width ?? double.infinity, height),
            ),
            child: child,
          );

    return width != null
        ? button
        : SizedBox(
            width: double.infinity,
            child: button,
          );
  }
}
```

Create `lib/shared/widgets/social_sign_in_button.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_theme.dart';
import '../../app/theme/app_typography.dart';

enum SocialProvider { google, apple, facebook }

class SocialSignInButton extends StatelessWidget {
  final SocialProvider provider;
  final VoidCallback? onPressed;
  final bool isLoading;

  const SocialSignInButton({
    super.key,
    required this.provider,
    this.onPressed,
    this.isLoading = false,
  });

  String get _label {
    switch (provider) {
      case SocialProvider.google:
        return 'Continue with Google';
      case SocialProvider.apple:
        return 'Continue with Apple';
      case SocialProvider.facebook:
        return 'Continue with Facebook';
    }
  }

  String get _iconPath {
    switch (provider) {
      case SocialProvider.google:
        return 'assets/icons/google.svg';
      case SocialProvider.apple:
        return 'assets/icons/apple.svg';
      case SocialProvider.facebook:
        return 'assets/icons/facebook.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, AppTheme.buttonHeight),
        side: const BorderSide(color: AppColors.border),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  _iconPath,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: AppTheme.space3),
                Text(
                  _label,
                  style: AppTypography.button.copyWith(
                    color: AppColors.foreground,
                  ),
                ),
              ],
            ),
    );
  }
}
```

### 4.3 Sign In Screen

Create `lib/features/auth/screens/sign_in_screen.dart`:

```dart
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/utils/validators.dart';
import '../../../domain/entities/auth_state.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/loading_button.dart';
import '../../../shared/widgets/social_sign_in_button.dart';
import '../providers/auth_provider.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignIn() async {
    if (!_formKey.currentState!.validate()) return;

    context.unfocus();

    await ref.read(authProvider.notifier).signInWithEmail(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );
  }

  Future<void> _handleGoogleSignIn() async {
    context.unfocus();
    await ref.read(authProvider.notifier).signInWithGoogle();
  }

  Future<void> _handleAppleSignIn() async {
    context.unfocus();
    await ref.read(authProvider.notifier).signInWithApple();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final isLoading = authState.valueOrNull?.isLoading ?? false;

    // Listen for errors
    ref.listen<AsyncValue<AuthState>>(authProvider, (_, state) {
      final authStateValue = state.valueOrNull;
      if (authStateValue is AuthStateError) {
        context.showErrorSnackBar(authStateValue.message);
        // Clear error after showing
        Future.delayed(const Duration(milliseconds: 100), () {
          ref.read(authProvider.notifier).clearError();
        });
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTheme.space6),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: AppTheme.space10),

                // Logo
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(AppTheme.radiusXl),
                  ),
                  child: const Icon(
                    Icons.school_outlined,
                    size: 40,
                    color: AppColors.primaryForeground,
                  ),
                ),

                const SizedBox(height: AppTheme.space6),

                // Title
                Text(
                  'Welcome back!',
                  style: AppTypography.h2,
                ),

                const SizedBox(height: AppTheme.space2),

                Text(
                  'Sign in to continue your journey.',
                  style: AppTypography.body.copyWith(
                    color: AppColors.mutedForeground,
                  ),
                ),

                const SizedBox(height: AppTheme.space8),

                // Email field
                AppTextField(
                  controller: _emailController,
                  label: 'Email',
                  hint: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: Validators.email,
                  prefixIcon: const Icon(Icons.email_outlined),
                ),

                const SizedBox(height: AppTheme.space4),

                // Password field
                AppTextField(
                  controller: _passwordController,
                  label: 'Password',
                  hint: 'Enter your password',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  validator: Validators.password,
                  prefixIcon: const Icon(Icons.lock_outlined),
                  onSubmitted: (_) => _handleSignIn(),
                ),

                const SizedBox(height: AppTheme.space2),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => context.pushNamed('forgotPassword'),
                    child: const Text('Forgot Password?'),
                  ),
                ),

                const SizedBox(height: AppTheme.space4),

                // Sign in button
                LoadingButton(
                  text: 'Sign In',
                  isLoading: isLoading,
                  onPressed: _handleSignIn,
                ),

                const SizedBox(height: AppTheme.space6),

                // Divider
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.space4,
                      ),
                      child: Text(
                        'or continue with',
                        style: AppTypography.caption,
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: AppTheme.space6),

                // Social buttons
                SocialSignInButton(
                  provider: SocialProvider.google,
                  onPressed: _handleGoogleSignIn,
                  isLoading: isLoading,
                ),

                if (Platform.isIOS) ...[
                  const SizedBox(height: AppTheme.space3),
                  SocialSignInButton(
                    provider: SocialProvider.apple,
                    onPressed: _handleAppleSignIn,
                    isLoading: isLoading,
                  ),
                ],

                const SizedBox(height: AppTheme.space8),

                // Sign up link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppTypography.body,
                    ),
                    TextButton(
                      onPressed: () => context.goNamed('signUp'),
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### 4.4 Sign Up Screen

Create `lib/features/auth/screens/sign_up_screen.dart`:

```dart
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/utils/validators.dart';
import '../../../domain/entities/auth_state.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/loading_button.dart';
import '../../../shared/widgets/social_sign_in_button.dart';
import '../providers/auth_provider.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    if (!_formKey.currentState!.validate()) return;

    if (!_agreedToTerms) {
      context.showErrorSnackBar('Please agree to the Terms of Service');
      return;
    }

    context.unfocus();

    await ref.read(authProvider.notifier).signUpWithEmail(
          name: _nameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );
  }

  Future<void> _handleGoogleSignIn() async {
    context.unfocus();
    await ref.read(authProvider.notifier).signInWithGoogle();
  }

  Future<void> _handleAppleSignIn() async {
    context.unfocus();
    await ref.read(authProvider.notifier).signInWithApple();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final isLoading = authState.valueOrNull?.isLoading ?? false;

    // Listen for errors
    ref.listen<AsyncValue<AuthState>>(authProvider, (_, state) {
      final authStateValue = state.valueOrNull;
      if (authStateValue is AuthStateError) {
        context.showErrorSnackBar(authStateValue.message);
        Future.delayed(const Duration(milliseconds: 100), () {
          ref.read(authProvider.notifier).clearError();
        });
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Create Account'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTheme.space6),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name field
                AppTextField(
                  controller: _nameController,
                  label: 'Full Name',
                  hint: 'Enter your full name',
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  validator: Validators.name,
                  prefixIcon: const Icon(Icons.person_outlined),
                ),

                const SizedBox(height: AppTheme.space4),

                // Email field
                AppTextField(
                  controller: _emailController,
                  label: 'Email',
                  hint: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: Validators.email,
                  prefixIcon: const Icon(Icons.email_outlined),
                ),

                const SizedBox(height: AppTheme.space4),

                // Password field
                AppTextField(
                  controller: _passwordController,
                  label: 'Password',
                  hint: 'Create a password',
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  validator: Validators.password,
                  prefixIcon: const Icon(Icons.lock_outlined),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: AppTheme.space4,
                    top: AppTheme.space1,
                  ),
                  child: Text(
                    'Must be at least 8 characters',
                    style: AppTypography.caption,
                  ),
                ),

                const SizedBox(height: AppTheme.space4),

                // Confirm password field
                AppTextField(
                  controller: _confirmPasswordController,
                  label: 'Confirm Password',
                  hint: 'Confirm your password',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  validator: (value) => Validators.confirmPassword(
                    value,
                    _passwordController.text,
                  ),
                  prefixIcon: const Icon(Icons.lock_outlined),
                  onSubmitted: (_) => _handleSignUp(),
                ),

                const SizedBox(height: AppTheme.space4),

                // Terms checkbox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _agreedToTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreedToTerms = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _agreedToTerms = !_agreedToTerms;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: AppTheme.space3),
                          child: Text.rich(
                            TextSpan(
                              text: 'I agree to the ',
                              style: AppTypography.bodySmall,
                              children: [
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: AppTypography.bodySmall.copyWith(
                                    color: AppColors.primary,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                const TextSpan(text: ' and '),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: AppTypography.bodySmall.copyWith(
                                    color: AppColors.primary,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: AppTheme.space6),

                // Sign up button
                LoadingButton(
                  text: 'Create Account',
                  isLoading: isLoading,
                  onPressed: _handleSignUp,
                ),

                const SizedBox(height: AppTheme.space6),

                // Divider
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.space4,
                      ),
                      child: Text(
                        'or sign up with',
                        style: AppTypography.caption,
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: AppTheme.space6),

                // Social buttons
                SocialSignInButton(
                  provider: SocialProvider.google,
                  onPressed: _handleGoogleSignIn,
                  isLoading: isLoading,
                ),

                if (Platform.isIOS) ...[
                  const SizedBox(height: AppTheme.space3),
                  SocialSignInButton(
                    provider: SocialProvider.apple,
                    onPressed: _handleAppleSignIn,
                    isLoading: isLoading,
                  ),
                ],

                const SizedBox(height: AppTheme.space8),

                // Sign in link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: AppTypography.body,
                    ),
                    TextButton(
                      onPressed: () => context.goNamed('signIn'),
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### 4.5 Forgot Password Screen

Create `lib/features/auth/screens/forgot_password_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/loading_button.dart';
import '../providers/auth_provider.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;
  bool _emailSent = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    context.unfocus();
    setState(() => _isLoading = true);

    final success = await ref
        .read(authProvider.notifier)
        .forgotPassword(_emailController.text.trim());

    setState(() => _isLoading = false);

    if (success) {
      setState(() => _emailSent = true);
    } else {
      if (mounted) {
        context.showErrorSnackBar('Failed to send reset email. Please try again.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTheme.space6),
          child: _emailSent ? _buildSuccessContent() : _buildFormContent(),
        ),
      ),
    );
  }

  Widget _buildFormContent() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(AppTheme.radiusLg),
            ),
            child: const Icon(
              Icons.lock_reset_outlined,
              size: 32,
              color: AppColors.foreground,
            ),
          ),

          const SizedBox(height: AppTheme.space6),

          Text(
            'Forgot Password?',
            style: AppTypography.h2,
          ),

          const SizedBox(height: AppTheme.space2),

          Text(
            "No worries! Enter your email address and we'll send you a link to reset your password.",
            style: AppTypography.body.copyWith(
              color: AppColors.mutedForeground,
            ),
          ),

          const SizedBox(height: AppTheme.space8),

          // Email field
          AppTextField(
            controller: _emailController,
            label: 'Email',
            hint: 'Enter your email address',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            validator: Validators.email,
            prefixIcon: const Icon(Icons.email_outlined),
            onSubmitted: (_) => _handleSubmit(),
          ),

          const SizedBox(height: AppTheme.space6),

          // Submit button
          LoadingButton(
            text: 'Send Reset Link',
            isLoading: _isLoading,
            onPressed: _handleSubmit,
          ),

          const SizedBox(height: AppTheme.space6),

          // Back to sign in
          Center(
            child: TextButton.icon(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back, size: 18),
              label: const Text('Back to Sign In'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: AppTheme.space10),

        // Success icon
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.success.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.mark_email_read_outlined,
            size: 40,
            color: AppColors.success,
          ),
        ),

        const SizedBox(height: AppTheme.space6),

        Text(
          'Check Your Email',
          style: AppTypography.h2,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppTheme.space2),

        Text(
          'We have sent a password reset link to:',
          style: AppTypography.body.copyWith(
            color: AppColors.mutedForeground,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppTheme.space2),

        Text(
          _emailController.text,
          style: AppTypography.body.copyWith(
            fontWeight: AppTypography.fontSemibold,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppTheme.space8),

        // Back to sign in button
        LoadingButton(
          text: 'Back to Sign In',
          onPressed: () => context.goNamed('signIn'),
        ),

        const SizedBox(height: AppTheme.space4),

        // Resend link
        TextButton(
          onPressed: () {
            setState(() => _emailSent = false);
          },
          child: const Text("Didn't receive the email? Try again"),
        ),
      ],
    );
  }
}
```

---

## 5. Router Integration

Update `lib/app/router.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/entities/auth_state.dart';
import '../features/auth/providers/auth_provider.dart';
import '../features/auth/screens/forgot_password_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final authStateValue = authState.valueOrNull;

      // Show splash while loading initial auth state
      if (authState.isLoading || authStateValue is AuthStateInitial) {
        return '/';
      }

      final isAuthenticated = authStateValue?.isAuthenticated ?? false;
      final isOnboardingComplete = authStateValue?.user?.onboardingCompleted ?? false;
      final isAuthRoute = state.matchedLocation.startsWith('/auth');
      final isOnboardingRoute = state.matchedLocation == '/onboarding';
      final isSplash = state.matchedLocation == '/';

      // Not authenticated -> redirect to sign in
      if (!isAuthenticated && !isAuthRoute) {
        return '/auth/sign-in';
      }

      // Authenticated but not onboarded -> redirect to onboarding
      if (isAuthenticated && !isOnboardingComplete && !isOnboardingRoute) {
        return '/onboarding';
      }

      // Authenticated and on auth route -> redirect to dashboard
      if (isAuthenticated && isAuthRoute) {
        if (isOnboardingComplete) {
          return '/dashboard';
        } else {
          return '/onboarding';
        }
      }

      // Authenticated on splash -> redirect appropriately
      if (isAuthenticated && isSplash) {
        if (isOnboardingComplete) {
          return '/dashboard';
        } else {
          return '/onboarding';
        }
      }

      return null;
    },
    routes: [
      // Splash screen
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const _SplashScreen(),
      ),

      // Auth routes
      GoRoute(
        path: '/auth/sign-in',
        name: 'signIn',
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: '/auth/sign-up',
        name: 'signUp',
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: '/auth/forgot-password',
        name: 'forgotPassword',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      // Onboarding (placeholder - implemented in Phase 3)
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Onboarding - Phase 3')),
        ),
      ),

      // Dashboard (placeholder - implemented in Phase 9)
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Dashboard')),
          body: const Center(child: Text('Dashboard - Phase 9')),
        ),
      ),
    ],
  );
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 24),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
```

---

## 6. Platform Configuration

### 6.1 iOS Configuration

Update `ios/Runner/Info.plist` with Google Sign-In URL scheme:

```xml
<!-- Add inside <dict> -->
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <!-- Replace with your reversed client ID from Google Cloud Console -->
            <string>com.googleusercontent.apps.YOUR_CLIENT_ID</string>
        </array>
    </dict>
</array>

<!-- For Sign in with Apple -->
<key>com.apple.developer.applesignin</key>
<array>
    <string>Default</string>
</array>
```

### 6.2 Android Configuration

Update `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...>
    <application ...>
        <!-- Add inside <application> for Google Sign-In -->
        <activity
            android:name="com.google.android.gms.auth.api.signin.internal.SignInHubActivity"
            android:exported="true" />
    </application>
</manifest>
```

### 6.3 Create OAuth Icons

Create SVG icons in `assets/icons/`:

**google.svg:**
```xml
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
  <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
  <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
  <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
</svg>
```

**apple.svg:**
```xml
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <path fill="currentColor" d="M17.05 20.28c-.98.95-2.05.8-3.08.35-1.09-.46-2.09-.48-3.24 0-1.44.62-2.2.44-3.06-.35C2.79 15.25 3.51 7.59 9.05 7.31c1.35.07 2.29.74 3.08.8 1.18-.24 2.31-.93 3.57-.84 1.51.12 2.65.72 3.4 1.8-3.12 1.87-2.38 5.98.48 7.13-.57 1.5-1.31 2.99-2.54 4.09l.01-.01zM12.03 7.25c-.15-2.23 1.66-4.07 3.74-4.25.29 2.58-2.34 4.5-3.74 4.25z"/>
</svg>
```

---

## 7. Backend API Reference

### 7.1 POST /api/auth/sign-up

```json
Request:
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "securePassword123"
}

Response (201):
{
  "user": {
    "id": "cuid_xxx",
    "name": "John Doe",
    "email": "john@example.com",
    "role": "CONSULTEE",
    "email_verified": false,
    "onboarding_completed": false
  },
  "token": "eyJhbGciOiJIUzI1NiIs..."
}

Error (400):
{
  "error": "Email already exists"
}
```

### 7.2 POST /api/auth/sign-in

```json
Request:
{
  "email": "john@example.com",
  "password": "securePassword123"
}

Response (200):
{
  "user": { ... },
  "token": "eyJhbGciOiJIUzI1NiIs..."
}

Error (401):
{
  "error": "Invalid credentials"
}
```

### 7.3 POST /api/auth/google

```json
Request:
{
  "idToken": "google_id_token_from_sdk"
}

Response (200):
{
  "user": {
    "id": "cuid_xxx",
    "name": "John Doe",
    "email": "john@example.com",
    "image": "https://lh3.googleusercontent.com/...",
    "role": "CONSULTEE"
  },
  "token": "eyJhbGciOiJIUzI1NiIs..."
}
```

### 7.4 GET /api/auth/session

```
Headers:
  Authorization: Bearer <jwt_token>

Response (200):
{
  "user": {
    "id": "cuid_xxx",
    "name": "John Doe",
    ...
  }
}

Response (401):
{
  "error": "Unauthorized"
}
```

---

## 8. Testing

### 8.1 Auth Provider Tests

Create `test/features/auth/providers/auth_provider_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import 'package:familiarise_mobile/domain/entities/user.dart';
import 'package:familiarise_mobile/domain/entities/auth_state.dart';
import 'package:familiarise_mobile/domain/entities/auth_credentials.dart';
import 'package:familiarise_mobile/domain/repositories/auth_repository.dart';
import 'package:familiarise_mobile/features/auth/providers/auth_provider.dart';
import 'package:familiarise_mobile/data/repositories/auth_repository_impl.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepository;
  late ProviderContainer container;

  const testUser = User(
    id: 'test-user-id',
    name: 'Test User',
    email: 'test@example.com',
  );

  setUpAll(() {
    registerFallbackValue(
      const SignInCredentials(email: '', password: ''),
    );
    registerFallbackValue(
      const SignUpCredentials(name: '', email: '', password: ''),
    );
  });

  setUp(() {
    mockRepository = MockAuthRepository();
    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('Auth Provider', () {
    test('initial state checks session', () async {
      when(() => mockRepository.getSession())
          .thenAnswer((_) async => const Right(testUser));

      // Wait for initial build
      await container.read(authProvider.future);

      final state = container.read(authProvider).valueOrNull;
      expect(state, isA<AuthStateAuthenticated>());
      expect((state as AuthStateAuthenticated).user, equals(testUser));
    });

    test('signInWithEmail success updates state to authenticated', () async {
      when(() => mockRepository.getSession())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(any()))
          .thenAnswer((_) async => const Right(testUser));

      await container.read(authProvider.future);

      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'password123',
          );

      final state = container.read(authProvider).valueOrNull;
      expect(state, isA<AuthStateAuthenticated>());
    });

    test('signInWithEmail failure updates state to error', () async {
      when(() => mockRepository.getSession())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(any())).thenAnswer(
        (_) async => const Left(
          Failure.auth(message: 'Invalid credentials'),
        ),
      );

      await container.read(authProvider.future);

      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'wrong',
          );

      final state = container.read(authProvider).valueOrNull;
      expect(state, isA<AuthStateError>());
      expect((state as AuthStateError).message, 'Invalid credentials');
    });

    test('signOut clears auth state', () async {
      when(() => mockRepository.getSession())
          .thenAnswer((_) async => const Right(testUser));
      when(() => mockRepository.signOut())
          .thenAnswer((_) async => const Right(null));

      await container.read(authProvider.future);

      await container.read(authProvider.notifier).signOut();

      final state = container.read(authProvider).valueOrNull;
      expect(state, isA<AuthStateUnauthenticated>());
    });
  });
}
```

---

## 9. Acceptance Criteria

Before completing Phase 2, verify:

- [ ] Email/password sign in works correctly
- [ ] Email/password sign up creates new account
- [ ] Google Sign-In works on both iOS and Android
- [ ] Apple Sign-In works on iOS
- [ ] Session persists across app restarts
- [ ] Sign out clears all auth data
- [ ] Forgot password sends reset email
- [ ] Form validation displays appropriate errors
- [ ] Loading states display during async operations
- [ ] Error messages display to user
- [ ] Router redirects correctly based on auth state
- [ ] Protected routes require authentication
- [ ] All tests pass

---

## 10. Next Phase

After completing Phase 2, proceed to **Phase 3: Onboarding** which builds on authentication to implement:
- Multi-step onboarding wizard
- User profile creation
- Professional background collection
- Preferences setup

---

## References

- [google_sign_in Package](https://pub.dev/packages/google_sign_in)
- [sign_in_with_apple Package](https://pub.dev/packages/sign_in_with_apple)
- [Flutter Secure Storage](https://pub.dev/packages/flutter_secure_storage)
- [GoRouter Redirect](https://pub.dev/documentation/go_router/latest/topics/Redirection-topic.html)
