import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/enums.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

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
    @JsonKey(name: 'onboarding_completed') @Default(false) bool onboardingCompleted,
    @JsonKey(name: 'email_verified') @Default(false) bool emailVerified,
    @JsonKey(name: 'consultee_profile_id') String? consulteeProfileId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Create from Better Auth user response
  factory UserModel.fromBetterAuthUser(Map<String, dynamic> userData) {
    return UserModel(
      id: userData['id'] as String? ?? '',
      email: userData['email'] as String?,
      name: userData['name'] as String?,
      image: userData['image'] as String?,
      emailVerified: userData['emailVerified'] as bool? ?? false,
      createdAt: userData['createdAt'] != null
          ? DateTime.tryParse(userData['createdAt'] as String)
          : null,
    );
  }

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
}
