// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      token: json['token'] as String,
      userId: json['userId'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'userId': instance.userId,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateSessionInputImpl _$$CreateSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSessionInputImpl(
      token: json['token'] as String,
      userId: json['userId'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$CreateSessionInputImplToJson(
        _$CreateSessionInputImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
    };

_$UpdateSessionInputImpl _$$UpdateSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSessionInputImpl(
      token: json['token'] as String?,
      userId: json['userId'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$UpdateSessionInputImplToJson(
        _$UpdateSessionInputImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
    };

_$SessionWhereUniqueInputImpl _$$SessionWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionWhereUniqueInputImpl(
      id: json['id'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$SessionWhereUniqueInputImplToJson(
        _$SessionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
    };

_$SessionWhereInputImpl _$$SessionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      token: json['token'] == null
          ? null
          : StringFilter.fromJson(json['token'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      ipAddress: json['ipAddress'] == null
          ? null
          : StringFilter.fromJson(json['ipAddress'] as Map<String, dynamic>),
      userAgent: json['userAgent'] == null
          ? null
          : StringFilter.fromJson(json['userAgent'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => SessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => SessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SessionWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SessionWhereInputImplToJson(
        _$SessionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'token': instance.token?.toJson(),
      'userId': instance.userId?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'ipAddress': instance.ipAddress?.toJson(),
      'userAgent': instance.userAgent?.toJson(),
      'user': instance.user?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SessionListRelationFilterImpl _$$SessionListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : SessionWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : SessionWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : SessionWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SessionListRelationFilterImplToJson(
        _$SessionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SessionRelationFilterImpl _$$SessionRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : SessionWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : SessionWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SessionRelationFilterImplToJson(
        _$SessionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SessionOrderByInputImpl _$$SessionOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      token: $enumDecodeNullable(_$SortOrderEnumMap, json['token']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      ipAddress: $enumDecodeNullable(_$SortOrderEnumMap, json['ipAddress']),
      userAgent: $enumDecodeNullable(_$SortOrderEnumMap, json['userAgent']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SessionOrderByInputImplToJson(
        _$SessionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'token': _$SortOrderEnumMap[instance.token],
      'userId': _$SortOrderEnumMap[instance.userId],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'ipAddress': _$SortOrderEnumMap[instance.ipAddress],
      'userAgent': _$SortOrderEnumMap[instance.userAgent],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
