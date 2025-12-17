# Phase 3: Onboarding

## Overview

This phase implements a multi-step onboarding wizard that collects essential user information after sign-up. The onboarding flow guides consultees through personal info, professional background, preferences, and terms acceptance before they can access the main app.

**Prerequisites:** Phase 1 (Core Infrastructure) and Phase 2 (Authentication) must be completed
**Target Completion:** Complete onboarding flow with profile creation
**User Type:** Consultees only (this is a consultee-focused app)

---

## Onboarding Flow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Step 1    │────▶│   Step 2    │────▶│   Step 3    │────▶│   Step 4    │────▶│   Step 5    │
│  Personal   │     │ Professional│     │ Preferences │     │   Terms     │     │   Review    │
│    Info     │     │  Background │     │             │     │             │     │             │
└─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘
```

### Step Breakdown

| Step | Title | Fields |
|------|-------|--------|
| 1 | Personal Info | Name, Phone, Date of Birth, Gender, Timezone |
| 2 | Professional | Role/Title, Company, Industry, Career Stage, About |
| 3 | Preferences | Communication preference, Language, Budget, Skills, Goals |
| 4 | Terms | Terms of Service, Privacy Policy, Notifications consent |
| 5 | Review | Profile picture, Summary of all info, Edit options |

---

## 1. Domain Layer

### 1.1 Consultee Profile Entity

Create `lib/domain/entities/consultee_profile.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';

part 'consultee_profile.freezed.dart';

@freezed
class ConsulteeProfile with _$ConsulteeProfile {
  const ConsulteeProfile._();

  const factory ConsulteeProfile({
    required String id,
    required String userId,

    // Personal Info (Step 1)
    String? phone,
    DateTime? dateOfBirth,
    Gender? gender,
    String? timezone,

    // Professional Background (Step 2)
    String? currentRole,
    String? company,
    String? industry,
    CareerStage? careerStage,
    String? about,

    // Preferences (Step 3)
    @Default([]) List<String> preferredCommunication,
    String? preferredLanguage,
    BudgetPreference? budgetPreference,
    @Default([]) List<String> skillsToLearn,
    String? goals,

    // Terms (Step 4)
    @Default(false) bool agreedToTerms,
    @Default(false) bool agreedToPrivacy,
    @Default(false) bool agreedToNotifications,
    DateTime? termsAcceptedAt,

    // Profile
    String? profilePictureUrl,

    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ConsulteeProfile;

  /// Check if basic info is complete
  bool get hasBasicInfo => phone != null || dateOfBirth != null;

  /// Check if professional info is complete
  bool get hasProfessionalInfo =>
      currentRole != null && currentRole!.isNotEmpty;

  /// Check if preferences are set
  bool get hasPreferences => skillsToLearn.isNotEmpty || goals != null;

  /// Check if terms are accepted
  bool get hasAcceptedTerms => agreedToTerms && agreedToPrivacy;

  /// Get completion percentage
  double get completionPercentage {
    int completed = 0;
    int total = 5;

    if (hasBasicInfo) completed++;
    if (hasProfessionalInfo) completed++;
    if (hasPreferences) completed++;
    if (hasAcceptedTerms) completed++;
    if (profilePictureUrl != null) completed++;

    return completed / total;
  }
}

/// Budget preference levels
enum BudgetPreference {
  budget,
  moderate,
  premium,
  flexible;

  String get displayName {
    switch (this) {
      case BudgetPreference.budget:
        return 'Budget-friendly';
      case BudgetPreference.moderate:
        return 'Moderate';
      case BudgetPreference.premium:
        return 'Premium';
      case BudgetPreference.flexible:
        return 'Flexible';
    }
  }

  String get value => name.toUpperCase();

  static BudgetPreference fromString(String? value) {
    if (value == null) return BudgetPreference.flexible;
    return BudgetPreference.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => BudgetPreference.flexible,
    );
  }
}
```

### 1.2 Onboarding State

Create `lib/domain/entities/onboarding_state.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'consultee_profile.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingData with _$OnboardingData {
  const factory OnboardingData({
    // Step 1: Personal Info
    String? name,
    String? phone,
    DateTime? dateOfBirth,
    String? gender,
    String? timezone,

    // Step 2: Professional Background
    String? currentRole,
    String? company,
    String? industry,
    String? careerStage,
    String? about,

    // Step 3: Preferences
    @Default([]) List<String> preferredCommunication,
    String? preferredLanguage,
    String? budgetPreference,
    @Default([]) List<String> skillsToLearn,
    String? goals,

    // Step 4: Terms
    @Default(false) bool agreedToTerms,
    @Default(false) bool agreedToPrivacy,
    @Default(false) bool agreedToNotifications,

    // Step 5: Profile Picture
    String? profilePictureUrl,
    String? profilePictureLocalPath,
  }) = _OnboardingData;

  factory OnboardingData.empty() => const OnboardingData();
}

@freezed
class OnboardingProgress with _$OnboardingProgress {
  const OnboardingProgress._();

  const factory OnboardingProgress({
    @Default(0) int currentStep,
    @Default(5) int totalSteps,
    @Default(false) bool isCompleting,
    String? error,
  }) = _OnboardingProgress;

  double get progress => (currentStep + 1) / totalSteps;

  bool get isFirstStep => currentStep == 0;
  bool get isLastStep => currentStep == totalSteps - 1;

  bool canProceed(OnboardingData data) {
    switch (currentStep) {
      case 0: // Personal Info - name is required
        return data.name != null && data.name!.trim().isNotEmpty;
      case 1: // Professional - optional, can skip
        return true;
      case 2: // Preferences - optional, can skip
        return true;
      case 3: // Terms - must agree to terms and privacy
        return data.agreedToTerms && data.agreedToPrivacy;
      case 4: // Review - always can proceed
        return true;
      default:
        return false;
    }
  }
}
```

### 1.3 Onboarding Repository Interface

Create `lib/domain/repositories/onboarding_repository.dart`:

```dart
import '../entities/consultee_profile.dart';
import '../entities/onboarding_state.dart';
import '../../core/errors/result.dart';

