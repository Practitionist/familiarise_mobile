// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationImpl _$$OrganizationImplFromJson(Map<String, dynamic> json) =>
    _$OrganizationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      logo: json['logo'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
      invitations: (json['invitations'] as List<dynamic>)
          .map((e) => Invitation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$OrganizationImplToJson(_$OrganizationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'metadata': instance.metadata,
      'members': instance.members,
      'invitations': instance.invitations,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateOrganizationInputImpl _$$CreateOrganizationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrganizationInputImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      logo: json['logo'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CreateOrganizationInputImplToJson(
        _$CreateOrganizationInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'metadata': instance.metadata,
    };

_$UpdateOrganizationInputImpl _$$UpdateOrganizationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrganizationInputImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      logo: json['logo'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UpdateOrganizationInputImplToJson(
        _$UpdateOrganizationInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'metadata': instance.metadata,
    };

_$OrganizationWhereUniqueInputImpl _$$OrganizationWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationWhereUniqueInputImpl(
      id: json['id'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$OrganizationWhereUniqueInputImplToJson(
        _$OrganizationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
    };

_$OrganizationWhereInputImpl _$$OrganizationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : StringFilter.fromJson(json['slug'] as Map<String, dynamic>),
      logo: json['logo'] == null
          ? null
          : StringFilter.fromJson(json['logo'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => OrganizationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => OrganizationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : OrganizationWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrganizationWhereInputImplToJson(
        _$OrganizationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'slug': instance.slug?.toJson(),
      'logo': instance.logo?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$OrganizationListRelationFilterImpl
    _$$OrganizationListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$OrganizationListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : OrganizationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : OrganizationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : OrganizationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$OrganizationListRelationFilterImplToJson(
        _$OrganizationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$OrganizationRelationFilterImpl _$$OrganizationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : OrganizationWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : OrganizationWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrganizationRelationFilterImplToJson(
        _$OrganizationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$OrganizationOrderByInputImpl _$$OrganizationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      slug: $enumDecodeNullable(_$SortOrderEnumMap, json['slug']),
      logo: $enumDecodeNullable(_$SortOrderEnumMap, json['logo']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$OrganizationOrderByInputImplToJson(
        _$OrganizationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'name': _$SortOrderEnumMap[instance.name],
      'slug': _$SortOrderEnumMap[instance.slug],
      'logo': _$SortOrderEnumMap[instance.logo],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
