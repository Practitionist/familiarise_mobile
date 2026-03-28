// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_job_execution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemJobExecutionImpl _$$SystemJobExecutionImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemJobExecutionImpl(
      id: json['id'] as String,
      jobId: json['jobId'] as String,
      jobName: json['jobName'] as String,
      status: $enumDecode(_$SystemJobStatusEnumMap, json['status']),
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      triggeredBy: json['triggeredBy'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      errorLog: json['errorLog'] as String?,
      itemsProcessed: (json['itemsProcessed'] as num?)?.toInt(),
      errorCount: (json['errorCount'] as num?)?.toInt(),
      durationMs: (json['durationMs'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SystemJobExecutionImplToJson(
        _$SystemJobExecutionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'status': _$SystemJobStatusEnumMap[instance.status]!,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'triggeredBy': instance.triggeredBy,
      'result': instance.result,
      'errorLog': instance.errorLog,
      'itemsProcessed': instance.itemsProcessed,
      'errorCount': instance.errorCount,
      'durationMs': instance.durationMs,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$SystemJobStatusEnumMap = {
  SystemJobStatus.running: 'RUNNING',
  SystemJobStatus.completed: 'COMPLETED',
  SystemJobStatus.failed: 'FAILED',
  SystemJobStatus.cancelled: 'CANCELLED',
};

_$CreateSystemJobExecutionInputImpl
    _$$CreateSystemJobExecutionInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateSystemJobExecutionInputImpl(
          jobId: json['jobId'] as String,
          jobName: json['jobName'] as String,
          status: $enumDecode(_$SystemJobStatusEnumMap, json['status']),
          endedAt: json['endedAt'] == null
              ? null
              : DateTime.parse(json['endedAt'] as String),
          triggeredBy: json['triggeredBy'] as String?,
          result: json['result'] as Map<String, dynamic>?,
          errorLog: json['errorLog'] as String?,
          itemsProcessed: (json['itemsProcessed'] as num?)?.toInt(),
          errorCount: (json['errorCount'] as num?)?.toInt(),
          durationMs: (json['durationMs'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$CreateSystemJobExecutionInputImplToJson(
        _$CreateSystemJobExecutionInputImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'status': _$SystemJobStatusEnumMap[instance.status]!,
      'endedAt': instance.endedAt?.toIso8601String(),
      'triggeredBy': instance.triggeredBy,
      'result': instance.result,
      'errorLog': instance.errorLog,
      'itemsProcessed': instance.itemsProcessed,
      'errorCount': instance.errorCount,
      'durationMs': instance.durationMs,
    };

_$UpdateSystemJobExecutionInputImpl
    _$$UpdateSystemJobExecutionInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateSystemJobExecutionInputImpl(
          jobId: json['jobId'] as String?,
          jobName: json['jobName'] as String?,
          status: $enumDecodeNullable(_$SystemJobStatusEnumMap, json['status']),
          endedAt: json['endedAt'] == null
              ? null
              : DateTime.parse(json['endedAt'] as String),
          triggeredBy: json['triggeredBy'] as String?,
          result: json['result'] as Map<String, dynamic>?,
          errorLog: json['errorLog'] as String?,
          itemsProcessed: (json['itemsProcessed'] as num?)?.toInt(),
          errorCount: (json['errorCount'] as num?)?.toInt(),
          durationMs: (json['durationMs'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$UpdateSystemJobExecutionInputImplToJson(
        _$UpdateSystemJobExecutionInputImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'status': _$SystemJobStatusEnumMap[instance.status],
      'endedAt': instance.endedAt?.toIso8601String(),
      'triggeredBy': instance.triggeredBy,
      'result': instance.result,
      'errorLog': instance.errorLog,
      'itemsProcessed': instance.itemsProcessed,
      'errorCount': instance.errorCount,
      'durationMs': instance.durationMs,
    };

_$SystemJobExecutionWhereUniqueInputImpl
    _$$SystemJobExecutionWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SystemJobExecutionWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SystemJobExecutionWhereUniqueInputImplToJson(
        _$SystemJobExecutionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SystemJobExecutionWhereInputImpl _$$SystemJobExecutionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemJobExecutionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      jobId: json['jobId'] == null
          ? null
          : StringFilter.fromJson(json['jobId'] as Map<String, dynamic>),
      jobName: json['jobName'] == null
          ? null
          : StringFilter.fromJson(json['jobName'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : SystemJobStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      startedAt: json['startedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['startedAt'] as Map<String, dynamic>),
      endedAt: json['endedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['endedAt'] as Map<String, dynamic>),
      triggeredBy: json['triggeredBy'] == null
          ? null
          : StringFilter.fromJson(json['triggeredBy'] as Map<String, dynamic>),
      errorLog: json['errorLog'] == null
          ? null
          : StringFilter.fromJson(json['errorLog'] as Map<String, dynamic>),
      itemsProcessed: json['itemsProcessed'] == null
          ? null
          : IntFilter.fromJson(json['itemsProcessed'] as Map<String, dynamic>),
      errorCount: json['errorCount'] == null
          ? null
          : IntFilter.fromJson(json['errorCount'] as Map<String, dynamic>),
      durationMs: json['durationMs'] == null
          ? null
          : IntFilter.fromJson(json['durationMs'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              SystemJobExecutionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              SystemJobExecutionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SystemJobExecutionWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SystemJobExecutionWhereInputImplToJson(
        _$SystemJobExecutionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'jobId': instance.jobId?.toJson(),
      'jobName': instance.jobName?.toJson(),
      'status': instance.status?.toJson(),
      'startedAt': instance.startedAt?.toJson(),
      'endedAt': instance.endedAt?.toJson(),
      'triggeredBy': instance.triggeredBy?.toJson(),
      'errorLog': instance.errorLog?.toJson(),
      'itemsProcessed': instance.itemsProcessed?.toJson(),
      'errorCount': instance.errorCount?.toJson(),
      'durationMs': instance.durationMs?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SystemJobExecutionListRelationFilterImpl
    _$$SystemJobExecutionListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SystemJobExecutionListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SystemJobExecutionWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SystemJobExecutionWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SystemJobExecutionWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SystemJobExecutionListRelationFilterImplToJson(
        _$SystemJobExecutionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SystemJobExecutionRelationFilterImpl
    _$$SystemJobExecutionRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SystemJobExecutionRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SystemJobExecutionWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SystemJobExecutionWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SystemJobExecutionRelationFilterImplToJson(
        _$SystemJobExecutionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SystemJobExecutionOrderByInputImpl
    _$$SystemJobExecutionOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$SystemJobExecutionOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          jobId: $enumDecodeNullable(_$SortOrderEnumMap, json['jobId']),
          jobName: $enumDecodeNullable(_$SortOrderEnumMap, json['jobName']),
          startedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['startedAt']),
          endedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['endedAt']),
          triggeredBy:
              $enumDecodeNullable(_$SortOrderEnumMap, json['triggeredBy']),
          errorLog: $enumDecodeNullable(_$SortOrderEnumMap, json['errorLog']),
          itemsProcessed:
              $enumDecodeNullable(_$SortOrderEnumMap, json['itemsProcessed']),
          errorCount:
              $enumDecodeNullable(_$SortOrderEnumMap, json['errorCount']),
          durationMs:
              $enumDecodeNullable(_$SortOrderEnumMap, json['durationMs']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
        );

Map<String, dynamic> _$$SystemJobExecutionOrderByInputImplToJson(
        _$SystemJobExecutionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'jobId': _$SortOrderEnumMap[instance.jobId],
      'jobName': _$SortOrderEnumMap[instance.jobName],
      'startedAt': _$SortOrderEnumMap[instance.startedAt],
      'endedAt': _$SortOrderEnumMap[instance.endedAt],
      'triggeredBy': _$SortOrderEnumMap[instance.triggeredBy],
      'errorLog': _$SortOrderEnumMap[instance.errorLog],
      'itemsProcessed': _$SortOrderEnumMap[instance.itemsProcessed],
      'errorCount': _$SortOrderEnumMap[instance.errorCount],
      'durationMs': _$SortOrderEnumMap[instance.durationMs],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
