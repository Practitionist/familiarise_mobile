// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminProfileImpl _$$AdminProfileImplFromJson(Map<String, dynamic> json) =>
    _$AdminProfileImpl(
      id: json['id'] as String,
      adminLevel: $enumDecode(_$AdminLevelEnumMap, json['adminLevel']),
      notes: json['notes'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AdminProfileImplToJson(_$AdminProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adminLevel': _$AdminLevelEnumMap[instance.adminLevel]!,
      'notes': instance.notes,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AdminLevelEnumMap = {
  AdminLevel.superAdmin: 'SUPER_ADMIN',
  AdminLevel.admin: 'ADMIN',
  AdminLevel.moderator: 'MODERATOR',
};

_$CreateAdminProfileInputImpl _$$CreateAdminProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAdminProfileInputImpl(
      adminLevel: $enumDecode(_$AdminLevelEnumMap, json['adminLevel']),
      notes: json['notes'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateAdminProfileInputImplToJson(
        _$CreateAdminProfileInputImpl instance) =>
    <String, dynamic>{
      'adminLevel': _$AdminLevelEnumMap[instance.adminLevel]!,
      'notes': instance.notes,
      'userId': instance.userId,
    };

_$UpdateAdminProfileInputImpl _$$UpdateAdminProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAdminProfileInputImpl(
      adminLevel: $enumDecodeNullable(_$AdminLevelEnumMap, json['adminLevel']),
      notes: json['notes'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateAdminProfileInputImplToJson(
        _$UpdateAdminProfileInputImpl instance) =>
    <String, dynamic>{
      'adminLevel': _$AdminLevelEnumMap[instance.adminLevel],
      'notes': instance.notes,
      'userId': instance.userId,
    };

_$AdminProfileWhereUniqueInputImpl _$$AdminProfileWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProfileWhereUniqueInputImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$AdminProfileWhereUniqueInputImplToJson(
        _$AdminProfileWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$AdminProfileWhereInputImpl _$$AdminProfileWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProfileWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      adminLevel: json['adminLevel'] == null
          ? null
          : AdminLevelFilter.fromJson(
              json['adminLevel'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringFilter.fromJson(json['notes'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => AdminProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => AdminProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : AdminProfileWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminProfileWhereInputImplToJson(
        _$AdminProfileWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'adminLevel': instance.adminLevel?.toJson(),
      'notes': instance.notes?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AdminProfileListRelationFilterImpl
    _$$AdminProfileListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$AdminProfileListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : AdminProfileWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : AdminProfileWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : AdminProfileWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AdminProfileListRelationFilterImplToJson(
        _$AdminProfileListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AdminProfileRelationFilterImpl _$$AdminProfileRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProfileRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : AdminProfileWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AdminProfileWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminProfileRelationFilterImplToJson(
        _$AdminProfileRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AdminProfileOrderByInputImpl _$$AdminProfileOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProfileOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      notes: $enumDecodeNullable(_$SortOrderEnumMap, json['notes']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$AdminProfileOrderByInputImplToJson(
        _$AdminProfileOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'notes': _$SortOrderEnumMap[instance.notes],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
