import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/enums.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

// Helper functions to read values with fallback for camelCase/snake_case
// These helpers also handle type conversion for boolean fields that may come
// as bool, String, DateTime, or null from different API responses.
Object? _readOnboardingCompleted(Map json, String key) {
  final value = json['onboardingCompleted'] ?? json['onboarding_completed'];
  if (value is bool) return value;
  if (value is String) return value.toLowerCase() == 'true';
  return value != null; // DateTime or other truthy value means completed
}

Object? _readEmailVerified(Map json, String key) {
  final value = json['emailVerified'] ?? json['email_verified'];
  if (value is bool) return value;
  if (value is String) return value.toLowerCase() == 'true';
  return value != null; // DateTime or other truthy value means verified
}

Object? _readConsulteeProfileId(Map json, String key) =>
    json['consulteeProfileId'] ?? json['consultee_profile_id'];

Object? _readConsultantProfileId(Map json, String key) =>
    json['consultantProfileId'] ?? json['consultant_profile_id'];

Object? _readCreatedAt(Map json, String key) =>
    json['createdAt'] ?? json['created_at'];

Object? _readUpdatedAt(Map json, String key) =>
    json['updatedAt'] ?? json['updated_at'];

Object? _readDateOfBirth(Map json, String key) =>
    json['dateOfBirth'] ?? json['date_of_birth'];

Object? _readLinkedinUrl(Map json, String key) =>
    json['linkedinUrl'] ?? json['linkedin_url'];

Object? _readProfileDisplayImage(Map json, String key) =>
    json['profileDisplayImage'] ?? json['profile_display_image'];

Object? _readOnlineStatus(Map json, String key) {
  final value = json['onlineStatus'] ?? json['online_status'];
  if (value is bool) return value;
  if (value is String) return value.toLowerCase() == 'true';
  return false;
}

/// User data transfer object for API serialization
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? name,
    String? email,
    String? image,
    String? phone,
    String? timezone,
    @JsonKey(name: 'role') String? roleString,
    // Support both camelCase (from backend) and snake_case (from some APIs)
    @JsonKey(readValue: _readOnboardingCompleted)
    @Default(false)
    bool onboardingCompleted,
    @JsonKey(readValue: _readEmailVerified) @Default(false) bool emailVerified,
    @JsonKey(readValue: _readConsulteeProfileId) String? consulteeProfileId,
    @JsonKey(readValue: _readConsultantProfileId) String? consultantProfileId,
    @JsonKey(readValue: _readDateOfBirth) DateTime? dateOfBirth,
    String? gender,
    String? city,
    String? country,
    @JsonKey(readValue: _readLinkedinUrl) String? linkedinUrl,
    String? bio,
    @JsonKey(readValue: _readProfileDisplayImage) String? profileDisplayImage,
    String? address,
    @JsonKey(readValue: _readOnlineStatus) @Default(false) bool onlineStatus,
    @JsonKey(readValue: _readCreatedAt) DateTime? createdAt,
    @JsonKey(readValue: _readUpdatedAt) DateTime? updatedAt,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Convert to domain entity
  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      image: image,
      phone: phone,
      timezone: timezone,
      role: _parseRole(roleString),
      onboardingCompleted: onboardingCompleted,
      emailVerified: emailVerified,
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
      dateOfBirth: dateOfBirth,
      gender: _parseGender(gender),
      city: city,
      country: country,
      linkedinUrl: linkedinUrl,
      bio: bio,
      profileDisplayImage: profileDisplayImage,
      address: address,
      onlineStatus: onlineStatus,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  UserRole _parseRole(String? role) {
    return switch (role?.toUpperCase()) {
      'CONSULTANT' => UserRole.consultant,
      'ADMIN' => UserRole.admin,
      'STAFF' => UserRole.staff,
      _ => UserRole.consultee,
    };
  }

  Gender? _parseGender(String? value) {
    if (value == null) return null;
    return switch (value.toUpperCase()) {
      'MALE' => Gender.male,
      'FEMALE' => Gender.female,
      'NON_BINARY' => Gender.nonBinary,
      'PREFER_NOT_TO_SAY' => Gender.preferNotToSay,
      _ => null,
    };
  }
}
