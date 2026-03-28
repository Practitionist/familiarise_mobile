// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar_collaborator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarCollaboratorImpl _$$WebinarCollaboratorImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarCollaboratorImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      webinarPlanId: json['webinarPlanId'] as String,
      role:
          $enumDecodeNullable(_$WebinarCollaboratorRoleEnumMap, json['role']) ??
              WebinarCollaboratorRole.coHost,
      permissions: json['permissions'] as Map<String, dynamic>?,
      revenueSharePercentage:
          (json['revenueSharePercentage'] as num).toDouble(),
      status:
          $enumDecodeNullable(_$CollaboratorStatusEnumMap, json['status']) ??
              CollaboratorStatus.pending,
      invitedById: json['invitedById'] as String,
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WebinarCollaboratorImplToJson(
        _$WebinarCollaboratorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'webinarPlanId': instance.webinarPlanId,
      'role': _$WebinarCollaboratorRoleEnumMap[instance.role]!,
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status]!,
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$WebinarCollaboratorRoleEnumMap = {
  WebinarCollaboratorRole.coHost: 'CO_HOST',
  WebinarCollaboratorRole.moderator: 'MODERATOR',
  WebinarCollaboratorRole.guestSpeaker: 'GUEST_SPEAKER',
  WebinarCollaboratorRole.technicalSupport: 'TECHNICAL_SUPPORT',
};

const _$CollaboratorStatusEnumMap = {
  CollaboratorStatus.pending: 'PENDING',
  CollaboratorStatus.accepted: 'ACCEPTED',
  CollaboratorStatus.declined: 'DECLINED',
  CollaboratorStatus.removed: 'REMOVED',
};

_$CreateWebinarCollaboratorInputImpl
    _$$CreateWebinarCollaboratorInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateWebinarCollaboratorInputImpl(
          consultantProfileId: json['consultantProfileId'] as String,
          webinarPlanId: json['webinarPlanId'] as String,
          role: $enumDecodeNullable(
                  _$WebinarCollaboratorRoleEnumMap, json['role']) ??
              WebinarCollaboratorRole.coHost,
          permissions: json['permissions'] as Map<String, dynamic>?,
          revenueSharePercentage:
              (json['revenueSharePercentage'] as num).toDouble(),
          status: $enumDecodeNullable(
                  _$CollaboratorStatusEnumMap, json['status']) ??
              CollaboratorStatus.pending,
          invitedById: json['invitedById'] as String,
          respondedAt: json['respondedAt'] == null
              ? null
              : DateTime.parse(json['respondedAt'] as String),
        );

Map<String, dynamic> _$$CreateWebinarCollaboratorInputImplToJson(
        _$CreateWebinarCollaboratorInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'webinarPlanId': instance.webinarPlanId,
      'role': _$WebinarCollaboratorRoleEnumMap[instance.role]!,
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status]!,
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
    };

_$UpdateWebinarCollaboratorInputImpl
    _$$UpdateWebinarCollaboratorInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateWebinarCollaboratorInputImpl(
          consultantProfileId: json['consultantProfileId'] as String?,
          webinarPlanId: json['webinarPlanId'] as String?,
          role: $enumDecodeNullable(
              _$WebinarCollaboratorRoleEnumMap, json['role']),
          permissions: json['permissions'] as Map<String, dynamic>?,
          revenueSharePercentage:
              (json['revenueSharePercentage'] as num?)?.toDouble(),
          status:
              $enumDecodeNullable(_$CollaboratorStatusEnumMap, json['status']),
          invitedById: json['invitedById'] as String?,
          respondedAt: json['respondedAt'] == null
              ? null
              : DateTime.parse(json['respondedAt'] as String),
        );

Map<String, dynamic> _$$UpdateWebinarCollaboratorInputImplToJson(
        _$UpdateWebinarCollaboratorInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'webinarPlanId': instance.webinarPlanId,
      'role': _$WebinarCollaboratorRoleEnumMap[instance.role],
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status],
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
    };

