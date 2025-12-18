import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';

part 'consultee_profile_data.freezed.dart';
part 'consultee_profile_data.g.dart';

/// Consultee-specific profile data collected in Step 1
@freezed
class ConsulteeProfileData with _$ConsulteeProfileData {
  const factory ConsulteeProfileData({
    String? occupation,
    String? aboutMe,
    CareerStage? careerStage,
    String? currentCompany,
    String? industry,
    @Default([]) List<String> skillsToDevelop,
    String? linkedinUrl,
  }) = _ConsulteeProfileData;

  const ConsulteeProfileData._();

  factory ConsulteeProfileData.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileDataFromJson(json);

  /// Check if profile data is valid (all fields are optional for consultee)
  bool get isValid => true;
}
