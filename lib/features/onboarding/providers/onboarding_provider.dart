import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../core/errors/failures.dart';
import '../../../data/datasources/local/auth_local_source.dart';
import '../../../data/repositories/onboarding_repository_impl.dart';
import '../../../domain/entities/onboarding/onboarding_entities.dart';
import '../../../domain/entities/user.dart';

part 'onboarding_provider.g.dart';

/// Main onboarding state provider
@Riverpod(keepAlive: true)
class Onboarding extends _$Onboarding {
  /// Timer for debouncing auto-save
  Timer? _debounce;

  @override
  OnboardingState build() {
    // Clean up timer on dispose
    ref.onDispose(() {
      _debounce?.cancel();
    });

    // Try to load any saved draft on initialization
    _loadDraft();
    return const OnboardingState();
  }

  Future<void> _loadDraft() async {
    final repository = ref.read(onboardingRepositoryExtendedProvider);
    final result = await repository.loadDraft();

    result.fold(
      (failure) {
        // Draft load failed, mark loading as complete
        state = state.copyWith(isLoadingDraft: false);
      },
      (draft) {
        if (draft != null) {
          // Restore draft state but mark loading as complete
          state = draft.copyWith(isLoadingDraft: false);
        } else {
          // No draft found, mark loading as complete
          state = state.copyWith(isLoadingDraft: false);
        }
      },
    );
  }

  /// Save current state as draft
  Future<void> saveDraft() async {
    final repository = ref.read(onboardingRepositoryExtendedProvider);
    await repository.saveDraft(state);
  }

  /// Set the selected role
  void setRole(UserRole role) {
    state = state.copyWith(
      selectedRole: role,
      error: null,
    );
    _autoSave();
  }

  /// Go to next step
  void nextStep() {
    if (state.currentStep < state.totalSteps - 1 && state.canProceed) {
      state = state.copyWith(
        currentStep: state.currentStep + 1,
        error: null,
      );
      _autoSave();
    }
  }

  /// Go to previous step
  void previousStep() {
    if (state.currentStep > 0) {
      state = state.copyWith(
        currentStep: state.currentStep - 1,
        error: null,
      );
      _autoSave();
    }
  }

  /// Go to specific step
  void goToStep(int step) {
    if (step >= 0 && step < state.totalSteps) {
      state = state.copyWith(
        currentStep: step,
        error: null,
      );
      _autoSave();
    }
  }

  /// Update personal info
  void updatePersonalInfo(PersonalInfo info) {
    state = state.copyWith(
      personalInfo: info,
      error: null,
    );
    _autoSave();
  }

  /// Update consultee profile
  void updateConsulteeProfile(ConsulteeProfileData profile) {
    state = state.copyWith(
      consulteeProfile: profile,
      error: null,
    );
    _autoSave();
  }

  /// Update consultant profile
  void updateConsultantProfile(ConsultantProfileData profile) {
    state = state.copyWith(
      consultantProfile: profile,
      error: null,
    );
    _autoSave();
  }

  /// Update preferences
  void updatePreferences(PreferencesData prefs) {
    state = state.copyWith(
      preferences: prefs,
      error: null,
    );
    _autoSave();
  }

  /// Update agreement
  void updateAgreement(AgreementData agreement) {
    state = state.copyWith(
      agreement: agreement,
      error: null,
    );
    _autoSave();
  }

  /// Accept terms and privacy
  void acceptTerms({
    required bool termsAccepted,
    required bool privacyAccepted,
  }) {
    state = state.copyWith(
      agreement: AgreementData(
        termsAccepted: termsAccepted,
        privacyAccepted: privacyAccepted,
        acceptedAt:
            termsAccepted && privacyAccepted ? DateTime.now().toUtc() : null,
      ),
      error: null,
    );
    _autoSave();
  }

  /// Upload profile image
  Future<String?> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  }) async {
    final repository = ref.read(onboardingRepositoryExtendedProvider);
    final result = await repository.uploadProfileImage(
      imageBytes: imageBytes,
      fileName: fileName,
      contentType: contentType,
    );

    return result.fold(
      (failure) {
        state = state.copyWith(error: failure.displayMessage);
        return null;
      },
      (url) {
        // Update personal info with the new image URL
        final currentInfo = state.personalInfo ?? const PersonalInfo(name: '');
        state = state.copyWith(
          personalInfo: currentInfo.copyWith(image: url),
          error: null,
        );
        _autoSave();
        return url;
      },
    );
  }

  /// Submit onboarding
  Future<User?> submit() async {
    if (!state.isReadyForSubmission) {
      state = state.copyWith(
        error: 'Please complete all required fields before submitting',
      );
      return null;
    }

    state = state.copyWith(
      isSubmitting: true,
      error: null,
    );

    final repository = ref.read(onboardingRepositoryExtendedProvider);
    final result = await repository.submitOnboarding(state);

    return result.fold(
      (failure) {
        state = state.copyWith(
          isSubmitting: false,
          error: failure.displayMessage,
        );
        return null;
      },
      (user) async {
        // Mark onboarding as complete
        state = state.copyWith(
          isSubmitting: false,
          isComplete: true,
        );

        // Clear the draft
        await repository.clearDraft();

        // Update local storage
        final localSource = ref.read(authLocalSourceProvider);
        await localSource.setOnboardingCompleted(true);

        // Note: Auth state refresh is handled by the caller (shell screen)
        // to ensure navigation happens after auth state is updated

        return user;
      },
    );
  }

  /// Reset onboarding state
  void reset() {
    state = const OnboardingState();
    final repository = ref.read(onboardingRepositoryExtendedProvider);
    repository.clearDraft();
  }

  /// Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Auto-save draft with proper debouncing
  ///
  /// Uses Timer to ensure only one save occurs after rapid state changes.
  /// Previous pending saves are cancelled when new changes come in.
  void _autoSave() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      saveDraft();
    });
  }
}

/// Provider to check if there's a saved draft
@riverpod
Future<bool> hasOnboardingDraft(Ref ref) async {
  final repository = ref.watch(onboardingRepositoryExtendedProvider);
  return repository.hasDraft();
}

/// Provider to get the current step
@riverpod
int currentOnboardingStep(Ref ref) {
  return ref.watch(onboardingProvider).currentStep;
}

/// Provider to get onboarding progress
@riverpod
double onboardingProgress(Ref ref) {
  return ref.watch(onboardingProvider).progress;
}

/// Provider to check if user can proceed to next step
@riverpod
bool canProceedToNextStep(Ref ref) {
  return ref.watch(onboardingProvider).canProceed;
}

/// Provider to check if onboarding is submitting
@riverpod
bool isOnboardingSubmitting(Ref ref) {
  return ref.watch(onboardingProvider).isSubmitting;
}

/// Provider to get onboarding error message
@riverpod
String? onboardingError(Ref ref) {
  return ref.watch(onboardingProvider).error;
}

/// Provider to get selected role
@riverpod
UserRole selectedRole(Ref ref) {
  return ref.watch(onboardingProvider).selectedRole;
}
