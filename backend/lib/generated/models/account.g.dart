// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      accountId: json['accountId'] as String,
      providerId: json['providerId'] as String,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['accessTokenExpiresAt'] as String),
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpiresAt'] as String),
      scope: json['scope'] as String?,
      idToken: json['idToken'] as String?,
      password: json['password'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accountId': instance.accountId,
      'providerId': instance.providerId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
      'refreshTokenExpiresAt':
          instance.refreshTokenExpiresAt?.toIso8601String(),
      'scope': instance.scope,
      'idToken': instance.idToken,
      'password': instance.password,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateAccountInputImpl _$$CreateAccountInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountInputImpl(
      userId: json['userId'] as String,
      accountId: json['accountId'] as String,
      providerId: json['providerId'] as String,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['accessTokenExpiresAt'] as String),
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpiresAt'] as String),
      scope: json['scope'] as String?,
      idToken: json['idToken'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$CreateAccountInputImplToJson(
        _$CreateAccountInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accountId': instance.accountId,
      'providerId': instance.providerId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
      'refreshTokenExpiresAt':
          instance.refreshTokenExpiresAt?.toIso8601String(),
      'scope': instance.scope,
      'idToken': instance.idToken,
      'password': instance.password,
    };

_$UpdateAccountInputImpl _$$UpdateAccountInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAccountInputImpl(
      userId: json['userId'] as String?,
      accountId: json['accountId'] as String?,
      providerId: json['providerId'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['accessTokenExpiresAt'] as String),
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpiresAt'] as String),
      scope: json['scope'] as String?,
      idToken: json['idToken'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UpdateAccountInputImplToJson(
        _$UpdateAccountInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accountId': instance.accountId,
      'providerId': instance.providerId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
      'refreshTokenExpiresAt':
          instance.refreshTokenExpiresAt?.toIso8601String(),
      'scope': instance.scope,
      'idToken': instance.idToken,
      'password': instance.password,
    };

_$AccountWhereUniqueInputImpl _$$AccountWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$AccountWhereUniqueInputImplToJson(
        _$AccountWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$AccountWhereInputImpl _$$AccountWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      accountId: json['accountId'] == null
          ? null
          : StringFilter.fromJson(json['accountId'] as Map<String, dynamic>),
      providerId: json['providerId'] == null
          ? null
          : StringFilter.fromJson(json['providerId'] as Map<String, dynamic>),
      accessToken: json['accessToken'] == null
          ? null
          : StringFilter.fromJson(json['accessToken'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] == null
          ? null
          : StringFilter.fromJson(json['refreshToken'] as Map<String, dynamic>),
      accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['accessTokenExpiresAt'] as Map<String, dynamic>),
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['refreshTokenExpiresAt'] as Map<String, dynamic>),
      scope: json['scope'] == null
          ? null
          : StringFilter.fromJson(json['scope'] as Map<String, dynamic>),
      idToken: json['idToken'] == null
          ? null
          : StringFilter.fromJson(json['idToken'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
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
          ?.map((e) => AccountWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => AccountWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : AccountWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountWhereInputImplToJson(
        _$AccountWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'userId': instance.userId?.toJson(),
      'accountId': instance.accountId?.toJson(),
      'providerId': instance.providerId?.toJson(),
      'accessToken': instance.accessToken?.toJson(),
      'refreshToken': instance.refreshToken?.toJson(),
      'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toJson(),
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt?.toJson(),
      'scope': instance.scope?.toJson(),
      'idToken': instance.idToken?.toJson(),
      'password': instance.password?.toJson(),
      'user': instance.user?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AccountListRelationFilterImpl _$$AccountListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : AccountWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : AccountWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AccountWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountListRelationFilterImplToJson(
        _$AccountListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AccountRelationFilterImpl _$$AccountRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : AccountWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AccountWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountRelationFilterImplToJson(
        _$AccountRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AccountOrderByInputImpl _$$AccountOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['accountId']),
      providerId: $enumDecodeNullable(_$SortOrderEnumMap, json['providerId']),
      accessToken: $enumDecodeNullable(_$SortOrderEnumMap, json['accessToken']),
      refreshToken:
          $enumDecodeNullable(_$SortOrderEnumMap, json['refreshToken']),
      accessTokenExpiresAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['accessTokenExpiresAt']),
      refreshTokenExpiresAt: $enumDecodeNullable(
          _$SortOrderEnumMap, json['refreshTokenExpiresAt']),
      scope: $enumDecodeNullable(_$SortOrderEnumMap, json['scope']),
      idToken: $enumDecodeNullable(_$SortOrderEnumMap, json['idToken']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$AccountOrderByInputImplToJson(
        _$AccountOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'userId': _$SortOrderEnumMap[instance.userId],
      'accountId': _$SortOrderEnumMap[instance.accountId],
      'providerId': _$SortOrderEnumMap[instance.providerId],
      'accessToken': _$SortOrderEnumMap[instance.accessToken],
      'refreshToken': _$SortOrderEnumMap[instance.refreshToken],
      'accessTokenExpiresAt': _$SortOrderEnumMap[instance.accessTokenExpiresAt],
      'refreshTokenExpiresAt':
          _$SortOrderEnumMap[instance.refreshTokenExpiresAt],
      'scope': _$SortOrderEnumMap[instance.scope],
      'idToken': _$SortOrderEnumMap[instance.idToken],
      'password': _$SortOrderEnumMap[instance.password],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
