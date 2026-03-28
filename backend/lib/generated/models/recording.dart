import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'recording_storage_type.dart';
import 'recording_status.dart';
import 'meeting_session.dart';

part 'recording.freezed.dart';
part 'recording.g.dart';

@freezed
class Recording with _$Recording {
  const factory Recording({
    required String id,
    required String title,
    required String recordingUrl,
    required int durationInMinutes,
    required DateTime recordedAt,
    String? streamRecordingId,
    String? streamCallId,
    @Default(RecordingStorageType.streamS3)
    RecordingStorageType storageType,
    @Default(RecordingStatus.ready)
    RecordingStatus status,
    String? supabaseUrl,
    String? supabasePath,
    String? thumbnailUrl,
    BigInt? fileSize,
    String? codec,
    String? resolution,
    String? previewClipUrl,
    int? previewClipDuration,
    DateTime? streamUrlExpiresAt,
    DateTime? transferredAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    MeetingSession? meetingSession,
    required String meetingSessionId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Recording;

  factory Recording.fromJson(Map<String, dynamic> json) =>
      _$RecordingFromJson(json);
}

/// Input for creating a new Recording
@freezed
class CreateRecordingInput with _$CreateRecordingInput {
  const factory CreateRecordingInput({
    required String title,
    required String recordingUrl,
    required int durationInMinutes,
    required DateTime recordedAt,
    String? streamRecordingId,
    String? streamCallId,
    @Default(RecordingStorageType.streamS3)
    RecordingStorageType storageType,
    @Default(RecordingStatus.ready)
    RecordingStatus status,
    String? supabaseUrl,
    String? supabasePath,
    String? thumbnailUrl,
    BigInt? fileSize,
    String? codec,
    String? resolution,
    String? previewClipUrl,
    int? previewClipDuration,
    DateTime? streamUrlExpiresAt,
    DateTime? transferredAt,
    required String meetingSessionId,
  }) = _CreateRecordingInput;

  factory CreateRecordingInput.fromJson(Map<String, dynamic> json) =>
      _$CreateRecordingInputFromJson(json);
}

/// Input for updating an existing Recording
@freezed
class UpdateRecordingInput with _$UpdateRecordingInput {
  const factory UpdateRecordingInput({
    String? title,
    String? recordingUrl,
    int? durationInMinutes,
    DateTime? recordedAt,
    String? streamRecordingId,
    String? streamCallId,
    RecordingStorageType? storageType,
    RecordingStatus? status,
    String? supabaseUrl,
    String? supabasePath,
    String? thumbnailUrl,
    BigInt? fileSize,
    String? codec,
    String? resolution,
    String? previewClipUrl,
    int? previewClipDuration,
    DateTime? streamUrlExpiresAt,
    DateTime? transferredAt,
    String? meetingSessionId,
  }) = _UpdateRecordingInput;

  factory UpdateRecordingInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateRecordingInputFromJson(json);
}

/// Unique where input for Recording
/// At least one field must be provided
@freezed
class RecordingWhereUniqueInput with _$RecordingWhereUniqueInput {
  const factory RecordingWhereUniqueInput({
    String? id,
    String? streamRecordingId,
  }) = _RecordingWhereUniqueInput;

  factory RecordingWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$RecordingWhereUniqueInputFromJson(json);
}

/// Where input for filtering Recording records
@freezed
class RecordingWhereInput with _$RecordingWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory RecordingWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? recordingUrl,
    IntFilter? durationInMinutes,
    DateTimeFilter? recordedAt,
    StringFilter? streamRecordingId,
    StringFilter? streamCallId,
    RecordingStorageTypeFilter? storageType,
    RecordingStatusFilter? status,
    StringFilter? supabaseUrl,
    StringFilter? supabasePath,
    StringFilter? thumbnailUrl,
    StringFilter? codec,
    StringFilter? resolution,
    StringFilter? previewClipUrl,
    IntFilter? previewClipDuration,
    DateTimeFilter? streamUrlExpiresAt,
    DateTimeFilter? transferredAt,
    /// Filter by meetingSession relation
    MeetingSessionRelationFilter? meetingSession,
    StringFilter? meetingSessionId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<RecordingWhereInput>? AND,
    List<RecordingWhereInput>? OR,
    RecordingWhereInput? NOT,
  }) = _RecordingWhereInput;

  factory RecordingWhereInput.fromJson(Map<String, dynamic> json) =>
      _$RecordingWhereInputFromJson(json);
}

/// Filter for Recording list relations (one-to-many, many-to-many)
@freezed
class RecordingListRelationFilter with _$RecordingListRelationFilter {
  const factory RecordingListRelationFilter({
    /// At least one related record matches
    RecordingWhereInput? some,
    /// All related records match
    RecordingWhereInput? every,
    /// No related records match
    RecordingWhereInput? none,
  }) = _RecordingListRelationFilter;

  factory RecordingListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$RecordingListRelationFilterFromJson(json);
}

/// Filter for Recording single relations (one-to-one, many-to-one)
@freezed
class RecordingRelationFilter with _$RecordingRelationFilter {
  const factory RecordingRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') RecordingWhereInput? is_,
    /// Related record does not match
    RecordingWhereInput? isNot,
  }) = _RecordingRelationFilter;

  factory RecordingRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$RecordingRelationFilterFromJson(json);
}

/// Order by input for sorting Recording records
@freezed
class RecordingOrderByInput with _$RecordingOrderByInput {
  const factory RecordingOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? recordingUrl,
    SortOrder? durationInMinutes,
    SortOrder? recordedAt,
    SortOrder? streamRecordingId,
    SortOrder? streamCallId,
    SortOrder? supabaseUrl,
    SortOrder? supabasePath,
    SortOrder? thumbnailUrl,
    SortOrder? codec,
    SortOrder? resolution,
    SortOrder? previewClipUrl,
    SortOrder? previewClipDuration,
    SortOrder? streamUrlExpiresAt,
    SortOrder? transferredAt,
    SortOrder? meetingSessionId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _RecordingOrderByInput;

  factory RecordingOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$RecordingOrderByInputFromJson(json);
}

