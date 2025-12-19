import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/onboarding/onboarding_entities.dart';

part 'onboarding_draft_model.freezed.dart';
part 'onboarding_draft_model.g.dart';

/// Model for persisting onboarding draft to local storage
@freezed
class OnboardingDraftModel with _$OnboardingDraftModel {
  const factory OnboardingDraftModel({
    required int currentStep,
    required String selectedRole,
    Map<String, dynamic>? personalInfo,
    Map<String, dynamic>? consulteeProfile,
    Map<String, dynamic>? consultantProfile,
    Map<String, dynamic>? preferences,
    Map<String, dynamic>? agreement,
    DateTime? lastSavedAt,
  }) = _OnboardingDraftModel;

  const OnboardingDraftModel._();

  factory OnboardingDraftModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingDraftModelFromJson(json);

  /// Create draft model from onboarding state
  factory OnboardingDraftModel.fromState(OnboardingState state) {
    return OnboardingDraftModel(
      currentStep: state.currentStep,
      selectedRole: state.selectedRole.name,
      personalInfo: state.personalInfo?.toJson(),
      consulteeProfile: state.consulteeProfile?.toJson(),
      consultantProfile: state.consultantProfile?.toJson(),
      preferences: state.preferences?.toJson(),
      agreement: state.agreement?.toJson(),
      lastSavedAt: DateTime.now().toUtc(),
    );
  }

  /// Convert draft model to onboarding state
  OnboardingState toState() {
    return OnboardingState(
      currentStep: currentStep,
      selectedRole: UserRole.values.firstWhere(
        (r) => r.name == selectedRole,
        orElse: () => UserRole.consultee,
      ),
      personalInfo: personalInfo != null
          ? PersonalInfo.fromJson(personalInfo!)
          : null,
      consulteeProfile: consulteeProfile != null
          ? ConsulteeProfileData.fromJson(consulteeProfile!)
          : null,
      consultantProfile: consultantProfile != null
          ? ConsultantProfileData.fromJson(consultantProfile!)
          : null,
      preferences: preferences != null
          ? PreferencesData.fromJson(preferences!)
          : null,
      agreement: agreement != null
          ? AgreementData.fromJson(agreement!)
          : null,
      isDraft: true,
    );
  }
}