abstract class OnboardingRepository {
  /// Get current onboarding progress
  AsyncResult<ConsulteeProfile?> getProfile();

  /// Save onboarding data (partial save)
  AsyncResult<void> saveProgress(OnboardingData data, int step);

  /// Complete onboarding
  AsyncResult<ConsulteeProfile> completeOnboarding(OnboardingData data);

  /// Upload profile picture
  AsyncResult<String> uploadProfilePicture(String localPath);

  /// Get available industries
  Future<List<String>> getIndustries();

  /// Get available skills/topics
  Future<List<String>> getSkillsAndTopics();

  /// Get timezone options
  Future<List<String>> getTimezones();
}
```

---

## 2. Data Layer

### 2.1 Consultee Profile Model

Create `lib/data/models/consultee_profile_model.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';
import '../../domain/entities/consultee_profile.dart';

part 'consultee_profile_model.freezed.dart';
part 'consultee_profile_model.g.dart';

@freezed
class ConsulteeProfileModel with _$ConsulteeProfileModel {
  const ConsulteeProfileModel._();

  const factory ConsulteeProfileModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,

    // Personal Info
    String? phone,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    String? gender,
    String? timezone,

    // Professional Background
    @JsonKey(name: 'current_role') String? currentRole,
    String? company,
    String? industry,
    @JsonKey(name: 'career_stage') String? careerStage,
    String? about,

    // Preferences
    @JsonKey(name: 'preferred_communication')
    @Default([])
    List<String> preferredCommunication,
    @JsonKey(name: 'preferred_language') String? preferredLanguage,
    @JsonKey(name: 'budget_preference') String? budgetPreference,
    @JsonKey(name: 'skills_to_learn') @Default([]) List<String> skillsToLearn,
    String? goals,

    // Terms
    @JsonKey(name: 'agreed_to_terms') @Default(false) bool agreedToTerms,
    @JsonKey(name: 'agreed_to_privacy') @Default(false) bool agreedToPrivacy,
    @JsonKey(name: 'agreed_to_notifications')
    @Default(false)
    bool agreedToNotifications,
    @JsonKey(name: 'terms_accepted_at') DateTime? termsAcceptedAt,

    // Profile
    @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,

    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ConsulteeProfileModel;

  factory ConsulteeProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileModelFromJson(json);

