import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultation_plan.dart';
import 'request_status.dart';
import 'consultee_profile.dart';
import 'booking_source.dart';
import 'cancellation_reason.dart';
import 'appointment.dart';

part 'consultation.freezed.dart';
part 'consultation.g.dart';

@freezed
class Consultation with _$Consultation {
  const factory Consultation({
    required String id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultationPlan? consultationPlan,
    required String consultationPlanId,
    @Default(RequestStatus.pending)
    RequestStatus requestStatus,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsulteeProfile? requestedBy,
    required String requestedById,
    required DateTime requestedAt,
    String? requestNotes,
    String? pendingPaymentUrl,
    @Default(BookingSource.requestSubmitted)
    BookingSource bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
    Appointment? appointment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Consultation;

  factory Consultation.fromJson(Map<String, dynamic> json) =>
      _$ConsultationFromJson(json);
}

/// Input for creating a new Consultation
@freezed
class CreateConsultationInput with _$CreateConsultationInput {
  const factory CreateConsultationInput({
    required String consultationPlanId,
    @Default(RequestStatus.pending)
    RequestStatus requestStatus,
    required String requestedById,
    String? requestNotes,
    String? pendingPaymentUrl,
    @Default(BookingSource.requestSubmitted)
    BookingSource bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
  }) = _CreateConsultationInput;

  factory CreateConsultationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultationInputFromJson(json);
}

/// Input for updating an existing Consultation
@freezed
class UpdateConsultationInput with _$UpdateConsultationInput {
  const factory UpdateConsultationInput({
    String? consultationPlanId,
    RequestStatus? requestStatus,
    String? requestedById,
    String? requestNotes,
    String? pendingPaymentUrl,
    BookingSource? bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
  }) = _UpdateConsultationInput;

  factory UpdateConsultationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultationInputFromJson(json);
}

/// Unique where input for Consultation
/// At least one field must be provided
@freezed
class ConsultationWhereUniqueInput with _$ConsultationWhereUniqueInput {
  const factory ConsultationWhereUniqueInput({
    String? id,
  }) = _ConsultationWhereUniqueInput;

  factory ConsultationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Consultation records
@freezed
class ConsultationWhereInput with _$ConsultationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultationWhereInput({
    StringFilter? id,
    /// Filter by consultationPlan relation
    ConsultationPlanRelationFilter? consultationPlan,
    StringFilter? consultationPlanId,
    RequestStatusFilter? requestStatus,
    /// Filter by requestedBy relation
    ConsulteeProfileRelationFilter? requestedBy,
    StringFilter? requestedById,
    DateTimeFilter? requestedAt,
    StringFilter? requestNotes,
    StringFilter? pendingPaymentUrl,
    BookingSourceFilter? bookingSource,
    StringFilter? feedbackFromConsultee,
    StringFilter? feedbackFromConsultant,
    FloatFilter? rating,
    CancellationReasonFilter? cancellationReason,
    StringFilter? cancellationNotes,
    DateTimeFilter? cancelledAt,
    StringFilter? cancelledBy,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultationWhereInput>? AND,
    List<ConsultationWhereInput>? OR,
    ConsultationWhereInput? NOT,
  }) = _ConsultationWhereInput;

  factory ConsultationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationWhereInputFromJson(json);
}

/// Filter for Consultation list relations (one-to-many, many-to-many)
@freezed
class ConsultationListRelationFilter with _$ConsultationListRelationFilter {
  const factory ConsultationListRelationFilter({
    /// At least one related record matches
    ConsultationWhereInput? some,
    /// All related records match
    ConsultationWhereInput? every,
    /// No related records match
    ConsultationWhereInput? none,
  }) = _ConsultationListRelationFilter;

  factory ConsultationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultationListRelationFilterFromJson(json);
}

/// Filter for Consultation single relations (one-to-one, many-to-one)
@freezed
class ConsultationRelationFilter with _$ConsultationRelationFilter {
  const factory ConsultationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultationWhereInput? is_,
    /// Related record does not match
    ConsultationWhereInput? isNot,
  }) = _ConsultationRelationFilter;

  factory ConsultationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultationRelationFilterFromJson(json);
}

/// Order by input for sorting Consultation records
@freezed
class ConsultationOrderByInput with _$ConsultationOrderByInput {
  const factory ConsultationOrderByInput({
    SortOrder? id,
    SortOrder? consultationPlanId,
    SortOrder? requestedById,
    SortOrder? requestedAt,
    SortOrder? requestNotes,
    SortOrder? pendingPaymentUrl,
    SortOrder? feedbackFromConsultee,
    SortOrder? feedbackFromConsultant,
    SortOrder? rating,
    SortOrder? cancellationNotes,
    SortOrder? cancelledAt,
    SortOrder? cancelledBy,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultationOrderByInput;

  factory ConsultationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationOrderByInputFromJson(json);
}

