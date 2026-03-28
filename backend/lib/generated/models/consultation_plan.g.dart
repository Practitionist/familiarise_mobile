// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationPlanImpl _$$ConsultationPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationPlanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      durationInHours: (json['durationInHours'] as num?)?.toDouble() ?? 1,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultationPlanImplToJson(
        _$ConsultationPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationInHours': instance.durationInHours,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateConsultationPlanInputImpl _$$CreateConsultationPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsultationPlanInputImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      durationInHours: (json['durationInHours'] as num?)?.toDouble() ?? 1,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      consultantProfileId: json['consultantProfileId'] as String,
    );

Map<String, dynamic> _$$CreateConsultationPlanInputImplToJson(
        _$CreateConsultationPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'durationInHours': instance.durationInHours,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateConsultationPlanInputImpl _$$UpdateConsultationPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsultationPlanInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      durationInHours: (json['durationInHours'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toInt(),
      priceCurrency: json['priceCurrency'] as String?,
      language: json['language'] as String?,
      level: json['level'] as String?,
      prerequisites: json['prerequisites'] as String?,
      materialProvided: json['materialProvided'] as String?,
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      consultantProfileId: json['consultantProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateConsultationPlanInputImplToJson(
        _$UpdateConsultationPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'durationInHours': instance.durationInHours,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$ConsultationPlanWhereUniqueInputImpl
    _$$ConsultationPlanWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultationPlanWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ConsultationPlanWhereUniqueInputImplToJson(
        _$ConsultationPlanWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ConsultationPlanWhereInputImpl _$$ConsultationPlanWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationPlanWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      durationInHours: json['durationInHours'] == null
          ? null
          : FloatFilter.fromJson(
              json['durationInHours'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      priceCurrency: json['priceCurrency'] == null
          ? null
          : StringFilter.fromJson(
              json['priceCurrency'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : StringFilter.fromJson(json['language'] as Map<String, dynamic>),
      level: json['level'] == null
          ? null
          : StringFilter.fromJson(json['level'] as Map<String, dynamic>),
      prerequisites: json['prerequisites'] == null
          ? null
          : StringFilter.fromJson(
              json['prerequisites'] as Map<String, dynamic>),
      materialProvided: json['materialProvided'] == null
          ? null
          : StringFilter.fromJson(
              json['materialProvided'] as Map<String, dynamic>),
      learningOutcomes: json['learningOutcomes'] == null
          ? null
          : StringListFilter.fromJson(
              json['learningOutcomes'] as Map<String, dynamic>),
      topics: json['topics'] == null
          ? null
          : TopicListRelationFilter.fromJson(
              json['topics'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsultationPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsultationPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultationPlanWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultationPlanWhereInputImplToJson(
        _$ConsultationPlanWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'durationInHours': instance.durationInHours?.toJson(),
      'price': instance.price?.toJson(),
      'priceCurrency': instance.priceCurrency?.toJson(),
      'language': instance.language?.toJson(),
      'level': instance.level?.toJson(),
      'prerequisites': instance.prerequisites?.toJson(),
      'materialProvided': instance.materialProvided?.toJson(),
      'learningOutcomes': instance.learningOutcomes?.toJson(),
      'topics': instance.topics?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultationPlanListRelationFilterImpl
    _$$ConsultationPlanListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultationPlanListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultationPlanWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultationPlanWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultationPlanWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultationPlanListRelationFilterImplToJson(
        _$ConsultationPlanListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultationPlanRelationFilterImpl
    _$$ConsultationPlanRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsultationPlanRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultationPlanWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultationPlanWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultationPlanRelationFilterImplToJson(
        _$ConsultationPlanRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultationPlanOrderByInputImpl _$$ConsultationPlanOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationPlanOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      durationInHours:
          $enumDecodeNullable(_$SortOrderEnumMap, json['durationInHours']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      priceCurrency:
          $enumDecodeNullable(_$SortOrderEnumMap, json['priceCurrency']),
      language: $enumDecodeNullable(_$SortOrderEnumMap, json['language']),
      level: $enumDecodeNullable(_$SortOrderEnumMap, json['level']),
      prerequisites:
          $enumDecodeNullable(_$SortOrderEnumMap, json['prerequisites']),
      materialProvided:
          $enumDecodeNullable(_$SortOrderEnumMap, json['materialProvided']),
      learningOutcomes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['learningOutcomes']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ConsultationPlanOrderByInputImplToJson(
        _$ConsultationPlanOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'durationInHours': _$SortOrderEnumMap[instance.durationInHours],
      'price': _$SortOrderEnumMap[instance.price],
      'priceCurrency': _$SortOrderEnumMap[instance.priceCurrency],
      'language': _$SortOrderEnumMap[instance.language],
      'level': _$SortOrderEnumMap[instance.level],
      'prerequisites': _$SortOrderEnumMap[instance.prerequisites],
      'materialProvided': _$SortOrderEnumMap[instance.materialProvided],
      'learningOutcomes': _$SortOrderEnumMap[instance.learningOutcomes],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
