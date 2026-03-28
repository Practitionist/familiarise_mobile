import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'organization.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
class Invitation with _$Invitation {
  const factory Invitation({
    required String id,
    required String organizationId,
    required String email,
    @Default("member")
    String role,
    @Default("pending")
    String status,
    required DateTime expiresAt,
    required String inviterId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Organization? organization,
    required DateTime createdAt,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, dynamic> json) =>
      _$InvitationFromJson(json);
}

/// Input for creating a new Invitation
@freezed
class CreateInvitationInput with _$CreateInvitationInput {
  const factory CreateInvitationInput({
    required String organizationId,
    required String email,
    @Default("member")
    String? role,
    @Default("pending")
    String? status,
    required DateTime expiresAt,
    required String inviterId,
  }) = _CreateInvitationInput;

  factory CreateInvitationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateInvitationInputFromJson(json);
}

/// Input for updating an existing Invitation
@freezed
class UpdateInvitationInput with _$UpdateInvitationInput {
  const factory UpdateInvitationInput({
    String? organizationId,
    String? email,
    String? role,
    String? status,
    DateTime? expiresAt,
    String? inviterId,
  }) = _UpdateInvitationInput;

  factory UpdateInvitationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvitationInputFromJson(json);
}

/// Unique where input for Invitation
/// At least one field must be provided
@freezed
class InvitationWhereUniqueInput with _$InvitationWhereUniqueInput {
  const factory InvitationWhereUniqueInput({
    String? id,
  }) = _InvitationWhereUniqueInput;

  factory InvitationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$InvitationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Invitation records
@freezed
class InvitationWhereInput with _$InvitationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory InvitationWhereInput({
    StringFilter? id,
    StringFilter? organizationId,
    StringFilter? email,
    StringFilter? role,
    StringFilter? status,
    DateTimeFilter? expiresAt,
    StringFilter? inviterId,
    /// Filter by organization relation
    OrganizationRelationFilter? organization,
    DateTimeFilter? createdAt,
    List<InvitationWhereInput>? AND,
    List<InvitationWhereInput>? OR,
    InvitationWhereInput? NOT,
  }) = _InvitationWhereInput;

  factory InvitationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InvitationWhereInputFromJson(json);
}

/// Filter for Invitation list relations (one-to-many, many-to-many)
@freezed
class InvitationListRelationFilter with _$InvitationListRelationFilter {
  const factory InvitationListRelationFilter({
    /// At least one related record matches
    InvitationWhereInput? some,
    /// All related records match
    InvitationWhereInput? every,
    /// No related records match
    InvitationWhereInput? none,
  }) = _InvitationListRelationFilter;

  factory InvitationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$InvitationListRelationFilterFromJson(json);
}

/// Filter for Invitation single relations (one-to-one, many-to-one)
@freezed
class InvitationRelationFilter with _$InvitationRelationFilter {
  const factory InvitationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') InvitationWhereInput? is_,
    /// Related record does not match
    InvitationWhereInput? isNot,
  }) = _InvitationRelationFilter;

  factory InvitationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$InvitationRelationFilterFromJson(json);
}

/// Order by input for sorting Invitation records
@freezed
class InvitationOrderByInput with _$InvitationOrderByInput {
  const factory InvitationOrderByInput({
    SortOrder? id,
    SortOrder? organizationId,
    SortOrder? email,
    SortOrder? role,
    SortOrder? status,
    SortOrder? expiresAt,
    SortOrder? inviterId,
    SortOrder? createdAt,
  }) = _InvitationOrderByInput;

  factory InvitationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$InvitationOrderByInputFromJson(json);
}

