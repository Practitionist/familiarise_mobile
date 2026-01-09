import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/onboarding/onboarding_state.dart';

part 'onboarding_request_model.freezed.dart';
part 'onboarding_request_model.g.dart';

/// Convert camelCase enum name to SCREAMING_SNAKE_CASE for database
/// e.g., 'earlyCareer' -> 'EARLY_CAREER', 'nonBinary' -> 'NON_BINARY'
String? _toDbEnum(String? enumName) {
  if (enumName == null) return null;
  // Insert underscore before uppercase letters and convert to uppercase
  return enumName
      .replaceAllMapped(
        RegExp(r'([a-z])([A-Z])'),
        (match) => '${match.group(1)}_${match.group(2)}',
      )
      .toUpperCase();
}

/// Request model for submitting onboarding data to the API
@freezed
class OnboardingRequestModel with _$OnboardingRequestModel {
  const factory OnboardingRequestModel({
    required String role,
    required PersonalInfoRequest personalInfo,
    ConsulteeProfileRequest? consulteeProfile,
    ConsultantProfileRequest? consultantProfile,
    required AgreementRequest agreement,
  }) = _OnboardingRequestModel;

  const OnboardingRequestModel._();

  factory OnboardingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingRequestModelFromJson(json);

  /// Create request from onboarding state
  factory OnboardingRequestModel.fromState(OnboardingState state) {
    final isConsultee = state.selectedRole == UserRole.consultee;
    final personalInfo = state.personalInfo!;
    final agreement = state.agreement!;

    return OnboardingRequestModel(
      role: isConsultee ? 'CONSULTEE' : 'CONSULTANT',
      personalInfo: PersonalInfoRequest(
        name: personalInfo.name,
        phone: personalInfo.phone,
        dateOfBirth: personalInfo.dateOfBirth?.toIso8601String(),
        gender: _toDbEnum(personalInfo.gender?.name),
        timezone: personalInfo.timezone,
        image: personalInfo.image,
        city: personalInfo.city,
        country: personalInfo.country,
        address: personalInfo.address,
        linkedinUrl: personalInfo.linkedinUrl,
        bio: personalInfo.bio,
      ),
      consulteeProfile: isConsultee && state.consulteeProfile != null
          ? ConsulteeProfileRequest(
              occupation: state.consulteeProfile!.occupation,
              aboutMe: state.consulteeProfile!.aboutMe,
              careerStage: _toDbEnum(state.consulteeProfile!.careerStage?.name),
              currentCompany: state.consulteeProfile!.currentCompany,
              industry: state.consulteeProfile!.industry,
              skillsToDevelop: state.consulteeProfile!.skillsToDevelop,
              budgetPreference:
                  _toDbEnum(state.preferences?.budgetPreference?.name),
              preferredCommunicationMethod: _toDbEnum(
                  state.preferences?.preferredCommunicationMethod.name),
              preferredLanguage: state.preferences?.preferredLanguage,
              linkedinUrl: state.consulteeProfile!.linkedinUrl,
            )
          : null,
      consultantProfile: !isConsultee && state.consultantProfile != null
          ? ConsultantProfileRequest(
              experience: state.consultantProfile!.experience,
              description: state.consultantProfile!.description,
              domainId: state.consultantProfile!.domainId!,
              subDomainIds: state.consultantProfile!.subDomainIds,
              headline: state.consultantProfile!.headline,
              languages: state.consultantProfile!.languages,
              toolsAndTechnologies:
                  state.consultantProfile!.toolsAndTechnologies,
              mentoringStyle: state.consultantProfile!.mentoringStyle,
              sessionTypes: state.consultantProfile!.sessionTypes,
              websiteUrl: state.consultantProfile!.websiteUrl,
              twitterUrl: state.consultantProfile!.twitterUrl,
              githubUrl: state.consultantProfile!.githubUrl,
              videoIntroUrl: state.consultantProfile!.videoIntroUrl,
            )
          : null,
      agreement: AgreementRequest(
        termsAccepted: agreement.termsAccepted,
        privacyAccepted: agreement.privacyAccepted,
        acceptedAt: agreement.acceptedAt?.toIso8601String() ??
            DateTime.now().toUtc().toIso8601String(),
      ),
    );
  }
}

@freezed
class PersonalInfoRequest with _$PersonalInfoRequest {
  const factory PersonalInfoRequest({
    required String name,
    String? phone,
    String? dateOfBirth,
    String? gender,
    String? timezone,
    String? image,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
    String? bio,
  }) = _PersonalInfoRequest;

  factory PersonalInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoRequestFromJson(json);
}

@freezed
class ConsulteeProfileRequest with _$ConsulteeProfileRequest {
  const factory ConsulteeProfileRequest({
    String? occupation,
    String? aboutMe,
    String? careerStage,
    String? currentCompany,
    String? industry,
    @Default([]) List<String> skillsToDevelop,
    String? budgetPreference,
    String? preferredCommunicationMethod,
    String? preferredLanguage,
    String? linkedinUrl,
  }) = _ConsulteeProfileRequest;

  factory ConsulteeProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileRequestFromJson(json);
}

@freezed
class ConsultantProfileRequest with _$ConsultantProfileRequest {
  const factory ConsultantProfileRequest({
    double? experience,
    String? description,
    required String domainId,
    @Default([]) List<String> subDomainIds,
    String? headline,
    @Default([]) List<String> languages,
    @Default([]) List<String> toolsAndTechnologies,
    String? mentoringStyle,
    @Default([]) List<String> sessionTypes,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
  }) = _ConsultantProfileRequest;

  factory ConsultantProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileRequestFromJson(json);
}

@freezed
class AgreementRequest with _$AgreementRequest {
  const factory AgreementRequest({
    required bool termsAccepted,
    required bool privacyAccepted,
    required String acceptedAt,
  }) = _AgreementRequest;

  factory AgreementRequest.fromJson(Map<String, dynamic> json) =>
      _$AgreementRequestFromJson(json);
}
