// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['id'] as String,
      schedulingPeriodStartsAt:
          DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt:
          DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone:
          json['schedulingTimezone'] as String? ?? "Asia/Kolkata",
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
      subscriptionPlanId: json['subscriptionPlanId'] as String,
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
      convertedFromTrial: json['convertedFromTrial'] == null
          ? null
          : TrialSession.fromJson(
              json['convertedFromTrial'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
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
      'subscriptionPlanId': instance.subscriptionPlanId,
      'appointments': instance.appointments,
      'convertedFromTrial': instance.convertedFromTrial,
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

_$CreateSubscriptionInputImpl _$$CreateSubscriptionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSubscriptionInputImpl(
      schedulingPeriodStartsAt:
          DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt:
          DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone:
          json['schedulingTimezone'] as String? ?? "Asia/Kolkata",
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
      subscriptionPlanId: json['subscriptionPlanId'] as String,
    );

Map<String, dynamic> _$$CreateSubscriptionInputImplToJson(
        _$CreateSubscriptionInputImpl instance) =>
    <String, dynamic>{
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
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
      'subscriptionPlanId': instance.subscriptionPlanId,
    };

_$UpdateSubscriptionInputImpl _$$UpdateSubscriptionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSubscriptionInputImpl(
      schedulingPeriodStartsAt: json['schedulingPeriodStartsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt: json['schedulingPeriodEndsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone: json['schedulingTimezone'] as String?,
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
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
    );

Map<String, dynamic> _$$UpdateSubscriptionInputImplToJson(
        _$UpdateSubscriptionInputImpl instance) =>
    <String, dynamic>{
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt?.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt?.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
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
      'subscriptionPlanId': instance.subscriptionPlanId,
    };

_$SubscriptionWhereUniqueInputImpl _$$SubscriptionWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SubscriptionWhereUniqueInputImplToJson(
        _$SubscriptionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SubscriptionWhereInputImpl _$$SubscriptionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      schedulingPeriodStartsAt: json['schedulingPeriodStartsAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['schedulingPeriodStartsAt'] as Map<String, dynamic>),
      schedulingPeriodEndsAt: json['schedulingPeriodEndsAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['schedulingPeriodEndsAt'] as Map<String, dynamic>),
      schedulingTimezone: json['schedulingTimezone'] == null
          ? null
          : StringFilter.fromJson(
              json['schedulingTimezone'] as Map<String, dynamic>),
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
      subscriptionPlan: json['subscriptionPlan'] == null
          ? null
          : SubscriptionPlanRelationFilter.fromJson(
              json['subscriptionPlan'] as Map<String, dynamic>),
      subscriptionPlanId: json['subscriptionPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionPlanId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => SubscriptionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => SubscriptionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SubscriptionWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionWhereInputImplToJson(
        _$SubscriptionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'schedulingPeriodStartsAt': instance.schedulingPeriodStartsAt?.toJson(),
      'schedulingPeriodEndsAt': instance.schedulingPeriodEndsAt?.toJson(),
      'schedulingTimezone': instance.schedulingTimezone?.toJson(),
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
      'subscriptionPlan': instance.subscriptionPlan?.toJson(),
      'subscriptionPlanId': instance.subscriptionPlanId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SubscriptionListRelationFilterImpl
    _$$SubscriptionListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SubscriptionWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SubscriptionWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SubscriptionWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionListRelationFilterImplToJson(
        _$SubscriptionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SubscriptionRelationFilterImpl _$$SubscriptionRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : SubscriptionWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : SubscriptionWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionRelationFilterImplToJson(
        _$SubscriptionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SubscriptionOrderByInputImpl _$$SubscriptionOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      schedulingPeriodStartsAt: $enumDecodeNullable(
          _$SortOrderEnumMap, json['schedulingPeriodStartsAt']),
      schedulingPeriodEndsAt: $enumDecodeNullable(
          _$SortOrderEnumMap, json['schedulingPeriodEndsAt']),
      schedulingTimezone:
          $enumDecodeNullable(_$SortOrderEnumMap, json['schedulingTimezone']),
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
      subscriptionPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionPlanId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SubscriptionOrderByInputImplToJson(
        _$SubscriptionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'schedulingPeriodStartsAt':
          _$SortOrderEnumMap[instance.schedulingPeriodStartsAt],
      'schedulingPeriodEndsAt':
          _$SortOrderEnumMap[instance.schedulingPeriodEndsAt],
      'schedulingTimezone': _$SortOrderEnumMap[instance.schedulingTimezone],
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
      'subscriptionPlanId': _$SortOrderEnumMap[instance.subscriptionPlanId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
