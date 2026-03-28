import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'activity_type.dart';
import 'consultant_profile.dart';

part 'activity_log.freezed.dart';
part 'activity_log.g.dart';

@freezed
class ActivityLog with _$ActivityLog {
  const factory ActivityLog({
    required String id,
    required ActivityType activityType,
    required String description,
    Map<String, dynamic>? metadata,
    required String actorId,
    required String actorName,
    String? actorImage,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
    String? trialSessionId,
    required DateTime createdAt,
  }) = _ActivityLog;

  factory ActivityLog.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogFromJson(json);
}

/// Input for creating a new ActivityLog
@freezed
class CreateActivityLogInput with _$CreateActivityLogInput {
  const factory CreateActivityLogInput({
    required ActivityType activityType,
    required String description,
    Map<String, dynamic>? metadata,
    required String actorId,
    required String actorName,
    String? actorImage,
    required String consultantProfileId,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
    String? trialSessionId,
  }) = _CreateActivityLogInput;

  factory CreateActivityLogInput.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityLogInputFromJson(json);
}

/// Input for updating an existing ActivityLog
@freezed
class UpdateActivityLogInput with _$UpdateActivityLogInput {
  const factory UpdateActivityLogInput({
    ActivityType? activityType,
    String? description,
    Map<String, dynamic>? metadata,
    String? actorId,
    String? actorName,
    String? actorImage,
    String? consultantProfileId,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
    String? trialSessionId,
  }) = _UpdateActivityLogInput;

  factory UpdateActivityLogInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateActivityLogInputFromJson(json);
}

/// Unique where input for ActivityLog
/// At least one field must be provided
@freezed
class ActivityLogWhereUniqueInput with _$ActivityLogWhereUniqueInput {
  const factory ActivityLogWhereUniqueInput({
    String? id,
  }) = _ActivityLogWhereUniqueInput;

  factory ActivityLogWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogWhereUniqueInputFromJson(json);
}

/// Where input for filtering ActivityLog records
@freezed
class ActivityLogWhereInput with _$ActivityLogWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ActivityLogWhereInput({
    StringFilter? id,
    ActivityTypeFilter? activityType,
    StringFilter? description,
    StringFilter? actorId,
    StringFilter? actorName,
    StringFilter? actorImage,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    StringFilter? consultationId,
    StringFilter? subscriptionId,
    StringFilter? webinarId,
    StringFilter? classId,
    StringFilter? trialSessionId,
    DateTimeFilter? createdAt,
    List<ActivityLogWhereInput>? AND,
    List<ActivityLogWhereInput>? OR,
    ActivityLogWhereInput? NOT,
  }) = _ActivityLogWhereInput;

  factory ActivityLogWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogWhereInputFromJson(json);
}

/// Filter for ActivityLog list relations (one-to-many, many-to-many)
@freezed
class ActivityLogListRelationFilter with _$ActivityLogListRelationFilter {
  const factory ActivityLogListRelationFilter({
    /// At least one related record matches
    ActivityLogWhereInput? some,
    /// All related records match
    ActivityLogWhereInput? every,
    /// No related records match
    ActivityLogWhereInput? none,
  }) = _ActivityLogListRelationFilter;

  factory ActivityLogListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogListRelationFilterFromJson(json);
}

/// Filter for ActivityLog single relations (one-to-one, many-to-one)
@freezed
class ActivityLogRelationFilter with _$ActivityLogRelationFilter {
  const factory ActivityLogRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ActivityLogWhereInput? is_,
    /// Related record does not match
    ActivityLogWhereInput? isNot,
  }) = _ActivityLogRelationFilter;

  factory ActivityLogRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogRelationFilterFromJson(json);
}

/// Order by input for sorting ActivityLog records
@freezed
class ActivityLogOrderByInput with _$ActivityLogOrderByInput {
  const factory ActivityLogOrderByInput({
    SortOrder? id,
    SortOrder? description,
    SortOrder? actorId,
    SortOrder? actorName,
    SortOrder? actorImage,
    SortOrder? consultantProfileId,
    SortOrder? consultationId,
    SortOrder? subscriptionId,
    SortOrder? webinarId,
    SortOrder? classId,
    SortOrder? trialSessionId,
    SortOrder? createdAt,
  }) = _ActivityLogOrderByInput;

  factory ActivityLogOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogOrderByInputFromJson(json);
}

