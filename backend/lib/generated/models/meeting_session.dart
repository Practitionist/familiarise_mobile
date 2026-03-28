import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'platform.dart';
import 'recording.dart';
import 'slot_of_appointment.dart';

part 'meeting_session.freezed.dart';
part 'meeting_session.g.dart';

@freezed
class MeetingSession with _$MeetingSession {
  const factory MeetingSession({
    required String id,
    required String streamCallId,
    @Default(Platform.stream)
    Platform platform,
    String? passcode,
    required List<String> hostKeys,
    @Default(false)
    bool isRecording,
    DateTime? recordingStartedAt,
    String? recordingStartedBy,
    DateTime? endedAt,
    String? endedReason,
    required List<Recording> recordings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SlotOfAppointment? slotOfAppointment,
    required String slotOfAppointmentId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MeetingSession;

  factory MeetingSession.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionFromJson(json);
}

/// Input for creating a new MeetingSession
@freezed
class CreateMeetingSessionInput with _$CreateMeetingSessionInput {
  const factory CreateMeetingSessionInput({
    required String streamCallId,
    @Default(Platform.stream)
    Platform platform,
    String? passcode,
    required List<String> hostKeys,
    @Default(false)
    bool? isRecording,
    DateTime? recordingStartedAt,
    String? recordingStartedBy,
    DateTime? endedAt,
    String? endedReason,
    required String slotOfAppointmentId,
  }) = _CreateMeetingSessionInput;

  factory CreateMeetingSessionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateMeetingSessionInputFromJson(json);
}

/// Input for updating an existing MeetingSession
@freezed
class UpdateMeetingSessionInput with _$UpdateMeetingSessionInput {
  const factory UpdateMeetingSessionInput({
    String? streamCallId,
    Platform? platform,
    String? passcode,
    List<String>? hostKeys,
    bool? isRecording,
    DateTime? recordingStartedAt,
    String? recordingStartedBy,
    DateTime? endedAt,
    String? endedReason,
    String? slotOfAppointmentId,
  }) = _UpdateMeetingSessionInput;

  factory UpdateMeetingSessionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateMeetingSessionInputFromJson(json);
}

/// Unique where input for MeetingSession
/// At least one field must be provided
@freezed
class MeetingSessionWhereUniqueInput with _$MeetingSessionWhereUniqueInput {
  const factory MeetingSessionWhereUniqueInput({
    String? id,
    String? streamCallId,
    String? slotOfAppointmentId,
  }) = _MeetingSessionWhereUniqueInput;

  factory MeetingSessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionWhereUniqueInputFromJson(json);
}

/// Where input for filtering MeetingSession records
@freezed
class MeetingSessionWhereInput with _$MeetingSessionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory MeetingSessionWhereInput({
    StringFilter? id,
    StringFilter? streamCallId,
    PlatformFilter? platform,
    StringFilter? passcode,
    StringListFilter? hostKeys,
    BooleanFilter? isRecording,
    DateTimeFilter? recordingStartedAt,
    StringFilter? recordingStartedBy,
    DateTimeFilter? endedAt,
    StringFilter? endedReason,
    /// Filter by slotOfAppointment relation
    SlotOfAppointmentRelationFilter? slotOfAppointment,
    StringFilter? slotOfAppointmentId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<MeetingSessionWhereInput>? AND,
    List<MeetingSessionWhereInput>? OR,
    MeetingSessionWhereInput? NOT,
  }) = _MeetingSessionWhereInput;

  factory MeetingSessionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionWhereInputFromJson(json);
}

/// Filter for MeetingSession list relations (one-to-many, many-to-many)
@freezed
class MeetingSessionListRelationFilter with _$MeetingSessionListRelationFilter {
  const factory MeetingSessionListRelationFilter({
    /// At least one related record matches
    MeetingSessionWhereInput? some,
    /// All related records match
    MeetingSessionWhereInput? every,
    /// No related records match
    MeetingSessionWhereInput? none,
  }) = _MeetingSessionListRelationFilter;

  factory MeetingSessionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionListRelationFilterFromJson(json);
}

/// Filter for MeetingSession single relations (one-to-one, many-to-one)
@freezed
class MeetingSessionRelationFilter with _$MeetingSessionRelationFilter {
  const factory MeetingSessionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') MeetingSessionWhereInput? is_,
    /// Related record does not match
    MeetingSessionWhereInput? isNot,
  }) = _MeetingSessionRelationFilter;

  factory MeetingSessionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionRelationFilterFromJson(json);
}

/// Order by input for sorting MeetingSession records
@freezed
class MeetingSessionOrderByInput with _$MeetingSessionOrderByInput {
  const factory MeetingSessionOrderByInput({
    SortOrder? id,
    SortOrder? streamCallId,
    SortOrder? passcode,
    SortOrder? hostKeys,
    SortOrder? isRecording,
    SortOrder? recordingStartedAt,
    SortOrder? recordingStartedBy,
    SortOrder? endedAt,
    SortOrder? endedReason,
    SortOrder? slotOfAppointmentId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _MeetingSessionOrderByInput;

  factory MeetingSessionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionOrderByInputFromJson(json);
}

