// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_window.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceWindowImpl _$$MaintenanceWindowImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceWindowImpl(
      id: json['id'] as String,
      phase: $enumDecodeNullable(_$MaintenancePhaseEnumMap, json['phase']) ??
          MaintenancePhase.off,
      reason: json['reason'] as String?,
      scheduledAt: json['scheduledAt'] == null
          ? null
          : DateTime.parse(json['scheduledAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      estimatedEnd: json['estimatedEnd'] == null
          ? null
          : DateTime.parse(json['estimatedEnd'] as String),
      startedBy: json['startedBy'] as String?,
      endedBy: json['endedBy'] as String?,
      bypassSecret: json['bypassSecret'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MaintenanceWindowImplToJson(
        _$MaintenanceWindowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phase': _$MaintenancePhaseEnumMap[instance.phase]!,
      'reason': instance.reason,
      'scheduledAt': instance.scheduledAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'estimatedEnd': instance.estimatedEnd?.toIso8601String(),
      'startedBy': instance.startedBy,
      'endedBy': instance.endedBy,
      'bypassSecret': instance.bypassSecret,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$MaintenancePhaseEnumMap = {
  MaintenancePhase.off: 'OFF',
  MaintenancePhase.degraded: 'DEGRADED',
  MaintenancePhase.offline: 'OFFLINE',
};

_$CreateMaintenanceWindowInputImpl _$$CreateMaintenanceWindowInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMaintenanceWindowInputImpl(
      phase: $enumDecodeNullable(_$MaintenancePhaseEnumMap, json['phase']) ??
          MaintenancePhase.off,
      reason: json['reason'] as String?,
      scheduledAt: json['scheduledAt'] == null
          ? null
          : DateTime.parse(json['scheduledAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      estimatedEnd: json['estimatedEnd'] == null
          ? null
          : DateTime.parse(json['estimatedEnd'] as String),
      startedBy: json['startedBy'] as String?,
      endedBy: json['endedBy'] as String?,
      bypassSecret: json['bypassSecret'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CreateMaintenanceWindowInputImplToJson(
        _$CreateMaintenanceWindowInputImpl instance) =>
    <String, dynamic>{
      'phase': _$MaintenancePhaseEnumMap[instance.phase]!,
      'reason': instance.reason,
      'scheduledAt': instance.scheduledAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'estimatedEnd': instance.estimatedEnd?.toIso8601String(),
      'startedBy': instance.startedBy,
      'endedBy': instance.endedBy,
      'bypassSecret': instance.bypassSecret,
      'metadata': instance.metadata,
    };

_$UpdateMaintenanceWindowInputImpl _$$UpdateMaintenanceWindowInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMaintenanceWindowInputImpl(
      phase: $enumDecodeNullable(_$MaintenancePhaseEnumMap, json['phase']),
      reason: json['reason'] as String?,
      scheduledAt: json['scheduledAt'] == null
          ? null
          : DateTime.parse(json['scheduledAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      estimatedEnd: json['estimatedEnd'] == null
          ? null
          : DateTime.parse(json['estimatedEnd'] as String),
      startedBy: json['startedBy'] as String?,
      endedBy: json['endedBy'] as String?,
      bypassSecret: json['bypassSecret'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UpdateMaintenanceWindowInputImplToJson(
        _$UpdateMaintenanceWindowInputImpl instance) =>
    <String, dynamic>{
      'phase': _$MaintenancePhaseEnumMap[instance.phase],
      'reason': instance.reason,
      'scheduledAt': instance.scheduledAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'estimatedEnd': instance.estimatedEnd?.toIso8601String(),
      'startedBy': instance.startedBy,
      'endedBy': instance.endedBy,
      'bypassSecret': instance.bypassSecret,
      'metadata': instance.metadata,
    };

_$MaintenanceWindowWhereUniqueInputImpl
    _$$MaintenanceWindowWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$MaintenanceWindowWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$MaintenanceWindowWhereUniqueInputImplToJson(
        _$MaintenanceWindowWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$MaintenanceWindowWhereInputImpl _$$MaintenanceWindowWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceWindowWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      phase: json['phase'] == null
          ? null
          : MaintenancePhaseFilter.fromJson(
              json['phase'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : StringFilter.fromJson(json['reason'] as Map<String, dynamic>),
      scheduledAt: json['scheduledAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['scheduledAt'] as Map<String, dynamic>),
      startedAt: json['startedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['startedAt'] as Map<String, dynamic>),
      endedAt: json['endedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['endedAt'] as Map<String, dynamic>),
      estimatedEnd: json['estimatedEnd'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['estimatedEnd'] as Map<String, dynamic>),
      startedBy: json['startedBy'] == null
          ? null
          : StringFilter.fromJson(json['startedBy'] as Map<String, dynamic>),
      endedBy: json['endedBy'] == null
          ? null
          : StringFilter.fromJson(json['endedBy'] as Map<String, dynamic>),
      bypassSecret: json['bypassSecret'] == null
          ? null
          : StringFilter.fromJson(json['bypassSecret'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              MaintenanceWindowWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              MaintenanceWindowWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : MaintenanceWindowWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MaintenanceWindowWhereInputImplToJson(
        _$MaintenanceWindowWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'phase': instance.phase?.toJson(),
      'reason': instance.reason?.toJson(),
      'scheduledAt': instance.scheduledAt?.toJson(),
      'startedAt': instance.startedAt?.toJson(),
      'endedAt': instance.endedAt?.toJson(),
      'estimatedEnd': instance.estimatedEnd?.toJson(),
      'startedBy': instance.startedBy?.toJson(),
      'endedBy': instance.endedBy?.toJson(),
      'bypassSecret': instance.bypassSecret?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$MaintenanceWindowListRelationFilterImpl
    _$$MaintenanceWindowListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$MaintenanceWindowListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : MaintenanceWindowWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : MaintenanceWindowWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : MaintenanceWindowWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$MaintenanceWindowListRelationFilterImplToJson(
        _$MaintenanceWindowListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$MaintenanceWindowRelationFilterImpl
    _$$MaintenanceWindowRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$MaintenanceWindowRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : MaintenanceWindowWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : MaintenanceWindowWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$MaintenanceWindowRelationFilterImplToJson(
        _$MaintenanceWindowRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$MaintenanceWindowOrderByInputImpl
    _$$MaintenanceWindowOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$MaintenanceWindowOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          reason: $enumDecodeNullable(_$SortOrderEnumMap, json['reason']),
          scheduledAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['scheduledAt']),
          startedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['startedAt']),
          endedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['endedAt']),
          estimatedEnd:
              $enumDecodeNullable(_$SortOrderEnumMap, json['estimatedEnd']),
          startedBy: $enumDecodeNullable(_$SortOrderEnumMap, json['startedBy']),
          endedBy: $enumDecodeNullable(_$SortOrderEnumMap, json['endedBy']),
          bypassSecret:
              $enumDecodeNullable(_$SortOrderEnumMap, json['bypassSecret']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$MaintenanceWindowOrderByInputImplToJson(
        _$MaintenanceWindowOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'reason': _$SortOrderEnumMap[instance.reason],
      'scheduledAt': _$SortOrderEnumMap[instance.scheduledAt],
      'startedAt': _$SortOrderEnumMap[instance.startedAt],
      'endedAt': _$SortOrderEnumMap[instance.endedAt],
      'estimatedEnd': _$SortOrderEnumMap[instance.estimatedEnd],
      'startedBy': _$SortOrderEnumMap[instance.startedBy],
      'endedBy': _$SortOrderEnumMap[instance.endedBy],
      'bypassSecret': _$SortOrderEnumMap[instance.bypassSecret],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
