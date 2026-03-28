// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvitationImpl _$$InvitationImplFromJson(Map<String, dynamic> json) =>
    _$InvitationImpl(
      id: json['id'] as String,
      organizationId: json['organizationId'] as String,
      email: json['email'] as String,
      role: json['role'] as String? ?? "member",
      status: json['status'] as String? ?? "pending",
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      inviterId: json['inviterId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$InvitationImplToJson(_$InvitationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationId': instance.organizationId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'inviterId': instance.inviterId,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreateInvitationInputImpl _$$CreateInvitationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateInvitationInputImpl(
      organizationId: json['organizationId'] as String,
      email: json['email'] as String,
      role: json['role'] as String? ?? "member",
      status: json['status'] as String? ?? "pending",
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      inviterId: json['inviterId'] as String,
    );

Map<String, dynamic> _$$CreateInvitationInputImplToJson(
        _$CreateInvitationInputImpl instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'inviterId': instance.inviterId,
    };

_$UpdateInvitationInputImpl _$$UpdateInvitationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateInvitationInputImpl(
      organizationId: json['organizationId'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      inviterId: json['inviterId'] as String?,
    );

Map<String, dynamic> _$$UpdateInvitationInputImplToJson(
        _$UpdateInvitationInputImpl instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'inviterId': instance.inviterId,
    };

_$InvitationWhereUniqueInputImpl _$$InvitationWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$InvitationWhereUniqueInputImplToJson(
        _$InvitationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$InvitationWhereInputImpl _$$InvitationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      organizationId: json['organizationId'] == null
          ? null
          : StringFilter.fromJson(
              json['organizationId'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : StringFilter.fromJson(json['role'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StringFilter.fromJson(json['status'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      inviterId: json['inviterId'] == null
          ? null
          : StringFilter.fromJson(json['inviterId'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : OrganizationRelationFilter.fromJson(
              json['organization'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => InvitationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => InvitationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : InvitationWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvitationWhereInputImplToJson(
        _$InvitationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'organizationId': instance.organizationId?.toJson(),
      'email': instance.email?.toJson(),
      'role': instance.role?.toJson(),
      'status': instance.status?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'inviterId': instance.inviterId?.toJson(),
      'organization': instance.organization?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$InvitationListRelationFilterImpl _$$InvitationListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : InvitationWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : InvitationWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : InvitationWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvitationListRelationFilterImplToJson(
        _$InvitationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$InvitationRelationFilterImpl _$$InvitationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : InvitationWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : InvitationWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvitationRelationFilterImplToJson(
        _$InvitationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$InvitationOrderByInputImpl _$$InvitationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      organizationId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['organizationId']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      inviterId: $enumDecodeNullable(_$SortOrderEnumMap, json['inviterId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
    );

Map<String, dynamic> _$$InvitationOrderByInputImplToJson(
        _$InvitationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'organizationId': _$SortOrderEnumMap[instance.organizationId],
      'email': _$SortOrderEnumMap[instance.email],
      'role': _$SortOrderEnumMap[instance.role],
      'status': _$SortOrderEnumMap[instance.status],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'inviterId': _$SortOrderEnumMap[instance.inviterId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
