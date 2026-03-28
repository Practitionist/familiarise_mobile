import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'class_collaborator_role.dart';
import 'collaborator_status.dart';
import 'consultant_profile.dart';
import 'class_plan.dart';

part 'class_collaborator.freezed.dart';
part 'class_collaborator.g.dart';

@freezed
class ClassCollaborator with _$ClassCollaborator {
  const factory ClassCollaborator({
    required String id,
    required String consultantProfileId,
    required String classPlanId,
    @Default(ClassCollaboratorRole.coInstructor)
    ClassCollaboratorRole role,
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
    ClassPlan? classPlan,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? invitedBy,
  }) = _ClassCollaborator;

  factory ClassCollaborator.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorFromJson(json);
}

/// Input for creating a new ClassCollaborator
@freezed
class CreateClassCollaboratorInput with _$CreateClassCollaboratorInput {
  const factory CreateClassCollaboratorInput({
    required String consultantProfileId,
    required String classPlanId,
    @Default(ClassCollaboratorRole.coInstructor)
    ClassCollaboratorRole role,
    Map<String, dynamic>? permissions,
    required double revenueSharePercentage,
    @Default(CollaboratorStatus.pending)
    CollaboratorStatus status,
    required String invitedById,
    DateTime? respondedAt,
  }) = _CreateClassCollaboratorInput;

  factory CreateClassCollaboratorInput.fromJson(Map<String, dynamic> json) =>
      _$CreateClassCollaboratorInputFromJson(json);
}

/// Input for updating an existing ClassCollaborator
@freezed
class UpdateClassCollaboratorInput with _$UpdateClassCollaboratorInput {
  const factory UpdateClassCollaboratorInput({
    String? consultantProfileId,
    String? classPlanId,
    ClassCollaboratorRole? role,
    Map<String, dynamic>? permissions,
    double? revenueSharePercentage,
    CollaboratorStatus? status,
    String? invitedById,
    DateTime? respondedAt,
  }) = _UpdateClassCollaboratorInput;

  factory UpdateClassCollaboratorInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassCollaboratorInputFromJson(json);
}

/// Unique where input for ClassCollaborator
/// At least one field must be provided
@freezed
class ClassCollaboratorWhereUniqueInput with _$ClassCollaboratorWhereUniqueInput {
  const factory ClassCollaboratorWhereUniqueInput({
    String? id,
  }) = _ClassCollaboratorWhereUniqueInput;

  factory ClassCollaboratorWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorWhereUniqueInputFromJson(json);
}

/// Where input for filtering ClassCollaborator records
@freezed
class ClassCollaboratorWhereInput with _$ClassCollaboratorWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ClassCollaboratorWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    StringFilter? classPlanId,
    ClassCollaboratorRoleFilter? role,
    FloatFilter? revenueSharePercentage,
    CollaboratorStatusFilter? status,
    StringFilter? invitedById,
    DateTimeFilter? respondedAt,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    /// Filter by classPlan relation
    ClassPlanRelationFilter? classPlan,
    /// Filter by invitedBy relation
    ConsultantProfileRelationFilter? invitedBy,
    List<ClassCollaboratorWhereInput>? AND,
    List<ClassCollaboratorWhereInput>? OR,
    ClassCollaboratorWhereInput? NOT,
  }) = _ClassCollaboratorWhereInput;

  factory ClassCollaboratorWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorWhereInputFromJson(json);
}

/// Filter for ClassCollaborator list relations (one-to-many, many-to-many)
@freezed
class ClassCollaboratorListRelationFilter with _$ClassCollaboratorListRelationFilter {
  const factory ClassCollaboratorListRelationFilter({
    /// At least one related record matches
    ClassCollaboratorWhereInput? some,
    /// All related records match
    ClassCollaboratorWhereInput? every,
    /// No related records match
    ClassCollaboratorWhereInput? none,
  }) = _ClassCollaboratorListRelationFilter;

  factory ClassCollaboratorListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorListRelationFilterFromJson(json);
}

/// Filter for ClassCollaborator single relations (one-to-one, many-to-one)
@freezed
class ClassCollaboratorRelationFilter with _$ClassCollaboratorRelationFilter {
  const factory ClassCollaboratorRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ClassCollaboratorWhereInput? is_,
    /// Related record does not match
    ClassCollaboratorWhereInput? isNot,
  }) = _ClassCollaboratorRelationFilter;

  factory ClassCollaboratorRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorRelationFilterFromJson(json);
}

/// Order by input for sorting ClassCollaborator records
@freezed
class ClassCollaboratorOrderByInput with _$ClassCollaboratorOrderByInput {
  const factory ClassCollaboratorOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? classPlanId,
    SortOrder? revenueSharePercentage,
    SortOrder? invitedById,
    SortOrder? respondedAt,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ClassCollaboratorOrderByInput;

  factory ClassCollaboratorOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorOrderByInputFromJson(json);
}