  ConsulteeProfile toEntity() => ConsulteeProfile(
        id: id,
        userId: userId,
        phone: phone,
        dateOfBirth: dateOfBirth,
        gender: Gender.fromString(gender),
        timezone: timezone,
        currentRole: currentRole,
        company: company,
        industry: industry,
        careerStage: CareerStage.fromString(careerStage),
        about: about,
        preferredCommunication: preferredCommunication,
        preferredLanguage: preferredLanguage,
        budgetPreference: BudgetPreference.fromString(budgetPreference),
        skillsToLearn: skillsToLearn,
        goals: goals,
        agreedToTerms: agreedToTerms,
        agreedToPrivacy: agreedToPrivacy,
        agreedToNotifications: agreedToNotifications,
        termsAcceptedAt: termsAcceptedAt,
        profilePictureUrl: profilePictureUrl,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
```

### 2.2 Onboarding Remote Source

Create `lib/data/datasources/remote/onboarding_remote_source.dart`:

```dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/onboarding_state.dart';
import '../../models/consultee_profile_model.dart';

part 'onboarding_remote_source.g.dart';

@riverpod
OnboardingRemoteSource onboardingRemoteSource(OnboardingRemoteSourceRef ref) {
  return OnboardingRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class OnboardingRemoteSource {
  Future<ConsulteeProfileModel?> getProfile();
  Future<void> saveProgress(OnboardingData data, int step);
  Future<ConsulteeProfileModel> completeOnboarding(OnboardingData data);
  Future<String> uploadProfilePicture(String localPath);
  Future<List<String>> getIndustries();
  Future<List<String>> getSkillsAndTopics();
}

class OnboardingRemoteSourceImpl implements OnboardingRemoteSource {
  final Dio _dio;

  OnboardingRemoteSourceImpl(this._dio);

  @override
  Future<ConsulteeProfileModel?> getProfile() async {
    try {
      final response = await _dio.get(ApiEndpoints.userProfile);
      final data = response.data as Map<String, dynamic>;

      if (data['consulteeProfile'] == null) return null;

      return ConsulteeProfileModel.fromJson(
        data['consulteeProfile'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      throw e.toAppException();
    }
  }

  @override
  Future<void> saveProgress(OnboardingData data, int step) async {
    try {
      await _dio.patch(
        ApiEndpoints.userOnboarding,
        data: {
          'step': step,
          ..._dataToJson(data),
        },
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<ConsulteeProfileModel> completeOnboarding(OnboardingData data) async {
    try {
      final response = await _dio.post(
        '${ApiEndpoints.userOnboarding}/complete',
        data: _dataToJson(data),
      );

      return ConsulteeProfileModel.fromJson(
        response.data['consulteeProfile'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<String> uploadProfilePicture(String localPath) async {
    try {
      final file = File(localPath);
      final fileName = localPath.split('/').last;

      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      });

      final response = await _dio.post(
        '${ApiEndpoints.user}/profile-picture',
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );

      return response.data['url'] as String;
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<List<String>> getIndustries() async {
    try {
      final response = await _dio.get('${ApiEndpoints.domains}/industries');
      return List<String>.from(response.data['industries'] as List);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<List<String>> getSkillsAndTopics() async {
    try {
      final response = await _dio.get('${ApiEndpoints.domains}/skills');
      return List<String>.from(response.data['skills'] as List);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Map<String, dynamic> _dataToJson(OnboardingData data) {
    return {
      if (data.name != null) 'name': data.name,
      if (data.phone != null) 'phone': data.phone,
      if (data.dateOfBirth != null)
        'dateOfBirth': data.dateOfBirth!.toIso8601String(),
      if (data.gender != null) 'gender': data.gender,
      if (data.timezone != null) 'timezone': data.timezone,
      if (data.currentRole != null) 'currentRole': data.currentRole,
      if (data.company != null) 'company': data.company,
      if (data.industry != null) 'industry': data.industry,
      if (data.careerStage != null) 'careerStage': data.careerStage,
      if (data.about != null) 'about': data.about,
      if (data.preferredCommunication.isNotEmpty)
        'preferredCommunication': data.preferredCommunication,
      if (data.preferredLanguage != null)
        'preferredLanguage': data.preferredLanguage,
      if (data.budgetPreference != null)
        'budgetPreference': data.budgetPreference,
      if (data.skillsToLearn.isNotEmpty) 'skillsToLearn': data.skillsToLearn,
      if (data.goals != null) 'goals': data.goals,
      'agreedToTerms': data.agreedToTerms,
      'agreedToPrivacy': data.agreedToPrivacy,
      'agreedToNotifications': data.agreedToNotifications,
      if (data.profilePictureUrl != null)
        'profilePictureUrl': data.profilePictureUrl,
    };
  }
}
```

### 2.3 Onboarding Repository Implementation

Create `lib/data/repositories/onboarding_repository_impl.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/errors/result.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/consultee_profile.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/remote/onboarding_remote_source.dart';

part 'onboarding_repository_impl.g.dart';

@riverpod
OnboardingRepository onboardingRepository(OnboardingRepositoryRef ref) {
  return OnboardingRepositoryImpl(
    remoteSource: ref.watch(onboardingRemoteSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingRemoteSource _remoteSource;
  final NetworkInfo _networkInfo;

  OnboardingRepositoryImpl({
    required OnboardingRemoteSource remoteSource,
    required NetworkInfo networkInfo,
  })  : _remoteSource = remoteSource,
        _networkInfo = networkInfo;

  @override
  AsyncResult<ConsulteeProfile?> getProfile() async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final model = await _remoteSource.getProfile();
      return success(model?.toEntity());
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<void> saveProgress(OnboardingData data, int step) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      await _remoteSource.saveProgress(data, step);
      return success(null);
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<ConsulteeProfile> completeOnboarding(OnboardingData data) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final model = await _remoteSource.completeOnboarding(data);
      return success(model.toEntity());
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  AsyncResult<String> uploadProfilePicture(String localPath) async {
    if (!await _networkInfo.isConnected) {
      return failure(const Failure.network());
    }

    try {
      final url = await _remoteSource.uploadProfilePicture(localPath);
      return success(url);
    } on ServerException catch (e) {
      return failure(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return failure(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<List<String>> getIndustries() async {
    try {
      return await _remoteSource.getIndustries();
    } catch (e) {
      // Return default list on error
      return _defaultIndustries;
    }
  }

  @override
  Future<List<String>> getSkillsAndTopics() async {
    try {
      return await _remoteSource.getSkillsAndTopics();
    } catch (e) {
      // Return default list on error
      return _defaultSkills;
    }
  }

  @override
  Future<List<String>> getTimezones() async {
    return _commonTimezones;
  }

  static const _defaultIndustries = [
    'Technology',
    'Finance',
    'Healthcare',
    'Education',
    'Marketing',
    'Consulting',
    'E-commerce',
    'Real Estate',
    'Media & Entertainment',
    'Manufacturing',
    'Legal',
    'Non-profit',
    'Government',
    'Other',
  ];

  static const _defaultSkills = [
    'Python',
    'JavaScript',
    'React',
    'Flutter',
    'Machine Learning',
    'Data Science',
    'Cloud Computing',
    'DevOps',
    'Product Management',
    'UI/UX Design',
    'Digital Marketing',
    'SEO',
    'Content Writing',
    'Public Speaking',
    'Leadership',
    'Career Transition',
  ];

  static const _commonTimezones = [
    'Asia/Kolkata',
    'America/New_York',
    'America/Los_Angeles',
    'America/Chicago',
    'Europe/London',
    'Europe/Paris',
    'Europe/Berlin',
    'Asia/Tokyo',
    'Asia/Singapore',
    'Asia/Dubai',
    'Australia/Sydney',
    'Pacific/Auckland',
  ];
}
```

---

## 3. Presentation Layer

### 3.1 Onboarding Provider

Create `lib/features/onboarding/providers/onboarding_provider.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/onboarding_repository_impl.dart';
import '../../../domain/entities/onboarding_state.dart';
import '../../../domain/repositories/onboarding_repository.dart';
import '../../../features/auth/providers/auth_provider.dart';

part 'onboarding_provider.g.dart';

@riverpod
class Onboarding extends _$Onboarding {
  OnboardingRepository get _repository => ref.read(onboardingRepositoryProvider);

  @override
  OnboardingProgress build() {
    return const OnboardingProgress();
  }

  void nextStep() {
    final current = state;
    if (!current.isLastStep) {
      state = current.copyWith(currentStep: current.currentStep + 1);
    }
  }

  void previousStep() {
    final current = state;
    if (!current.isFirstStep) {
      state = current.copyWith(currentStep: current.currentStep - 1);
    }
  }

  void goToStep(int step) {
    if (step >= 0 && step < state.totalSteps) {
      state = state.copyWith(currentStep: step);
    }
  }

  Future<bool> complete(OnboardingData data) async {
    state = state.copyWith(isCompleting: true, error: null);

    final result = await _repository.completeOnboarding(data);

    return result.fold(
      (failure) {
        state = state.copyWith(
          isCompleting: false,
          error: failure.userMessage,
        );
        return false;
      },
      (profile) {
        state = state.copyWith(isCompleting: false);

        // Update auth state to reflect completed onboarding
        final currentUser = ref.read(currentUserProvider);
        if (currentUser != null) {
          ref.read(authProvider.notifier).updateUser(
                currentUser.copyWith(
                  onboardingCompleted: true,
                  consulteeProfileId: profile.id,
                ),
              );
        }

        return true;
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

@riverpod
class OnboardingFormData extends _$OnboardingFormData {
  @override
  OnboardingData build() {
    // Pre-populate with user name from auth
    final user = ref.read(currentUserProvider);
    return OnboardingData(
      name: user?.name,
      profilePictureUrl: user?.image,
    );
  }

  void updatePersonalInfo({
    String? name,
    String? phone,
    DateTime? dateOfBirth,
    String? gender,
    String? timezone,
  }) {
    state = state.copyWith(
      name: name ?? state.name,
      phone: phone ?? state.phone,
      dateOfBirth: dateOfBirth ?? state.dateOfBirth,
      gender: gender ?? state.gender,
      timezone: timezone ?? state.timezone,
    );
  }

  void updateProfessionalInfo({
    String? currentRole,
    String? company,
    String? industry,
    String? careerStage,
    String? about,
  }) {
    state = state.copyWith(
      currentRole: currentRole ?? state.currentRole,
      company: company ?? state.company,
      industry: industry ?? state.industry,
      careerStage: careerStage ?? state.careerStage,
      about: about ?? state.about,
    );
  }

  void updatePreferences({
    List<String>? preferredCommunication,
    String? preferredLanguage,
    String? budgetPreference,
    List<String>? skillsToLearn,
    String? goals,
  }) {
    state = state.copyWith(
      preferredCommunication:
          preferredCommunication ?? state.preferredCommunication,
      preferredLanguage: preferredLanguage ?? state.preferredLanguage,
      budgetPreference: budgetPreference ?? state.budgetPreference,
      skillsToLearn: skillsToLearn ?? state.skillsToLearn,
      goals: goals ?? state.goals,
    );
  }

  void updateTerms({
    bool? agreedToTerms,
    bool? agreedToPrivacy,
    bool? agreedToNotifications,
  }) {
    state = state.copyWith(
      agreedToTerms: agreedToTerms ?? state.agreedToTerms,
      agreedToPrivacy: agreedToPrivacy ?? state.agreedToPrivacy,
      agreedToNotifications:
          agreedToNotifications ?? state.agreedToNotifications,
    );
  }

  void updateProfilePicture(String? url, {String? localPath}) {
    state = state.copyWith(
      profilePictureUrl: url,
      profilePictureLocalPath: localPath,
    );
  }

  void addSkill(String skill) {
    if (!state.skillsToLearn.contains(skill)) {
      state = state.copyWith(
        skillsToLearn: [...state.skillsToLearn, skill],
      );
    }
  }

  void removeSkill(String skill) {
    state = state.copyWith(
      skillsToLearn: state.skillsToLearn.where((s) => s != skill).toList(),
    );
  }

  void toggleCommunicationPreference(String preference) {
    final current = state.preferredCommunication;
    if (current.contains(preference)) {
      state = state.copyWith(
        preferredCommunication: current.where((p) => p != preference).toList(),
      );
    } else {
      state = state.copyWith(
        preferredCommunication: [...current, preference],
      );
    }
  }
}

/// Provider for industries list
@riverpod
Future<List<String>> industries(IndustriesRef ref) async {
  final repository = ref.watch(onboardingRepositoryProvider);
  return repository.getIndustries();
}

/// Provider for skills list
@riverpod
Future<List<String>> skills(SkillsRef ref) async {
  final repository = ref.watch(onboardingRepositoryProvider);
  return repository.getSkillsAndTopics();
}

/// Provider for timezones list
@riverpod
Future<List<String>> timezones(TimezonesRef ref) async {
  final repository = ref.watch(onboardingRepositoryProvider);
  return repository.getTimezones();
}
```

### 3.2 Onboarding Screen

Create `lib/features/onboarding/screens/onboarding_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../providers/onboarding_provider.dart';
import '../widgets/onboarding_progress_bar.dart';
import 'steps/personal_info_step.dart';
import 'steps/professional_step.dart';
import 'steps/preferences_step.dart';
import 'steps/terms_step.dart';
import 'steps/review_step.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(onboardingProvider);
    final formData = ref.watch(onboardingFormDataProvider);

    // Listen for errors
    ref.listen<OnboardingProgress>(onboardingProvider, (_, state) {
      if (state.error != null) {
        context.showErrorSnackBar(state.error!);
        ref.read(onboardingProvider.notifier).clearError();
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header with progress
            Padding(
              padding: const EdgeInsets.all(AppTheme.space4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (!progress.isFirstStep)
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            ref.read(onboardingProvider.notifier).previousStep();
                          },
                        )
                      else
                        const SizedBox(width: 48),
                      Expanded(
                        child: Text(
                          'Step ${progress.currentStep + 1} of ${progress.totalSteps}',
                          style: AppTypography.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 48),
                    ],
                  ),
                  const SizedBox(height: AppTheme.space2),
                  OnboardingProgressBar(
                    currentStep: progress.currentStep,
                    totalSteps: progress.totalSteps,
                  ),
                ],
              ),
            ),

            // Step content
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _buildStep(progress.currentStep),
              ),
            ),

            // Bottom navigation
            Padding(
              padding: EdgeInsets.only(
                left: AppTheme.space4,
                right: AppTheme.space4,
                bottom: context.bottomPadding + AppTheme.space4,
              ),
              child: _buildBottomButton(context, ref, progress, formData),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(int step) {
    switch (step) {
      case 0:
        return const PersonalInfoStep(key: ValueKey(0));
      case 1:
        return const ProfessionalStep(key: ValueKey(1));
      case 2:
        return const PreferencesStep(key: ValueKey(2));
      case 3:
        return const TermsStep(key: ValueKey(3));
      case 4:
        return const ReviewStep(key: ValueKey(4));
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildBottomButton(
    BuildContext context,
    WidgetRef ref,
    OnboardingProgress progress,
    OnboardingData formData,
  ) {
    final canProceed = progress.canProceed(formData);

    if (progress.isLastStep) {
      return ElevatedButton(
        onPressed: canProceed && !progress.isCompleting
            ? () async {
                final success = await ref
                    .read(onboardingProvider.notifier)
                    .complete(formData);
                if (success && context.mounted) {
                  context.goNamed('dashboard');
                }
              }
            : null,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, AppTheme.buttonHeight),
        ),
        child: progress.isCompleting
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.primaryForeground,
                ),
              )
            : const Text('Complete Setup'),
      );
    }

    return Row(
      children: [
        if (progress.currentStep > 0 && progress.currentStep < 3)
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                ref.read(onboardingProvider.notifier).nextStep();
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(0, AppTheme.buttonHeight),
              ),
              child: const Text('Skip'),
            ),
          ),
        if (progress.currentStep > 0 && progress.currentStep < 3)
          const SizedBox(width: AppTheme.space3),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: canProceed
                ? () {
                    ref.read(onboardingProvider.notifier).nextStep();
                  }
                : null,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, AppTheme.buttonHeight),
            ),
            child: const Text('Continue'),
          ),
        ),
      ],
    );
  }
}
```

### 3.3 Progress Bar Widget

Create `lib/features/onboarding/widgets/onboarding_progress_bar.dart`:

```dart
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';

class OnboardingProgressBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const OnboardingProgressBar({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        totalSteps,
        (index) => Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: index < totalSteps - 1 ? AppTheme.space1 : 0,
            ),
            height: 4,
            decoration: BoxDecoration(
              color: index <= currentStep
                  ? AppColors.primary
                  : AppColors.secondary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}
```

### 3.4 Step 1: Personal Info

Create `lib/features/onboarding/screens/steps/personal_info_step.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../core/constants/enums.dart';
import '../../../../core/utils/validators.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/onboarding_provider.dart';

class PersonalInfoStep extends ConsumerStatefulWidget {
  const PersonalInfoStep({super.key});

  @override
  ConsumerState<PersonalInfoStep> createState() => _PersonalInfoStepState();
}

class _PersonalInfoStepState extends ConsumerState<PersonalInfoStep> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingFormDataProvider);
    _nameController = TextEditingController(text: data.name ?? '');
    _phoneController = TextEditingController(text: data.phone ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final data = ref.read(onboardingFormDataProvider);
    final picked = await showDatePicker(
      context: context,
      initialDate: data.dateOfBirth ?? DateTime.now().subtract(
        const Duration(days: 365 * 25),
      ),
      firstDate: DateTime(1940),
      lastDate: DateTime.now().subtract(const Duration(days: 365 * 13)),
    );

    if (picked != null) {
      ref.read(onboardingFormDataProvider.notifier).updatePersonalInfo(
            dateOfBirth: picked,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(onboardingFormDataProvider);
    final timezones = ref.watch(timezonesProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppTheme.space4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tell us about yourself', style: AppTypography.h3),
          const SizedBox(height: AppTheme.space2),
          Text(
            "We'll use this to personalize your experience.",
            style: AppTypography.body.copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: AppTheme.space6),

          // Name field (required)
          AppTextField(
            controller: _nameController,
            label: 'Full Name *',
            hint: 'Enter your full name',
            textCapitalization: TextCapitalization.words,
            validator: Validators.name,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updatePersonalInfo(
                    name: value,
                  );
            },
            prefixIcon: const Icon(Icons.person_outlined),
          ),

          const SizedBox(height: AppTheme.space4),

          // Phone field (optional)
          AppTextField(
            controller: _phoneController,
            label: 'Phone (optional)',
            hint: 'Enter your phone number',
            keyboardType: TextInputType.phone,
            validator: Validators.phone,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updatePersonalInfo(
                    phone: value,
                  );
            },
            prefixIcon: const Icon(Icons.phone_outlined),
          ),

          const SizedBox(height: AppTheme.space4),

          // Date of Birth
          GestureDetector(
            onTap: _selectDate,
            child: AbsorbPointer(
              child: AppTextField(
                label: 'Date of Birth',
                hint: 'Select your date of birth',
                controller: TextEditingController(
                  text: data.dateOfBirth != null
                      ? DateFormat('MMM d, yyyy').format(data.dateOfBirth!)
                      : '',
                ),
                prefixIcon: const Icon(Icons.calendar_today_outlined),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
          ),

          const SizedBox(height: AppTheme.space4),

          // Gender selection
          Text('Gender', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          Wrap(
            spacing: AppTheme.space2,
            runSpacing: AppTheme.space2,
            children: Gender.values.map((gender) {
              final isSelected = data.gender == gender.value;
              return ChoiceChip(
                label: Text(gender.displayName),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    ref.read(onboardingFormDataProvider.notifier).updatePersonalInfo(
                          gender: gender.value,
                        );
                  }
                },
              );
            }).toList(),
          ),

          const SizedBox(height: AppTheme.space4),

          // Timezone
          Text('Timezone', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          timezones.when(
            data: (zones) => DropdownButtonFormField<String>(
              value: data.timezone,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.access_time_outlined),
              ),
              hint: const Text('Select your timezone'),
              items: zones.map((tz) {
                return DropdownMenuItem(
                  value: tz,
                  child: Text(tz),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  ref.read(onboardingFormDataProvider.notifier).updatePersonalInfo(
                        timezone: value,
                      );
                }
              },
            ),
            loading: () => const LinearProgressIndicator(),
            error: (_, __) => const Text('Failed to load timezones'),
          ),
        ],
      ),
    );
  }
}
```

### 3.5 Step 2: Professional Background

Create `lib/features/onboarding/screens/steps/professional_step.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../core/constants/enums.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/onboarding_provider.dart';

class ProfessionalStep extends ConsumerStatefulWidget {
  const ProfessionalStep({super.key});

  @override
  ConsumerState<ProfessionalStep> createState() => _ProfessionalStepState();
}

class _ProfessionalStepState extends ConsumerState<ProfessionalStep> {
  late TextEditingController _roleController;
  late TextEditingController _companyController;
  late TextEditingController _aboutController;

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingFormDataProvider);
    _roleController = TextEditingController(text: data.currentRole ?? '');
    _companyController = TextEditingController(text: data.company ?? '');
    _aboutController = TextEditingController(text: data.about ?? '');
  }

  @override
  void dispose() {
    _roleController.dispose();
    _companyController.dispose();
    _aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(onboardingFormDataProvider);
    final industries = ref.watch(industriesProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppTheme.space4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your Professional Background', style: AppTypography.h3),
          const SizedBox(height: AppTheme.space2),
          Text(
            'Help us match you with the right experts.',
            style: AppTypography.body.copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: AppTheme.space6),

          // Current Role
          AppTextField(
            controller: _roleController,
            label: 'Current Role / Title',
            hint: 'e.g., Software Engineer',
            textCapitalization: TextCapitalization.words,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateProfessionalInfo(
                    currentRole: value,
                  );
            },
            prefixIcon: const Icon(Icons.work_outlined),
          ),

          const SizedBox(height: AppTheme.space4),

          // Company
          AppTextField(
            controller: _companyController,
            label: 'Company / Organization',
            hint: 'e.g., Google, Startup XYZ',
            textCapitalization: TextCapitalization.words,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateProfessionalInfo(
                    company: value,
                  );
            },
            prefixIcon: const Icon(Icons.business_outlined),
          ),

          const SizedBox(height: AppTheme.space4),

          // Industry
          Text('Industry', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          industries.when(
            data: (industryList) => DropdownButtonFormField<String>(
              value: data.industry,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.category_outlined),
              ),
              hint: const Text('Select your industry'),
              items: industryList.map((industry) {
                return DropdownMenuItem(
                  value: industry,
                  child: Text(industry),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  ref.read(onboardingFormDataProvider.notifier).updateProfessionalInfo(
                        industry: value,
                      );
                }
              },
            ),
            loading: () => const LinearProgressIndicator(),
            error: (_, __) => const Text('Failed to load industries'),
          ),

          const SizedBox(height: AppTheme.space4),

          // Career Stage
          Text('Career Stage', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          Wrap(
            spacing: AppTheme.space2,
            runSpacing: AppTheme.space2,
            children: CareerStage.values.map((stage) {
              final isSelected = data.careerStage == stage.value;
              return ChoiceChip(
                label: Text(stage.displayName),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    ref.read(onboardingFormDataProvider.notifier).updateProfessionalInfo(
                          careerStage: stage.value,
                        );
                  }
                },
              );
            }).toList(),
          ),

          const SizedBox(height: AppTheme.space4),

          // About
          AppTextField(
            controller: _aboutController,
            label: 'About Me',
            hint: 'Tell us a bit about yourself and your goals...',
            maxLines: 4,
            minLines: 3,
            maxLength: 500,
            showCounter: true,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateProfessionalInfo(
                    about: value,
                  );
            },
          ),
        ],
      ),
    );
  }
}
```

### 3.6 Step 3: Preferences

Create `lib/features/onboarding/screens/steps/preferences_step.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../domain/entities/consultee_profile.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/onboarding_provider.dart';

class PreferencesStep extends ConsumerStatefulWidget {
  const PreferencesStep({super.key});

  @override
  ConsumerState<PreferencesStep> createState() => _PreferencesStepState();
}

class _PreferencesStepState extends ConsumerState<PreferencesStep> {
  late TextEditingController _goalsController;

  final _communicationOptions = [
    'Video Call',
    'Audio Call',
    'In-Person',
    'Chat',
  ];

  final _languageOptions = [
    'English',
    'Hindi',
    'Spanish',
    'French',
    'German',
    'Mandarin',
    'Japanese',
    'Other',
  ];

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingFormDataProvider);
    _goalsController = TextEditingController(text: data.goals ?? '');
  }

  @override
  void dispose() {
    _goalsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(onboardingFormDataProvider);
    final skills = ref.watch(skillsProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppTheme.space4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your Preferences', style: AppTypography.h3),
          const SizedBox(height: AppTheme.space2),
          Text(
            'Customize how you want to connect with experts.',
            style: AppTypography.body.copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: AppTheme.space6),

          // Preferred Communication
          Text('Preferred Communication', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          Wrap(
            spacing: AppTheme.space2,
            runSpacing: AppTheme.space2,
            children: _communicationOptions.map((option) {
              final isSelected = data.preferredCommunication.contains(option);
              return FilterChip(
                label: Text(option),
                selected: isSelected,
                onSelected: (selected) {
                  ref.read(onboardingFormDataProvider.notifier)
                      .toggleCommunicationPreference(option);
                },
              );
            }).toList(),
          ),

          const SizedBox(height: AppTheme.space4),

          // Preferred Language
          Text('Preferred Language', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          DropdownButtonFormField<String>(
            value: data.preferredLanguage,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.language_outlined),
            ),
            hint: const Text('Select your preferred language'),
            items: _languageOptions.map((lang) {
              return DropdownMenuItem(
                value: lang,
                child: Text(lang),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                ref.read(onboardingFormDataProvider.notifier).updatePreferences(
                      preferredLanguage: value,
                    );
              }
            },
          ),

          const SizedBox(height: AppTheme.space4),

          // Budget Preference
          Text('Budget Preference', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          Wrap(
            spacing: AppTheme.space2,
            runSpacing: AppTheme.space2,
            children: BudgetPreference.values.map((budget) {
              final isSelected = data.budgetPreference == budget.value;
              return ChoiceChip(
                label: Text(budget.displayName),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    ref.read(onboardingFormDataProvider.notifier).updatePreferences(
                          budgetPreference: budget.value,
                        );
                  }
                },
              );
            }).toList(),
          ),

          const SizedBox(height: AppTheme.space4),

          // Skills to Learn
          Text('Skills You Want to Develop', style: AppTypography.label),
          const SizedBox(height: AppTheme.space2),
          skills.when(
            data: (skillList) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Selected skills
                if (data.skillsToLearn.isNotEmpty) ...[
                  Wrap(
                    spacing: AppTheme.space2,
                    runSpacing: AppTheme.space2,
                    children: data.skillsToLearn.map((skill) {
                      return Chip(
                        label: Text(skill),
                        onDeleted: () {
                          ref.read(onboardingFormDataProvider.notifier)
                              .removeSkill(skill);
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: AppTheme.space2),
                ],
                // Available skills
                Wrap(
                  spacing: AppTheme.space2,
                  runSpacing: AppTheme.space2,
                  children: skillList
                      .where((skill) => !data.skillsToLearn.contains(skill))
                      .take(10)
                      .map((skill) {
                    return ActionChip(
                      label: Text(skill),
                      avatar: const Icon(Icons.add, size: 18),
                      onPressed: () {
                        ref.read(onboardingFormDataProvider.notifier)
                            .addSkill(skill);
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
            loading: () => const LinearProgressIndicator(),
            error: (_, __) => const Text('Failed to load skills'),
          ),

          const SizedBox(height: AppTheme.space4),

          // Goals
          AppTextField(
            controller: _goalsController,
            label: 'Your Goals',
            hint: 'What do you hope to achieve through mentorship?',
            maxLines: 4,
            minLines: 3,
            maxLength: 500,
            showCounter: true,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updatePreferences(
                    goals: value,
                  );
            },
          ),
        ],
      ),
    );
  }
}
```

### 3.7 Step 4: Terms

Create `lib/features/onboarding/screens/steps/terms_step.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../app/theme/app_typography.dart';
import '../../providers/onboarding_provider.dart';

class TermsStep extends ConsumerWidget {
  const TermsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(onboardingFormDataProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppTheme.space4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Terms & Conditions', style: AppTypography.h3),
          const SizedBox(height: AppTheme.space2),
          Text(
            'Please review and accept our terms to continue.',
            style: AppTypography.body.copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: AppTheme.space6),

          // Terms summary card
          Container(
            padding: const EdgeInsets.all(AppTheme.space4),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(AppTheme.radiusLg),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'By using Familiarise, you agree to:',
                  style: AppTypography.body.copyWith(
                    fontWeight: AppTypography.fontMedium,
                  ),
                ),
                const SizedBox(height: AppTheme.space3),
                _buildBulletPoint('Respectful communication with all users'),
                _buildBulletPoint('24-hour cancellation policy for bookings'),
                _buildBulletPoint('Payment terms for all consultations'),
                _buildBulletPoint('Protection of your personal data'),
                const SizedBox(height: AppTheme.space3),
                TextButton(
                  onPressed: () {
                    // TODO: Open full terms
                  },
                  child: const Text('Read full terms...'),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppTheme.space6),

          // Terms checkbox
          _buildCheckboxTile(
            title: 'I agree to the Terms of Service *',
            value: data.agreedToTerms,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateTerms(
                    agreedToTerms: value,
                  );
            },
            required: true,
          ),

          const SizedBox(height: AppTheme.space3),

          // Privacy checkbox
          _buildCheckboxTile(
            title: 'I agree to the Privacy Policy *',
            value: data.agreedToPrivacy,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateTerms(
                    agreedToPrivacy: value,
                  );
            },
            required: true,
          ),

          const SizedBox(height: AppTheme.space3),

          // Notifications checkbox
          _buildCheckboxTile(
            title: 'I consent to receive notifications about bookings and updates',
            value: data.agreedToNotifications,
            onChanged: (value) {
              ref.read(onboardingFormDataProvider.notifier).updateTerms(
                    agreedToNotifications: value,
                  );
            },
            required: false,
          ),

          const SizedBox(height: AppTheme.space4),

          Text(
            '* Required',
            style: AppTypography.caption,
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppTheme.space2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('  \u2022  '),
          Expanded(
            child: Text(text, style: AppTypography.bodySmall),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxTile({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
    required bool required,
  }) {
    return InkWell(
      onTap: () => onChanged(!value),
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      child: Container(
        padding: const EdgeInsets.all(AppTheme.space3),
        decoration: BoxDecoration(
          border: Border.all(
            color: required && !value ? AppColors.destructive : AppColors.border,
          ),
          borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        ),
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: onChanged,
            ),
            Expanded(
              child: Text(
                title,
                style: AppTypography.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### 3.8 Step 5: Review

Create `lib/features/onboarding/screens/steps/review_step.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../app/theme/app_typography.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/profile_picture_picker.dart';

class ReviewStep extends ConsumerWidget {
  const ReviewStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(onboardingFormDataProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppTheme.space4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Review Your Profile', style: AppTypography.h3),
          const SizedBox(height: AppTheme.space2),
          Text(
            'Make sure everything looks good before completing setup.',
            style: AppTypography.body.copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: AppTheme.space6),

          // Profile Picture
          Center(
            child: ProfilePicturePicker(
              currentUrl: data.profilePictureUrl,
              onImageSelected: (path) {
                ref.read(onboardingFormDataProvider.notifier).updateProfilePicture(
                      null,
                      localPath: path,
                    );
              },
            ),
          ),

          const SizedBox(height: AppTheme.space6),

          // Personal Info Section
          _buildSection(
            context: context,
            ref: ref,
            title: 'Personal Info',
            step: 0,
            items: [
              _buildInfoRow('Name', data.name ?? '-'),
              _buildInfoRow('Phone', data.phone ?? 'Not provided'),
              _buildInfoRow(
                'Date of Birth',
                data.dateOfBirth != null
                    ? '${data.dateOfBirth!.day}/${data.dateOfBirth!.month}/${data.dateOfBirth!.year}'
                    : 'Not provided',
              ),
              _buildInfoRow('Timezone', data.timezone ?? 'Not set'),
            ],
          ),

          const SizedBox(height: AppTheme.space4),

          // Professional Section
          _buildSection(
            context: context,
            ref: ref,
            title: 'Professional',
            step: 1,
            items: [
              _buildInfoRow('Role', data.currentRole ?? 'Not provided'),
              _buildInfoRow('Company', data.company ?? 'Not provided'),
              _buildInfoRow('Industry', data.industry ?? 'Not set'),
              _buildInfoRow('Career Stage', data.careerStage ?? 'Not set'),
            ],
          ),

          const SizedBox(height: AppTheme.space4),

          // Preferences Section
          _buildSection(
            context: context,
            ref: ref,
            title: 'Preferences',
            step: 2,
            items: [
              _buildInfoRow(
                'Communication',
                data.preferredCommunication.isNotEmpty
                    ? data.preferredCommunication.join(', ')
                    : 'Not set',
              ),
              _buildInfoRow('Language', data.preferredLanguage ?? 'Not set'),
              _buildInfoRow('Budget', data.budgetPreference ?? 'Flexible'),
              _buildInfoRow(
                'Skills',
                data.skillsToLearn.isNotEmpty
                    ? data.skillsToLearn.join(', ')
                    : 'None selected',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required BuildContext context,
    required WidgetRef ref,
    required String title,
    required int step,
    required List<Widget> items,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.space4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTypography.h4,
              ),
              TextButton(
                onPressed: () {
                  ref.read(onboardingProvider.notifier).goToStep(step);
                },
                child: const Text('Edit'),
              ),
            ],
          ),
          const Divider(),
          ...items,
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppTheme.space2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: AppTypography.bodySmall,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTypography.body,
            ),
          ),
        ],
      ),
    );
  }
}
```

### 3.9 Profile Picture Picker Widget

Create `lib/features/onboarding/widgets/profile_picture_picker.dart`:

```dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';

class ProfilePicturePicker extends StatelessWidget {
  final String? currentUrl;
  final ValueChanged<String> onImageSelected;

  const ProfilePicturePicker({
    super.key,
    this.currentUrl,
    required this.onImageSelected,
  });

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();

    // Show bottom sheet to choose source
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take Photo'),
              onTap: () => Navigator.pop(context, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () => Navigator.pop(context, ImageSource.gallery),
            ),
          ],
        ),
      ),
    );

    if (source != null) {
      final image = await picker.pickImage(
        source: source,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 80,
      );

      if (image != null) {
        onImageSelected(image.path);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _pickImage(context),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.secondary,
                backgroundImage: currentUrl != null
                    ? currentUrl!.startsWith('http')
                        ? NetworkImage(currentUrl!)
                        : FileImage(File(currentUrl!)) as ImageProvider
                    : null,
                child: currentUrl == null
                    ? const Icon(
                        Icons.person,
                        size: 48,
                        color: AppColors.mutedForeground,
                      )
                    : null,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(AppTheme.space2),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.background,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: AppColors.primaryForeground,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppTheme.space2),
        Text(
          'Tap to upload photo',
          style: AppTypography.caption,
        ),
      ],
    );
  }
}
```

---

## 4. Router Update

Update `lib/app/router.dart` to include onboarding route:

```dart
// Add import
import '../features/onboarding/screens/onboarding_screen.dart';

// Update the onboarding route
GoRoute(
  path: '/onboarding',
  name: 'onboarding',
  builder: (context, state) => const OnboardingScreen(),
),
```

---

## 5. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # ... existing dependencies
  image_picker: ^1.0.7
```

---

## 6. Acceptance Criteria

Before completing Phase 3, verify:

- [ ] All 5 onboarding steps render correctly
- [ ] Navigation between steps works (next, back, skip)
- [ ] Form validation prevents empty required fields
- [ ] Progress bar updates correctly
- [ ] Terms must be accepted to proceed
- [ ] Profile picture can be selected from camera/gallery
- [ ] Review step shows all entered data
- [ ] Edit buttons navigate to correct step
- [ ] Onboarding completion updates auth state
- [ ] User redirects to dashboard after completion
- [ ] Data persists if user navigates back
- [ ] All tests pass

---

## 7. Next Phase

After completing Phase 3, proceed to **Phase 4: Explore & Discovery** which implements:
- Browse consultants screen
- Search and filter functionality
- Consultant profile view
- Domain/category browsing

---

## References

- [Image Picker Package](https://pub.dev/packages/image_picker)
- [Flutter Forms Documentation](https://docs.flutter.dev/cookbook/forms)
