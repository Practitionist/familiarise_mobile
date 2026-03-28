import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'staff_profile.freezed.dart';
part 'staff_profile.g.dart';

@freezed
class StaffProfile with _$StaffProfile {
  const factory StaffProfile({
    required String id,
    String? department,
    String? position,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StaffProfile;

  factory StaffProfile.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileFromJson(json);
}

/// Input for creating a new StaffProfile
@freezed
class CreateStaffProfileInput with _$CreateStaffProfileInput {
  const factory CreateStaffProfileInput({
    String? department,
    String? position,
    required String userId,
  }) = _CreateStaffProfileInput;

  factory CreateStaffProfileInput.fromJson(Map<String, dynamic> json) =>
      _$CreateStaffProfileInputFromJson(json);
}

/// Input for updating an existing StaffProfile
@freezed
class UpdateStaffProfileInput with _$UpdateStaffProfileInput {
  const factory UpdateStaffProfileInput({
    String? department,
    String? position,
    String? userId,
  }) = _UpdateStaffProfileInput;

  factory UpdateStaffProfileInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateStaffProfileInputFromJson(json);
}

/// Unique where input for StaffProfile
/// At least one field must be provided
@freezed
class StaffProfileWhereUniqueInput with _$StaffProfileWhereUniqueInput {
  const factory StaffProfileWhereUniqueInput({
    String? id,
    String? userId,
  }) = _StaffProfileWhereUniqueInput;

  factory StaffProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileWhereUniqueInputFromJson(json);
}

/// Where input for filtering StaffProfile records
@freezed
class StaffProfileWhereInput with _$StaffProfileWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory StaffProfileWhereInput({
    StringFilter? id,
    StringFilter? department,
    StringFilter? position,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<StaffProfileWhereInput>? AND,
    List<StaffProfileWhereInput>? OR,
    StaffProfileWhereInput? NOT,
  }) = _StaffProfileWhereInput;

  factory StaffProfileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileWhereInputFromJson(json);
}

/// Filter for StaffProfile list relations (one-to-many, many-to-many)
@freezed
class StaffProfileListRelationFilter with _$StaffProfileListRelationFilter {
  const factory StaffProfileListRelationFilter({
    /// At least one related record matches
    StaffProfileWhereInput? some,
    /// All related records match
    StaffProfileWhereInput? every,
    /// No related records match
    StaffProfileWhereInput? none,
  }) = _StaffProfileListRelationFilter;

  factory StaffProfileListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileListRelationFilterFromJson(json);
}

/// Filter for StaffProfile single relations (one-to-one, many-to-one)
@freezed
class StaffProfileRelationFilter with _$StaffProfileRelationFilter {
  const factory StaffProfileRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') StaffProfileWhereInput? is_,
    /// Related record does not match
    StaffProfileWhereInput? isNot,
  }) = _StaffProfileRelationFilter;

  factory StaffProfileRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileRelationFilterFromJson(json);
}

/// Order by input for sorting StaffProfile records
@freezed
class StaffProfileOrderByInput with _$StaffProfileOrderByInput {
  const factory StaffProfileOrderByInput({
    SortOrder? id,
    SortOrder? department,
    SortOrder? position,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _StaffProfileOrderByInput;

  factory StaffProfileOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$StaffProfileOrderByInputFromJson(json);
}

