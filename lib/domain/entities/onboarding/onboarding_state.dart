import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import 'agreement_data.dart';
import 'consultee_profile_data.dart';
import 'consultant_profile_data.dart';
import 'personal_info.dart';
import 'preferences_data.dart';

part 'onboarding_state.freezed.dart';
part 'onboarding_state.g.dart';

/// Overall state for the onboarding flow
@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    /// Current step index (0-4)
    @Default(0) int currentStep,

    /// Selected role (CONSULTEE or CONSULTANT)
    @Default(UserRole.consultee) UserRole selectedRole,

    /// Step 0: Personal information
    PersonalInfo? personalInfo,

    /// Step 1 (Consultee): Profile data
    ConsulteeProfileData? consulteeProfile,

    /// Step 1 (Consultant): Professional profile data
    ConsultantProfileData? consultantProfile,

    /// Step 2 (Consultee): Preferences
    PreferencesData? preferences,

    /// Step 3: Agreement acceptance
    AgreementData? agreement,

    /// Whether submission is in progress
    @Default(false) bool isSubmitting,

    /// Whether onboarding is complete
    @Default(false) bool isComplete,

    /// Error message if any
    String? error,

    /// Whether this state was loaded from a draft
    @Default(false) bool isDraft,
  }) = _OnboardingState;

  const OnboardingState._();

  factory OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStateFromJson(json);

  /// Total number of steps (same for both roles)
  /// Steps: 0=Role, 1=Personal Info, 2=Profile, 3=Preferences/Availability, 4=Agreement, 5=Review
  int get totalSteps => 6;

  /// Progress as a fraction (0.0 to 1.0)
  double get progress => (currentStep + 1) / totalSteps;

  /// Check if current step is valid and user can proceed
  bool get canProceed {
    switch (currentStep) {
      case 0:
        // Role selection step: always valid (default role is set)
        return true;
      case 1:
        // Personal info step: name is required
        return personalInfo?.isValid ?? false;
      case 2:
        // Profile step: depends on role
        if (selectedRole == UserRole.consultee) {
          return consulteeProfile?.isValid ?? true; // All optional
        } else {
          return consultantProfile?.isValid ?? false; // Domain required
        }
      case 3:
        // Preferences (consultee) or Availability info (consultant)
        if (selectedRole == UserRole.consultee) {
          return preferences?.isValid ?? true;
        } else {
          return true; // Info screen, always valid
        }
      case 4:
        // Agreement step
        return agreement?.isAccepted ?? false;
      case 5:
        // Review step - can always proceed (submit)
        return true;
      default:
        return false;
    }
  }

  /// Check if all steps are complete and ready for submission
  bool get isReadyForSubmission {
    if (personalInfo == null || !personalInfo!.isValid) return false;
    if (agreement == null || !agreement!.isAccepted) return false;

    if (selectedRole == UserRole.consultant) {
      if (consultantProfile == null || !consultantProfile!.isValid) {
        return false;
      }
    }

    return true;
  }

  /// Get step title for display
  String getStepTitle(int step) {
    switch (step) {
      case 0:
        return 'Role';
      case 1:
        return 'Personal Info';
      case 2:
        return selectedRole == UserRole.consultee
            ? 'Your Profile'
            : 'Professional Profile';
      case 3:
        return selectedRole == UserRole.consultee
            ? 'Preferences'
            : 'Availability';
      case 4:
        return 'Agreement';
      case 5:
        return 'Review';
      default:
        return '';
    }
  }
}
