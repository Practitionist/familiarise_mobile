// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkExperienceImpl _$$WorkExperienceImplFromJson(Map<String, dynamic> json) =>
    _$WorkExperienceImpl(
      id: json['id'] as String,
      company: json['company'] as String,
      companyDomain: json['companyDomain'] as String?,
      title: json['title'] as String,
      location: json['location'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isCurrent: json['isCurrent'] as bool? ?? false,
      description: json['description'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WorkExperienceImplToJson(
        _$WorkExperienceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'companyDomain': instance.companyDomain,
      'title': instance.title,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrent': instance.isCurrent,
      'description': instance.description,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateWorkExperienceInputImpl _$$CreateWorkExperienceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWorkExperienceInputImpl(
      company: json['company'] as String,
      companyDomain: json['companyDomain'] as String?,
      title: json['title'] as String,
      location: json['location'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isCurrent: json['isCurrent'] as bool? ?? false,
      description: json['description'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateWorkExperienceInputImplToJson(
        _$CreateWorkExperienceInputImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'companyDomain': instance.companyDomain,
      'title': instance.title,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrent': instance.isCurrent,
      'description': instance.description,
      'userId': instance.userId,
    };

_$UpdateWorkExperienceInputImpl _$$UpdateWorkExperienceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWorkExperienceInputImpl(
      company: json['company'] as String?,
      companyDomain: json['companyDomain'] as String?,
      title: json['title'] as String?,
      location: json['location'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isCurrent: json['isCurrent'] as bool?,
      description: json['description'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateWorkExperienceInputImplToJson(
        _$UpdateWorkExperienceInputImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'companyDomain': instance.companyDomain,
      'title': instance.title,
      'location': instance.location,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrent': instance.isCurrent,
      'description': instance.description,
      'userId': instance.userId,
    };

_$WorkExperienceWhereUniqueInputImpl
    _$$WorkExperienceWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$WorkExperienceWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$WorkExperienceWhereUniqueInputImplToJson(
        _$WorkExperienceWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$WorkExperienceWhereInputImpl _$$WorkExperienceWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : StringFilter.fromJson(json['company'] as Map<String, dynamic>),
      companyDomain: json['companyDomain'] == null
          ? null
          : StringFilter.fromJson(
              json['companyDomain'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : StringFilter.fromJson(json['location'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['endDate'] as Map<String, dynamic>),
      isCurrent: json['isCurrent'] == null
          ? null
          : BooleanFilter.fromJson(json['isCurrent'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
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
          ?.map((e) =>
              WorkExperienceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              WorkExperienceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : WorkExperienceWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WorkExperienceWhereInputImplToJson(
        _$WorkExperienceWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'company': instance.company?.toJson(),
      'companyDomain': instance.companyDomain?.toJson(),
      'title': instance.title?.toJson(),
      'location': instance.location?.toJson(),
      'startDate': instance.startDate?.toJson(),
      'endDate': instance.endDate?.toJson(),
      'isCurrent': instance.isCurrent?.toJson(),
      'description': instance.description?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$WorkExperienceListRelationFilterImpl
    _$$WorkExperienceListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$WorkExperienceListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : WorkExperienceWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : WorkExperienceWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : WorkExperienceWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WorkExperienceListRelationFilterImplToJson(
        _$WorkExperienceListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WorkExperienceRelationFilterImpl _$$WorkExperienceRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : WorkExperienceWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : WorkExperienceWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WorkExperienceRelationFilterImplToJson(
        _$WorkExperienceRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WorkExperienceOrderByInputImpl _$$WorkExperienceOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      company: $enumDecodeNullable(_$SortOrderEnumMap, json['company']),
      companyDomain:
          $enumDecodeNullable(_$SortOrderEnumMap, json['companyDomain']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      location: $enumDecodeNullable(_$SortOrderEnumMap, json['location']),
      startDate: $enumDecodeNullable(_$SortOrderEnumMap, json['startDate']),
      endDate: $enumDecodeNullable(_$SortOrderEnumMap, json['endDate']),
      isCurrent: $enumDecodeNullable(_$SortOrderEnumMap, json['isCurrent']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$WorkExperienceOrderByInputImplToJson(
        _$WorkExperienceOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'company': _$SortOrderEnumMap[instance.company],
      'companyDomain': _$SortOrderEnumMap[instance.companyDomain],
      'title': _$SortOrderEnumMap[instance.title],
      'location': _$SortOrderEnumMap[instance.location],
      'startDate': _$SortOrderEnumMap[instance.startDate],
      'endDate': _$SortOrderEnumMap[instance.endDate],
      'isCurrent': _$SortOrderEnumMap[instance.isCurrent],
      'description': _$SortOrderEnumMap[instance.description],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
