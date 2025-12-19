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
  }) = _ConsultantProfileData;

  const ConsultantProfileData._();

  factory ConsultantProfileData.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileDataFromJson(json);

  /// Check if profile data is valid
  /// Domain is required for consultants
  bool get isValid => domainId != null && domainId!.isNotEmpty;
}
