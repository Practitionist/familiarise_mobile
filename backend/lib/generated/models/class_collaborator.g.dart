// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_collaborator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassCollaboratorImpl _$$ClassCollaboratorImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassCollaboratorImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      classPlanId: json['classPlanId'] as String,
      role: $enumDecodeNullable(_$ClassCollaboratorRoleEnumMap, json['role']) ??
          ClassCollaboratorRole.coInstructor,
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

Map<String, dynamic> _$$ClassCollaboratorImplToJson(
        _$ClassCollaboratorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'classPlanId': instance.classPlanId,
      'role': _$ClassCollaboratorRoleEnumMap[instance.role]!,
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status]!,
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ClassCollaboratorRoleEnumMap = {
  ClassCollaboratorRole.coInstructor: 'CO_INSTRUCTOR',
  ClassCollaboratorRole.teachingAssistant: 'TEACHING_ASSISTANT',
  ClassCollaboratorRole.guestLecturer: 'GUEST_LECTURER',
  ClassCollaboratorRole.contentCreator: 'CONTENT_CREATOR',
};

const _$CollaboratorStatusEnumMap = {
  CollaboratorStatus.pending: 'PENDING',
  CollaboratorStatus.accepted: 'ACCEPTED',
  CollaboratorStatus.declined: 'DECLINED',
  CollaboratorStatus.removed: 'REMOVED',
};

_$CreateClassCollaboratorInputImpl _$$CreateClassCollaboratorInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassCollaboratorInputImpl(
      consultantProfileId: json['consultantProfileId'] as String,
      classPlanId: json['classPlanId'] as String,
      role: $enumDecodeNullable(_$ClassCollaboratorRoleEnumMap, json['role']) ??
          ClassCollaboratorRole.coInstructor,
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
    );

Map<String, dynamic> _$$CreateClassCollaboratorInputImplToJson(
        _$CreateClassCollaboratorInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'classPlanId': instance.classPlanId,
      'role': _$ClassCollaboratorRoleEnumMap[instance.role]!,
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status]!,
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
    };

_$UpdateClassCollaboratorInputImpl _$$UpdateClassCollaboratorInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassCollaboratorInputImpl(
      consultantProfileId: json['consultantProfileId'] as String?,
      classPlanId: json['classPlanId'] as String?,
      role: $enumDecodeNullable(_$ClassCollaboratorRoleEnumMap, json['role']),
      permissions: json['permissions'] as Map<String, dynamic>?,
      revenueSharePercentage:
          (json['revenueSharePercentage'] as num?)?.toDouble(),
      status: $enumDecodeNullable(_$CollaboratorStatusEnumMap, json['status']),
      invitedById: json['invitedById'] as String?,
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
    );

Map<String, dynamic> _$$UpdateClassCollaboratorInputImplToJson(
        _$UpdateClassCollaboratorInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'classPlanId': instance.classPlanId,
      'role': _$ClassCollaboratorRoleEnumMap[instance.role],
      'permissions': instance.permissions,
      'revenueSharePercentage': instance.revenueSharePercentage,
      'status': _$CollaboratorStatusEnumMap[instance.status],
      'invitedById': instance.invitedById,
      'respondedAt': instance.respondedAt?.toIso8601String(),
    };

_$ClassCollaboratorWhereUniqueInputImpl
    _$$ClassCollaboratorWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ClassCollaboratorWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ClassCollaboratorWhereUniqueInputImplToJson(
        _$ClassCollaboratorWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ClassCollaboratorWhereInputImpl _$$ClassCollaboratorWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassCollaboratorWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      classPlanId: json['classPlanId'] == null
          ? null
          : StringFilter.fromJson(json['classPlanId'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : ClassCollaboratorRoleFilter.fromJson(
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
          : StringFilter.fromJson(json['invitedById'] as Map<String, dynamic>),
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['respondedAt'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      classPlan: json['classPlan'] == null
          ? null
          : ClassPlanRelationFilter.fromJson(
              json['classPlan'] as Map<String, dynamic>),
      invitedBy: json['invitedBy'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['invitedBy'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ClassCollaboratorWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ClassCollaboratorWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ClassCollaboratorWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassCollaboratorWhereInputImplToJson(
        _$ClassCollaboratorWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'classPlanId': instance.classPlanId?.toJson(),
      'role': instance.role?.toJson(),
      'revenueSharePercentage': instance.revenueSharePercentage?.toJson(),
      'status': instance.status?.toJson(),
      'invitedById': instance.invitedById?.toJson(),
      'respondedAt': instance.respondedAt?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'classPlan': instance.classPlan?.toJson(),
      'invitedBy': instance.invitedBy?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ClassCollaboratorListRelationFilterImpl
    _$$ClassCollaboratorListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ClassCollaboratorListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ClassCollaboratorWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ClassCollaboratorWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ClassCollaboratorWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ClassCollaboratorListRelationFilterImplToJson(
        _$ClassCollaboratorListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ClassCollaboratorRelationFilterImpl
    _$$ClassCollaboratorRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ClassCollaboratorRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ClassCollaboratorWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ClassCollaboratorWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ClassCollaboratorRelationFilterImplToJson(
        _$ClassCollaboratorRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ClassCollaboratorOrderByInputImpl
    _$$ClassCollaboratorOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$ClassCollaboratorOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          classPlanId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['classPlanId']),
          revenueSharePercentage: $enumDecodeNullable(
              _$SortOrderEnumMap, json['revenueSharePercentage']),
          invitedById:
              $enumDecodeNullable(_$SortOrderEnumMap, json['invitedById']),
          respondedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['respondedAt']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$ClassCollaboratorOrderByInputImplToJson(
        _$ClassCollaboratorOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'classPlanId': _$SortOrderEnumMap[instance.classPlanId],
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
