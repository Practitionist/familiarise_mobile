import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'admin_level.dart';
import 'user.dart';

part 'admin_profile.freezed.dart';
part 'admin_profile.g.dart';

@freezed
class AdminProfile with _$AdminProfile {
  const factory AdminProfile({
    required String id,
    required AdminLevel adminLevel,
    String? notes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AdminProfile;

  factory AdminProfile.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileFromJson(json);
}

/// Input for creating a new AdminProfile
@freezed
class CreateAdminProfileInput with _$CreateAdminProfileInput {
  const factory CreateAdminProfileInput({
    required AdminLevel adminLevel,
    String? notes,
    required String userId,
  }) = _CreateAdminProfileInput;

  factory CreateAdminProfileInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAdminProfileInputFromJson(json);
}

/// Input for updating an existing AdminProfile
@freezed
class UpdateAdminProfileInput with _$UpdateAdminProfileInput {
  const factory UpdateAdminProfileInput({
    AdminLevel? adminLevel,
    String? notes,
    String? userId,
  }) = _UpdateAdminProfileInput;

  factory UpdateAdminProfileInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAdminProfileInputFromJson(json);
}

/// Unique where input for AdminProfile
/// At least one field must be provided
@freezed
class AdminProfileWhereUniqueInput with _$AdminProfileWhereUniqueInput {
  const factory AdminProfileWhereUniqueInput({
    String? id,
    String? userId,
  }) = _AdminProfileWhereUniqueInput;

  factory AdminProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileWhereUniqueInputFromJson(json);
}

/// Where input for filtering AdminProfile records
@freezed
class AdminProfileWhereInput with _$AdminProfileWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AdminProfileWhereInput({
    StringFilter? id,
    AdminLevelFilter? adminLevel,
    StringFilter? notes,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<AdminProfileWhereInput>? AND,
    List<AdminProfileWhereInput>? OR,
    AdminProfileWhereInput? NOT,
  }) = _AdminProfileWhereInput;

  factory AdminProfileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileWhereInputFromJson(json);
}

/// Filter for AdminProfile list relations (one-to-many, many-to-many)
@freezed
class AdminProfileListRelationFilter with _$AdminProfileListRelationFilter {
  const factory AdminProfileListRelationFilter({
    /// At least one related record matches
    AdminProfileWhereInput? some,
    /// All related records match
    AdminProfileWhereInput? every,
    /// No related records match
    AdminProfileWhereInput? none,
  }) = _AdminProfileListRelationFilter;

  factory AdminProfileListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileListRelationFilterFromJson(json);
}

/// Filter for AdminProfile single relations (one-to-one, many-to-one)
@freezed
class AdminProfileRelationFilter with _$AdminProfileRelationFilter {
  const factory AdminProfileRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AdminProfileWhereInput? is_,
    /// Related record does not match
    AdminProfileWhereInput? isNot,
  }) = _AdminProfileRelationFilter;

  factory AdminProfileRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileRelationFilterFromJson(json);
}

/// Order by input for sorting AdminProfile records
@freezed
class AdminProfileOrderByInput with _$AdminProfileOrderByInput {
  const factory AdminProfileOrderByInput({
    SortOrder? id,
    SortOrder? notes,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _AdminProfileOrderByInput;

  factory AdminProfileOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AdminProfileOrderByInputFromJson(json);
}

