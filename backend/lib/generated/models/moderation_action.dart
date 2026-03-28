import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'moderation_action_type.dart';
import 'moderation_report.dart';
import 'user.dart';

part 'moderation_action.freezed.dart';
part 'moderation_action.g.dart';

@freezed
class ModerationAction with _$ModerationAction {
  const factory ModerationAction({
    required String id,
    required ModerationActionType actionType,
    String? notes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ModerationReport? report,
    required String reportId,
    required String takenById,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? takenBy,
    required DateTime createdAt,
  }) = _ModerationAction;

  factory ModerationAction.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionFromJson(json);
}

/// Input for creating a new ModerationAction
@freezed
class CreateModerationActionInput with _$CreateModerationActionInput {
  const factory CreateModerationActionInput({
    required ModerationActionType actionType,
    String? notes,
    required String reportId,
    required String takenById,
  }) = _CreateModerationActionInput;

  factory CreateModerationActionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateModerationActionInputFromJson(json);
}

/// Input for updating an existing ModerationAction
@freezed
class UpdateModerationActionInput with _$UpdateModerationActionInput {
  const factory UpdateModerationActionInput({
    ModerationActionType? actionType,
    String? notes,
    String? reportId,
    String? takenById,
  }) = _UpdateModerationActionInput;

  factory UpdateModerationActionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateModerationActionInputFromJson(json);
}

/// Unique where input for ModerationAction
/// At least one field must be provided
@freezed
class ModerationActionWhereUniqueInput with _$ModerationActionWhereUniqueInput {
  const factory ModerationActionWhereUniqueInput({
    String? id,
  }) = _ModerationActionWhereUniqueInput;

  factory ModerationActionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionWhereUniqueInputFromJson(json);
}

/// Where input for filtering ModerationAction records
@freezed
class ModerationActionWhereInput with _$ModerationActionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ModerationActionWhereInput({
    StringFilter? id,
    ModerationActionTypeFilter? actionType,
    StringFilter? notes,
    /// Filter by report relation
    ModerationReportRelationFilter? report,
    StringFilter? reportId,
    StringFilter? takenById,
    /// Filter by takenBy relation
    UserRelationFilter? takenBy,
    DateTimeFilter? createdAt,
    List<ModerationActionWhereInput>? AND,
    List<ModerationActionWhereInput>? OR,
    ModerationActionWhereInput? NOT,
  }) = _ModerationActionWhereInput;

  factory ModerationActionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionWhereInputFromJson(json);
}

/// Filter for ModerationAction list relations (one-to-many, many-to-many)
@freezed
class ModerationActionListRelationFilter with _$ModerationActionListRelationFilter {
  const factory ModerationActionListRelationFilter({
    /// At least one related record matches
    ModerationActionWhereInput? some,
    /// All related records match
    ModerationActionWhereInput? every,
    /// No related records match
    ModerationActionWhereInput? none,
  }) = _ModerationActionListRelationFilter;

  factory ModerationActionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionListRelationFilterFromJson(json);
}

/// Filter for ModerationAction single relations (one-to-one, many-to-one)
@freezed
class ModerationActionRelationFilter with _$ModerationActionRelationFilter {
  const factory ModerationActionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ModerationActionWhereInput? is_,
    /// Related record does not match
    ModerationActionWhereInput? isNot,
  }) = _ModerationActionRelationFilter;

  factory ModerationActionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionRelationFilterFromJson(json);
}

/// Order by input for sorting ModerationAction records
@freezed
class ModerationActionOrderByInput with _$ModerationActionOrderByInput {
  const factory ModerationActionOrderByInput({
    SortOrder? id,
    SortOrder? notes,
    SortOrder? reportId,
    SortOrder? takenById,
    SortOrder? createdAt,
  }) = _ModerationActionOrderByInput;

  factory ModerationActionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionOrderByInputFromJson(json);
}

