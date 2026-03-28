import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'achievement_type.dart';
import 'consultant_profile.dart';

part 'achievement.freezed.dart';
part 'achievement.g.dart';

@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required String title,
    String? description,
    String? url,
    String? imageUrl,
    @Default(AchievementType.other)
    AchievementType achievementType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
}

/// Input for creating a new Achievement
@freezed
class CreateAchievementInput with _$CreateAchievementInput {
  const factory CreateAchievementInput({
    required String title,
    String? description,
    String? url,
    String? imageUrl,
    @Default(AchievementType.other)
    AchievementType achievementType,
    required String consultantProfileId,
  }) = _CreateAchievementInput;

  factory CreateAchievementInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAchievementInputFromJson(json);
}

/// Input for updating an existing Achievement
@freezed
class UpdateAchievementInput with _$UpdateAchievementInput {
  const factory UpdateAchievementInput({
    String? title,
    String? description,
    String? url,
    String? imageUrl,
    AchievementType? achievementType,
    String? consultantProfileId,
  }) = _UpdateAchievementInput;

  factory UpdateAchievementInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAchievementInputFromJson(json);
}

/// Unique where input for Achievement
/// At least one field must be provided
@freezed
class AchievementWhereUniqueInput with _$AchievementWhereUniqueInput {
  const factory AchievementWhereUniqueInput({
    String? id,
  }) = _AchievementWhereUniqueInput;

  factory AchievementWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AchievementWhereUniqueInputFromJson(json);
}

/// Where input for filtering Achievement records
@freezed
class AchievementWhereInput with _$AchievementWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AchievementWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    StringFilter? url,
    StringFilter? imageUrl,
    AchievementTypeFilter? achievementType,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<AchievementWhereInput>? AND,
    List<AchievementWhereInput>? OR,
    AchievementWhereInput? NOT,
  }) = _AchievementWhereInput;

  factory AchievementWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AchievementWhereInputFromJson(json);
}

/// Filter for Achievement list relations (one-to-many, many-to-many)
@freezed
class AchievementListRelationFilter with _$AchievementListRelationFilter {
  const factory AchievementListRelationFilter({
    /// At least one related record matches
    AchievementWhereInput? some,
    /// All related records match
    AchievementWhereInput? every,
    /// No related records match
    AchievementWhereInput? none,
  }) = _AchievementListRelationFilter;

  factory AchievementListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AchievementListRelationFilterFromJson(json);
}

/// Filter for Achievement single relations (one-to-one, many-to-one)
@freezed
class AchievementRelationFilter with _$AchievementRelationFilter {
  const factory AchievementRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AchievementWhereInput? is_,
    /// Related record does not match
    AchievementWhereInput? isNot,
  }) = _AchievementRelationFilter;

  factory AchievementRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AchievementRelationFilterFromJson(json);
}

/// Order by input for sorting Achievement records
@freezed
class AchievementOrderByInput with _$AchievementOrderByInput {
  const factory AchievementOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? url,
    SortOrder? imageUrl,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _AchievementOrderByInput;

  factory AchievementOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AchievementOrderByInputFromJson(json);
}

