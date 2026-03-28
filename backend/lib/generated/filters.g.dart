// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringFilterImpl _$$StringFilterImplFromJson(Map<String, dynamic> json) =>
    _$StringFilterImpl(
      equals: json['equals'] as String?,
      not: json['not'] as String?,
      in_: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
    );

Map<String, dynamic> _$$StringFilterImplToJson(_$StringFilterImpl instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not,
      'in': instance.in_,
      'notIn': instance.notIn,
      'contains': instance.contains,
      'startsWith': instance.startsWith,
      'endsWith': instance.endsWith,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
    };

_$IntFilterImpl _$$IntFilterImplFromJson(Map<String, dynamic> json) =>
    _$IntFilterImpl(
      equals: (json['equals'] as num?)?.toInt(),
      not: (json['not'] as num?)?.toInt(),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$IntFilterImplToJson(_$IntFilterImpl instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not,
      'in': instance.in_,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
    };

_$FloatFilterImpl _$$FloatFilterImplFromJson(Map<String, dynamic> json) =>
    _$FloatFilterImpl(
      equals: (json['equals'] as num?)?.toDouble(),
      not: (json['not'] as num?)?.toDouble(),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FloatFilterImplToJson(_$FloatFilterImpl instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not,
      'in': instance.in_,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
    };

_$BooleanFilterImpl _$$BooleanFilterImplFromJson(Map<String, dynamic> json) =>
    _$BooleanFilterImpl(
      equals: json['equals'] as bool?,
      not: json['not'] as bool?,
    );

Map<String, dynamic> _$$BooleanFilterImplToJson(_$BooleanFilterImpl instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not,
    };

_$DateTimeFilterImpl _$$DateTimeFilterImplFromJson(Map<String, dynamic> json) =>
    _$DateTimeFilterImpl(
      equals: json['equals'] == null
          ? null
          : DateTime.parse(json['equals'] as String),
      not: json['not'] == null ? null : DateTime.parse(json['not'] as String),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      lt: json['lt'] == null ? null : DateTime.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : DateTime.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : DateTime.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : DateTime.parse(json['gte'] as String),
    );

Map<String, dynamic> _$$DateTimeFilterImplToJson(
        _$DateTimeFilterImpl instance) =>
    <String, dynamic>{
      'equals': instance.equals?.toIso8601String(),
      'not': instance.not?.toIso8601String(),
      'in': instance.in_?.map((e) => e.toIso8601String()).toList(),
      'notIn': instance.notIn?.map((e) => e.toIso8601String()).toList(),
      'lt': instance.lt?.toIso8601String(),
      'lte': instance.lte?.toIso8601String(),
      'gt': instance.gt?.toIso8601String(),
      'gte': instance.gte?.toIso8601String(),
    };

_$FeedbackStatusFilterImpl _$$FeedbackStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackStatusFilterImpl(
      equals: $enumDecodeNullable(_$FeedbackStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$FeedbackStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeedbackStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeedbackStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$FeedbackStatusFilterImplToJson(
        _$FeedbackStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$FeedbackStatusEnumMap[instance.equals],
      'not': _$FeedbackStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$FeedbackStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$FeedbackStatusEnumMap[e]!).toList(),
    };

const _$FeedbackStatusEnumMap = {
  FeedbackStatus.pending: 'PENDING',
  FeedbackStatus.acknowledged: 'ACKNOWLEDGED',
  FeedbackStatus.inProgress: 'IN_PROGRESS',
  FeedbackStatus.resolved: 'RESOLVED',
  FeedbackStatus.closed: 'CLOSED',
};

_$SupportTicketStatusFilterImpl _$$SupportTicketStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketStatusFilterImpl(
      equals: $enumDecodeNullable(_$SupportTicketStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SupportTicketStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportTicketStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportTicketStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SupportTicketStatusFilterImplToJson(
        _$SupportTicketStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SupportTicketStatusEnumMap[instance.equals],
      'not': _$SupportTicketStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$SupportTicketStatusEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$SupportTicketStatusEnumMap[e]!).toList(),
    };

const _$SupportTicketStatusEnumMap = {
  SupportTicketStatus.open: 'OPEN',
  SupportTicketStatus.inProgress: 'IN_PROGRESS',
  SupportTicketStatus.onHold: 'ON_HOLD',
  SupportTicketStatus.resolved: 'RESOLVED',
  SupportTicketStatus.closed: 'CLOSED',
};

_$SupportPriorityFilterImpl _$$SupportPriorityFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportPriorityFilterImpl(
      equals: $enumDecodeNullable(_$SupportPriorityEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SupportPriorityEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportPriorityEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportPriorityEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SupportPriorityFilterImplToJson(
        _$SupportPriorityFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SupportPriorityEnumMap[instance.equals],
      'not': _$SupportPriorityEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$SupportPriorityEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$SupportPriorityEnumMap[e]!).toList(),
    };

const _$SupportPriorityEnumMap = {
  SupportPriority.low: 'LOW',
  SupportPriority.medium: 'MEDIUM',
  SupportPriority.high: 'HIGH',
  SupportPriority.urgent: 'URGENT',
};

_$CancellationReasonFilterImpl _$$CancellationReasonFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CancellationReasonFilterImpl(
      equals: $enumDecodeNullable(_$CancellationReasonEnumMap, json['equals']),
      not: $enumDecodeNullable(_$CancellationReasonEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CancellationReasonEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CancellationReasonEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$CancellationReasonFilterImplToJson(
        _$CancellationReasonFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$CancellationReasonEnumMap[instance.equals],
      'not': _$CancellationReasonEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$CancellationReasonEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$CancellationReasonEnumMap[e]!).toList(),
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

_$SupportIssueTypeFilterImpl _$$SupportIssueTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportIssueTypeFilterImpl(
      equals: $enumDecodeNullable(_$SupportIssueTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SupportIssueTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportIssueTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SupportIssueTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SupportIssueTypeFilterImplToJson(
        _$SupportIssueTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SupportIssueTypeEnumMap[instance.equals],
      'not': _$SupportIssueTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$SupportIssueTypeEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$SupportIssueTypeEnumMap[e]!).toList(),
    };

const _$SupportIssueTypeEnumMap = {
  SupportIssueType.consultantNoShow: 'CONSULTANT_NO_SHOW',
  SupportIssueType.consultantLate: 'CONSULTANT_LATE',
  SupportIssueType.sessionEndedEarly: 'SESSION_ENDED_EARLY',
  SupportIssueType.sessionQualityPoor: 'SESSION_QUALITY_POOR',
  SupportIssueType.communicationIssue: 'COMMUNICATION_ISSUE',
  SupportIssueType.technicalIssues: 'TECHNICAL_ISSUES',
  SupportIssueType.wrongConsultant: 'WRONG_CONSULTANT',
  SupportIssueType.accessIssue: 'ACCESS_ISSUE',
  SupportIssueType.timezoneConfusion: 'TIMEZONE_CONFUSION',
  SupportIssueType.reschedulingHelp: 'RESCHEDULING_HELP',
  SupportIssueType.paymentFailed: 'PAYMENT_FAILED',
  SupportIssueType.chargedTwice: 'CHARGED_TWICE',
  SupportIssueType.refundRequest: 'REFUND_REQUEST',
  SupportIssueType.billingQuestion: 'BILLING_QUESTION',
  SupportIssueType.documentIssue: 'DOCUMENT_ISSUE',
  SupportIssueType.wantToCancel: 'WANT_TO_CANCEL',
  SupportIssueType.cancellationIssue: 'CANCELLATION_ISSUE',
  SupportIssueType.accountIssue: 'ACCOUNT_ISSUE',
  SupportIssueType.generalInquiry: 'GENERAL_INQUIRY',
  SupportIssueType.other: 'OTHER',
};

_$AchievementTypeFilterImpl _$$AchievementTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementTypeFilterImpl(
      equals: $enumDecodeNullable(_$AchievementTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$AchievementTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AchievementTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AchievementTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$AchievementTypeFilterImplToJson(
        _$AchievementTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$AchievementTypeEnumMap[instance.equals],
      'not': _$AchievementTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$AchievementTypeEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$AchievementTypeEnumMap[e]!).toList(),
    };

const _$AchievementTypeEnumMap = {
  AchievementType.award: 'AWARD',
  AchievementType.publication: 'PUBLICATION',
  AchievementType.project: 'PROJECT',
  AchievementType.talk: 'TALK',
  AchievementType.openSource: 'OPEN_SOURCE',
  AchievementType.other: 'OTHER',
};

_$RequestStatusFilterImpl _$$RequestStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestStatusFilterImpl(
      equals: $enumDecodeNullable(_$RequestStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$RequestStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RequestStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RequestStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$RequestStatusFilterImplToJson(
        _$RequestStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$RequestStatusEnumMap[instance.equals],
      'not': _$RequestStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$RequestStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$RequestStatusEnumMap[e]!).toList(),
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

_$TrialSessionStatusFilterImpl _$$TrialSessionStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TrialSessionStatusFilterImpl(
      equals: $enumDecodeNullable(_$TrialSessionStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$TrialSessionStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TrialSessionStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TrialSessionStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$TrialSessionStatusFilterImplToJson(
        _$TrialSessionStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$TrialSessionStatusEnumMap[instance.equals],
      'not': _$TrialSessionStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$TrialSessionStatusEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$TrialSessionStatusEnumMap[e]!).toList(),
    };

const _$TrialSessionStatusEnumMap = {
  TrialSessionStatus.pending: 'PENDING',
  TrialSessionStatus.scheduled: 'SCHEDULED',
  TrialSessionStatus.completed: 'COMPLETED',
  TrialSessionStatus.converted: 'CONVERTED',
  TrialSessionStatus.cancelled: 'CANCELLED',
  TrialSessionStatus.rejected: 'REJECTED',
};

_$ActivityTypeFilterImpl _$$ActivityTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityTypeFilterImpl(
      equals: $enumDecodeNullable(_$ActivityTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ActivityTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActivityTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActivityTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ActivityTypeFilterImplToJson(
        _$ActivityTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ActivityTypeEnumMap[instance.equals],
      'not': _$ActivityTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$ActivityTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$ActivityTypeEnumMap[e]!).toList(),
    };

const _$ActivityTypeEnumMap = {
  ActivityType.consultationBooked: 'CONSULTATION_BOOKED',
  ActivityType.consultationCompleted: 'CONSULTATION_COMPLETED',
  ActivityType.consultationCancelled: 'CONSULTATION_CANCELLED',
  ActivityType.subscriptionRequested: 'SUBSCRIPTION_REQUESTED',
  ActivityType.subscriptionApproved: 'SUBSCRIPTION_APPROVED',
  ActivityType.subscriptionCancelled: 'SUBSCRIPTION_CANCELLED',
  ActivityType.webinarRegistered: 'WEBINAR_REGISTERED',
  ActivityType.classEnrolled: 'CLASS_ENROLLED',
  ActivityType.trialRequested: 'TRIAL_REQUESTED',
  ActivityType.trialScheduled: 'TRIAL_SCHEDULED',
  ActivityType.trialCompleted: 'TRIAL_COMPLETED',
  ActivityType.trialConverted: 'TRIAL_CONVERTED',
  ActivityType.reviewSubmitted: 'REVIEW_SUBMITTED',
  ActivityType.messageReceived: 'MESSAGE_RECEIVED',
};

_$BookingSourceFilterImpl _$$BookingSourceFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingSourceFilterImpl(
      equals: $enumDecodeNullable(_$BookingSourceEnumMap, json['equals']),
      not: $enumDecodeNullable(_$BookingSourceEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BookingSourceEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BookingSourceEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$BookingSourceFilterImplToJson(
        _$BookingSourceFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$BookingSourceEnumMap[instance.equals],
      'not': _$BookingSourceEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$BookingSourceEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$BookingSourceEnumMap[e]!).toList(),
    };

const _$BookingSourceEnumMap = {
  BookingSource.directCheckout: 'DIRECT_CHECKOUT',
  BookingSource.requestSubmitted: 'REQUEST_SUBMITTED',
};

_$WebinarStatusFilterImpl _$$WebinarStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarStatusFilterImpl(
      equals: $enumDecodeNullable(_$WebinarStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$WebinarStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WebinarStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WebinarStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$WebinarStatusFilterImplToJson(
        _$WebinarStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$WebinarStatusEnumMap[instance.equals],
      'not': _$WebinarStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$WebinarStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$WebinarStatusEnumMap[e]!).toList(),
    };

const _$WebinarStatusEnumMap = {
  WebinarStatus.scheduled: 'SCHEDULED',
  WebinarStatus.inProgress: 'IN_PROGRESS',
  WebinarStatus.completed: 'COMPLETED',
  WebinarStatus.cancelled: 'CANCELLED',
};

_$ClassStatusFilterImpl _$$ClassStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassStatusFilterImpl(
      equals: $enumDecodeNullable(_$ClassStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ClassStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ClassStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ClassStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ClassStatusFilterImplToJson(
        _$ClassStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ClassStatusEnumMap[instance.equals],
      'not': _$ClassStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$ClassStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$ClassStatusEnumMap[e]!).toList(),
    };

const _$ClassStatusEnumMap = {
  ClassStatus.scheduled: 'SCHEDULED',
  ClassStatus.inProgress: 'IN_PROGRESS',
  ClassStatus.completed: 'COMPLETED',
  ClassStatus.cancelled: 'CANCELLED',
};

_$WaitlistStatusFilterImpl _$$WaitlistStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistStatusFilterImpl(
      equals: $enumDecodeNullable(_$WaitlistStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$WaitlistStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WaitlistStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WaitlistStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$WaitlistStatusFilterImplToJson(
        _$WaitlistStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$WaitlistStatusEnumMap[instance.equals],
      'not': _$WaitlistStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$WaitlistStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$WaitlistStatusEnumMap[e]!).toList(),
    };

const _$WaitlistStatusEnumMap = {
  WaitlistStatus.waiting: 'WAITING',
  WaitlistStatus.notified: 'NOTIFIED',
  WaitlistStatus.booked: 'BOOKED',
  WaitlistStatus.expired: 'EXPIRED',
  WaitlistStatus.cancelled: 'CANCELLED',
  WaitlistStatus.skipped: 'SKIPPED',
};

_$AppointmentsTypeFilterImpl _$$AppointmentsTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentsTypeFilterImpl(
      equals: $enumDecodeNullable(_$AppointmentsTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$AppointmentsTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AppointmentsTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AppointmentsTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$AppointmentsTypeFilterImplToJson(
        _$AppointmentsTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$AppointmentsTypeEnumMap[instance.equals],
      'not': _$AppointmentsTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$AppointmentsTypeEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$AppointmentsTypeEnumMap[e]!).toList(),
    };

const _$AppointmentsTypeEnumMap = {
  AppointmentsType.consultation: 'CONSULTATION',
  AppointmentsType.subscription: 'SUBSCRIPTION',
  AppointmentsType.webinar: 'WEBINAR',
  AppointmentsType.classValue: 'CLASS',
  AppointmentsType.trial: 'TRIAL',
};

_$DocumentReviewStatusFilterImpl _$$DocumentReviewStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentReviewStatusFilterImpl(
      equals:
          $enumDecodeNullable(_$DocumentReviewStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$DocumentReviewStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DocumentReviewStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DocumentReviewStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$DocumentReviewStatusFilterImplToJson(
        _$DocumentReviewStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$DocumentReviewStatusEnumMap[instance.equals],
      'not': _$DocumentReviewStatusEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$DocumentReviewStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$DocumentReviewStatusEnumMap[e]!)
          .toList(),
    };

const _$DocumentReviewStatusEnumMap = {
  DocumentReviewStatus.pending: 'PENDING',
  DocumentReviewStatus.inReview: 'IN_REVIEW',
  DocumentReviewStatus.approved: 'APPROVED',
  DocumentReviewStatus.rejected: 'REJECTED',
  DocumentReviewStatus.needsRevision: 'NEEDS_REVISION',
};

_$DocumentUploadRoleFilterImpl _$$DocumentUploadRoleFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentUploadRoleFilterImpl(
      equals: $enumDecodeNullable(_$DocumentUploadRoleEnumMap, json['equals']),
      not: $enumDecodeNullable(_$DocumentUploadRoleEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DocumentUploadRoleEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DocumentUploadRoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$DocumentUploadRoleFilterImplToJson(
        _$DocumentUploadRoleFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$DocumentUploadRoleEnumMap[instance.equals],
      'not': _$DocumentUploadRoleEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$DocumentUploadRoleEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$DocumentUploadRoleEnumMap[e]!).toList(),
    };

const _$DocumentUploadRoleEnumMap = {
  DocumentUploadRole.consultee: 'CONSULTEE',
  DocumentUploadRole.consultant: 'CONSULTANT',
};

_$SlotCompletionStatusFilterImpl _$$SlotCompletionStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SlotCompletionStatusFilterImpl(
      equals:
          $enumDecodeNullable(_$SlotCompletionStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SlotCompletionStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SlotCompletionStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SlotCompletionStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SlotCompletionStatusFilterImplToJson(
        _$SlotCompletionStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SlotCompletionStatusEnumMap[instance.equals],
      'not': _$SlotCompletionStatusEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$SlotCompletionStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$SlotCompletionStatusEnumMap[e]!)
          .toList(),
    };

const _$SlotCompletionStatusEnumMap = {
  SlotCompletionStatus.scheduled: 'SCHEDULED',
  SlotCompletionStatus.completed: 'COMPLETED',
  SlotCompletionStatus.unverified: 'UNVERIFIED',
  SlotCompletionStatus.cancelled: 'CANCELLED',
  SlotCompletionStatus.rescheduled: 'RESCHEDULED',
};

_$RecordingStorageTypeFilterImpl _$$RecordingStorageTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingStorageTypeFilterImpl(
      equals:
          $enumDecodeNullable(_$RecordingStorageTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$RecordingStorageTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStorageTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStorageTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$RecordingStorageTypeFilterImplToJson(
        _$RecordingStorageTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$RecordingStorageTypeEnumMap[instance.equals],
      'not': _$RecordingStorageTypeEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$RecordingStorageTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$RecordingStorageTypeEnumMap[e]!)
          .toList(),
    };

const _$RecordingStorageTypeEnumMap = {
  RecordingStorageType.streamS3: 'STREAM_S3',
  RecordingStorageType.supabase: 'SUPABASE',
};

_$RecordingStoragePolicyFilterImpl _$$RecordingStoragePolicyFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingStoragePolicyFilterImpl(
      equals:
          $enumDecodeNullable(_$RecordingStoragePolicyEnumMap, json['equals']),
      not: $enumDecodeNullable(_$RecordingStoragePolicyEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStoragePolicyEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStoragePolicyEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$RecordingStoragePolicyFilterImplToJson(
        _$RecordingStoragePolicyFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$RecordingStoragePolicyEnumMap[instance.equals],
      'not': _$RecordingStoragePolicyEnumMap[instance.not],
      'in': instance.in_
          ?.map((e) => _$RecordingStoragePolicyEnumMap[e]!)
          .toList(),
      'notIn': instance.notIn
          ?.map((e) => _$RecordingStoragePolicyEnumMap[e]!)
          .toList(),
    };

const _$RecordingStoragePolicyEnumMap = {
  RecordingStoragePolicy.streamOnly: 'STREAM_ONLY',
  RecordingStoragePolicy.supabasePermanent: 'SUPABASE_PERMANENT',
};

_$RecordingStatusFilterImpl _$$RecordingStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingStatusFilterImpl(
      equals: $enumDecodeNullable(_$RecordingStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$RecordingStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RecordingStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$RecordingStatusFilterImplToJson(
        _$RecordingStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$RecordingStatusEnumMap[instance.equals],
      'not': _$RecordingStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$RecordingStatusEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$RecordingStatusEnumMap[e]!).toList(),
    };

const _$RecordingStatusEnumMap = {
  RecordingStatus.recording: 'RECORDING',
  RecordingStatus.processing: 'PROCESSING',
  RecordingStatus.ready: 'READY',
  RecordingStatus.transferring: 'TRANSFERRING',
  RecordingStatus.available: 'AVAILABLE',
  RecordingStatus.failed: 'FAILED',
  RecordingStatus.expired: 'EXPIRED',
};

_$PlatformFilterImpl _$$PlatformFilterImplFromJson(Map<String, dynamic> json) =>
    _$PlatformFilterImpl(
      equals: $enumDecodeNullable(_$PlatformEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PlatformEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlatformEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlatformEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PlatformFilterImplToJson(
        _$PlatformFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PlatformEnumMap[instance.equals],
      'not': _$PlatformEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PlatformEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PlatformEnumMap[e]!).toList(),
    };

const _$PlatformEnumMap = {
  Platform.zoom: 'ZOOM',
  Platform.googleMeet: 'GOOGLE_MEET',
  Platform.microsoftTeams: 'MICROSOFT_TEAMS',
  Platform.stream: 'STREAM',
  Platform.custom: 'CUSTOM',
};

_$PaymentGatewayFilterImpl _$$PaymentGatewayFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentGatewayFilterImpl(
      equals: $enumDecodeNullable(_$PaymentGatewayEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PaymentGatewayEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentGatewayEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentGatewayEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PaymentGatewayFilterImplToJson(
        _$PaymentGatewayFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PaymentGatewayEnumMap[instance.equals],
      'not': _$PaymentGatewayEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PaymentGatewayEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PaymentGatewayEnumMap[e]!).toList(),
    };

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

_$PaymentStatusFilterImpl _$$PaymentStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentStatusFilterImpl(
      equals: $enumDecodeNullable(_$PaymentStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PaymentStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PaymentStatusFilterImplToJson(
        _$PaymentStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PaymentStatusEnumMap[instance.equals],
      'not': _$PaymentStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PaymentStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PaymentStatusEnumMap[e]!).toList(),
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.succeeded: 'SUCCEEDED',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.expired: 'EXPIRED',
};

_$RefundStatusFilterImpl _$$RefundStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundStatusFilterImpl(
      equals: $enumDecodeNullable(_$RefundStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$RefundStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RefundStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RefundStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$RefundStatusFilterImplToJson(
        _$RefundStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$RefundStatusEnumMap[instance.equals],
      'not': _$RefundStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$RefundStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$RefundStatusEnumMap[e]!).toList(),
    };

const _$RefundStatusEnumMap = {
  RefundStatus.pending: 'PENDING',
  RefundStatus.succeeded: 'SUCCEEDED',
  RefundStatus.failed: 'FAILED',
  RefundStatus.cancelled: 'CANCELLED',
};

_$DisputeStatusFilterImpl _$$DisputeStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeStatusFilterImpl(
      equals: $enumDecodeNullable(_$DisputeStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$DisputeStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DisputeStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DisputeStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$DisputeStatusFilterImplToJson(
        _$DisputeStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$DisputeStatusEnumMap[instance.equals],
      'not': _$DisputeStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$DisputeStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$DisputeStatusEnumMap[e]!).toList(),
    };

const _$DisputeStatusEnumMap = {
  DisputeStatus.warningNeedsResponse: 'WARNING_NEEDS_RESPONSE',
  DisputeStatus.warningUnderReview: 'WARNING_UNDER_REVIEW',
  DisputeStatus.warningClosed: 'WARNING_CLOSED',
  DisputeStatus.needsResponse: 'NEEDS_RESPONSE',
  DisputeStatus.underReview: 'UNDER_REVIEW',
  DisputeStatus.chargeRefunded: 'CHARGE_REFUNDED',
  DisputeStatus.won: 'WON',
  DisputeStatus.lost: 'LOST',
};

_$EarningStatusFilterImpl _$$EarningStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$EarningStatusFilterImpl(
      equals: $enumDecodeNullable(_$EarningStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$EarningStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EarningStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EarningStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$EarningStatusFilterImplToJson(
        _$EarningStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$EarningStatusEnumMap[instance.equals],
      'not': _$EarningStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$EarningStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$EarningStatusEnumMap[e]!).toList(),
    };

const _$EarningStatusEnumMap = {
  EarningStatus.pending: 'PENDING',
  EarningStatus.held: 'HELD',
  EarningStatus.ready: 'READY',
  EarningStatus.paid: 'PAID',
  EarningStatus.refunded: 'REFUNDED',
};

_$PayoutStatusFilterImpl _$$PayoutStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutStatusFilterImpl(
      equals: $enumDecodeNullable(_$PayoutStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PayoutStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PayoutStatusFilterImplToJson(
        _$PayoutStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PayoutStatusEnumMap[instance.equals],
      'not': _$PayoutStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PayoutStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PayoutStatusEnumMap[e]!).toList(),
    };

const _$PayoutStatusEnumMap = {
  PayoutStatus.pending: 'PENDING',
  PayoutStatus.approved: 'APPROVED',
  PayoutStatus.processing: 'PROCESSING',
  PayoutStatus.completed: 'COMPLETED',
  PayoutStatus.failed: 'FAILED',
  PayoutStatus.cancelled: 'CANCELLED',
};

_$PayoutMethodFilterImpl _$$PayoutMethodFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutMethodFilterImpl(
      equals: $enumDecodeNullable(_$PayoutMethodEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PayoutMethodEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutMethodEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutMethodEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PayoutMethodFilterImplToJson(
        _$PayoutMethodFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PayoutMethodEnumMap[instance.equals],
      'not': _$PayoutMethodEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PayoutMethodEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PayoutMethodEnumMap[e]!).toList(),
    };

const _$PayoutMethodEnumMap = {
  PayoutMethod.bankTransfer: 'BANK_TRANSFER',
  PayoutMethod.upi: 'UPI',
  PayoutMethod.stripeTransfer: 'STRIPE_TRANSFER',
};

_$PayoutAccountTypeFilterImpl _$$PayoutAccountTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutAccountTypeFilterImpl(
      equals: $enumDecodeNullable(_$PayoutAccountTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PayoutAccountTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutAccountTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PayoutAccountTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PayoutAccountTypeFilterImplToJson(
        _$PayoutAccountTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PayoutAccountTypeEnumMap[instance.equals],
      'not': _$PayoutAccountTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PayoutAccountTypeEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$PayoutAccountTypeEnumMap[e]!).toList(),
    };

const _$PayoutAccountTypeEnumMap = {
  PayoutAccountType.bankAccount: 'BANK_ACCOUNT',
  PayoutAccountType.upi: 'UPI',
  PayoutAccountType.stripeConnect: 'STRIPE_CONNECT',
};

_$DiscountTypeFilterImpl _$$DiscountTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountTypeFilterImpl(
      equals: $enumDecodeNullable(_$DiscountTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$DiscountTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DiscountTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DiscountTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$DiscountTypeFilterImplToJson(
        _$DiscountTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$DiscountTypeEnumMap[instance.equals],
      'not': _$DiscountTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$DiscountTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$DiscountTypeEnumMap[e]!).toList(),
    };

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'PERCENTAGE',
  DiscountType.fixedAmount: 'FIXED_AMOUNT',
  DiscountType.freeShipping: 'FREE_SHIPPING',
};

_$ReferralStatusFilterImpl _$$ReferralStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralStatusFilterImpl(
      equals: $enumDecodeNullable(_$ReferralStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ReferralStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ReferralStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ReferralStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ReferralStatusFilterImplToJson(
        _$ReferralStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ReferralStatusEnumMap[instance.equals],
      'not': _$ReferralStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$ReferralStatusEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$ReferralStatusEnumMap[e]!).toList(),
    };

const _$ReferralStatusEnumMap = {
  ReferralStatus.signedUp: 'SIGNED_UP',
  ReferralStatus.qualified: 'QUALIFIED',
  ReferralStatus.rewarded: 'REWARDED',
  ReferralStatus.expired: 'EXPIRED',
  ReferralStatus.fraudulent: 'FRAUDULENT',
};

_$CreditSourceFilterImpl _$$CreditSourceFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditSourceFilterImpl(
      equals: $enumDecodeNullable(_$CreditSourceEnumMap, json['equals']),
      not: $enumDecodeNullable(_$CreditSourceEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CreditSourceEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CreditSourceEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$CreditSourceFilterImplToJson(
        _$CreditSourceFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$CreditSourceEnumMap[instance.equals],
      'not': _$CreditSourceEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$CreditSourceEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$CreditSourceEnumMap[e]!).toList(),
    };

const _$CreditSourceEnumMap = {
  CreditSource.referralBonus: 'REFERRAL_BONUS',
  CreditSource.refereeBonus: 'REFEREE_BONUS',
  CreditSource.promotion: 'PROMOTION',
  CreditSource.compensation: 'COMPENSATION',
  CreditSource.manual: 'MANUAL',
};

_$CollaboratorStatusFilterImpl _$$CollaboratorStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaboratorStatusFilterImpl(
      equals: $enumDecodeNullable(_$CollaboratorStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$CollaboratorStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CollaboratorStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CollaboratorStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$CollaboratorStatusFilterImplToJson(
        _$CollaboratorStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$CollaboratorStatusEnumMap[instance.equals],
      'not': _$CollaboratorStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$CollaboratorStatusEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$CollaboratorStatusEnumMap[e]!).toList(),
    };

const _$CollaboratorStatusEnumMap = {
  CollaboratorStatus.pending: 'PENDING',
  CollaboratorStatus.accepted: 'ACCEPTED',
  CollaboratorStatus.declined: 'DECLINED',
  CollaboratorStatus.removed: 'REMOVED',
};

_$WebinarCollaboratorRoleFilterImpl
    _$$WebinarCollaboratorRoleFilterImplFromJson(Map<String, dynamic> json) =>
        _$WebinarCollaboratorRoleFilterImpl(
          equals: $enumDecodeNullable(
              _$WebinarCollaboratorRoleEnumMap, json['equals']),
          not: $enumDecodeNullable(
              _$WebinarCollaboratorRoleEnumMap, json['not']),
          in_: (json['in'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$WebinarCollaboratorRoleEnumMap, e))
              .toList(),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$WebinarCollaboratorRoleEnumMap, e))
              .toList(),
        );

Map<String, dynamic> _$$WebinarCollaboratorRoleFilterImplToJson(
        _$WebinarCollaboratorRoleFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$WebinarCollaboratorRoleEnumMap[instance.equals],
      'not': _$WebinarCollaboratorRoleEnumMap[instance.not],
      'in': instance.in_
          ?.map((e) => _$WebinarCollaboratorRoleEnumMap[e]!)
          .toList(),
      'notIn': instance.notIn
          ?.map((e) => _$WebinarCollaboratorRoleEnumMap[e]!)
          .toList(),
    };

const _$WebinarCollaboratorRoleEnumMap = {
  WebinarCollaboratorRole.coHost: 'CO_HOST',
  WebinarCollaboratorRole.moderator: 'MODERATOR',
  WebinarCollaboratorRole.guestSpeaker: 'GUEST_SPEAKER',
  WebinarCollaboratorRole.technicalSupport: 'TECHNICAL_SUPPORT',
};

_$ClassCollaboratorRoleFilterImpl _$$ClassCollaboratorRoleFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassCollaboratorRoleFilterImpl(
      equals:
          $enumDecodeNullable(_$ClassCollaboratorRoleEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ClassCollaboratorRoleEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ClassCollaboratorRoleEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ClassCollaboratorRoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ClassCollaboratorRoleFilterImplToJson(
        _$ClassCollaboratorRoleFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ClassCollaboratorRoleEnumMap[instance.equals],
      'not': _$ClassCollaboratorRoleEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$ClassCollaboratorRoleEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ClassCollaboratorRoleEnumMap[e]!)
          .toList(),
    };

const _$ClassCollaboratorRoleEnumMap = {
  ClassCollaboratorRole.coInstructor: 'CO_INSTRUCTOR',
  ClassCollaboratorRole.teachingAssistant: 'TEACHING_ASSISTANT',
  ClassCollaboratorRole.guestLecturer: 'GUEST_LECTURER',
  ClassCollaboratorRole.contentCreator: 'CONTENT_CREATOR',
};

_$EarningRoleFilterImpl _$$EarningRoleFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$EarningRoleFilterImpl(
      equals: $enumDecodeNullable(_$EarningRoleEnumMap, json['equals']),
      not: $enumDecodeNullable(_$EarningRoleEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EarningRoleEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EarningRoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$EarningRoleFilterImplToJson(
        _$EarningRoleFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$EarningRoleEnumMap[instance.equals],
      'not': _$EarningRoleEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$EarningRoleEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$EarningRoleEnumMap[e]!).toList(),
    };

const _$EarningRoleEnumMap = {
  EarningRole.owner: 'OWNER',
  EarningRole.collaborator: 'COLLABORATOR',
};

_$PlanDurationFilterImpl _$$PlanDurationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanDurationFilterImpl(
      equals: $enumDecodeNullable(_$PlanDurationEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PlanDurationEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlanDurationEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlanDurationEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PlanDurationFilterImplToJson(
        _$PlanDurationFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PlanDurationEnumMap[instance.equals],
      'not': _$PlanDurationEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PlanDurationEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$PlanDurationEnumMap[e]!).toList(),
    };

const _$PlanDurationEnumMap = {
  PlanDuration.oneMonth: 'ONE_MONTH',
  PlanDuration.threeMonths: 'THREE_MONTHS',
  PlanDuration.sixMonths: 'SIX_MONTHS',
  PlanDuration.twelveMonths: 'TWELVE_MONTHS',
};

_$PlanEmailSupportFilterImpl _$$PlanEmailSupportFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanEmailSupportFilterImpl(
      equals: $enumDecodeNullable(_$PlanEmailSupportEnumMap, json['equals']),
      not: $enumDecodeNullable(_$PlanEmailSupportEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlanEmailSupportEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlanEmailSupportEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PlanEmailSupportFilterImplToJson(
        _$PlanEmailSupportFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$PlanEmailSupportEnumMap[instance.equals],
      'not': _$PlanEmailSupportEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$PlanEmailSupportEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$PlanEmailSupportEnumMap[e]!).toList(),
    };

const _$PlanEmailSupportEnumMap = {
  PlanEmailSupport.general: 'GENERAL',
  PlanEmailSupport.priority: 'PRIORITY',
  PlanEmailSupport.dedicated: 'DEDICATED',
};

_$UserRoleFilterImpl _$$UserRoleFilterImplFromJson(Map<String, dynamic> json) =>
    _$UserRoleFilterImpl(
      equals: $enumDecodeNullable(_$UserRoleEnumMap, json['equals']),
      not: $enumDecodeNullable(_$UserRoleEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserRoleEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserRoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$UserRoleFilterImplToJson(
        _$UserRoleFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$UserRoleEnumMap[instance.equals],
      'not': _$UserRoleEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$UserRoleEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$UserRoleEnumMap[e]!).toList(),
    };

const _$UserRoleEnumMap = {
  UserRole.consultant: 'CONSULTANT',
  UserRole.consultee: 'CONSULTEE',
  UserRole.admin: 'ADMIN',
  UserRole.staff: 'STAFF',
};

_$DayOfWeekFilterImpl _$$DayOfWeekFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DayOfWeekFilterImpl(
      equals: $enumDecodeNullable(_$DayOfWeekEnumMap, json['equals']),
      not: $enumDecodeNullable(_$DayOfWeekEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DayOfWeekEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DayOfWeekEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$DayOfWeekFilterImplToJson(
        _$DayOfWeekFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$DayOfWeekEnumMap[instance.equals],
      'not': _$DayOfWeekEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$DayOfWeekEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$DayOfWeekEnumMap[e]!).toList(),
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.monday: 'MONDAY',
  DayOfWeek.tuesday: 'TUESDAY',
  DayOfWeek.wednesday: 'WEDNESDAY',
  DayOfWeek.thursday: 'THURSDAY',
  DayOfWeek.friday: 'FRIDAY',
  DayOfWeek.saturday: 'SATURDAY',
  DayOfWeek.sunday: 'SUNDAY',
};

_$ScheduleTypeFilterImpl _$$ScheduleTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleTypeFilterImpl(
      equals: $enumDecodeNullable(_$ScheduleTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ScheduleTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ScheduleTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ScheduleTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleTypeFilterImplToJson(
        _$ScheduleTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ScheduleTypeEnumMap[instance.equals],
      'not': _$ScheduleTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$ScheduleTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$ScheduleTypeEnumMap[e]!).toList(),
    };

const _$ScheduleTypeEnumMap = {
  ScheduleType.weekly: 'WEEKLY',
  ScheduleType.custom: 'CUSTOM',
};

_$GenderFilterImpl _$$GenderFilterImplFromJson(Map<String, dynamic> json) =>
    _$GenderFilterImpl(
      equals: $enumDecodeNullable(_$GenderEnumMap, json['equals']),
      not: $enumDecodeNullable(_$GenderEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GenderEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GenderEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$GenderFilterImplToJson(_$GenderFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$GenderEnumMap[instance.equals],
      'not': _$GenderEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$GenderEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$GenderEnumMap[e]!).toList(),
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
  Gender.nonBinary: 'NON_BINARY',
  Gender.preferNotToSay: 'PREFER_NOT_TO_SAY',
};

_$CareerStageFilterImpl _$$CareerStageFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CareerStageFilterImpl(
      equals: $enumDecodeNullable(_$CareerStageEnumMap, json['equals']),
      not: $enumDecodeNullable(_$CareerStageEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CareerStageEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CareerStageEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$CareerStageFilterImplToJson(
        _$CareerStageFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$CareerStageEnumMap[instance.equals],
      'not': _$CareerStageEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$CareerStageEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$CareerStageEnumMap[e]!).toList(),
    };

const _$CareerStageEnumMap = {
  CareerStage.schoolStudent: 'SCHOOL_STUDENT',
  CareerStage.student: 'STUDENT',
  CareerStage.earlyCareer: 'EARLY_CAREER',
  CareerStage.midCareer: 'MID_CAREER',
  CareerStage.senior: 'SENIOR',
  CareerStage.executive: 'EXECUTIVE',
};

_$AdminLevelFilterImpl _$$AdminLevelFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLevelFilterImpl(
      equals: $enumDecodeNullable(_$AdminLevelEnumMap, json['equals']),
      not: $enumDecodeNullable(_$AdminLevelEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AdminLevelEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AdminLevelEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$AdminLevelFilterImplToJson(
        _$AdminLevelFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$AdminLevelEnumMap[instance.equals],
      'not': _$AdminLevelEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$AdminLevelEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$AdminLevelEnumMap[e]!).toList(),
    };

const _$AdminLevelEnumMap = {
  AdminLevel.superAdmin: 'SUPER_ADMIN',
  AdminLevel.admin: 'ADMIN',
  AdminLevel.moderator: 'MODERATOR',
};

_$BudgetPreferenceFilterImpl _$$BudgetPreferenceFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$BudgetPreferenceFilterImpl(
      equals: $enumDecodeNullable(_$BudgetPreferenceEnumMap, json['equals']),
      not: $enumDecodeNullable(_$BudgetPreferenceEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BudgetPreferenceEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BudgetPreferenceEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$BudgetPreferenceFilterImplToJson(
        _$BudgetPreferenceFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$BudgetPreferenceEnumMap[instance.equals],
      'not': _$BudgetPreferenceEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$BudgetPreferenceEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$BudgetPreferenceEnumMap[e]!).toList(),
    };

const _$BudgetPreferenceEnumMap = {
  BudgetPreference.budget: 'BUDGET',
  BudgetPreference.moderate: 'MODERATE',
  BudgetPreference.premium: 'PREMIUM',
  BudgetPreference.flexible: 'FLEXIBLE',
};

_$SessionTypeFilterImpl _$$SessionTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionTypeFilterImpl(
      equals: $enumDecodeNullable(_$SessionTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SessionTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SessionTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SessionTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SessionTypeFilterImplToJson(
        _$SessionTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SessionTypeEnumMap[instance.equals],
      'not': _$SessionTypeEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$SessionTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn?.map((e) => _$SessionTypeEnumMap[e]!).toList(),
    };

const _$SessionTypeEnumMap = {
  SessionType.oneOnOne: 'ONE_ON_ONE',
  SessionType.group: 'GROUP',
  SessionType.asyncReview: 'ASYNC_REVIEW',
};

_$ModerationReportTypeFilterImpl _$$ModerationReportTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationReportTypeFilterImpl(
      equals:
          $enumDecodeNullable(_$ModerationReportTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ModerationReportTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationReportTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationReportTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ModerationReportTypeFilterImplToJson(
        _$ModerationReportTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ModerationReportTypeEnumMap[instance.equals],
      'not': _$ModerationReportTypeEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$ModerationReportTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ModerationReportTypeEnumMap[e]!)
          .toList(),
    };

const _$ModerationReportTypeEnumMap = {
  ModerationReportType.review: 'REVIEW',
  ModerationReportType.profile: 'PROFILE',
  ModerationReportType.message: 'MESSAGE',
  ModerationReportType.document: 'DOCUMENT',
  ModerationReportType.other: 'OTHER',
};

_$ModerationReportStatusFilterImpl _$$ModerationReportStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationReportStatusFilterImpl(
      equals:
          $enumDecodeNullable(_$ModerationReportStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ModerationReportStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationReportStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationReportStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ModerationReportStatusFilterImplToJson(
        _$ModerationReportStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ModerationReportStatusEnumMap[instance.equals],
      'not': _$ModerationReportStatusEnumMap[instance.not],
      'in': instance.in_
          ?.map((e) => _$ModerationReportStatusEnumMap[e]!)
          .toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ModerationReportStatusEnumMap[e]!)
          .toList(),
    };

const _$ModerationReportStatusEnumMap = {
  ModerationReportStatus.pending: 'PENDING',
  ModerationReportStatus.underReview: 'UNDER_REVIEW',
  ModerationReportStatus.dismissed: 'DISMISSED',
  ModerationReportStatus.actionTaken: 'ACTION_TAKEN',
  ModerationReportStatus.escalated: 'ESCALATED',
};

_$ModerationActionTypeFilterImpl _$$ModerationActionTypeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationActionTypeFilterImpl(
      equals:
          $enumDecodeNullable(_$ModerationActionTypeEnumMap, json['equals']),
      not: $enumDecodeNullable(_$ModerationActionTypeEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationActionTypeEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModerationActionTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ModerationActionTypeFilterImplToJson(
        _$ModerationActionTypeFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ModerationActionTypeEnumMap[instance.equals],
      'not': _$ModerationActionTypeEnumMap[instance.not],
      'in':
          instance.in_?.map((e) => _$ModerationActionTypeEnumMap[e]!).toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ModerationActionTypeEnumMap[e]!)
          .toList(),
    };

const _$ModerationActionTypeEnumMap = {
  ModerationActionType.warningIssued: 'WARNING_ISSUED',
  ModerationActionType.contentRemoved: 'CONTENT_REMOVED',
  ModerationActionType.userSuspended: 'USER_SUSPENDED',
  ModerationActionType.userBanned: 'USER_BANNED',
  ModerationActionType.profileUnverified: 'PROFILE_UNVERIFIED',
  ModerationActionType.noAction: 'NO_ACTION',
};

_$ProfileVerificationStatusFilterImpl
    _$$ProfileVerificationStatusFilterImplFromJson(Map<String, dynamic> json) =>
        _$ProfileVerificationStatusFilterImpl(
          equals: $enumDecodeNullable(
              _$ProfileVerificationStatusEnumMap, json['equals']),
          not: $enumDecodeNullable(
              _$ProfileVerificationStatusEnumMap, json['not']),
          in_: (json['in'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ProfileVerificationStatusEnumMap, e))
              .toList(),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ProfileVerificationStatusEnumMap, e))
              .toList(),
        );

Map<String, dynamic> _$$ProfileVerificationStatusFilterImplToJson(
        _$ProfileVerificationStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ProfileVerificationStatusEnumMap[instance.equals],
      'not': _$ProfileVerificationStatusEnumMap[instance.not],
      'in': instance.in_
          ?.map((e) => _$ProfileVerificationStatusEnumMap[e]!)
          .toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ProfileVerificationStatusEnumMap[e]!)
          .toList(),
    };

const _$ProfileVerificationStatusEnumMap = {
  ProfileVerificationStatus.pending: 'PENDING',
  ProfileVerificationStatus.approved: 'APPROVED',
  ProfileVerificationStatus.rejected: 'REJECTED',
  ProfileVerificationStatus.needsInfo: 'NEEDS_INFO',
  ProfileVerificationStatus.superseded: 'SUPERSEDED',
};

_$SystemJobStatusFilterImpl _$$SystemJobStatusFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemJobStatusFilterImpl(
      equals: $enumDecodeNullable(_$SystemJobStatusEnumMap, json['equals']),
      not: $enumDecodeNullable(_$SystemJobStatusEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SystemJobStatusEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SystemJobStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$SystemJobStatusFilterImplToJson(
        _$SystemJobStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$SystemJobStatusEnumMap[instance.equals],
      'not': _$SystemJobStatusEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$SystemJobStatusEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$SystemJobStatusEnumMap[e]!).toList(),
    };

const _$SystemJobStatusEnumMap = {
  SystemJobStatus.running: 'RUNNING',
  SystemJobStatus.completed: 'COMPLETED',
  SystemJobStatus.failed: 'FAILED',
  SystemJobStatus.cancelled: 'CANCELLED',
};

_$ConsultantVerificationStatusFilterImpl
    _$$ConsultantVerificationStatusFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantVerificationStatusFilterImpl(
          equals: $enumDecodeNullable(
              _$ConsultantVerificationStatusEnumMap, json['equals']),
          not: $enumDecodeNullable(
              _$ConsultantVerificationStatusEnumMap, json['not']),
          in_: (json['in'] as List<dynamic>?)
              ?.map(
                  (e) => $enumDecode(_$ConsultantVerificationStatusEnumMap, e))
              .toList(),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map(
                  (e) => $enumDecode(_$ConsultantVerificationStatusEnumMap, e))
              .toList(),
        );

Map<String, dynamic> _$$ConsultantVerificationStatusFilterImplToJson(
        _$ConsultantVerificationStatusFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$ConsultantVerificationStatusEnumMap[instance.equals],
      'not': _$ConsultantVerificationStatusEnumMap[instance.not],
      'in': instance.in_
          ?.map((e) => _$ConsultantVerificationStatusEnumMap[e]!)
          .toList(),
      'notIn': instance.notIn
          ?.map((e) => _$ConsultantVerificationStatusEnumMap[e]!)
          .toList(),
    };

const _$ConsultantVerificationStatusEnumMap = {
  ConsultantVerificationStatus.pendingVerification: 'PENDING_VERIFICATION',
  ConsultantVerificationStatus.underReview: 'UNDER_REVIEW',
  ConsultantVerificationStatus.verified: 'VERIFIED',
  ConsultantVerificationStatus.rejected: 'REJECTED',
};

_$MaintenancePhaseFilterImpl _$$MaintenancePhaseFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenancePhaseFilterImpl(
      equals: $enumDecodeNullable(_$MaintenancePhaseEnumMap, json['equals']),
      not: $enumDecodeNullable(_$MaintenancePhaseEnumMap, json['not']),
      in_: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MaintenancePhaseEnumMap, e))
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MaintenancePhaseEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$MaintenancePhaseFilterImplToJson(
        _$MaintenancePhaseFilterImpl instance) =>
    <String, dynamic>{
      'equals': _$MaintenancePhaseEnumMap[instance.equals],
      'not': _$MaintenancePhaseEnumMap[instance.not],
      'in': instance.in_?.map((e) => _$MaintenancePhaseEnumMap[e]!).toList(),
      'notIn':
          instance.notIn?.map((e) => _$MaintenancePhaseEnumMap[e]!).toList(),
    };

const _$MaintenancePhaseEnumMap = {
  MaintenancePhase.off: 'OFF',
  MaintenancePhase.degraded: 'DEGRADED',
  MaintenancePhase.offline: 'OFFLINE',
};

_$StringListFilterImpl _$$StringListFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$StringListFilterImpl(
      has: json['has'] as String?,
      hasEvery: (json['hasEvery'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasSome:
          (json['hasSome'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isEmpty: json['isEmpty'] as bool?,
    );

Map<String, dynamic> _$$StringListFilterImplToJson(
        _$StringListFilterImpl instance) =>
    <String, dynamic>{
      'has': instance.has,
      'hasEvery': instance.hasEvery,
      'hasSome': instance.hasSome,
      'isEmpty': instance.isEmpty,
    };

_$IntListFilterImpl _$$IntListFilterImplFromJson(Map<String, dynamic> json) =>
    _$IntListFilterImpl(
      has: (json['has'] as num?)?.toInt(),
      hasEvery: (json['hasEvery'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      hasSome: (json['hasSome'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      isEmpty: json['isEmpty'] as bool?,
    );

Map<String, dynamic> _$$IntListFilterImplToJson(_$IntListFilterImpl instance) =>
    <String, dynamic>{
      'has': instance.has,
      'hasEvery': instance.hasEvery,
      'hasSome': instance.hasSome,
      'isEmpty': instance.isEmpty,
    };
