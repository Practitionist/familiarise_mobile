// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketImpl _$$SupportTicketImplFromJson(Map<String, dynamic> json) =>
    _$SupportTicketImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      priority:
          $enumDecodeNullable(_$SupportPriorityEnumMap, json['priority']) ??
              SupportPriority.medium,
      status:
          $enumDecodeNullable(_$SupportTicketStatusEnumMap, json['status']) ??
              SupportTicketStatus.open,
      category: json['category'] as String?,
      issueType:
          $enumDecodeNullable(_$SupportIssueTypeEnumMap, json['issueType']),
      userId: json['userId'] as String,
      responses: (json['responses'] as List<dynamic>)
          .map((e) => SupportResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) =>
              SupportTicketAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      paymentId: json['paymentId'] as String?,
      refundId: json['refundId'] as String?,
      assignedToId: json['assignedToId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SupportTicketImplToJson(_$SupportTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'priority': _$SupportPriorityEnumMap[instance.priority]!,
      'status': _$SupportTicketStatusEnumMap[instance.status]!,
      'category': instance.category,
      'issueType': _$SupportIssueTypeEnumMap[instance.issueType],
      'userId': instance.userId,
      'responses': instance.responses,
      'attachments': instance.attachments,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'paymentId': instance.paymentId,
      'refundId': instance.refundId,
      'assignedToId': instance.assignedToId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SupportPriorityEnumMap = {
  SupportPriority.low: 'LOW',
  SupportPriority.medium: 'MEDIUM',
  SupportPriority.high: 'HIGH',
  SupportPriority.urgent: 'URGENT',
};

const _$SupportTicketStatusEnumMap = {
  SupportTicketStatus.open: 'OPEN',
  SupportTicketStatus.inProgress: 'IN_PROGRESS',
  SupportTicketStatus.onHold: 'ON_HOLD',
  SupportTicketStatus.resolved: 'RESOLVED',
  SupportTicketStatus.closed: 'CLOSED',
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

_$CreateSupportTicketInputImpl _$$CreateSupportTicketInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSupportTicketInputImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      priority:
          $enumDecodeNullable(_$SupportPriorityEnumMap, json['priority']) ??
              SupportPriority.medium,
      status:
          $enumDecodeNullable(_$SupportTicketStatusEnumMap, json['status']) ??
              SupportTicketStatus.open,
      category: json['category'] as String?,
      issueType:
          $enumDecodeNullable(_$SupportIssueTypeEnumMap, json['issueType']),
      userId: json['userId'] as String,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      paymentId: json['paymentId'] as String?,
      refundId: json['refundId'] as String?,
      assignedToId: json['assignedToId'] as String?,
    );

Map<String, dynamic> _$$CreateSupportTicketInputImplToJson(
        _$CreateSupportTicketInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': _$SupportPriorityEnumMap[instance.priority]!,
      'status': _$SupportTicketStatusEnumMap[instance.status]!,
      'category': instance.category,
      'issueType': _$SupportIssueTypeEnumMap[instance.issueType],
      'userId': instance.userId,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'paymentId': instance.paymentId,
      'refundId': instance.refundId,
      'assignedToId': instance.assignedToId,
    };

_$UpdateSupportTicketInputImpl _$$UpdateSupportTicketInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSupportTicketInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      priority: $enumDecodeNullable(_$SupportPriorityEnumMap, json['priority']),
      status: $enumDecodeNullable(_$SupportTicketStatusEnumMap, json['status']),
      category: json['category'] as String?,
      issueType:
          $enumDecodeNullable(_$SupportIssueTypeEnumMap, json['issueType']),
      userId: json['userId'] as String?,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      paymentId: json['paymentId'] as String?,
      refundId: json['refundId'] as String?,
      assignedToId: json['assignedToId'] as String?,
    );

Map<String, dynamic> _$$UpdateSupportTicketInputImplToJson(
        _$UpdateSupportTicketInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': _$SupportPriorityEnumMap[instance.priority],
      'status': _$SupportTicketStatusEnumMap[instance.status],
      'category': instance.category,
      'issueType': _$SupportIssueTypeEnumMap[instance.issueType],
      'userId': instance.userId,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'paymentId': instance.paymentId,
      'refundId': instance.refundId,
      'assignedToId': instance.assignedToId,
    };

_$SupportTicketWhereUniqueInputImpl
    _$$SupportTicketWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$SupportTicketWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SupportTicketWhereUniqueInputImplToJson(
        _$SupportTicketWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SupportTicketWhereInputImpl _$$SupportTicketWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? null
          : SupportPriorityFilter.fromJson(
              json['priority'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : SupportTicketStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : StringFilter.fromJson(json['category'] as Map<String, dynamic>),
      issueType: json['issueType'] == null
          ? null
          : SupportIssueTypeFilter.fromJson(
              json['issueType'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      consultationId: json['consultationId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultationId'] as Map<String, dynamic>),
      subscriptionId: json['subscriptionId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionId'] as Map<String, dynamic>),
      paymentId: json['paymentId'] == null
          ? null
          : StringFilter.fromJson(json['paymentId'] as Map<String, dynamic>),
      refundId: json['refundId'] == null
          ? null
          : StringFilter.fromJson(json['refundId'] as Map<String, dynamic>),
      assignedToId: json['assignedToId'] == null
          ? null
          : StringFilter.fromJson(json['assignedToId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              SupportTicketWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              SupportTicketWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SupportTicketWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportTicketWhereInputImplToJson(
        _$SupportTicketWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'priority': instance.priority?.toJson(),
      'status': instance.status?.toJson(),
      'category': instance.category?.toJson(),
      'issueType': instance.issueType?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'consultationId': instance.consultationId?.toJson(),
      'subscriptionId': instance.subscriptionId?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'refundId': instance.refundId?.toJson(),
      'assignedToId': instance.assignedToId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SupportTicketListRelationFilterImpl
    _$$SupportTicketListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$SupportTicketListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SupportTicketWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SupportTicketWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SupportTicketWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportTicketListRelationFilterImplToJson(
        _$SupportTicketListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SupportTicketRelationFilterImpl _$$SupportTicketRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : SupportTicketWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : SupportTicketWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportTicketRelationFilterImplToJson(
        _$SupportTicketRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SupportTicketOrderByInputImpl _$$SupportTicketOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      category: $enumDecodeNullable(_$SortOrderEnumMap, json['category']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      consultationId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultationId']),
      subscriptionId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionId']),
      paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
      refundId: $enumDecodeNullable(_$SortOrderEnumMap, json['refundId']),
      assignedToId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['assignedToId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SupportTicketOrderByInputImplToJson(
        _$SupportTicketOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'category': _$SortOrderEnumMap[instance.category],
      'userId': _$SortOrderEnumMap[instance.userId],
      'consultationId': _$SortOrderEnumMap[instance.consultationId],
      'subscriptionId': _$SortOrderEnumMap[instance.subscriptionId],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'refundId': _$SortOrderEnumMap[instance.refundId],
      'assignedToId': _$SortOrderEnumMap[instance.assignedToId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
