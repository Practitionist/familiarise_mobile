// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarImpl _$$WebinarImplFromJson(Map<String, dynamic> json) =>
    _$WebinarImpl(
      id: json['id'] as String,
      status: $enumDecodeNullable(_$WebinarStatusEnumMap, json['status']) ??
          WebinarStatus.scheduled,
      feedbackSummary: json['feedbackSummary'] as String?,
      waitlist: (json['waitlist'] as List<dynamic>)
          .map((e) => Waitlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      webinarPlanId: json['webinarPlanId'] as String,
      appointment: json['appointment'] == null
          ? null
          : Appointment.fromJson(json['appointment'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WebinarImplToJson(_$WebinarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$WebinarStatusEnumMap[instance.status]!,
      'feedbackSummary': instance.feedbackSummary,
      'waitlist': instance.waitlist,
      'webinarPlanId': instance.webinarPlanId,
      'appointment': instance.appointment,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$WebinarStatusEnumMap = {
  WebinarStatus.scheduled: 'SCHEDULED',
  WebinarStatus.inProgress: 'IN_PROGRESS',
  WebinarStatus.completed: 'COMPLETED',
  WebinarStatus.cancelled: 'CANCELLED',
};

_$CreateWebinarInputImpl _$$CreateWebinarInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWebinarInputImpl(
      status: $enumDecodeNullable(_$WebinarStatusEnumMap, json['status']) ??
          WebinarStatus.scheduled,
      feedbackSummary: json['feedbackSummary'] as String?,
      webinarPlanId: json['webinarPlanId'] as String,
    );

Map<String, dynamic> _$$CreateWebinarInputImplToJson(
        _$CreateWebinarInputImpl instance) =>
    <String, dynamic>{
      'status': _$WebinarStatusEnumMap[instance.status]!,
      'feedbackSummary': instance.feedbackSummary,
      'webinarPlanId': instance.webinarPlanId,
    };

_$UpdateWebinarInputImpl _$$UpdateWebinarInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWebinarInputImpl(
      status: $enumDecodeNullable(_$WebinarStatusEnumMap, json['status']),
      feedbackSummary: json['feedbackSummary'] as String?,
      webinarPlanId: json['webinarPlanId'] as String?,
    );

Map<String, dynamic> _$$UpdateWebinarInputImplToJson(
        _$UpdateWebinarInputImpl instance) =>
    <String, dynamic>{
      'status': _$WebinarStatusEnumMap[instance.status],
      'feedbackSummary': instance.feedbackSummary,
      'webinarPlanId': instance.webinarPlanId,
    };

_$WebinarWhereUniqueInputImpl _$$WebinarWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$WebinarWhereUniqueInputImplToJson(
        _$WebinarWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$WebinarWhereInputImpl _$$WebinarWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : WebinarStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      feedbackSummary: json['feedbackSummary'] == null
          ? null
          : StringFilter.fromJson(
              json['feedbackSummary'] as Map<String, dynamic>),
      webinarPlan: json['webinarPlan'] == null
          ? null
          : WebinarPlanRelationFilter.fromJson(
              json['webinarPlan'] as Map<String, dynamic>),
      webinarPlanId: json['webinarPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['webinarPlanId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => WebinarWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => WebinarWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : WebinarWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarWhereInputImplToJson(
        _$WebinarWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'status': instance.status?.toJson(),
      'feedbackSummary': instance.feedbackSummary?.toJson(),
      'webinarPlan': instance.webinarPlan?.toJson(),
      'webinarPlanId': instance.webinarPlanId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$WebinarListRelationFilterImpl _$$WebinarListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : WebinarWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : WebinarWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : WebinarWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarListRelationFilterImplToJson(
        _$WebinarListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WebinarRelationFilterImpl _$$WebinarRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : WebinarWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : WebinarWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarRelationFilterImplToJson(
        _$WebinarRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WebinarOrderByInputImpl _$$WebinarOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      feedbackSummary:
          $enumDecodeNullable(_$SortOrderEnumMap, json['feedbackSummary']),
      webinarPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['webinarPlanId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$WebinarOrderByInputImplToJson(
        _$WebinarOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'feedbackSummary': _$SortOrderEnumMap[instance.feedbackSummary],
      'webinarPlanId': _$SortOrderEnumMap[instance.webinarPlanId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
