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

    /// Whether draft is currently being loaded
    @Default(true) bool isLoadingDraft,
  }) = _OnboardingState;

  const OnboardingState._();

  factory OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStateFromJson(json);

  /// Total number of steps (varies by role).
  /// Consultee: 0=Role, 1=Personal, 2=Profile, 3=Preferences, 4=Agreement, 5=Review (6 steps)
  /// Consultant: 0=Role, 1=Personal, 2=Profile, 3=Background, 4=Availability, 5=Agreement, 6=Review (7 steps)
  int get totalSteps =>
      selectedRole == UserRole.consultant ? 7 : 6;

  /// Progress as a fraction (0.0 to 1.0)
  double get progress => (currentStep + 1) / totalSteps;

  /// Check if current step is valid and user can proceed.
  ///
  /// Step indices differ by role:
  /// Consultee: 0=Role, 1=Personal, 2=Profile, 3=Preferences, 4=Agreement, 5=Review
  /// Consultant: 0=Role, 1=Personal, 2=Profile, 3=Background, 4=Availability, 5=Agreement, 6=Review
  bool get canProceed {
    final isConsultant = selectedRole == UserRole.consultant;

    switch (currentStep) {
      case 0:
        return true; // Role selection
      case 1:
        return personalInfo?.isValid ?? false; // Personal info
      case 2:
        // Profile step
        if (isConsultant) {
          return consultantProfile?.isValid ?? false;
        }
        return consulteeProfile?.isValid ?? true;
      case 3:
        if (isConsultant) {
          return true; // Professional background (all optional)
        }
        return preferences?.isValid ?? true; // Consultee preferences
      case 4:
        if (isConsultant) {
          return true; // Availability info
        }
        return agreement?.isAccepted ?? false; // Consultee agreement
      case 5:
        if (isConsultant) {
          return agreement?.isAccepted ?? false; // Consultant agreement
        }
        return true; // Consultee review
      case 6:
        return true; // Consultant review
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
