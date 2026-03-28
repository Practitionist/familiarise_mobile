// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubDomainImpl _$$SubDomainImplFromJson(Map<String, dynamic> json) =>
    _$SubDomainImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      domainId: json['domainId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SubDomainImplToJson(_$SubDomainImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'domainId': instance.domainId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateSubDomainInputImpl _$$CreateSubDomainInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSubDomainInputImpl(
      name: json['name'] as String,
      domainId: json['domainId'] as String,
    );

Map<String, dynamic> _$$CreateSubDomainInputImplToJson(
        _$CreateSubDomainInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'domainId': instance.domainId,
    };

_$UpdateSubDomainInputImpl _$$UpdateSubDomainInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSubDomainInputImpl(
      name: json['name'] as String?,
      domainId: json['domainId'] as String?,
    );

Map<String, dynamic> _$$UpdateSubDomainInputImplToJson(
        _$UpdateSubDomainInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'domainId': instance.domainId,
    };

_$SubDomainWhereUniqueInputImpl _$$SubDomainWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDomainWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SubDomainWhereUniqueInputImplToJson(
        _$SubDomainWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SubDomainWhereInputImpl _$$SubDomainWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDomainWhereInputImpl(
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
          ?.map((e) => SubDomainWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => SubDomainWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubDomainWhereInputImplToJson(
        _$SubDomainWhereInputImpl instance) =>
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

_$SubDomainListRelationFilterImpl _$$SubDomainListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDomainListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubDomainListRelationFilterImplToJson(
        _$SubDomainListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SubDomainRelationFilterImpl _$$SubDomainRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDomainRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : SubDomainWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubDomainRelationFilterImplToJson(
        _$SubDomainRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SubDomainOrderByInputImpl _$$SubDomainOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDomainOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      domainId: $enumDecodeNullable(_$SortOrderEnumMap, json['domainId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SubDomainOrderByInputImplToJson(
        _$SubDomainOrderByInputImpl instance) =>
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
