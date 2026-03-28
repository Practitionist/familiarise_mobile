import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'appointments_type.dart';
import 'slot_of_appointment.dart';
import 'consultation.dart';
import 'subscription.dart';
import 'webinar.dart';
import 'class_model.dart';
import 'trial_session.dart';
import 'payment.dart';
import 'appointment_document.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required AppointmentsType appointmentType,
    required List<SlotOfAppointment> slotsOfAppointment,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Consultation? consultation,
    String? consultationId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Subscription? subscription,
    String? subscriptionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Webinar? webinar,
    String? webinarId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ClassModel? classRef,
    String? classId,
    TrialSession? trialSession,
    required List<Payment> payment,
    required List<AppointmentDocument> documents,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

/// Input for creating a new Appointment
@freezed
class CreateAppointmentInput with _$CreateAppointmentInput {
  const factory CreateAppointmentInput({
    required AppointmentsType appointmentType,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
  }) = _CreateAppointmentInput;

  factory CreateAppointmentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentInputFromJson(json);
}

/// Input for updating an existing Appointment
@freezed
class UpdateAppointmentInput with _$UpdateAppointmentInput {
  const factory UpdateAppointmentInput({
    AppointmentsType? appointmentType,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
  }) = _UpdateAppointmentInput;

  factory UpdateAppointmentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppointmentInputFromJson(json);
}

/// Unique where input for Appointment
/// At least one field must be provided
@freezed
class AppointmentWhereUniqueInput with _$AppointmentWhereUniqueInput {
  const factory AppointmentWhereUniqueInput({
    String? id,
    String? consultationId,
    String? webinarId,
  }) = _AppointmentWhereUniqueInput;

  factory AppointmentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentWhereUniqueInputFromJson(json);
}

/// Where input for filtering Appointment records
@freezed
class AppointmentWhereInput with _$AppointmentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AppointmentWhereInput({
    StringFilter? id,
    AppointmentsTypeFilter? appointmentType,
    /// Filter by consultation relation
    ConsultationRelationFilter? consultation,
    StringFilter? consultationId,
    /// Filter by subscription relation
    SubscriptionRelationFilter? subscription,
    StringFilter? subscriptionId,
    /// Filter by webinar relation
    WebinarRelationFilter? webinar,
    StringFilter? webinarId,
    /// Filter by classRef relation
    ClassModelRelationFilter? classRef,
    StringFilter? classId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<AppointmentWhereInput>? AND,
    List<AppointmentWhereInput>? OR,
    AppointmentWhereInput? NOT,
  }) = _AppointmentWhereInput;

  factory AppointmentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentWhereInputFromJson(json);
}

/// Filter for Appointment list relations (one-to-many, many-to-many)
@freezed
class AppointmentListRelationFilter with _$AppointmentListRelationFilter {
  const factory AppointmentListRelationFilter({
    /// At least one related record matches
    AppointmentWhereInput? some,
    /// All related records match
    AppointmentWhereInput? every,
    /// No related records match
    AppointmentWhereInput? none,
  }) = _AppointmentListRelationFilter;

  factory AppointmentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AppointmentListRelationFilterFromJson(json);
}

/// Filter for Appointment single relations (one-to-one, many-to-one)
@freezed
class AppointmentRelationFilter with _$AppointmentRelationFilter {
  const factory AppointmentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AppointmentWhereInput? is_,
    /// Related record does not match
    AppointmentWhereInput? isNot,
  }) = _AppointmentRelationFilter;

  factory AppointmentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AppointmentRelationFilterFromJson(json);
}

/// Order by input for sorting Appointment records
@freezed
class AppointmentOrderByInput with _$AppointmentOrderByInput {
  const factory AppointmentOrderByInput({
    SortOrder? id,
    SortOrder? consultationId,
    SortOrder? subscriptionId,
    SortOrder? webinarId,
    SortOrder? classId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _AppointmentOrderByInput;

  factory AppointmentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentOrderByInputFromJson(json);
}

