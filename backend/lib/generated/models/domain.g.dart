// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DomainImpl _$$DomainImplFromJson(Map<String, dynamic> json) => _$DomainImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      subDomains: (json['subDomains'] as List<dynamic>)
          .map((e) => SubDomain.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      consultantProfiles: (json['consultantProfiles'] as List<dynamic>)
          .map((e) => ConsultantProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DomainImplToJson(_$DomainImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subDomains': instance.subDomains,
      'tags': instance.tags,
      'consultantProfiles': instance.consultantProfiles,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateDomainInputImpl _$$CreateDomainInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDomainInputImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CreateDomainInputImplToJson(
        _$CreateDomainInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$UpdateDomainInputImpl _$$UpdateDomainInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateDomainInputImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UpdateDomainInputImplToJson(
        _$UpdateDomainInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$DomainWhereUniqueInputImpl _$$DomainWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainWhereUniqueInputImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DomainWhereUniqueInputImplToJson(
        _$DomainWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$DomainWhereInputImpl _$$DomainWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => DomainWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => DomainWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : DomainWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DomainWhereInputImplToJson(
        _$DomainWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$DomainListRelationFilterImpl _$$DomainListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : DomainWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : DomainWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : DomainWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DomainListRelationFilterImplToJson(
        _$DomainListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$DomainRelationFilterImpl _$$DomainRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : DomainWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : DomainWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DomainRelationFilterImplToJson(
        _$DomainRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$DomainOrderByInputImpl _$$DomainOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$DomainOrderByInputImplToJson(
        _$DomainOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'name': _$SortOrderEnumMap[instance.name],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
