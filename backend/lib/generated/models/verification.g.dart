// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationImpl _$$VerificationImplFromJson(Map<String, dynamic> json) =>
    _$VerificationImpl(
      id: json['id'] as String,
      identifier: json['identifier'] as String,
      value: json['value'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$VerificationImplToJson(_$VerificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'value': instance.value,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateVerificationInputImpl _$$CreateVerificationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateVerificationInputImpl(
      identifier: json['identifier'] as String,
      value: json['value'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$CreateVerificationInputImplToJson(
        _$CreateVerificationInputImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };

_$UpdateVerificationInputImpl _$$UpdateVerificationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateVerificationInputImpl(
      identifier: json['identifier'] as String?,
      value: json['value'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$UpdateVerificationInputImplToJson(
        _$UpdateVerificationInputImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

_$VerificationWhereUniqueInputImpl _$$VerificationWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VerificationWhereUniqueInputImplToJson(
        _$VerificationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$VerificationWhereInputImpl _$$VerificationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : StringFilter.fromJson(json['identifier'] as Map<String, dynamic>),
      value: json['value'] == null
          ? null
          : StringFilter.fromJson(json['value'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => VerificationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => VerificationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : VerificationWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationWhereInputImplToJson(
        _$VerificationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'value': instance.value?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$VerificationListRelationFilterImpl
    _$$VerificationListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$VerificationListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : VerificationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : VerificationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : VerificationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$VerificationListRelationFilterImplToJson(
        _$VerificationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$VerificationRelationFilterImpl _$$VerificationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : VerificationWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : VerificationWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationRelationFilterImplToJson(
        _$VerificationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$VerificationOrderByInputImpl _$$VerificationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      identifier: $enumDecodeNullable(_$SortOrderEnumMap, json['identifier']),
      value: $enumDecodeNullable(_$SortOrderEnumMap, json['value']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$VerificationOrderByInputImplToJson(
        _$VerificationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'identifier': _$SortOrderEnumMap[instance.identifier],
      'value': _$SortOrderEnumMap[instance.value],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
