// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModerationReportImpl _$$ModerationReportImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationReportImpl(
      id: json['id'] as String,
      type: $enumDecode(_$ModerationReportTypeEnumMap, json['type']),
      status: $enumDecodeNullable(
              _$ModerationReportStatusEnumMap, json['status']) ??
          ModerationReportStatus.pending,
      reason: json['reason'] as String,
      description: json['description'] as String?,
      reportCount: (json['reportCount'] as num?)?.toInt() ?? 1,
      contentText: json['contentText'] as String?,
      contentUrl: json['contentUrl'] as String?,
      reportedById: json['reportedById'] as String,
      targetUserId: json['targetUserId'] as String,
      reviewId: json['reviewId'] as String?,
      assignedToId: json['assignedToId'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      resolvedBy: json['resolvedBy'] as String?,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => ModerationAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ModerationReportImplToJson(
        _$ModerationReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ModerationReportTypeEnumMap[instance.type]!,
      'status': _$ModerationReportStatusEnumMap[instance.status]!,
      'reason': instance.reason,
      'description': instance.description,
      'reportCount': instance.reportCount,
      'contentText': instance.contentText,
      'contentUrl': instance.contentUrl,
      'reportedById': instance.reportedById,
      'targetUserId': instance.targetUserId,
      'reviewId': instance.reviewId,
      'assignedToId': instance.assignedToId,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'resolvedBy': instance.resolvedBy,
      'actions': instance.actions,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ModerationReportTypeEnumMap = {
  ModerationReportType.review: 'REVIEW',
  ModerationReportType.profile: 'PROFILE',
  ModerationReportType.message: 'MESSAGE',
  ModerationReportType.document: 'DOCUMENT',
  ModerationReportType.other: 'OTHER',
};

const _$ModerationReportStatusEnumMap = {
  ModerationReportStatus.pending: 'PENDING',
  ModerationReportStatus.underReview: 'UNDER_REVIEW',
  ModerationReportStatus.dismissed: 'DISMISSED',
  ModerationReportStatus.actionTaken: 'ACTION_TAKEN',
  ModerationReportStatus.escalated: 'ESCALATED',
};

_$CreateModerationReportInputImpl _$$CreateModerationReportInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateModerationReportInputImpl(
      type: $enumDecode(_$ModerationReportTypeEnumMap, json['type']),
      status: $enumDecodeNullable(
              _$ModerationReportStatusEnumMap, json['status']) ??
          ModerationReportStatus.pending,
      reason: json['reason'] as String,
      description: json['description'] as String?,
      reportCount: (json['reportCount'] as num?)?.toInt() ?? 1,
      contentText: json['contentText'] as String?,
      contentUrl: json['contentUrl'] as String?,
      reportedById: json['reportedById'] as String,
      targetUserId: json['targetUserId'] as String,
      reviewId: json['reviewId'] as String?,
      assignedToId: json['assignedToId'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      resolvedBy: json['resolvedBy'] as String?,
    );

Map<String, dynamic> _$$CreateModerationReportInputImplToJson(
        _$CreateModerationReportInputImpl instance) =>
    <String, dynamic>{
      'type': _$ModerationReportTypeEnumMap[instance.type]!,
      'status': _$ModerationReportStatusEnumMap[instance.status]!,
      'reason': instance.reason,
      'description': instance.description,
      'reportCount': instance.reportCount,
      'contentText': instance.contentText,
      'contentUrl': instance.contentUrl,
      'reportedById': instance.reportedById,
      'targetUserId': instance.targetUserId,
      'reviewId': instance.reviewId,
      'assignedToId': instance.assignedToId,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'resolvedBy': instance.resolvedBy,
    };

_$UpdateModerationReportInputImpl _$$UpdateModerationReportInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateModerationReportInputImpl(
      type: $enumDecodeNullable(_$ModerationReportTypeEnumMap, json['type']),
      status:
          $enumDecodeNullable(_$ModerationReportStatusEnumMap, json['status']),
      reason: json['reason'] as String?,
      description: json['description'] as String?,
      reportCount: (json['reportCount'] as num?)?.toInt(),
      contentText: json['contentText'] as String?,
      contentUrl: json['contentUrl'] as String?,
      reportedById: json['reportedById'] as String?,
      targetUserId: json['targetUserId'] as String?,
      reviewId: json['reviewId'] as String?,
      assignedToId: json['assignedToId'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      resolvedBy: json['resolvedBy'] as String?,
    );

Map<String, dynamic> _$$UpdateModerationReportInputImplToJson(
        _$UpdateModerationReportInputImpl instance) =>
    <String, dynamic>{
      'type': _$ModerationReportTypeEnumMap[instance.type],
      'status': _$ModerationReportStatusEnumMap[instance.status],
      'reason': instance.reason,
      'description': instance.description,
      'reportCount': instance.reportCount,
      'contentText': instance.contentText,
      'contentUrl': instance.contentUrl,
      'reportedById': instance.reportedById,
      'targetUserId': instance.targetUserId,
      'reviewId': instance.reviewId,
      'assignedToId': instance.assignedToId,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'resolvedBy': instance.resolvedBy,
    };

_$ModerationReportWhereUniqueInputImpl
    _$$ModerationReportWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ModerationReportWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ModerationReportWhereUniqueInputImplToJson(
        _$ModerationReportWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ModerationReportWhereInputImpl _$$ModerationReportWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationReportWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : ModerationReportTypeFilter.fromJson(
              json['type'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : ModerationReportStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : StringFilter.fromJson(json['reason'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      reportCount: json['reportCount'] == null
          ? null
          : IntFilter.fromJson(json['reportCount'] as Map<String, dynamic>),
      contentText: json['contentText'] == null
          ? null
          : StringFilter.fromJson(json['contentText'] as Map<String, dynamic>),
      contentUrl: json['contentUrl'] == null
          ? null
          : StringFilter.fromJson(json['contentUrl'] as Map<String, dynamic>),
      reportedById: json['reportedById'] == null
          ? null
          : StringFilter.fromJson(json['reportedById'] as Map<String, dynamic>),
      reportedBy: json['reportedBy'] == null
          ? null
          : UserRelationFilter.fromJson(
              json['reportedBy'] as Map<String, dynamic>),
      targetUserId: json['targetUserId'] == null
          ? null
          : StringFilter.fromJson(json['targetUserId'] as Map<String, dynamic>),
      targetUser: json['targetUser'] == null
          ? null
          : UserRelationFilter.fromJson(
              json['targetUser'] as Map<String, dynamic>),
      reviewId: json['reviewId'] == null
          ? null
          : StringFilter.fromJson(json['reviewId'] as Map<String, dynamic>),
      assignedToId: json['assignedToId'] == null
          ? null
          : StringFilter.fromJson(json['assignedToId'] as Map<String, dynamic>),
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['resolvedAt'] as Map<String, dynamic>),
      resolvedBy: json['resolvedBy'] == null
          ? null
          : StringFilter.fromJson(json['resolvedBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ModerationReportWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ModerationReportWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ModerationReportWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModerationReportWhereInputImplToJson(
        _$ModerationReportWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'type': instance.type?.toJson(),
      'status': instance.status?.toJson(),
      'reason': instance.reason?.toJson(),
      'description': instance.description?.toJson(),
      'reportCount': instance.reportCount?.toJson(),
      'contentText': instance.contentText?.toJson(),
      'contentUrl': instance.contentUrl?.toJson(),
      'reportedById': instance.reportedById?.toJson(),
      'reportedBy': instance.reportedBy?.toJson(),
      'targetUserId': instance.targetUserId?.toJson(),
      'targetUser': instance.targetUser?.toJson(),
      'reviewId': instance.reviewId?.toJson(),
      'assignedToId': instance.assignedToId?.toJson(),
      'resolvedAt': instance.resolvedAt?.toJson(),
      'resolvedBy': instance.resolvedBy?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ModerationReportListRelationFilterImpl
    _$$ModerationReportListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ModerationReportListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ModerationReportWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ModerationReportWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ModerationReportWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ModerationReportListRelationFilterImplToJson(
        _$ModerationReportListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ModerationReportRelationFilterImpl
    _$$ModerationReportRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ModerationReportRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ModerationReportWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ModerationReportWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ModerationReportRelationFilterImplToJson(
        _$ModerationReportRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ModerationReportOrderByInputImpl _$$ModerationReportOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationReportOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      reason: $enumDecodeNullable(_$SortOrderEnumMap, json['reason']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      reportCount: $enumDecodeNullable(_$SortOrderEnumMap, json['reportCount']),
      contentText: $enumDecodeNullable(_$SortOrderEnumMap, json['contentText']),
      contentUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['contentUrl']),
      reportedById:
          $enumDecodeNullable(_$SortOrderEnumMap, json['reportedById']),
      targetUserId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['targetUserId']),
      reviewId: $enumDecodeNullable(_$SortOrderEnumMap, json['reviewId']),
      assignedToId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['assignedToId']),
      resolvedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['resolvedAt']),
      resolvedBy: $enumDecodeNullable(_$SortOrderEnumMap, json['resolvedBy']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ModerationReportOrderByInputImplToJson(
        _$ModerationReportOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'reason': _$SortOrderEnumMap[instance.reason],
      'description': _$SortOrderEnumMap[instance.description],
      'reportCount': _$SortOrderEnumMap[instance.reportCount],
      'contentText': _$SortOrderEnumMap[instance.contentText],
      'contentUrl': _$SortOrderEnumMap[instance.contentUrl],
      'reportedById': _$SortOrderEnumMap[instance.reportedById],
      'targetUserId': _$SortOrderEnumMap[instance.targetUserId],
      'reviewId': _$SortOrderEnumMap[instance.reviewId],
      'assignedToId': _$SortOrderEnumMap[instance.assignedToId],
      'resolvedAt': _$SortOrderEnumMap[instance.resolvedAt],
      'resolvedBy': _$SortOrderEnumMap[instance.resolvedBy],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
