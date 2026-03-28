// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      domainId: json['domainId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'domainId': instance.domainId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateTagInputImpl _$$CreateTagInputImplFromJson(Map<String, dynamic> json) =>
    _$CreateTagInputImpl(
      name: json['name'] as String,
      domainId: json['domainId'] as String,
    );

Map<String, dynamic> _$$CreateTagInputImplToJson(
        _$CreateTagInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'domainId': instance.domainId,
    };

_$UpdateTagInputImpl _$$UpdateTagInputImplFromJson(Map<String, dynamic> json) =>
    _$UpdateTagInputImpl(
      name: json['name'] as String?,
      domainId: json['domainId'] as String?,
    );

Map<String, dynamic> _$$UpdateTagInputImplToJson(
        _$UpdateTagInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'domainId': instance.domainId,
    };

_$TagWhereUniqueInputImpl _$$TagWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TagWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TagWhereUniqueInputImplToJson(
        _$TagWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$TagWhereInputImpl _$$TagWhereInputImplFromJson(Map<String, dynamic> json) =>
    _$TagWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      domain: json['domain'] == null
          ? null
          : DomainRelationFilter.fromJson(
              json['domain'] as Map<String, dynamic>),
      domainId: json['domainId'] == null
          ? null
          : StringFilter.fromJson(json['domainId'] as Map<String, dynamic>),
      consultantProfiles: json['consultantProfiles'] == null
          ? null
          : ConsultantProfileListRelationFilter.fromJson(
              json['consultantProfiles'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TagWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TagWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : TagWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagWhereInputImplToJson(_$TagWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'domain': instance.domain?.toJson(),
      'domainId': instance.domainId?.toJson(),
      'consultantProfiles': instance.consultantProfiles?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$TagListRelationFilterImpl _$$TagListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TagListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : TagWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : TagWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TagWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagListRelationFilterImplToJson(
        _$TagListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$TagRelationFilterImpl _$$TagRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TagRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : TagWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : TagWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagRelationFilterImplToJson(
        _$TagRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$TagOrderByInputImpl _$$TagOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TagOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      domainId: $enumDecodeNullable(_$SortOrderEnumMap, json['domainId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$TagOrderByInputImplToJson(
        _$TagOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'name': _$SortOrderEnumMap[instance.name],
      'domainId': _$SortOrderEnumMap[instance.domainId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
