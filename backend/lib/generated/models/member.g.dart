// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: json['id'] as String,
      organizationId: json['organizationId'] as String,
      userId: json['userId'] as String,
      role: json['role'] as String? ?? "member",
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationId': instance.organizationId,
      'userId': instance.userId,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreateMemberInputImpl _$$CreateMemberInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMemberInputImpl(
      organizationId: json['organizationId'] as String,
      userId: json['userId'] as String,
      role: json['role'] as String? ?? "member",
    );

Map<String, dynamic> _$$CreateMemberInputImplToJson(
        _$CreateMemberInputImpl instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'userId': instance.userId,
      'role': instance.role,
    };

_$UpdateMemberInputImpl _$$UpdateMemberInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMemberInputImpl(
      organizationId: json['organizationId'] as String?,
      userId: json['userId'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UpdateMemberInputImplToJson(
        _$UpdateMemberInputImpl instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'userId': instance.userId,
      'role': instance.role,
    };

_$MemberWhereUniqueInputImpl _$$MemberWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$MemberWhereUniqueInputImplToJson(
        _$MemberWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$MemberWhereInputImpl _$$MemberWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      organizationId: json['organizationId'] == null
          ? null
          : StringFilter.fromJson(
              json['organizationId'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : StringFilter.fromJson(json['role'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : OrganizationRelationFilter.fromJson(
              json['organization'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => MemberWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => MemberWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : MemberWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberWhereInputImplToJson(
        _$MemberWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'organizationId': instance.organizationId?.toJson(),
      'userId': instance.userId?.toJson(),
      'role': instance.role?.toJson(),
      'organization': instance.organization?.toJson(),
      'user': instance.user?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$MemberListRelationFilterImpl _$$MemberListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : MemberWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : MemberWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : MemberWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberListRelationFilterImplToJson(
        _$MemberListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$MemberRelationFilterImpl _$$MemberRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : MemberWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : MemberWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberRelationFilterImplToJson(
        _$MemberRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$MemberOrderByInputImpl _$$MemberOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      organizationId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['organizationId']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
    );

Map<String, dynamic> _$$MemberOrderByInputImplToJson(
        _$MemberOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'organizationId': _$SortOrderEnumMap[instance.organizationId],
      'userId': _$SortOrderEnumMap[instance.userId],
      'role': _$SortOrderEnumMap[instance.role],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
