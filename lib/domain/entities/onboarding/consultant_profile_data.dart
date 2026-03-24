import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultant_profile_data.freezed.dart';
part 'consultant_profile_data.g.dart';

/// Consultant-specific profile data collected in Step 1
@freezed
class ConsultantProfileData with _$ConsultantProfileData {
  const factory ConsultantProfileData({
    /// Years of experience in the domain
    double? experience,

    /// Detailed description of expertise
    String? description,

    /// Selected domain ID (required)
    String? domainId,

    /// Selected domain name for display
    String? domainName,

    /// Selected subdomain IDs
    @Default([]) List<String> subDomainIds,

    /// Short professional headline (max 120 chars)
    String? headline,

    /// Languages spoken
    @Default([]) List<String> languages,

    /// Tools and technologies expertise
    @Default([]) List<String> toolsAndTechnologies,

    /// Mentoring style description
    String? mentoringStyle,

    /// Types of sessions offered
    @Default([]) List<String> sessionTypes,

    /// Personal/portfolio website URL
    String? websiteUrl,

    /// Twitter/X profile URL
    String? twitterUrl,

    /// GitHub profile URL
    String? githubUrl,

    /// Video introduction URL
    String? videoIntroUrl,

    /// Professional background — work experiences
    @Default([]) List<WorkExperienceEntry> workExperiences,

    /// Professional background — education
    @Default([]) List<EducationEntry> education,

    /// Professional background — certifications
    @Default([]) List<CertificationEntry> certifications,
  }) = _ConsultantProfileData;

  const ConsultantProfileData._();

  factory ConsultantProfileData.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileDataFromJson(json);

  /// Check if profile data is valid
  /// Domain is required for consultants
  bool get isValid => domainId != null && domainId!.isNotEmpty;
}

@freezed
class WorkExperienceEntry with _$WorkExperienceEntry {
  const factory WorkExperienceEntry({
    required String company,
    String? companyDomain,
    required String title,
    String? location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false) bool isCurrent,
    String? description,
  }) = _WorkExperienceEntry;

  factory WorkExperienceEntry.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceEntryFromJson(json);
}

@freezed
class EducationEntry with _$EducationEntry {
  const factory EducationEntry({
    required String institution,
    String? institutionDomain,
    required String degree,
    String? fieldOfStudy,
    int? startYear,
    int? endYear,
    String? grade,
    String? activities,
    String? description,
  }) = _EducationEntry;

  factory EducationEntry.fromJson(Map<String, dynamic> json) =>
      _$EducationEntryFromJson(json);
}

@freezed
class CertificationEntry with _$CertificationEntry {
  const factory CertificationEntry({
    required String name,
    required String issuingOrganization,
    required DateTime issueDate,
    DateTime? expiryDate,
    String? credentialId,
    String? credentialUrl,
  }) = _CertificationEntry;

  factory CertificationEntry.fromJson(Map<String, dynamic> json) =>
      _$CertificationEntryFromJson(json);
}
