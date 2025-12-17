# Phase 10: Profile & Settings

## Overview

Phase 10 implements user profile management and application settings. This includes viewing/editing profile information, managing preferences, privacy settings, support access, and account management (logout, delete account).

**Duration**: 1-2 weeks
**Dependencies**: Phase 1-9 (all previous phases)
**Complexity**: Medium

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Dependencies](#dependencies)
3. [Architecture Overview](#architecture-overview)
4. [Domain Layer](#domain-layer)
5. [Data Layer](#data-layer)
6. [Presentation Layer](#presentation-layer)
7. [Settings Features](#settings-features)
8. [Testing](#testing)
9. [Acceptance Criteria](#acceptance-criteria)

---

## Prerequisites

Before starting this phase, ensure:

- [ ] Phases 1-9 are complete and functional
- [ ] User authentication is working
- [ ] User profile data available from backend
- [ ] Image picker permissions configured
- [ ] Backend profile update endpoints available

---

## Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # Image picking
  image_picker: ^1.1.2
  image_cropper: ^8.0.2

  # Settings storage
  shared_preferences: ^2.3.3

  # URL launcher (for external links)
  url_launcher: ^6.3.1

  # Package info (for version display)
  package_info_plus: ^8.1.1

  # Share functionality
  share_plus: ^10.1.2
```

Run:
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### Platform Configuration

#### iOS (ios/Runner/Info.plist)
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>We need access to your photos to set your profile picture</string>
<key>NSCameraUsageDescription</key>
<string>We need camera access to take a profile photo</string>
```

#### Android (android/app/src/main/AndroidManifest.xml)
```xml
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.CAMERA"/>
```

---

## Architecture Overview

```
lib/features/profile/
├── providers/
│   ├── profile_provider.dart          # User profile state
│   ├── settings_provider.dart         # App settings state
│   └── preferences_provider.dart      # User preferences
├── screens/
│   ├── profile_screen.dart            # Main profile screen
│   ├── edit_profile_screen.dart       # Edit profile form
│   ├── settings_screen.dart           # Settings menu
│   ├── preferences_screen.dart        # Notification preferences
│   ├── privacy_screen.dart            # Privacy settings
│   ├── help_support_screen.dart       # Help & FAQ
│   └── about_screen.dart              # App info & licenses
├── widgets/
│   ├── profile_header.dart            # Profile avatar & name
│   ├── profile_menu_item.dart         # Menu list item
│   ├── avatar_picker.dart             # Image picker for avatar
│   ├── settings_toggle.dart           # Toggle switch item
│   └── settings_section.dart          # Settings group header
└── models/
    └── app_settings.dart              # Settings data model
```

---

## Domain Layer

### Entities

#### User Profile Entity (Extended)

```dart
// lib/domain/entities/user_profile.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    String? name,
    String? email,
    String? phone,
    String? image,
    String? timezone,
    UserRole? role,
    bool? emailVerified,
    bool? phoneVerified,
    DateTime? createdAt,
    ConsulteeProfile? consulteeProfile,
  }) = _UserProfile;

  const UserProfile._();

  String get displayName => name ?? email ?? 'User';

  String get initials {
    if (name == null || name!.isEmpty) return 'U';
    final parts = name!.split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name![0].toUpperCase();
  }
}

@freezed
class ConsulteeProfile with _$ConsulteeProfile {
  const factory ConsulteeProfile({
    required String id,
    String? company,
    String? designation,
    Gender? gender,
    DateTime? dateOfBirth,
    CareerStage? careerStage,
    String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
    bool? onboardingCompleted,
  }) = _ConsulteeProfile;
}
```

#### App Settings Entity

```dart
// lib/domain/entities/app_settings.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

enum ThemePreference { system, light, dark }

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    @Default(ThemePreference.system) ThemePreference themePreference,
    @Default(true) bool pushNotificationsEnabled,
    @Default(true) bool emailNotificationsEnabled,
    @Default(true) bool sessionReminders,
    @Default(30) int reminderMinutesBefore,
    @Default(true) bool marketingEmails,
    @Default(true) bool soundEnabled,
    @Default(true) bool vibrationEnabled,
    @Default('en') String languageCode,
  }) = _AppSettings;
}
```

### Repository Interface

```dart
// lib/domain/repositories/profile_repository.dart
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/domain/entities/user_profile.dart';

abstract class ProfileRepository {
  /// Get current user's profile
  Future<Either<Failure, UserProfile>> getProfile();

  /// Update user profile
  Future<Either<Failure, UserProfile>> updateProfile({
    String? name,
    String? phone,
    String? timezone,
  });

  /// Update consultee profile
  Future<Either<Failure, UserProfile>> updateConsulteeProfile({
    String? company,
    String? designation,
    Gender? gender,
    DateTime? dateOfBirth,
    CareerStage? careerStage,
    String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
  });

  /// Upload profile image
  Future<Either<Failure, String>> uploadProfileImage(File image);

  /// Delete profile image
  Future<Either<Failure, void>> deleteProfileImage();

  /// Change password
  Future<Either<Failure, void>> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  /// Request account deletion
  Future<Either<Failure, void>> requestAccountDeletion({
    required String reason,
  });

  /// Get linked accounts (OAuth providers)
  Future<Either<Failure, List<LinkedAccount>>> getLinkedAccounts();

  /// Unlink OAuth account
  Future<Either<Failure, void>> unlinkAccount(String provider);
}

@freezed
class LinkedAccount with _$LinkedAccount {
  const factory LinkedAccount({
    required String provider,
    required String email,
    required DateTime linkedAt,
  }) = _LinkedAccount;
}
```

---

## Data Layer

### Models

#### User Profile Model

```dart
// lib/data/models/user_profile_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';
import 'package:familiarise_mobile/domain/entities/user_profile.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String id,
    String? name,
    String? email,
    String? phone,
    String? image,
    String? timezone,
    String? role,
    @JsonKey(name: 'email_verified') bool? emailVerified,
    @JsonKey(name: 'phone_verified') bool? phoneVerified,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'consultee_profile') ConsulteeProfileModel? consulteeProfile,
  }) = _UserProfileModel;

  const UserProfileModel._();

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  UserProfile toEntity() => UserProfile(
    id: id,
    name: name,
    email: email,
    phone: phone,
    image: image,
    timezone: timezone,
    role: role != null
        ? UserRole.values.firstWhere(
            (e) => e.name == role,
            orElse: () => UserRole.CONSULTEE,
          )
        : null,
    emailVerified: emailVerified,
    phoneVerified: phoneVerified,
    createdAt: createdAt,
    consulteeProfile: consulteeProfile?.toEntity(),
  );
}

@freezed
class ConsulteeProfileModel with _$ConsulteeProfileModel {
  const factory ConsulteeProfileModel({
    required String id,
    String? company,
    String? designation,
    String? gender,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'career_stage') String? careerStage,
    @JsonKey(name: 'linkedin_url') String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
    @JsonKey(name: 'onboarding_completed') bool? onboardingCompleted,
  }) = _ConsulteeProfileModel;

  const ConsulteeProfileModel._();

  factory ConsulteeProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileModelFromJson(json);

  ConsulteeProfile toEntity() => ConsulteeProfile(
    id: id,
    company: company,
    designation: designation,
    gender: gender != null
        ? Gender.values.firstWhere(
            (e) => e.name == gender,
            orElse: () => Gender.PREFER_NOT_TO_SAY,
          )
        : null,
    dateOfBirth: dateOfBirth,
    careerStage: careerStage != null
        ? CareerStage.values.firstWhere(
            (e) => e.name == careerStage,
            orElse: () => CareerStage.EARLY_CAREER,
          )
        : null,
    linkedinUrl: linkedinUrl,
    interests: interests,
    goals: goals,
    onboardingCompleted: onboardingCompleted,
  );
}
```

### Remote Data Source

```dart
// lib/data/datasources/remote/profile_remote_source.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:familiarise_mobile/data/models/user_profile_model.dart';
import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_remote_source.g.dart';

@riverpod
ProfileRemoteSource profileRemoteSource(ProfileRemoteSourceRef ref) {
  return ProfileRemoteSource(ref.watch(dioProvider));
}

class ProfileRemoteSource {
  final Dio _dio;

  ProfileRemoteSource(this._dio);

  Future<UserProfileModel> getProfile() async {
    try {
      final response = await _dio.get('/api/profile');
      return UserProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<UserProfileModel> updateProfile({
    String? name,
    String? phone,
    String? timezone,
  }) async {
    try {
      final response = await _dio.patch(
        '/api/profile',
        data: {
          if (name != null) 'name': name,
          if (phone != null) 'phone': phone,
          if (timezone != null) 'timezone': timezone,
        },
      );
      return UserProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<UserProfileModel> updateConsulteeProfile({
    String? company,
    String? designation,
    String? gender,
    DateTime? dateOfBirth,
    String? careerStage,
    String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
  }) async {
    try {
      final response = await _dio.patch(
        '/api/profile/consultee',
        data: {
          if (company != null) 'company': company,
          if (designation != null) 'designation': designation,
          if (gender != null) 'gender': gender,
          if (dateOfBirth != null) 'date_of_birth': dateOfBirth.toIso8601String(),
          if (careerStage != null) 'career_stage': careerStage,
          if (linkedinUrl != null) 'linkedin_url': linkedinUrl,
          if (interests != null) 'interests': interests,
          if (goals != null) 'goals': goals,
        },
      );
      return UserProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<String> uploadProfileImage(File image) async {
    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          image.path,
          filename: 'profile_${DateTime.now().millisecondsSinceEpoch}.jpg',
        ),
      });

      final response = await _dio.post(
        '/api/profile/image',
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );

      return response.data['imageUrl'];
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> deleteProfileImage() async {
    try {
      await _dio.delete('/api/profile/image');
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _dio.post(
        '/api/profile/change-password',
        data: {
          'currentPassword': currentPassword,
          'newPassword': newPassword,
        },
      );
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> requestAccountDeletion({required String reason}) async {
    try {
      await _dio.post(
        '/api/profile/delete-account',
        data: {'reason': reason},
      );
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<Map<String, dynamic>>> getLinkedAccounts() async {
    try {
      final response = await _dio.get('/api/profile/linked-accounts');
      return List<Map<String, dynamic>>.from(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> unlinkAccount(String provider) async {
    try {
      await _dio.delete('/api/profile/linked-accounts/$provider');
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }
}
```

### Local Data Source (Settings)

```dart
// lib/data/datasources/local/settings_local_source.dart
import 'package:shared_preferences/shared_preferences.dart';
import 'package:familiarise_mobile/domain/entities/app_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_local_source.g.dart';

@riverpod
SettingsLocalSource settingsLocalSource(SettingsLocalSourceRef ref) {
  return SettingsLocalSource();
}

class SettingsLocalSource {
  static const _themeKey = 'theme_preference';
  static const _pushNotificationsKey = 'push_notifications';
  static const _emailNotificationsKey = 'email_notifications';
  static const _sessionRemindersKey = 'session_reminders';
  static const _reminderMinutesKey = 'reminder_minutes';
  static const _marketingEmailsKey = 'marketing_emails';
  static const _soundEnabledKey = 'sound_enabled';
  static const _vibrationEnabledKey = 'vibration_enabled';
  static const _languageCodeKey = 'language_code';

  Future<AppSettings> getSettings() async {
    final prefs = await SharedPreferences.getInstance();

    return AppSettings(
      themePreference: ThemePreference.values[prefs.getInt(_themeKey) ?? 0],
      pushNotificationsEnabled: prefs.getBool(_pushNotificationsKey) ?? true,
      emailNotificationsEnabled: prefs.getBool(_emailNotificationsKey) ?? true,
      sessionReminders: prefs.getBool(_sessionRemindersKey) ?? true,
      reminderMinutesBefore: prefs.getInt(_reminderMinutesKey) ?? 30,
      marketingEmails: prefs.getBool(_marketingEmailsKey) ?? true,
      soundEnabled: prefs.getBool(_soundEnabledKey) ?? true,
      vibrationEnabled: prefs.getBool(_vibrationEnabledKey) ?? true,
      languageCode: prefs.getString(_languageCodeKey) ?? 'en',
    );
  }

  Future<void> saveSettings(AppSettings settings) async {
    final prefs = await SharedPreferences.getInstance();

    await Future.wait([
      prefs.setInt(_themeKey, settings.themePreference.index),
      prefs.setBool(_pushNotificationsKey, settings.pushNotificationsEnabled),
      prefs.setBool(_emailNotificationsKey, settings.emailNotificationsEnabled),
      prefs.setBool(_sessionRemindersKey, settings.sessionReminders),
      prefs.setInt(_reminderMinutesKey, settings.reminderMinutesBefore),
      prefs.setBool(_marketingEmailsKey, settings.marketingEmails),
      prefs.setBool(_soundEnabledKey, settings.soundEnabled),
      prefs.setBool(_vibrationEnabledKey, settings.vibrationEnabled),
      prefs.setString(_languageCodeKey, settings.languageCode),
    ]);
  }

  Future<void> clearSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
```

### Repository Implementation

```dart
// lib/data/repositories/profile_repository_impl.dart
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/core/network/network_info.dart';
import 'package:familiarise_mobile/data/datasources/remote/profile_remote_source.dart';
import 'package:familiarise_mobile/domain/entities/user_profile.dart';
import 'package:familiarise_mobile/domain/repositories/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository_impl.g.dart';

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  return ProfileRepositoryImpl(
    remoteSource: ref.watch(profileRemoteSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteSource _remoteSource;
  final NetworkInfo _networkInfo;

  ProfileRepositoryImpl({
    required ProfileRemoteSource remoteSource,
    required NetworkInfo networkInfo,
  })  : _remoteSource = remoteSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, UserProfile>> getProfile() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final model = await _remoteSource.getProfile();
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> updateProfile({
    String? name,
    String? phone,
    String? timezone,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final model = await _remoteSource.updateProfile(
        name: name,
        phone: phone,
        timezone: timezone,
      );
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> updateConsulteeProfile({
    String? company,
    String? designation,
    Gender? gender,
    DateTime? dateOfBirth,
    CareerStage? careerStage,
    String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final model = await _remoteSource.updateConsulteeProfile(
        company: company,
        designation: designation,
        gender: gender?.name,
        dateOfBirth: dateOfBirth,
        careerStage: careerStage?.name,
        linkedinUrl: linkedinUrl,
        interests: interests,
        goals: goals,
      );
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> uploadProfileImage(File image) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final imageUrl = await _remoteSource.uploadProfileImage(image);
      return Right(imageUrl);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProfileImage() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.deleteProfileImage();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> requestAccountDeletion({
    required String reason,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.requestAccountDeletion(reason: reason);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<LinkedAccount>>> getLinkedAccounts() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final accounts = await _remoteSource.getLinkedAccounts();
      return Right(accounts.map((a) => LinkedAccount(
        provider: a['provider'],
        email: a['email'],
        linkedAt: DateTime.parse(a['linked_at']),
      )).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unlinkAccount(String provider) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.unlinkAccount(provider);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
```

---

## Presentation Layer

### Profile Provider

```dart
// lib/features/profile/providers/profile_provider.dart
import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/domain/entities/user_profile.dart';
import 'package:familiarise_mobile/data/repositories/profile_repository_impl.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';

part 'profile_provider.g.dart';

@riverpod
class UserProfileNotifier extends _$UserProfileNotifier {
  @override
  Future<UserProfile> build() async {
    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.getProfile();
    return result.fold(
      (failure) => throw failure,
      (profile) => profile,
    );
  }

  Future<bool> updateProfile({
    String? name,
    String? phone,
    String? timezone,
  }) async {
    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.updateProfile(
      name: name,
      phone: phone,
      timezone: timezone,
    );

    return result.fold(
      (failure) => false,
      (profile) {
        state = AsyncData(profile);
        return true;
      },
    );
  }

  Future<bool> updateConsulteeProfile({
    String? company,
    String? designation,
    Gender? gender,
    DateTime? dateOfBirth,
    CareerStage? careerStage,
    String? linkedinUrl,
    List<String>? interests,
    List<String>? goals,
  }) async {
    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.updateConsulteeProfile(
      company: company,
      designation: designation,
      gender: gender,
      dateOfBirth: dateOfBirth,
      careerStage: careerStage,
      linkedinUrl: linkedinUrl,
      interests: interests,
      goals: goals,
    );

    return result.fold(
      (failure) => false,
      (profile) {
        state = AsyncData(profile);
        return true;
      },
    );
  }

  Future<bool> uploadImage(File image) async {
    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.uploadProfileImage(image);

    return result.fold(
      (failure) => false,
      (imageUrl) {
        final currentProfile = state.valueOrNull;
        if (currentProfile != null) {
          state = AsyncData(currentProfile.copyWith(image: imageUrl));
        }
        return true;
      },
    );
  }

  Future<bool> deleteImage() async {
    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.deleteProfileImage();

    return result.fold(
      (failure) => false,
      (_) {
        final currentProfile = state.valueOrNull;
        if (currentProfile != null) {
          state = AsyncData(currentProfile.copyWith(image: null));
        }
        return true;
      },
    );
  }

  void refresh() {
    ref.invalidateSelf();
  }
}

@riverpod
class ChangePassword extends _$ChangePassword {
  @override
  FutureOr<void> build() {}

  Future<bool> change({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = const AsyncLoading();

    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }
}

@riverpod
class DeleteAccount extends _$DeleteAccount {
  @override
  FutureOr<void> build() {}

  Future<bool> requestDeletion(String reason) async {
    state = const AsyncLoading();

    final repository = ref.watch(profileRepositoryProvider);
    final result = await repository.requestAccountDeletion(reason: reason);

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
```

### Settings Provider

```dart
// lib/features/profile/providers/settings_provider.dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/domain/entities/app_settings.dart';
import 'package:familiarise_mobile/data/datasources/local/settings_local_source.dart';
import 'package:familiarise_mobile/core/services/firebase_service.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';

part 'settings_provider.g.dart';

@Riverpod(keepAlive: true)
class AppSettingsNotifier extends _$AppSettingsNotifier {
  @override
  Future<AppSettings> build() async {
    final localSource = ref.watch(settingsLocalSourceProvider);
    return localSource.getSettings();
  }

  Future<void> setThemePreference(ThemePreference preference) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(themePreference: preference);
    await _saveSettings(newSettings);
  }

  Future<void> setPushNotifications(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(pushNotificationsEnabled: enabled);
    await _saveSettings(newSettings);

    // Update FCM subscription
    if (enabled) {
      await ref.read(fcmTokenManagerProvider.notifier).registerToken();
    } else {
      await ref.read(fcmTokenManagerProvider.notifier).unregisterToken();
    }
  }

  Future<void> setEmailNotifications(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(emailNotificationsEnabled: enabled);
    await _saveSettings(newSettings);
    // TODO: Update server preference
  }

  Future<void> setSessionReminders(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(sessionReminders: enabled);
    await _saveSettings(newSettings);
  }

  Future<void> setReminderMinutes(int minutes) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(reminderMinutesBefore: minutes);
    await _saveSettings(newSettings);
  }

  Future<void> setMarketingEmails(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(marketingEmails: enabled);
    await _saveSettings(newSettings);
    // TODO: Update server preference
  }

  Future<void> setSoundEnabled(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(soundEnabled: enabled);
    await _saveSettings(newSettings);
  }

  Future<void> setVibrationEnabled(bool enabled) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(vibrationEnabled: enabled);
    await _saveSettings(newSettings);
  }

  Future<void> setLanguage(String languageCode) async {
    final currentSettings = state.valueOrNull;
    if (currentSettings == null) return;

    final newSettings = currentSettings.copyWith(languageCode: languageCode);
    await _saveSettings(newSettings);
  }

  Future<void> _saveSettings(AppSettings settings) async {
    state = AsyncData(settings);
    final localSource = ref.watch(settingsLocalSourceProvider);
    await localSource.saveSettings(settings);
  }

  Future<void> resetToDefaults() async {
    const defaultSettings = AppSettings();
    await _saveSettings(defaultSettings);
  }
}

@riverpod
ThemeMode themeMode(ThemeModeRef ref) {
  final settings = ref.watch(appSettingsNotifierProvider);
  return settings.when(
    data: (s) {
      switch (s.themePreference) {
        case ThemePreference.light:
          return ThemeMode.light;
        case ThemePreference.dark:
          return ThemeMode.dark;
        case ThemePreference.system:
          return ThemeMode.system;
      }
    },
    loading: () => ThemeMode.system,
    error: (_, __) => ThemeMode.system,
  );
}
```

### Profile Screen

```dart
// lib/features/profile/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:familiarise_mobile/features/profile/providers/profile_provider.dart';
import 'package:familiarise_mobile/features/auth/providers/auth_provider.dart';
import 'package:familiarise_mobile/features/profile/widgets/profile_menu_item.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final profileAsync = ref.watch(userProfileNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => context.push('/profile/edit'),
          ),
        ],
      ),
      body: profileAsync.when(
        data: (profile) => SingleChildScrollView(
          child: Column(
            children: [
              // Profile Header
              Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: profile.image != null
                          ? CachedNetworkImageProvider(profile.image!)
                          : null,
                      child: profile.image == null
                          ? Text(
                              profile.initials,
                              style: theme.textTheme.headlineLarge,
                            )
                          : null,
                    ),
                    const SizedBox(height: 16),

                    // Name
                    Text(
                      profile.displayName,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Email
                    if (profile.email != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        profile.email!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],

                    // Designation & Company
                    if (profile.consulteeProfile?.designation != null ||
                        profile.consulteeProfile?.company != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        [
                          profile.consulteeProfile?.designation,
                          profile.consulteeProfile?.company,
                        ].whereType<String>().join(' at '),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              const Divider(),

              // Menu Items
              ProfileMenuItem(
                icon: Icons.person_outline,
                title: 'Edit Profile',
                subtitle: 'Update your personal information',
                onTap: () => context.push('/profile/edit'),
              ),

              ProfileMenuItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
                subtitle: 'App preferences and notifications',
                onTap: () => context.push('/settings'),
              ),

              ProfileMenuItem(
                icon: Icons.security_outlined,
                title: 'Privacy & Security',
                subtitle: 'Password and linked accounts',
                onTap: () => context.push('/settings/privacy'),
              ),

              ProfileMenuItem(
                icon: Icons.history_outlined,
                title: 'Booking History',
                subtitle: 'View your past sessions',
                onTap: () => context.push('/appointments?filter=past'),
              ),

              ProfileMenuItem(
                icon: Icons.payment_outlined,
                title: 'Payment Methods',
                subtitle: 'Manage your payment options',
                onTap: () => context.push('/settings/payments'),
              ),

              const Divider(),

              ProfileMenuItem(
                icon: Icons.help_outline,
                title: 'Help & Support',
                subtitle: 'FAQs and contact support',
                onTap: () => context.push('/help'),
              ),

              ProfileMenuItem(
                icon: Icons.info_outline,
                title: 'About',
                subtitle: 'App version and legal info',
                onTap: () => context.push('/about'),
              ),

              ProfileMenuItem(
                icon: Icons.share_outlined,
                title: 'Share App',
                subtitle: 'Invite friends to Familiarise',
                onTap: () => _shareApp(context),
              ),

              const Divider(),

              ProfileMenuItem(
                icon: Icons.logout,
                title: 'Log Out',
                titleColor: theme.colorScheme.error,
                onTap: () => _showLogoutDialog(context, ref),
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Failed to load profile'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => ref.invalidate(userProfileNotifierProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareApp(BuildContext context) async {
    // import 'package:share_plus/share_plus.dart';
    // await Share.share(
    //   'Check out Familiarise - Connect with expert consultants! https://familiarise.com/app',
    // );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Log Out'),
        content: const Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(authProvider.notifier).signOut();
            },
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
```

### Edit Profile Screen

```dart
// lib/features/profile/screens/edit_profile_screen.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:familiarise_mobile/features/profile/providers/profile_provider.dart';
import 'package:familiarise_mobile/shared/widgets/app_text_field.dart';
import 'package:familiarise_mobile/shared/widgets/loading_button.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _companyController = TextEditingController();
  final _designationController = TextEditingController();
  final _linkedinController = TextEditingController();

  bool _isLoading = false;
  bool _isUploadingImage = false;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  void _loadProfile() {
    final profile = ref.read(userProfileNotifierProvider).valueOrNull;
    if (profile != null) {
      _nameController.text = profile.name ?? '';
      _phoneController.text = profile.phone ?? '';
      _companyController.text = profile.consulteeProfile?.company ?? '';
      _designationController.text = profile.consulteeProfile?.designation ?? '';
      _linkedinController.text = profile.consulteeProfile?.linkedinUrl ?? '';
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _companyController.dispose();
    _designationController.dispose();
    _linkedinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final profileAsync = ref.watch(userProfileNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: profileAsync.when(
        data: (profile) => Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Avatar Section
              Center(
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: _isUploadingImage ? null : _pickImage,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: profile.image != null
                            ? CachedNetworkImageProvider(profile.image!)
                            : null,
                        child: _isUploadingImage
                            ? const CircularProgressIndicator()
                            : profile.image == null
                                ? Icon(
                                    Icons.person,
                                    size: 50,
                                    color: theme.colorScheme.onSurfaceVariant,
                                  )
                                : null,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: theme.colorScheme.primary,
                        child: Icon(
                          Icons.camera_alt,
                          size: 16,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              if (profile.image != null) ...[
                const SizedBox(height: 8),
                Center(
                  child: TextButton(
                    onPressed: _removeImage,
                    child: Text(
                      'Remove Photo',
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                  ),
                ),
              ],

              const SizedBox(height: 24),

              // Personal Info Section
              Text(
                'Personal Information',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              AppTextField(
                controller: _nameController,
                label: 'Full Name',
                prefixIcon: Icons.person_outline,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              AppTextField(
                controller: _phoneController,
                label: 'Phone Number',
                prefixIcon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 24),

              // Professional Info Section
              Text(
                'Professional Information',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              AppTextField(
                controller: _companyController,
                label: 'Company',
                prefixIcon: Icons.business_outlined,
              ),
              const SizedBox(height: 16),

              AppTextField(
                controller: _designationController,
                label: 'Designation',
                prefixIcon: Icons.work_outline,
              ),
              const SizedBox(height: 16),

              AppTextField(
                controller: _linkedinController,
                label: 'LinkedIn URL',
                prefixIcon: Icons.link,
                keyboardType: TextInputType.url,
              ),
              const SizedBox(height: 32),

              // Save Button
              LoadingButton(
                onPressed: _saveProfile,
                isLoading: _isLoading,
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('Failed to load profile')),
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();

    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take Photo'),
              onTap: () async {
                Navigator.pop(context);
                final image = await picker.pickImage(
                  source: ImageSource.camera,
                  maxWidth: 800,
                  maxHeight: 800,
                );
                if (image != null) {
                  await _cropAndUpload(File(image.path));
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () async {
                Navigator.pop(context);
                final image = await picker.pickImage(
                  source: ImageSource.gallery,
                  maxWidth: 800,
                  maxHeight: 800,
                );
                if (image != null) {
                  await _cropAndUpload(File(image.path));
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _cropAndUpload(File imageFile) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Photo',
          toolbarColor: Theme.of(context).colorScheme.primary,
          toolbarWidgetColor: Theme.of(context).colorScheme.onPrimary,
          lockAspectRatio: true,
        ),
        IOSUiSettings(
          title: 'Crop Photo',
          aspectRatioLockEnabled: true,
        ),
      ],
    );

    if (croppedFile != null) {
      setState(() => _isUploadingImage = true);

      final success = await ref
          .read(userProfileNotifierProvider.notifier)
          .uploadImage(File(croppedFile.path));

      setState(() => _isUploadingImage = false);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success ? 'Photo updated' : 'Failed to update photo',
            ),
          ),
        );
      }
    }
  }

  Future<void> _removeImage() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove Photo'),
        content: const Text('Are you sure you want to remove your profile photo?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Remove'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() => _isUploadingImage = true);

      final success = await ref
          .read(userProfileNotifierProvider.notifier)
          .deleteImage();

      setState(() => _isUploadingImage = false);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success ? 'Photo removed' : 'Failed to remove photo',
            ),
          ),
        );
      }
    }
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    // Update user profile
    final profileSuccess = await ref
        .read(userProfileNotifierProvider.notifier)
        .updateProfile(
          name: _nameController.text.trim(),
          phone: _phoneController.text.trim().isNotEmpty
              ? _phoneController.text.trim()
              : null,
        );

    // Update consultee profile
    final consulteeSuccess = await ref
        .read(userProfileNotifierProvider.notifier)
        .updateConsulteeProfile(
          company: _companyController.text.trim().isNotEmpty
              ? _companyController.text.trim()
              : null,
          designation: _designationController.text.trim().isNotEmpty
              ? _designationController.text.trim()
              : null,
          linkedinUrl: _linkedinController.text.trim().isNotEmpty
              ? _linkedinController.text.trim()
              : null,
        );

    setState(() => _isLoading = false);

    if (mounted) {
      if (profileSuccess && consulteeSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully')),
        );
        context.pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to update profile')),
        );
      }
    }
  }
}
```

### Settings Screen

```dart
// lib/features/profile/screens/settings_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:familiarise_mobile/features/profile/providers/settings_provider.dart';
import 'package:familiarise_mobile/domain/entities/app_settings.dart';
import 'package:familiarise_mobile/features/profile/widgets/settings_section.dart';
import 'package:familiarise_mobile/features/profile/widgets/settings_toggle.dart';
import 'package:familiarise_mobile/features/profile/widgets/profile_menu_item.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final settingsAsync = ref.watch(appSettingsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: settingsAsync.when(
        data: (settings) => ListView(
          children: [
            // Appearance Section
            SettingsSection(title: 'Appearance'),

            ListTile(
              leading: const Icon(Icons.palette_outlined),
              title: const Text('Theme'),
              subtitle: Text(_getThemeLabel(settings.themePreference)),
              onTap: () => _showThemeDialog(context, ref, settings),
            ),

            // Notifications Section
            SettingsSection(title: 'Notifications'),

            SettingsToggle(
              icon: Icons.notifications_outlined,
              title: 'Push Notifications',
              subtitle: 'Receive push notifications',
              value: settings.pushNotificationsEnabled,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setPushNotifications(value);
              },
            ),

            SettingsToggle(
              icon: Icons.email_outlined,
              title: 'Email Notifications',
              subtitle: 'Receive email updates',
              value: settings.emailNotificationsEnabled,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setEmailNotifications(value);
              },
            ),

            SettingsToggle(
              icon: Icons.alarm_outlined,
              title: 'Session Reminders',
              subtitle: 'Get reminded before sessions',
              value: settings.sessionReminders,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setSessionReminders(value);
              },
            ),

            if (settings.sessionReminders)
              ListTile(
                leading: const SizedBox(width: 24),
                title: const Text('Reminder Time'),
                subtitle: Text('${settings.reminderMinutesBefore} minutes before'),
                onTap: () => _showReminderDialog(context, ref, settings),
              ),

            SettingsToggle(
              icon: Icons.campaign_outlined,
              title: 'Marketing Emails',
              subtitle: 'Receive promotional emails',
              value: settings.marketingEmails,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setMarketingEmails(value);
              },
            ),

            // Sound & Haptics Section
            SettingsSection(title: 'Sound & Haptics'),

            SettingsToggle(
              icon: Icons.volume_up_outlined,
              title: 'Sound',
              subtitle: 'Play sounds for notifications',
              value: settings.soundEnabled,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setSoundEnabled(value);
              },
            ),

            SettingsToggle(
              icon: Icons.vibration,
              title: 'Vibration',
              subtitle: 'Vibrate for notifications',
              value: settings.vibrationEnabled,
              onChanged: (value) {
                ref.read(appSettingsNotifierProvider.notifier)
                    .setVibrationEnabled(value);
              },
            ),

            // Privacy Section
            SettingsSection(title: 'Privacy & Security'),

            ProfileMenuItem(
              icon: Icons.lock_outline,
              title: 'Change Password',
              onTap: () => context.push('/settings/change-password'),
            ),

            ProfileMenuItem(
              icon: Icons.link,
              title: 'Linked Accounts',
              onTap: () => context.push('/settings/linked-accounts'),
            ),

            ProfileMenuItem(
              icon: Icons.delete_outline,
              title: 'Delete Account',
              titleColor: theme.colorScheme.error,
              onTap: () => context.push('/settings/delete-account'),
            ),

            // Reset Section
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: OutlinedButton(
                onPressed: () => _confirmReset(context, ref),
                child: const Text('Reset to Defaults'),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('Failed to load settings')),
      ),
    );
  }

  String _getThemeLabel(ThemePreference preference) {
    switch (preference) {
      case ThemePreference.system:
        return 'System default';
      case ThemePreference.light:
        return 'Light';
      case ThemePreference.dark:
        return 'Dark';
    }
  }

  void _showThemeDialog(
    BuildContext context,
    WidgetRef ref,
    AppSettings settings,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: ThemePreference.values.map((preference) {
            return RadioListTile<ThemePreference>(
              title: Text(_getThemeLabel(preference)),
              value: preference,
              groupValue: settings.themePreference,
              onChanged: (value) {
                if (value != null) {
                  ref.read(appSettingsNotifierProvider.notifier)
                      .setThemePreference(value);
                  Navigator.pop(context);
                }
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  void _showReminderDialog(
    BuildContext context,
    WidgetRef ref,
    AppSettings settings,
  ) {
    final options = [15, 30, 60, 120];

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reminder Time'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: options.map((minutes) {
            return RadioListTile<int>(
              title: Text('$minutes minutes before'),
              value: minutes,
              groupValue: settings.reminderMinutesBefore,
              onChanged: (value) {
                if (value != null) {
                  ref.read(appSettingsNotifierProvider.notifier)
                      .setReminderMinutes(value);
                  Navigator.pop(context);
                }
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  void _confirmReset(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Settings'),
        content: const Text(
          'Are you sure you want to reset all settings to their defaults?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              ref.read(appSettingsNotifierProvider.notifier).resetToDefaults();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings reset to defaults')),
              );
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
```

### About Screen

```dart
// lib/features/profile/screens/about_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:familiarise_mobile/features/profile/widgets/profile_menu_item.dart';

class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          final packageInfo = snapshot.data;

          return ListView(
            children: [
              // App Logo and Info
              Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    // App Icon
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.psychology,
                        size: 48,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Text(
                      'Familiarise',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),

                    if (packageInfo != null)
                      Text(
                        'Version ${packageInfo.version} (${packageInfo.buildNumber})',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),

              const Divider(),

              // Links
              ProfileMenuItem(
                icon: Icons.description_outlined,
                title: 'Terms of Service',
                onTap: () => _launchUrl('https://familiarise.com/terms'),
              ),

              ProfileMenuItem(
                icon: Icons.privacy_tip_outlined,
                title: 'Privacy Policy',
                onTap: () => _launchUrl('https://familiarise.com/privacy'),
              ),

              ProfileMenuItem(
                icon: Icons.gavel_outlined,
                title: 'Licenses',
                onTap: () => showLicensePage(
                  context: context,
                  applicationName: 'Familiarise',
                  applicationVersion: packageInfo?.version,
                ),
              ),

              const Divider(),

              ProfileMenuItem(
                icon: Icons.language,
                title: 'Website',
                onTap: () => _launchUrl('https://familiarise.com'),
              ),

              ProfileMenuItem(
                icon: Icons.email_outlined,
                title: 'Contact Us',
                subtitle: 'support@familiarise.com',
                onTap: () => _launchUrl('mailto:support@familiarise.com'),
              ),

              // Social Links
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _SocialButton(
                      icon: Icons.facebook,
                      onTap: () => _launchUrl('https://facebook.com/familiarise'),
                    ),
                    const SizedBox(width: 16),
                    _SocialButton(
                      icon: Icons.camera_alt,
                      onTap: () => _launchUrl('https://instagram.com/familiarise'),
                    ),
                    const SizedBox(width: 16),
                    _SocialButton(
                      icon: Icons.alternate_email,
                      onTap: () => _launchUrl('https://twitter.com/familiarise'),
                    ),
                    const SizedBox(width: 16),
                    _SocialButton(
                      icon: Icons.business,
                      onTap: () => _launchUrl('https://linkedin.com/company/familiarise'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Copyright
              Center(
                child: Text(
                  '© ${DateTime.now().year} Familiarise. All rights reserved.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),

              const SizedBox(height: 32),
            ],
          );
        },
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Icon(
          icon,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
```

---

## Settings Features

### Change Password Screen

```dart
// lib/features/profile/screens/change_password_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:familiarise_mobile/features/profile/providers/profile_provider.dart';
import 'package:familiarise_mobile/shared/widgets/app_text_field.dart';
import 'package:familiarise_mobile/shared/widgets/loading_button.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _showCurrentPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final changePasswordState = ref.watch(changePasswordProvider);
    final isLoading = changePasswordState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            AppTextField(
              controller: _currentPasswordController,
              label: 'Current Password',
              prefixIcon: Icons.lock_outline,
              obscureText: !_showCurrentPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _showCurrentPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() => _showCurrentPassword = !_showCurrentPassword);
                },
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your current password';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            AppTextField(
              controller: _newPasswordController,
              label: 'New Password',
              prefixIcon: Icons.lock_outline,
              obscureText: !_showNewPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _showNewPassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() => _showNewPassword = !_showNewPassword);
                },
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a new password';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            AppTextField(
              controller: _confirmPasswordController,
              label: 'Confirm New Password',
              prefixIcon: Icons.lock_outline,
              obscureText: !_showConfirmPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _showConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() => _showConfirmPassword = !_showConfirmPassword);
                },
              ),
              validator: (value) {
                if (value != _newPasswordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            const SizedBox(height: 32),

            LoadingButton(
              onPressed: _changePassword,
              isLoading: isLoading,
              child: const Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _changePassword() async {
    if (!_formKey.currentState!.validate()) return;

    final success = await ref.read(changePasswordProvider.notifier).change(
      currentPassword: _currentPasswordController.text,
      newPassword: _newPasswordController.text,
    );

    if (mounted) {
      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password changed successfully')),
        );
        context.pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to change password')),
        );
      }
    }
  }
}
```

### Delete Account Screen

```dart
// lib/features/profile/screens/delete_account_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:familiarise_mobile/features/profile/providers/profile_provider.dart';
import 'package:familiarise_mobile/features/auth/providers/auth_provider.dart';
import 'package:familiarise_mobile/shared/widgets/app_text_field.dart';
import 'package:familiarise_mobile/shared/widgets/loading_button.dart';

class DeleteAccountScreen extends ConsumerStatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  ConsumerState<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends ConsumerState<DeleteAccountScreen> {
  final _reasonController = TextEditingController();
  bool _understood = false;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deleteState = ref.watch(deleteAccountProvider);
    final isLoading = deleteState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Account'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Warning Card
          Card(
            color: theme.colorScheme.errorContainer,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: theme.colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Warning',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onErrorContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Deleting your account will:',
                    style: TextStyle(
                      color: theme.colorScheme.onErrorContainer,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildBulletPoint(
                    context,
                    'Permanently remove all your data',
                  ),
                  _buildBulletPoint(
                    context,
                    'Cancel any upcoming appointments',
                  ),
                  _buildBulletPoint(
                    context,
                    'Revoke access to chat history',
                  ),
                  _buildBulletPoint(
                    context,
                    'This action cannot be undone',
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Reason
          Text(
            'Why are you leaving?',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Your feedback helps us improve (optional)',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),

          AppTextField(
            controller: _reasonController,
            label: 'Reason for leaving',
            maxLines: 4,
          ),

          const SizedBox(height: 24),

          // Confirmation Checkbox
          CheckboxListTile(
            value: _understood,
            onChanged: (value) {
              setState(() => _understood = value ?? false);
            },
            title: const Text(
              'I understand that this action is permanent and cannot be reversed',
            ),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),

          const SizedBox(height: 24),

          // Delete Button
          LoadingButton(
            onPressed: _understood ? _deleteAccount : null,
            isLoading: isLoading,
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              foregroundColor: theme.colorScheme.onError,
            ),
            child: const Text('Delete My Account'),
          ),

          const SizedBox(height: 16),

          // Cancel Button
          OutlinedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(color: theme.colorScheme.onErrorContainer),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: theme.colorScheme.onErrorContainer),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteAccount() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Final Confirmation'),
        content: const Text(
          'Are you absolutely sure? This will permanently delete your account and all associated data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    final success = await ref.read(deleteAccountProvider.notifier)
        .requestDeletion(_reasonController.text);

    if (mounted && success) {
      // Sign out and navigate to login
      await ref.read(authProvider.notifier).signOut();
    }
  }
}
```

---

## Testing

### Profile Provider Tests

```dart
// test/features/profile/providers/profile_provider_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/domain/entities/user_profile.dart';
import 'package:familiarise_mobile/domain/repositories/profile_repository.dart';
import 'package:familiarise_mobile/data/repositories/profile_repository_impl.dart';
import 'package:familiarise_mobile/features/profile/providers/profile_provider.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late MockProfileRepository mockRepository;
  late ProviderContainer container;

  const testProfile = UserProfile(
    id: '1',
    name: 'Test User',
    email: 'test@example.com',
  );

  setUp(() {
    mockRepository = MockProfileRepository();
    container = ProviderContainer(
      overrides: [
        profileRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('UserProfileNotifier', () {
    test('loads profile on build', () async {
      when(() => mockRepository.getProfile())
          .thenAnswer((_) async => const Right(testProfile));

      final result = await container.read(userProfileNotifierProvider.future);

      expect(result, equals(testProfile));
      verify(() => mockRepository.getProfile()).called(1);
    });

    test('updateProfile returns true on success', () async {
      when(() => mockRepository.getProfile())
          .thenAnswer((_) async => const Right(testProfile));

      const updatedProfile = UserProfile(
        id: '1',
        name: 'Updated Name',
        email: 'test@example.com',
      );

      when(() => mockRepository.updateProfile(
            name: any(named: 'name'),
            phone: any(named: 'phone'),
            timezone: any(named: 'timezone'),
          )).thenAnswer((_) async => const Right(updatedProfile));

      // Initialize provider
      await container.read(userProfileNotifierProvider.future);

      final notifier = container.read(userProfileNotifierProvider.notifier);
      final result = await notifier.updateProfile(name: 'Updated Name');

      expect(result, isTrue);
    });
  });

  group('ChangePassword', () {
    test('returns true on successful password change', () async {
      when(() => mockRepository.changePassword(
            currentPassword: any(named: 'currentPassword'),
            newPassword: any(named: 'newPassword'),
          )).thenAnswer((_) async => const Right(null));

      final notifier = container.read(changePasswordProvider.notifier);
      final result = await notifier.change(
        currentPassword: 'oldPass123',
        newPassword: 'newPass456',
      );

      expect(result, isTrue);
      verify(() => mockRepository.changePassword(
            currentPassword: 'oldPass123',
            newPassword: 'newPass456',
          )).called(1);
    });

    test('returns false on failure', () async {
      when(() => mockRepository.changePassword(
            currentPassword: any(named: 'currentPassword'),
            newPassword: any(named: 'newPassword'),
          )).thenAnswer((_) async => const Left(
            Failure.server(message: 'Incorrect password'),
          ));

      final notifier = container.read(changePasswordProvider.notifier);
      final result = await notifier.change(
        currentPassword: 'wrongPass',
        newPassword: 'newPass456',
      );

      expect(result, isFalse);
    });
  });
}
```

### Settings Provider Tests

```dart
// test/features/profile/providers/settings_provider_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:familiarise_mobile/domain/entities/app_settings.dart';
import 'package:familiarise_mobile/data/datasources/local/settings_local_source.dart';
import 'package:familiarise_mobile/features/profile/providers/settings_provider.dart';

class MockSettingsLocalSource extends Mock implements SettingsLocalSource {}

void main() {
  late MockSettingsLocalSource mockLocalSource;
  late ProviderContainer container;

  const defaultSettings = AppSettings();

  setUp(() {
    mockLocalSource = MockSettingsLocalSource();
    container = ProviderContainer(
      overrides: [
        settingsLocalSourceProvider.overrideWithValue(mockLocalSource),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('AppSettingsNotifier', () {
    test('loads settings on build', () async {
      when(() => mockLocalSource.getSettings())
          .thenAnswer((_) async => defaultSettings);

      final result = await container.read(appSettingsNotifierProvider.future);

      expect(result, equals(defaultSettings));
      verify(() => mockLocalSource.getSettings()).called(1);
    });

    test('setThemePreference updates and saves settings', () async {
      when(() => mockLocalSource.getSettings())
          .thenAnswer((_) async => defaultSettings);
      when(() => mockLocalSource.saveSettings(any()))
          .thenAnswer((_) async {});

      // Initialize
      await container.read(appSettingsNotifierProvider.future);

      final notifier = container.read(appSettingsNotifierProvider.notifier);
      await notifier.setThemePreference(ThemePreference.dark);

      final updated = container.read(appSettingsNotifierProvider).valueOrNull;
      expect(updated?.themePreference, equals(ThemePreference.dark));
    });
  });

  group('themeMode', () {
    test('returns correct ThemeMode based on preference', () async {
      when(() => mockLocalSource.getSettings()).thenAnswer(
        (_) async => const AppSettings(themePreference: ThemePreference.dark),
      );

      // Wait for settings to load
      await container.read(appSettingsNotifierProvider.future);

      final themeMode = container.read(themeModeProvider);
      expect(themeMode, equals(ThemeMode.dark));
    });
  });
}
```

---

## Acceptance Criteria

### Profile Screen
- [ ] Displays user avatar, name, and email
- [ ] Shows professional info (company, designation) if available
- [ ] Edit profile button navigates to edit screen
- [ ] Menu items navigate to correct screens
- [ ] Log out shows confirmation dialog
- [ ] Successfully logs out user

### Edit Profile
- [ ] Loads existing profile data into form
- [ ] Can take photo with camera
- [ ] Can select photo from gallery
- [ ] Image cropped to square
- [ ] Can remove profile photo
- [ ] Validates required fields
- [ ] Saves changes to backend
- [ ] Shows success/error feedback

### Settings
- [ ] Theme preference persists across app restarts
- [ ] Push notification toggle registers/unregisters FCM token
- [ ] Session reminder toggle shows/hides reminder time option
- [ ] All toggles save immediately
- [ ] Reset to defaults confirmation dialog

### Change Password
- [ ] Validates current password
- [ ] Validates new password length
- [ ] Confirms password match
- [ ] Shows/hides password text
- [ ] Success navigates back with message
- [ ] Error shows appropriate message

### Delete Account
- [ ] Shows warning about consequences
- [ ] Optional reason field
- [ ] Must check understanding checkbox
- [ ] Final confirmation dialog
- [ ] Signs out user after deletion

### About Screen
- [ ] Shows app version and build number
- [ ] Links open in external browser
- [ ] Licenses page accessible
- [ ] Social links work correctly

---

## Conclusion

This completes the 10-phase implementation plan for Familiarise Mobile. Each phase builds upon the previous ones:

1. **Phase 1**: Core infrastructure and utilities
2. **Phase 2**: Authentication system
3. **Phase 3**: User onboarding
4. **Phase 4**: Explore & discovery
5. **Phase 5**: Booking & scheduling
6. **Phase 6**: Checkout & payments
7. **Phase 7**: Video meetings
8. **Phase 8**: Chat & messaging
9. **Phase 9**: Dashboard & notifications
10. **Phase 10**: Profile & settings

Each intern should:
1. Read this document thoroughly
2. Set up the development environment
3. Review dependencies from the previous phase
4. Implement features following the provided patterns
5. Write tests for all providers and critical widgets
6. Complete all acceptance criteria before marking done

Good luck with your implementation!
