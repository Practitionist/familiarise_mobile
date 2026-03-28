// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationImpl _$$ConsultationImplFromJson(Map<String, dynamic> json) =>
    _$ConsultationImpl(
      id: json['id'] as String,
      consultationPlanId: json['consultationPlanId'] as String,
      requestStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['requestStatus']) ??
              RequestStatus.pending,
      requestedById: json['requestedById'] as String,
      requestedAt: DateTime.parse(json['requestedAt'] as String),
      requestNotes: json['requestNotes'] as String?,
      pendingPaymentUrl: json['pendingPaymentUrl'] as String?,
      bookingSource:
          $enumDecodeNullable(_$BookingSourceEnumMap, json['bookingSource']) ??
              BookingSource.requestSubmitted,
      feedbackFromConsultee: json['feedbackFromConsultee'] as String?,
      feedbackFromConsultant: json['feedbackFromConsultant'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      cancellationReason: $enumDecodeNullable(
          _$CancellationReasonEnumMap, json['cancellationReason']),
      cancellationNotes: json['cancellationNotes'] as String?,
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      cancelledBy: json['cancelledBy'] as String?,
      appointment: json['appointment'] == null
          ? null
          : Appointment.fromJson(json['appointment'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultationImplToJson(_$ConsultationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationPlanId': instance.consultationPlanId,
      'requestStatus': _$RequestStatusEnumMap[instance.requestStatus]!,
      'requestedById': instance.requestedById,
      'requestedAt': instance.requestedAt.toIso8601String(),
      'requestNotes': instance.requestNotes,
      'pendingPaymentUrl': instance.pendingPaymentUrl,
      'bookingSource': _$BookingSourceEnumMap[instance.bookingSource]!,
      'feedbackFromConsultee': instance.feedbackFromConsultee,
      'feedbackFromConsultant': instance.feedbackFromConsultant,
      'rating': instance.rating,
      'cancellationReason':
          _$CancellationReasonEnumMap[instance.cancellationReason],
      'cancellationNotes': instance.cancellationNotes,
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'cancelledBy': instance.cancelledBy,
      'appointment': instance.appointment,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$RequestStatusEnumMap = {
  RequestStatus.pending: 'PENDING',
  RequestStatus.approved: 'APPROVED',
  RequestStatus.approvedPendingPayment: 'APPROVED_PENDING_PAYMENT',
  RequestStatus.scheduled: 'SCHEDULED',
  RequestStatus.completed: 'COMPLETED',
  RequestStatus.rejected: 'REJECTED',
  RequestStatus.cancelled: 'CANCELLED',
  RequestStatus.expired: 'EXPIRED',
};

const _$BookingSourceEnumMap = {
  BookingSource.directCheckout: 'DIRECT_CHECKOUT',
  BookingSource.requestSubmitted: 'REQUEST_SUBMITTED',
};

const _$CancellationReasonEnumMap = {
  CancellationReason.scheduleConflict: 'SCHEDULE_CONFLICT',
  CancellationReason.foundAlternative: 'FOUND_ALTERNATIVE',
  CancellationReason.financialReasons: 'FINANCIAL_REASONS',
  CancellationReason.personalEmergency: 'PERSONAL_EMERGENCY',
  CancellationReason.noLongerNeeded: 'NO_LONGER_NEEDED',
  CancellationReason.consultantUnavailable: 'CONSULTANT_UNAVAILABLE',
  CancellationReason.consultantEmergency: 'CONSULTANT_EMERGENCY',
  CancellationReason.paymentFailed: 'PAYMENT_FAILED',
  CancellationReason.expired: 'EXPIRED',
  CancellationReason.consultantIssue: 'CONSULTANT_ISSUE',
  CancellationReason.technicalIssue: 'TECHNICAL_ISSUE',
  CancellationReason.other: 'OTHER',
};

_$CreateConsultationInputImpl _$$CreateConsultationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsultationInputImpl(
      consultationPlanId: json['consultationPlanId'] as String,
      requestStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['requestStatus']) ??
              RequestStatus.pending,
      requestedById: json['requestedById'] as String,
      requestNotes: json['requestNotes'] as String?,
      pendingPaymentUrl: json['pendingPaymentUrl'] as String?,
      bookingSource:
          $enumDecodeNullable(_$BookingSourceEnumMap, json['bookingSource']) ??
              BookingSource.requestSubmitted,
      feedbackFromConsultee: json['feedbackFromConsultee'] as String?,
      feedbackFromConsultant: json['feedbackFromConsultant'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      cancellationReason: $enumDecodeNullable(
          _$CancellationReasonEnumMap, json['cancellationReason']),
      cancellationNotes: json['cancellationNotes'] as String?,
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      cancelledBy: json['cancelledBy'] as String?,
    );

Map<String, dynamic> _$$CreateConsultationInputImplToJson(
        _$CreateConsultationInputImpl instance) =>
    <String, dynamic>{
      'consultationPlanId': instance.consultationPlanId,
      'requestStatus': _$RequestStatusEnumMap[instance.requestStatus]!,
      'requestedById': instance.requestedById,
      'requestNotes': instance.requestNotes,
      'pendingPaymentUrl': instance.pendingPaymentUrl,
      'bookingSource': _$BookingSourceEnumMap[instance.bookingSource]!,
      'feedbackFromConsultee': instance.feedbackFromConsultee,
      'feedbackFromConsultant': instance.feedbackFromConsultant,
      'rating': instance.rating,
      'cancellationReason':
          _$CancellationReasonEnumMap[instance.cancellationReason],
      'cancellationNotes': instance.cancellationNotes,
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'cancelledBy': instance.cancelledBy,
    };

_$UpdateConsultationInputImpl _$$UpdateConsultationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsultationInputImpl(
      consultationPlanId: json['consultationPlanId'] as String?,
      requestStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['requestStatus']),
      requestedById: json['requestedById'] as String?,
      requestNotes: json['requestNotes'] as String?,
      pendingPaymentUrl: json['pendingPaymentUrl'] as String?,
      bookingSource:
          $enumDecodeNullable(_$BookingSourceEnumMap, json['bookingSource']),
      feedbackFromConsultee: json['feedbackFromConsultee'] as String?,
      feedbackFromConsultant: json['feedbackFromConsultant'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      cancellationReason: $enumDecodeNullable(
          _$CancellationReasonEnumMap, json['cancellationReason']),
      cancellationNotes: json['cancellationNotes'] as String?,
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      cancelledBy: json['cancelledBy'] as String?,
    );

Map<String, dynamic> _$$UpdateConsultationInputImplToJson(
        _$UpdateConsultationInputImpl instance) =>
    <String, dynamic>{
      'consultationPlanId': instance.consultationPlanId,
      'requestStatus': _$RequestStatusEnumMap[instance.requestStatus],
      'requestedById': instance.requestedById,
      'requestNotes': instance.requestNotes,
      'pendingPaymentUrl': instance.pendingPaymentUrl,
      'bookingSource': _$BookingSourceEnumMap[instance.bookingSource],
      'feedbackFromConsultee': instance.feedbackFromConsultee,
      'feedbackFromConsultant': instance.feedbackFromConsultant,
      'rating': instance.rating,
      'cancellationReason':
          _$CancellationReasonEnumMap[instance.cancellationReason],
      'cancellationNotes': instance.cancellationNotes,
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'cancelledBy': instance.cancelledBy,
    };

_$ConsultationWhereUniqueInputImpl _$$ConsultationWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ConsultationWhereUniqueInputImplToJson(
        _$ConsultationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ConsultationWhereInputImpl _$$ConsultationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultationPlan: json['consultationPlan'] == null
          ? null
          : ConsultationPlanRelationFilter.fromJson(
              json['consultationPlan'] as Map<String, dynamic>),
      consultationPlanId: json['consultationPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultationPlanId'] as Map<String, dynamic>),
      requestStatus: json['requestStatus'] == null
          ? null
          : RequestStatusFilter.fromJson(
              json['requestStatus'] as Map<String, dynamic>),
      requestedBy: json['requestedBy'] == null
          ? null
          : ConsulteeProfileRelationFilter.fromJson(
              json['requestedBy'] as Map<String, dynamic>),
      requestedById: json['requestedById'] == null
          ? null
          : StringFilter.fromJson(
              json['requestedById'] as Map<String, dynamic>),
      requestedAt: json['requestedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['requestedAt'] as Map<String, dynamic>),
      requestNotes: json['requestNotes'] == null
          ? null
          : StringFilter.fromJson(json['requestNotes'] as Map<String, dynamic>),
      pendingPaymentUrl: json['pendingPaymentUrl'] == null
          ? null
          : StringFilter.fromJson(
              json['pendingPaymentUrl'] as Map<String, dynamic>),
      bookingSource: json['bookingSource'] == null
          ? null
          : BookingSourceFilter.fromJson(
              json['bookingSource'] as Map<String, dynamic>),
      feedbackFromConsultee: json['feedbackFromConsultee'] == null
          ? null
          : StringFilter.fromJson(
              json['feedbackFromConsultee'] as Map<String, dynamic>),
      feedbackFromConsultant: json['feedbackFromConsultant'] == null
          ? null
          : StringFilter.fromJson(
              json['feedbackFromConsultant'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : FloatFilter.fromJson(json['rating'] as Map<String, dynamic>),
      cancellationReason: json['cancellationReason'] == null
          ? null
          : CancellationReasonFilter.fromJson(
              json['cancellationReason'] as Map<String, dynamic>),
      cancellationNotes: json['cancellationNotes'] == null
          ? null
          : StringFilter.fromJson(
              json['cancellationNotes'] as Map<String, dynamic>),
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['cancelledAt'] as Map<String, dynamic>),
      cancelledBy: json['cancelledBy'] == null
          ? null
          : StringFilter.fromJson(json['cancelledBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => ConsultationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => ConsultationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultationWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultationWhereInputImplToJson(
        _$ConsultationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultationPlan': instance.consultationPlan?.toJson(),
      'consultationPlanId': instance.consultationPlanId?.toJson(),
      'requestStatus': instance.requestStatus?.toJson(),
      'requestedBy': instance.requestedBy?.toJson(),
      'requestedById': instance.requestedById?.toJson(),
      'requestedAt': instance.requestedAt?.toJson(),
      'requestNotes': instance.requestNotes?.toJson(),
      'pendingPaymentUrl': instance.pendingPaymentUrl?.toJson(),
      'bookingSource': instance.bookingSource?.toJson(),
      'feedbackFromConsultee': instance.feedbackFromConsultee?.toJson(),
      'feedbackFromConsultant': instance.feedbackFromConsultant?.toJson(),
      'rating': instance.rating?.toJson(),
      'cancellationReason': instance.cancellationReason?.toJson(),
      'cancellationNotes': instance.cancellationNotes?.toJson(),
      'cancelledAt': instance.cancelledAt?.toJson(),
      'cancelledBy': instance.cancelledBy?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultationListRelationFilterImpl
    _$$ConsultationListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsultationListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultationListRelationFilterImplToJson(
        _$ConsultationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultationRelationFilterImpl _$$ConsultationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ConsultationWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ConsultationWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultationRelationFilterImplToJson(
        _$ConsultationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultationOrderByInputImpl _$$ConsultationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      consultationPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultationPlanId']),
      requestedById:
          $enumDecodeNullable(_$SortOrderEnumMap, json['requestedById']),
      requestedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['requestedAt']),
      requestNotes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['requestNotes']),
      pendingPaymentUrl:
          $enumDecodeNullable(_$SortOrderEnumMap, json['pendingPaymentUrl']),
      feedbackFromConsultee: $enumDecodeNullable(
          _$SortOrderEnumMap, json['feedbackFromConsultee']),
      feedbackFromConsultant: $enumDecodeNullable(
          _$SortOrderEnumMap, json['feedbackFromConsultant']),
      rating: $enumDecodeNullable(_$SortOrderEnumMap, json['rating']),
      cancellationNotes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['cancellationNotes']),
      cancelledAt: $enumDecodeNullable(_$SortOrderEnumMap, json['cancelledAt']),
      cancelledBy: $enumDecodeNullable(_$SortOrderEnumMap, json['cancelledBy']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ConsultationOrderByInputImplToJson(
        _$ConsultationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultationPlanId': _$SortOrderEnumMap[instance.consultationPlanId],
      'requestedById': _$SortOrderEnumMap[instance.requestedById],
      'requestedAt': _$SortOrderEnumMap[instance.requestedAt],
      'requestNotes': _$SortOrderEnumMap[instance.requestNotes],
      'pendingPaymentUrl': _$SortOrderEnumMap[instance.pendingPaymentUrl],
      'feedbackFromConsultee':
          _$SortOrderEnumMap[instance.feedbackFromConsultee],
      'feedbackFromConsultant':
          _$SortOrderEnumMap[instance.feedbackFromConsultant],
      'rating': _$SortOrderEnumMap[instance.rating],
      'cancellationNotes': _$SortOrderEnumMap[instance.cancellationNotes],
      'cancelledAt': _$SortOrderEnumMap[instance.cancelledAt],
      'cancelledBy': _$SortOrderEnumMap[instance.cancelledBy],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
