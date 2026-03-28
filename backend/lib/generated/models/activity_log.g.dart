// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityLogImpl _$$ActivityLogImplFromJson(Map<String, dynamic> json) =>
    _$ActivityLogImpl(
      id: json['id'] as String,
      activityType: $enumDecode(_$ActivityTypeEnumMap, json['activityType']),
      description: json['description'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      actorId: json['actorId'] as String,
      actorName: json['actorName'] as String,
      actorImage: json['actorImage'] as String?,
      consultantProfileId: json['consultantProfileId'] as String,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
      trialSessionId: json['trialSessionId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ActivityLogImplToJson(_$ActivityLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activityType': _$ActivityTypeEnumMap[instance.activityType]!,
      'description': instance.description,
      'metadata': instance.metadata,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'actorImage': instance.actorImage,
      'consultantProfileId': instance.consultantProfileId,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
      'trialSessionId': instance.trialSessionId,
      'createdAt': instance.createdAt.toIso8601String(),
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

_$CreateActivityLogInputImpl _$$CreateActivityLogInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateActivityLogInputImpl(
      activityType: $enumDecode(_$ActivityTypeEnumMap, json['activityType']),
      description: json['description'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      actorId: json['actorId'] as String,
      actorName: json['actorName'] as String,
      actorImage: json['actorImage'] as String?,
      consultantProfileId: json['consultantProfileId'] as String,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
      trialSessionId: json['trialSessionId'] as String?,
    );

Map<String, dynamic> _$$CreateActivityLogInputImplToJson(
        _$CreateActivityLogInputImpl instance) =>
    <String, dynamic>{
      'activityType': _$ActivityTypeEnumMap[instance.activityType]!,
      'description': instance.description,
      'metadata': instance.metadata,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'actorImage': instance.actorImage,
      'consultantProfileId': instance.consultantProfileId,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
      'trialSessionId': instance.trialSessionId,
    };

_$UpdateActivityLogInputImpl _$$UpdateActivityLogInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateActivityLogInputImpl(
      activityType:
          $enumDecodeNullable(_$ActivityTypeEnumMap, json['activityType']),
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      actorId: json['actorId'] as String?,
      actorName: json['actorName'] as String?,
      actorImage: json['actorImage'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
      trialSessionId: json['trialSessionId'] as String?,
    );

Map<String, dynamic> _$$UpdateActivityLogInputImplToJson(
        _$UpdateActivityLogInputImpl instance) =>
    <String, dynamic>{
      'activityType': _$ActivityTypeEnumMap[instance.activityType],
      'description': instance.description,
      'metadata': instance.metadata,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'actorImage': instance.actorImage,
      'consultantProfileId': instance.consultantProfileId,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
      'trialSessionId': instance.trialSessionId,
    };

_$ActivityLogWhereUniqueInputImpl _$$ActivityLogWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityLogWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ActivityLogWhereUniqueInputImplToJson(
        _$ActivityLogWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ActivityLogWhereInputImpl _$$ActivityLogWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityLogWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      activityType: json['activityType'] == null
          ? null
          : ActivityTypeFilter.fromJson(
              json['activityType'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      actorId: json['actorId'] == null
          ? null
          : StringFilter.fromJson(json['actorId'] as Map<String, dynamic>),
      actorName: json['actorName'] == null
          ? null
          : StringFilter.fromJson(json['actorName'] as Map<String, dynamic>),
      actorImage: json['actorImage'] == null
          ? null
          : StringFilter.fromJson(json['actorImage'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      consultationId: json['consultationId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultationId'] as Map<String, dynamic>),
      subscriptionId: json['subscriptionId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionId'] as Map<String, dynamic>),
      webinarId: json['webinarId'] == null
          ? null
          : StringFilter.fromJson(json['webinarId'] as Map<String, dynamic>),
      classId: json['classId'] == null
          ? null
          : StringFilter.fromJson(json['classId'] as Map<String, dynamic>),
      trialSessionId: json['trialSessionId'] == null
          ? null
          : StringFilter.fromJson(
              json['trialSessionId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => ActivityLogWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => ActivityLogWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ActivityLogWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActivityLogWhereInputImplToJson(
        _$ActivityLogWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'activityType': instance.activityType?.toJson(),
      'description': instance.description?.toJson(),
      'actorId': instance.actorId?.toJson(),
      'actorName': instance.actorName?.toJson(),
      'actorImage': instance.actorImage?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'consultationId': instance.consultationId?.toJson(),
      'subscriptionId': instance.subscriptionId?.toJson(),
      'webinarId': instance.webinarId?.toJson(),
      'classId': instance.classId?.toJson(),
      'trialSessionId': instance.trialSessionId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ActivityLogListRelationFilterImpl
    _$$ActivityLogListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ActivityLogListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ActivityLogWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ActivityLogWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ActivityLogWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ActivityLogListRelationFilterImplToJson(
        _$ActivityLogListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ActivityLogRelationFilterImpl _$$ActivityLogRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityLogRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ActivityLogWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ActivityLogWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActivityLogRelationFilterImplToJson(
        _$ActivityLogRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ActivityLogOrderByInputImpl _$$ActivityLogOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityLogOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      actorId: $enumDecodeNullable(_$SortOrderEnumMap, json['actorId']),
      actorName: $enumDecodeNullable(_$SortOrderEnumMap, json['actorName']),
      actorImage: $enumDecodeNullable(_$SortOrderEnumMap, json['actorImage']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      consultationId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultationId']),
      subscriptionId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionId']),
      webinarId: $enumDecodeNullable(_$SortOrderEnumMap, json['webinarId']),
      classId: $enumDecodeNullable(_$SortOrderEnumMap, json['classId']),
      trialSessionId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['trialSessionId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
    );

Map<String, dynamic> _$$ActivityLogOrderByInputImplToJson(
        _$ActivityLogOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'description': _$SortOrderEnumMap[instance.description],
      'actorId': _$SortOrderEnumMap[instance.actorId],
      'actorName': _$SortOrderEnumMap[instance.actorName],
      'actorImage': _$SortOrderEnumMap[instance.actorImage],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'consultationId': _$SortOrderEnumMap[instance.consultationId],
      'subscriptionId': _$SortOrderEnumMap[instance.subscriptionId],
      'webinarId': _$SortOrderEnumMap[instance.webinarId],
      'classId': _$SortOrderEnumMap[instance.classId],
      'trialSessionId': _$SortOrderEnumMap[instance.trialSessionId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
