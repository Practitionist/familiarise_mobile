import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/enums.dart';

part 'user.freezed.dart';

/// User entity representing the authenticated user
@freezed
class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? email,
    String? image,
    String? phone,
    String? timezone,
    @Default(UserRole.consultee) UserRole role,
    @Default(false) bool onboardingCompleted,
    @Default(false) bool emailVerified,
    String? consulteeProfileId,
    String? consultantProfileId,
    DateTime? dateOfBirth,
    Gender? gender,
    String? city,
    String? country,
    String? linkedinUrl,
    String? bio,
    String? profileDisplayImage,
    String? address,
    @Default(false) bool onlineStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  const User._();

  /// Check if user has a complete profile
  bool get hasCompleteProfile =>
      name != null && name!.isNotEmpty && email != null;

  /// Get display name or fallback
  String get displayName => name ?? email?.split('@').first ?? 'User';

  /// Get initials for avatar
  String get initials {
    if (name == null || name!.isEmpty) return '?';
    final words = name!.trim().split(RegExp(r'\s+'));
    if (words.isEmpty || words.first.isEmpty) return '?';
    if (words.length >= 2 && words[1].isNotEmpty) {
      return '${words.first[0]}${words[1][0]}'.toUpperCase();
    }
    return words.first[0].toUpperCase();
  }
}
