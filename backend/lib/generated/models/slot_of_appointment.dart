import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';
import 'slot_completion_status.dart';
import 'appointment.dart';
import 'meeting_session.dart';

part 'slot_of_appointment.freezed.dart';
part 'slot_of_appointment.g.dart';

@freezed
class SlotOfAppointment with _$SlotOfAppointment {
  const factory SlotOfAppointment({
    required String id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<User>? user,
    required DateTime startsAt,
    required DateTime endsAt,
    @Default(false)
    bool isTentative,
    @Default(SlotCompletionStatus.scheduled)
    SlotCompletionStatus completionStatus,
    DateTime? completedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Appointment? appointment,
    required String appointmentId,
    MeetingSession? meetingSession,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SlotOfAppointment;

  factory SlotOfAppointment.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentFromJson(json);
}

/// Input for creating a new SlotOfAppointment
@freezed
class CreateSlotOfAppointmentInput with _$CreateSlotOfAppointmentInput {
  const factory CreateSlotOfAppointmentInput({
    required DateTime startsAt,
    required DateTime endsAt,
    @Default(false)
    bool? isTentative,
    @Default(SlotCompletionStatus.scheduled)
    SlotCompletionStatus completionStatus,
    DateTime? completedAt,
    required String appointmentId,
  }) = _CreateSlotOfAppointmentInput;

  factory CreateSlotOfAppointmentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSlotOfAppointmentInputFromJson(json);
}

/// Input for updating an existing SlotOfAppointment
@freezed
class UpdateSlotOfAppointmentInput with _$UpdateSlotOfAppointmentInput {
  const factory UpdateSlotOfAppointmentInput({
    DateTime? startsAt,
    DateTime? endsAt,
    bool? isTentative,
    SlotCompletionStatus? completionStatus,
    DateTime? completedAt,
    String? appointmentId,
  }) = _UpdateSlotOfAppointmentInput;

  factory UpdateSlotOfAppointmentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSlotOfAppointmentInputFromJson(json);
}

/// Unique where input for SlotOfAppointment
/// At least one field must be provided
@freezed
class SlotOfAppointmentWhereUniqueInput with _$SlotOfAppointmentWhereUniqueInput {
  const factory SlotOfAppointmentWhereUniqueInput({
    String? id,
  }) = _SlotOfAppointmentWhereUniqueInput;

  factory SlotOfAppointmentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentWhereUniqueInputFromJson(json);
}

/// Where input for filtering SlotOfAppointment records
@freezed
class SlotOfAppointmentWhereInput with _$SlotOfAppointmentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SlotOfAppointmentWhereInput({
    StringFilter? id,
    /// Filter by user relation
    UserListRelationFilter? user,
    DateTimeFilter? startsAt,
    DateTimeFilter? endsAt,
    BooleanFilter? isTentative,
    SlotCompletionStatusFilter? completionStatus,
    DateTimeFilter? completedAt,
    /// Filter by appointment relation
    AppointmentRelationFilter? appointment,
    StringFilter? appointmentId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SlotOfAppointmentWhereInput>? AND,
    List<SlotOfAppointmentWhereInput>? OR,
    SlotOfAppointmentWhereInput? NOT,
  }) = _SlotOfAppointmentWhereInput;

  factory SlotOfAppointmentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentWhereInputFromJson(json);
}

/// Filter for SlotOfAppointment list relations (one-to-many, many-to-many)
@freezed
class SlotOfAppointmentListRelationFilter with _$SlotOfAppointmentListRelationFilter {
  const factory SlotOfAppointmentListRelationFilter({
    /// At least one related record matches
    SlotOfAppointmentWhereInput? some,
    /// All related records match
    SlotOfAppointmentWhereInput? every,
    /// No related records match
    SlotOfAppointmentWhereInput? none,
  }) = _SlotOfAppointmentListRelationFilter;

  factory SlotOfAppointmentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentListRelationFilterFromJson(json);
}

/// Filter for SlotOfAppointment single relations (one-to-one, many-to-one)
@freezed
class SlotOfAppointmentRelationFilter with _$SlotOfAppointmentRelationFilter {
  const factory SlotOfAppointmentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SlotOfAppointmentWhereInput? is_,
    /// Related record does not match
    SlotOfAppointmentWhereInput? isNot,
  }) = _SlotOfAppointmentRelationFilter;

  factory SlotOfAppointmentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentRelationFilterFromJson(json);
}

/// Order by input for sorting SlotOfAppointment records
@freezed
class SlotOfAppointmentOrderByInput with _$SlotOfAppointmentOrderByInput {
  const factory SlotOfAppointmentOrderByInput({
    SortOrder? id,
    SortOrder? startsAt,
    SortOrder? endsAt,
    SortOrder? isTentative,
    SortOrder? completedAt,
    SortOrder? appointmentId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SlotOfAppointmentOrderByInput;

  factory SlotOfAppointmentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAppointmentOrderByInputFromJson(json);
}

