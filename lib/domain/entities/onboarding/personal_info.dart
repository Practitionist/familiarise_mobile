import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

/// Personal information collected in Step 0 of onboarding
@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    required String name,
    String? phone,
    DateTime? dateOfBirth,
    Gender? gender,
    String? timezone,
    String? image,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
    String? bio,
  }) = _PersonalInfo;

  const PersonalInfo._();

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);

  /// Check if personal info is valid for proceeding
  bool get isValid {
    // Name is required
    if (name.trim().isEmpty) return false;

    // Bio max length - Prisma constraint: @db.VarChar(160)
    if (bio != null && bio!.length > 160) return false;

    return true;
  }

  /// Get display name or 'User' if empty
  String get displayName => name.trim().isNotEmpty ? name : 'User';
}
