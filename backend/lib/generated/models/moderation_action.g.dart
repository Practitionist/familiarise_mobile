// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModerationActionImpl _$$ModerationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationActionImpl(
      id: json['id'] as String,
      actionType:
          $enumDecode(_$ModerationActionTypeEnumMap, json['actionType']),
      notes: json['notes'] as String?,
      reportId: json['reportId'] as String,
      takenById: json['takenById'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ModerationActionImplToJson(
        _$ModerationActionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actionType': _$ModerationActionTypeEnumMap[instance.actionType]!,
      'notes': instance.notes,
      'reportId': instance.reportId,
      'takenById': instance.takenById,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$ModerationActionTypeEnumMap = {
  ModerationActionType.warningIssued: 'WARNING_ISSUED',
  ModerationActionType.contentRemoved: 'CONTENT_REMOVED',
  ModerationActionType.userSuspended: 'USER_SUSPENDED',
  ModerationActionType.userBanned: 'USER_BANNED',
  ModerationActionType.profileUnverified: 'PROFILE_UNVERIFIED',
  ModerationActionType.noAction: 'NO_ACTION',
};

_$CreateModerationActionInputImpl _$$CreateModerationActionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateModerationActionInputImpl(
      actionType:
          $enumDecode(_$ModerationActionTypeEnumMap, json['actionType']),
      notes: json['notes'] as String?,
      reportId: json['reportId'] as String,
      takenById: json['takenById'] as String,
    );

Map<String, dynamic> _$$CreateModerationActionInputImplToJson(
        _$CreateModerationActionInputImpl instance) =>
    <String, dynamic>{
      'actionType': _$ModerationActionTypeEnumMap[instance.actionType]!,
      'notes': instance.notes,
      'reportId': instance.reportId,
      'takenById': instance.takenById,
    };

_$UpdateModerationActionInputImpl _$$UpdateModerationActionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateModerationActionInputImpl(
      actionType: $enumDecodeNullable(
          _$ModerationActionTypeEnumMap, json['actionType']),
      notes: json['notes'] as String?,
      reportId: json['reportId'] as String?,
      takenById: json['takenById'] as String?,
    );

Map<String, dynamic> _$$UpdateModerationActionInputImplToJson(
        _$UpdateModerationActionInputImpl instance) =>
    <String, dynamic>{
      'actionType': _$ModerationActionTypeEnumMap[instance.actionType],
      'notes': instance.notes,
      'reportId': instance.reportId,
      'takenById': instance.takenById,
    };

_$ModerationActionWhereUniqueInputImpl
    _$$ModerationActionWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ModerationActionWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ModerationActionWhereUniqueInputImplToJson(
        _$ModerationActionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ModerationActionWhereInputImpl _$$ModerationActionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationActionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      actionType: json['actionType'] == null
          ? null
          : ModerationActionTypeFilter.fromJson(
              json['actionType'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringFilter.fromJson(json['notes'] as Map<String, dynamic>),
      report: json['report'] == null
          ? null
          : ModerationReportRelationFilter.fromJson(
              json['report'] as Map<String, dynamic>),
      reportId: json['reportId'] == null
          ? null
          : StringFilter.fromJson(json['reportId'] as Map<String, dynamic>),
      takenById: json['takenById'] == null
          ? null
          : StringFilter.fromJson(json['takenById'] as Map<String, dynamic>),
      takenBy: json['takenBy'] == null
          ? null
          : UserRelationFilter.fromJson(
              json['takenBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ModerationActionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ModerationActionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ModerationActionWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModerationActionWhereInputImplToJson(
        _$ModerationActionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'actionType': instance.actionType?.toJson(),
      'notes': instance.notes?.toJson(),
      'report': instance.report?.toJson(),
      'reportId': instance.reportId?.toJson(),
      'takenById': instance.takenById?.toJson(),
      'takenBy': instance.takenBy?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ModerationActionListRelationFilterImpl
    _$$ModerationActionListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ModerationActionListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ModerationActionWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ModerationActionWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ModerationActionWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ModerationActionListRelationFilterImplToJson(
        _$ModerationActionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ModerationActionRelationFilterImpl
    _$$ModerationActionRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ModerationActionRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ModerationActionWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ModerationActionWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ModerationActionRelationFilterImplToJson(
        _$ModerationActionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ModerationActionOrderByInputImpl _$$ModerationActionOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationActionOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      notes: $enumDecodeNullable(_$SortOrderEnumMap, json['notes']),
      reportId: $enumDecodeNullable(_$SortOrderEnumMap, json['reportId']),
      takenById: $enumDecodeNullable(_$SortOrderEnumMap, json['takenById']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
    );

Map<String, dynamic> _$$ModerationActionOrderByInputImplToJson(
        _$ModerationActionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'notes': _$SortOrderEnumMap[instance.notes],
      'reportId': _$SortOrderEnumMap[instance.reportId],
      'takenById': _$SortOrderEnumMap[instance.takenById],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
