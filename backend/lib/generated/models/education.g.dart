// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationImpl _$$EducationImplFromJson(Map<String, dynamic> json) =>
    _$EducationImpl(
      id: json['id'] as String,
      institution: json['institution'] as String,
      institutionDomain: json['institutionDomain'] as String?,
      degree: json['degree'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      startYear: (json['startYear'] as num?)?.toInt(),
      endYear: (json['endYear'] as num?)?.toInt(),
      grade: json['grade'] as String?,
      activities: json['activities'] as String?,
      description: json['description'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EducationImplToJson(_$EducationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'institution': instance.institution,
      'institutionDomain': instance.institutionDomain,
      'degree': instance.degree,
      'fieldOfStudy': instance.fieldOfStudy,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'grade': instance.grade,
      'activities': instance.activities,
      'description': instance.description,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateEducationInputImpl _$$CreateEducationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEducationInputImpl(
      institution: json['institution'] as String,
      institutionDomain: json['institutionDomain'] as String?,
      degree: json['degree'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      startYear: (json['startYear'] as num?)?.toInt(),
      endYear: (json['endYear'] as num?)?.toInt(),
      grade: json['grade'] as String?,
      activities: json['activities'] as String?,
      description: json['description'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateEducationInputImplToJson(
        _$CreateEducationInputImpl instance) =>
    <String, dynamic>{
      'institution': instance.institution,
      'institutionDomain': instance.institutionDomain,
      'degree': instance.degree,
      'fieldOfStudy': instance.fieldOfStudy,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'grade': instance.grade,
      'activities': instance.activities,
      'description': instance.description,
      'userId': instance.userId,
    };

_$UpdateEducationInputImpl _$$UpdateEducationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEducationInputImpl(
      institution: json['institution'] as String?,
      institutionDomain: json['institutionDomain'] as String?,
      degree: json['degree'] as String?,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      startYear: (json['startYear'] as num?)?.toInt(),
      endYear: (json['endYear'] as num?)?.toInt(),
      grade: json['grade'] as String?,
      activities: json['activities'] as String?,
      description: json['description'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateEducationInputImplToJson(
        _$UpdateEducationInputImpl instance) =>
    <String, dynamic>{
      'institution': instance.institution,
      'institutionDomain': instance.institutionDomain,
      'degree': instance.degree,
      'fieldOfStudy': instance.fieldOfStudy,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'grade': instance.grade,
      'activities': instance.activities,
      'description': instance.description,
      'userId': instance.userId,
    };

_$EducationWhereUniqueInputImpl _$$EducationWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$EducationWhereUniqueInputImplToJson(
        _$EducationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$EducationWhereInputImpl _$$EducationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      institution: json['institution'] == null
          ? null
          : StringFilter.fromJson(json['institution'] as Map<String, dynamic>),
      institutionDomain: json['institutionDomain'] == null
          ? null
          : StringFilter.fromJson(
              json['institutionDomain'] as Map<String, dynamic>),
      degree: json['degree'] == null
          ? null
          : StringFilter.fromJson(json['degree'] as Map<String, dynamic>),
      fieldOfStudy: json['fieldOfStudy'] == null
          ? null
          : StringFilter.fromJson(json['fieldOfStudy'] as Map<String, dynamic>),
      startYear: json['startYear'] == null
          ? null
          : IntFilter.fromJson(json['startYear'] as Map<String, dynamic>),
      endYear: json['endYear'] == null
          ? null
          : IntFilter.fromJson(json['endYear'] as Map<String, dynamic>),
      grade: json['grade'] == null
          ? null
          : StringFilter.fromJson(json['grade'] as Map<String, dynamic>),
      activities: json['activities'] == null
          ? null
          : StringFilter.fromJson(json['activities'] as Map<String, dynamic>),
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
          ?.map((e) => EducationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => EducationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : EducationWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EducationWhereInputImplToJson(
        _$EducationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'institution': instance.institution?.toJson(),
      'institutionDomain': instance.institutionDomain?.toJson(),
      'degree': instance.degree?.toJson(),
      'fieldOfStudy': instance.fieldOfStudy?.toJson(),
      'startYear': instance.startYear?.toJson(),
      'endYear': instance.endYear?.toJson(),
      'grade': instance.grade?.toJson(),
      'activities': instance.activities?.toJson(),
      'description': instance.description?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$EducationListRelationFilterImpl _$$EducationListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : EducationWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : EducationWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : EducationWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EducationListRelationFilterImplToJson(
        _$EducationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$EducationRelationFilterImpl _$$EducationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : EducationWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : EducationWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EducationRelationFilterImplToJson(
        _$EducationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$EducationOrderByInputImpl _$$EducationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      institution: $enumDecodeNullable(_$SortOrderEnumMap, json['institution']),
      institutionDomain:
          $enumDecodeNullable(_$SortOrderEnumMap, json['institutionDomain']),
      degree: $enumDecodeNullable(_$SortOrderEnumMap, json['degree']),
      fieldOfStudy:
          $enumDecodeNullable(_$SortOrderEnumMap, json['fieldOfStudy']),
      startYear: $enumDecodeNullable(_$SortOrderEnumMap, json['startYear']),
      endYear: $enumDecodeNullable(_$SortOrderEnumMap, json['endYear']),
      grade: $enumDecodeNullable(_$SortOrderEnumMap, json['grade']),
      activities: $enumDecodeNullable(_$SortOrderEnumMap, json['activities']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$EducationOrderByInputImplToJson(
        _$EducationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'institution': _$SortOrderEnumMap[instance.institution],
      'institutionDomain': _$SortOrderEnumMap[instance.institutionDomain],
      'degree': _$SortOrderEnumMap[instance.degree],
      'fieldOfStudy': _$SortOrderEnumMap[instance.fieldOfStudy],
      'startYear': _$SortOrderEnumMap[instance.startYear],
      'endYear': _$SortOrderEnumMap[instance.endYear],
      'grade': _$SortOrderEnumMap[instance.grade],
      'activities': _$SortOrderEnumMap[instance.activities],
      'description': _$SortOrderEnumMap[instance.description],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
