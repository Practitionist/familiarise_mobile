// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassModelImpl _$$ClassModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassModelImpl(
      id: json['id'] as String,
      schedulingPeriodStartsAt: json['schedulingPeriodStartsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt: json['schedulingPeriodEndsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone:
          json['schedulingTimezone'] as String? ?? "Asia/Kolkata",
      status: $enumDecodeNullable(_$ClassStatusEnumMap, json['status']) ??
          ClassStatus.scheduled,
      waitlist: (json['waitlist'] as List<dynamic>)
          .map((e) => Waitlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordingUrls: (json['recordingUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      feedbackSummary: json['feedbackSummary'] as String?,
      classPlanId: json['classPlanId'] as String,
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ClassModelImplToJson(_$ClassModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt?.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt?.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
      'status': _$ClassStatusEnumMap[instance.status]!,
      'waitlist': instance.waitlist,
      'recordingUrls': instance.recordingUrls,
      'feedbackSummary': instance.feedbackSummary,
      'classPlanId': instance.classPlanId,
      'appointments': instance.appointments,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ClassStatusEnumMap = {
  ClassStatus.scheduled: 'SCHEDULED',
  ClassStatus.inProgress: 'IN_PROGRESS',
  ClassStatus.completed: 'COMPLETED',
  ClassStatus.cancelled: 'CANCELLED',
};

_$CreateClassModelInputImpl _$$CreateClassModelInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassModelInputImpl(
      schedulingPeriodStartsAt: json['schedulingPeriodStartsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt: json['schedulingPeriodEndsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone:
          json['schedulingTimezone'] as String? ?? "Asia/Kolkata",
      status: $enumDecodeNullable(_$ClassStatusEnumMap, json['status']) ??
          ClassStatus.scheduled,
      recordingUrls: (json['recordingUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      feedbackSummary: json['feedbackSummary'] as String?,
      classPlanId: json['classPlanId'] as String,
    );

Map<String, dynamic> _$$CreateClassModelInputImplToJson(
        _$CreateClassModelInputImpl instance) =>
    <String, dynamic>{
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt?.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt?.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
      'status': _$ClassStatusEnumMap[instance.status]!,
      'recordingUrls': instance.recordingUrls,
      'feedbackSummary': instance.feedbackSummary,
      'classPlanId': instance.classPlanId,
    };

_$UpdateClassModelInputImpl _$$UpdateClassModelInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassModelInputImpl(
      schedulingPeriodStartsAt: json['schedulingPeriodStartsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodStartsAt'] as String),
      schedulingPeriodEndsAt: json['schedulingPeriodEndsAt'] == null
          ? null
          : DateTime.parse(json['schedulingPeriodEndsAt'] as String),
      schedulingTimezone: json['schedulingTimezone'] as String?,
      status: $enumDecodeNullable(_$ClassStatusEnumMap, json['status']),
      recordingUrls: (json['recordingUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      feedbackSummary: json['feedbackSummary'] as String?,
      classPlanId: json['classPlanId'] as String?,
    );

Map<String, dynamic> _$$UpdateClassModelInputImplToJson(
        _$UpdateClassModelInputImpl instance) =>
    <String, dynamic>{
      'schedulingPeriodStartsAt':
          instance.schedulingPeriodStartsAt?.toIso8601String(),
      'schedulingPeriodEndsAt':
          instance.schedulingPeriodEndsAt?.toIso8601String(),
      'schedulingTimezone': instance.schedulingTimezone,
      'status': _$ClassStatusEnumMap[instance.status],
      'recordingUrls': instance.recordingUrls,
      'feedbackSummary': instance.feedbackSummary,
      'classPlanId': instance.classPlanId,
    };

_$ClassModelWhereUniqueInputImpl _$$ClassModelWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassModelWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ClassModelWhereUniqueInputImplToJson(
        _$ClassModelWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ClassModelWhereInputImpl _$$ClassModelWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassModelWhereInputImpl(
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
      status: json['status'] == null
          ? null
          : ClassStatusFilter.fromJson(json['status'] as Map<String, dynamic>),
      recordingUrls: json['recordingUrls'] == null
          ? null
          : StringListFilter.fromJson(
              json['recordingUrls'] as Map<String, dynamic>),
      feedbackSummary: json['feedbackSummary'] == null
          ? null
          : StringFilter.fromJson(
              json['feedbackSummary'] as Map<String, dynamic>),
      classPlan: json['classPlan'] == null
          ? null
          : ClassPlanRelationFilter.fromJson(
              json['classPlan'] as Map<String, dynamic>),
      classPlanId: json['classPlanId'] == null
          ? null
          : StringFilter.fromJson(json['classPlanId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ClassModelWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ClassModelWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ClassModelWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassModelWhereInputImplToJson(
        _$ClassModelWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'schedulingPeriodStartsAt': instance.schedulingPeriodStartsAt?.toJson(),
      'schedulingPeriodEndsAt': instance.schedulingPeriodEndsAt?.toJson(),
      'schedulingTimezone': instance.schedulingTimezone?.toJson(),
      'status': instance.status?.toJson(),
      'recordingUrls': instance.recordingUrls?.toJson(),
      'feedbackSummary': instance.feedbackSummary?.toJson(),
      'classPlan': instance.classPlan?.toJson(),
      'classPlanId': instance.classPlanId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ClassModelListRelationFilterImpl _$$ClassModelListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassModelListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : ClassModelWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : ClassModelWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ClassModelWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassModelListRelationFilterImplToJson(
        _$ClassModelListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ClassModelRelationFilterImpl _$$ClassModelRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassModelRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ClassModelWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ClassModelWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassModelRelationFilterImplToJson(
        _$ClassModelRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ClassModelOrderByInputImpl _$$ClassModelOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassModelOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      schedulingPeriodStartsAt: $enumDecodeNullable(
          _$SortOrderEnumMap, json['schedulingPeriodStartsAt']),
      schedulingPeriodEndsAt: $enumDecodeNullable(
          _$SortOrderEnumMap, json['schedulingPeriodEndsAt']),
      schedulingTimezone:
          $enumDecodeNullable(_$SortOrderEnumMap, json['schedulingTimezone']),
      recordingUrls:
          $enumDecodeNullable(_$SortOrderEnumMap, json['recordingUrls']),
      feedbackSummary:
          $enumDecodeNullable(_$SortOrderEnumMap, json['feedbackSummary']),
      classPlanId: $enumDecodeNullable(_$SortOrderEnumMap, json['classPlanId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ClassModelOrderByInputImplToJson(
        _$ClassModelOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'schedulingPeriodStartsAt':
          _$SortOrderEnumMap[instance.schedulingPeriodStartsAt],
      'schedulingPeriodEndsAt':
          _$SortOrderEnumMap[instance.schedulingPeriodEndsAt],
      'schedulingTimezone': _$SortOrderEnumMap[instance.schedulingTimezone],
      'recordingUrls': _$SortOrderEnumMap[instance.recordingUrls],
      'feedbackSummary': _$SortOrderEnumMap[instance.feedbackSummary],
      'classPlanId': _$SortOrderEnumMap[instance.classPlanId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