_$WebinarCollaboratorWhereUniqueInputImpl
    _$$WebinarCollaboratorWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$WebinarCollaboratorWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$WebinarCollaboratorWhereUniqueInputImplToJson(
        _$WebinarCollaboratorWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$WebinarCollaboratorWhereInputImpl
    _$$WebinarCollaboratorWhereInputImplFromJson(Map<String, dynamic> json) =>
        _$WebinarCollaboratorWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          consultantProfileId: json['consultantProfileId'] == null
              ? null
              : StringFilter.fromJson(
                  json['consultantProfileId'] as Map<String, dynamic>),
          webinarPlanId: json['webinarPlanId'] == null
              ? null
              : StringFilter.fromJson(
                  json['webinarPlanId'] as Map<String, dynamic>),
          role: json['role'] == null
              ? null
              : WebinarCollaboratorRoleFilter.fromJson(
                  json['role'] as Map<String, dynamic>),
          revenueSharePercentage: json['revenueSharePercentage'] == null
              ? null
              : FloatFilter.fromJson(
                  json['revenueSharePercentage'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : CollaboratorStatusFilter.fromJson(
                  json['status'] as Map<String, dynamic>),
          invitedById: json['invitedById'] == null
              ? null
              : StringFilter.fromJson(
                  json['invitedById'] as Map<String, dynamic>),
          respondedAt: json['respondedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['respondedAt'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          consultantProfile: json['consultantProfile'] == null
              ? null
              : ConsultantProfileRelationFilter.fromJson(
                  json['consultantProfile'] as Map<String, dynamic>),
          webinarPlan: json['webinarPlan'] == null
              ? null
              : WebinarPlanRelationFilter.fromJson(
                  json['webinarPlan'] as Map<String, dynamic>),
          invitedBy: json['invitedBy'] == null
              ? null
              : ConsultantProfileRelationFilter.fromJson(
                  json['invitedBy'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => WebinarCollaboratorWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => WebinarCollaboratorWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WebinarCollaboratorWhereInputImplToJson(
        _$WebinarCollaboratorWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'webinarPlanId': instance.webinarPlanId?.toJson(),
      'role': instance.role?.toJson(),
      'revenueSharePercentage': instance.revenueSharePercentage?.toJson(),
      'status': instance.status?.toJson(),
      'invitedById': instance.invitedById?.toJson(),
      'respondedAt': instance.respondedAt?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'webinarPlan': instance.webinarPlan?.toJson(),
      'invitedBy': instance.invitedBy?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$WebinarCollaboratorListRelationFilterImpl
    _$$WebinarCollaboratorListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$WebinarCollaboratorListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WebinarCollaboratorListRelationFilterImplToJson(
        _$WebinarCollaboratorListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WebinarCollaboratorRelationFilterImpl
    _$$WebinarCollaboratorRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$WebinarCollaboratorRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : WebinarCollaboratorWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WebinarCollaboratorRelationFilterImplToJson(
        _$WebinarCollaboratorRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WebinarCollaboratorOrderByInputImpl
    _$$WebinarCollaboratorOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$WebinarCollaboratorOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          webinarPlanId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['webinarPlanId']),
          revenueSharePercentage: $enumDecodeNullable(
              _$SortOrderEnumMap, json['revenueSharePercentage']),
          invitedById:
              $enumDecodeNullable(_$SortOrderEnumMap, json['invitedById']),
          respondedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['respondedAt']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$WebinarCollaboratorOrderByInputImplToJson(
        _$WebinarCollaboratorOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'webinarPlanId': _$SortOrderEnumMap[instance.webinarPlanId],
      'revenueSharePercentage':
          _$SortOrderEnumMap[instance.revenueSharePercentage],
      'invitedById': _$SortOrderEnumMap[instance.invitedById],
      'respondedAt': _$SortOrderEnumMap[instance.respondedAt],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
