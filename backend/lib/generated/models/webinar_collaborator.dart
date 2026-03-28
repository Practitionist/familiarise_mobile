import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'webinar_collaborator_role.dart';
import 'collaborator_status.dart';
import 'consultant_profile.dart';
import 'webinar_plan.dart';

part 'webinar_collaborator.freezed.dart';
part 'webinar_collaborator.g.dart';

@freezed
class WebinarCollaborator with _$WebinarCollaborator {
  const factory WebinarCollaborator({
    required String id,
    required String consultantProfileId,
    required String webinarPlanId,
    @Default(WebinarCollaboratorRole.coHost)
    WebinarCollaboratorRole role,
    Map<String, dynamic>? permissions,
    required double revenueSharePercentage,
    @Default(CollaboratorStatus.pending)
    CollaboratorStatus status,
    required String invitedById,
    DateTime? respondedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    @JsonKey(includeFromJson: false, includeToJson: false)
    WebinarPlan? webinarPlan,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? invitedBy,
  }) = _WebinarCollaborator;

  factory WebinarCollaborator.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorFromJson(json);
}

/// Input for creating a new WebinarCollaborator
@freezed
class CreateWebinarCollaboratorInput with _$CreateWebinarCollaboratorInput {
  const factory CreateWebinarCollaboratorInput({
    required String consultantProfileId,
    required String webinarPlanId,
    @Default(WebinarCollaboratorRole.coHost)
    WebinarCollaboratorRole role,
    Map<String, dynamic>? permissions,
    required double revenueSharePercentage,
    @Default(CollaboratorStatus.pending)
    CollaboratorStatus status,
    required String invitedById,
    DateTime? respondedAt,
  }) = _CreateWebinarCollaboratorInput;

  factory CreateWebinarCollaboratorInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWebinarCollaboratorInputFromJson(json);
}

/// Input for updating an existing WebinarCollaborator
@freezed
class UpdateWebinarCollaboratorInput with _$UpdateWebinarCollaboratorInput {
  const factory UpdateWebinarCollaboratorInput({
    String? consultantProfileId,
    String? webinarPlanId,
    WebinarCollaboratorRole? role,
    Map<String, dynamic>? permissions,
    double? revenueSharePercentage,
    CollaboratorStatus? status,
    String? invitedById,
    DateTime? respondedAt,
  }) = _UpdateWebinarCollaboratorInput;

  factory UpdateWebinarCollaboratorInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWebinarCollaboratorInputFromJson(json);
}

/// Unique where input for WebinarCollaborator
/// At least one field must be provided
@freezed
class WebinarCollaboratorWhereUniqueInput with _$WebinarCollaboratorWhereUniqueInput {
  const factory WebinarCollaboratorWhereUniqueInput({
    String? id,
  }) = _WebinarCollaboratorWhereUniqueInput;

  factory WebinarCollaboratorWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorWhereUniqueInputFromJson(json);
}

/// Where input for filtering WebinarCollaborator records
@freezed
class WebinarCollaboratorWhereInput with _$WebinarCollaboratorWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WebinarCollaboratorWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    StringFilter? webinarPlanId,
    WebinarCollaboratorRoleFilter? role,
    FloatFilter? revenueSharePercentage,
    CollaboratorStatusFilter? status,
    StringFilter? invitedById,
    DateTimeFilter? respondedAt,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    /// Filter by webinarPlan relation
    WebinarPlanRelationFilter? webinarPlan,
    /// Filter by invitedBy relation
    ConsultantProfileRelationFilter? invitedBy,
    List<WebinarCollaboratorWhereInput>? AND,
    List<WebinarCollaboratorWhereInput>? OR,
    WebinarCollaboratorWhereInput? NOT,
  }) = _WebinarCollaboratorWhereInput;

  factory WebinarCollaboratorWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorWhereInputFromJson(json);
}

/// Filter for WebinarCollaborator list relations (one-to-many, many-to-many)
@freezed
class WebinarCollaboratorListRelationFilter with _$WebinarCollaboratorListRelationFilter {
  const factory WebinarCollaboratorListRelationFilter({
    /// At least one related record matches
    WebinarCollaboratorWhereInput? some,
    /// All related records match
    WebinarCollaboratorWhereInput? every,
    /// No related records match
    WebinarCollaboratorWhereInput? none,
  }) = _WebinarCollaboratorListRelationFilter;

  factory WebinarCollaboratorListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorListRelationFilterFromJson(json);
}

/// Filter for WebinarCollaborator single relations (one-to-one, many-to-one)
@freezed
class WebinarCollaboratorRelationFilter with _$WebinarCollaboratorRelationFilter {
  const factory WebinarCollaboratorRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WebinarCollaboratorWhereInput? is_,
    /// Related record does not match
    WebinarCollaboratorWhereInput? isNot,
  }) = _WebinarCollaboratorRelationFilter;

  factory WebinarCollaboratorRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorRelationFilterFromJson(json);
}

/// Order by input for sorting WebinarCollaborator records
@freezed
class WebinarCollaboratorOrderByInput with _$WebinarCollaboratorOrderByInput {
  const factory WebinarCollaboratorOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? webinarPlanId,
    SortOrder? revenueSharePercentage,
    SortOrder? invitedById,
    SortOrder? respondedAt,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _WebinarCollaboratorOrderByInput;

  factory WebinarCollaboratorOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorOrderByInputFromJson(json);
}

