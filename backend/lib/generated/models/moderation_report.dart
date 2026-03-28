import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'moderation_report_type.dart';
import 'moderation_report_status.dart';
import 'user.dart';
import 'moderation_action.dart';

part 'moderation_report.freezed.dart';
part 'moderation_report.g.dart';

@freezed
class ModerationReport with _$ModerationReport {
  const factory ModerationReport({
    required String id,
    required ModerationReportType type,
    @Default(ModerationReportStatus.pending)
    ModerationReportStatus status,
    required String reason,
    String? description,
    @Default(1)
    int reportCount,
    String? contentText,
    String? contentUrl,
    required String reportedById,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? reportedBy,
    required String targetUserId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? targetUser,
    String? reviewId,
    String? assignedToId,
    DateTime? resolvedAt,
    String? resolvedBy,
    required List<ModerationAction> actions,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ModerationReport;

  factory ModerationReport.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportFromJson(json);
}

/// Input for creating a new ModerationReport
@freezed
class CreateModerationReportInput with _$CreateModerationReportInput {
  const factory CreateModerationReportInput({
    required ModerationReportType type,
    @Default(ModerationReportStatus.pending)
    ModerationReportStatus status,
    required String reason,
    String? description,
    @Default(1)
    int? reportCount,
    String? contentText,
    String? contentUrl,
    required String reportedById,
    required String targetUserId,
    String? reviewId,
    String? assignedToId,
    DateTime? resolvedAt,
    String? resolvedBy,
  }) = _CreateModerationReportInput;

  factory CreateModerationReportInput.fromJson(Map<String, dynamic> json) =>
      _$CreateModerationReportInputFromJson(json);
}

/// Input for updating an existing ModerationReport
@freezed
class UpdateModerationReportInput with _$UpdateModerationReportInput {
  const factory UpdateModerationReportInput({
    ModerationReportType? type,
    ModerationReportStatus? status,
    String? reason,
    String? description,
    int? reportCount,
    String? contentText,
    String? contentUrl,
    String? reportedById,
    String? targetUserId,
    String? reviewId,
    String? assignedToId,
    DateTime? resolvedAt,
    String? resolvedBy,
  }) = _UpdateModerationReportInput;

  factory UpdateModerationReportInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateModerationReportInputFromJson(json);
}

/// Unique where input for ModerationReport
/// At least one field must be provided
@freezed
class ModerationReportWhereUniqueInput with _$ModerationReportWhereUniqueInput {
  const factory ModerationReportWhereUniqueInput({
    String? id,
  }) = _ModerationReportWhereUniqueInput;

  factory ModerationReportWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportWhereUniqueInputFromJson(json);
}

/// Where input for filtering ModerationReport records
@freezed
class ModerationReportWhereInput with _$ModerationReportWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ModerationReportWhereInput({
    StringFilter? id,
    ModerationReportTypeFilter? type,
    ModerationReportStatusFilter? status,
    StringFilter? reason,
    StringFilter? description,
    IntFilter? reportCount,
    StringFilter? contentText,
    StringFilter? contentUrl,
    StringFilter? reportedById,
    /// Filter by reportedBy relation
    UserRelationFilter? reportedBy,
    StringFilter? targetUserId,
    /// Filter by targetUser relation
    UserRelationFilter? targetUser,
    StringFilter? reviewId,
    StringFilter? assignedToId,
    DateTimeFilter? resolvedAt,
    StringFilter? resolvedBy,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ModerationReportWhereInput>? AND,
    List<ModerationReportWhereInput>? OR,
    ModerationReportWhereInput? NOT,
  }) = _ModerationReportWhereInput;

  factory ModerationReportWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportWhereInputFromJson(json);
}

/// Filter for ModerationReport list relations (one-to-many, many-to-many)
@freezed
class ModerationReportListRelationFilter with _$ModerationReportListRelationFilter {
  const factory ModerationReportListRelationFilter({
    /// At least one related record matches
    ModerationReportWhereInput? some,
    /// All related records match
    ModerationReportWhereInput? every,
    /// No related records match
    ModerationReportWhereInput? none,
  }) = _ModerationReportListRelationFilter;

  factory ModerationReportListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportListRelationFilterFromJson(json);
}

/// Filter for ModerationReport single relations (one-to-one, many-to-one)
@freezed
class ModerationReportRelationFilter with _$ModerationReportRelationFilter {
  const factory ModerationReportRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ModerationReportWhereInput? is_,
    /// Related record does not match
    ModerationReportWhereInput? isNot,
  }) = _ModerationReportRelationFilter;

  factory ModerationReportRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportRelationFilterFromJson(json);
}

/// Order by input for sorting ModerationReport records
@freezed
class ModerationReportOrderByInput with _$ModerationReportOrderByInput {
  const factory ModerationReportOrderByInput({
    SortOrder? id,
    SortOrder? reason,
    SortOrder? description,
    SortOrder? reportCount,
    SortOrder? contentText,
    SortOrder? contentUrl,
    SortOrder? reportedById,
    SortOrder? targetUserId,
    SortOrder? reviewId,
    SortOrder? assignedToId,
    SortOrder? resolvedAt,
    SortOrder? resolvedBy,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ModerationReportOrderByInput;

  factory ModerationReportOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportOrderByInputFromJson(json);
}

