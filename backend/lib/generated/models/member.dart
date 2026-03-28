import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'organization.dart';
import 'user.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required String id,
    required String organizationId,
    required String userId,
    @Default("member")
    String role,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Organization? organization,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required DateTime createdAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) =>
      _$MemberFromJson(json);
}

/// Input for creating a new Member
@freezed
class CreateMemberInput with _$CreateMemberInput {
  const factory CreateMemberInput({
    required String organizationId,
    required String userId,
    @Default("member")
    String? role,
  }) = _CreateMemberInput;

  factory CreateMemberInput.fromJson(Map<String, dynamic> json) =>
      _$CreateMemberInputFromJson(json);
}

/// Input for updating an existing Member
@freezed
class UpdateMemberInput with _$UpdateMemberInput {
  const factory UpdateMemberInput({
    String? organizationId,
    String? userId,
    String? role,
  }) = _UpdateMemberInput;

  factory UpdateMemberInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateMemberInputFromJson(json);
}

/// Unique where input for Member
/// At least one field must be provided
@freezed
class MemberWhereUniqueInput with _$MemberWhereUniqueInput {
  const factory MemberWhereUniqueInput({
    String? id,
  }) = _MemberWhereUniqueInput;

  factory MemberWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$MemberWhereUniqueInputFromJson(json);
}

/// Where input for filtering Member records
@freezed
class MemberWhereInput with _$MemberWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory MemberWhereInput({
    StringFilter? id,
    StringFilter? organizationId,
    StringFilter? userId,
    StringFilter? role,
    /// Filter by organization relation
    OrganizationRelationFilter? organization,
    /// Filter by user relation
    UserRelationFilter? user,
    DateTimeFilter? createdAt,
    List<MemberWhereInput>? AND,
    List<MemberWhereInput>? OR,
    MemberWhereInput? NOT,
  }) = _MemberWhereInput;

  factory MemberWhereInput.fromJson(Map<String, dynamic> json) =>
      _$MemberWhereInputFromJson(json);
}

/// Filter for Member list relations (one-to-many, many-to-many)
@freezed
class MemberListRelationFilter with _$MemberListRelationFilter {
  const factory MemberListRelationFilter({
    /// At least one related record matches
    MemberWhereInput? some,
    /// All related records match
    MemberWhereInput? every,
    /// No related records match
    MemberWhereInput? none,
  }) = _MemberListRelationFilter;

  factory MemberListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MemberListRelationFilterFromJson(json);
}

/// Filter for Member single relations (one-to-one, many-to-one)
@freezed
class MemberRelationFilter with _$MemberRelationFilter {
  const factory MemberRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') MemberWhereInput? is_,
    /// Related record does not match
    MemberWhereInput? isNot,
  }) = _MemberRelationFilter;

  factory MemberRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MemberRelationFilterFromJson(json);
}

/// Order by input for sorting Member records
@freezed
class MemberOrderByInput with _$MemberOrderByInput {
  const factory MemberOrderByInput({
    SortOrder? id,
    SortOrder? organizationId,
    SortOrder? userId,
    SortOrder? role,
    SortOrder? createdAt,
  }) = _MemberOrderByInput;

  factory MemberOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$MemberOrderByInputFromJson(json);
}

