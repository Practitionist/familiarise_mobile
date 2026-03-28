// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateTopicInputImpl _$$CreateTopicInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTopicInputImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CreateTopicInputImplToJson(
        _$CreateTopicInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$UpdateTopicInputImpl _$$UpdateTopicInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTopicInputImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UpdateTopicInputImplToJson(
        _$UpdateTopicInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$TopicWhereUniqueInputImpl _$$TopicWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicWhereUniqueInputImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TopicWhereUniqueInputImplToJson(
        _$TopicWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TopicWhereInputImpl _$$TopicWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      webinarPlans: json['webinarPlans'] == null
          ? null
          : WebinarPlanListRelationFilter.fromJson(
              json['webinarPlans'] as Map<String, dynamic>),
      classPlans: json['classPlans'] == null
          ? null
          : ClassPlanListRelationFilter.fromJson(
              json['classPlans'] as Map<String, dynamic>),
      consultationPlans: json['consultationPlans'] == null
          ? null
          : ConsultationPlanListRelationFilter.fromJson(
              json['consultationPlans'] as Map<String, dynamic>),
      subscriptionPlans: json['subscriptionPlans'] == null
          ? null
          : SubscriptionPlanListRelationFilter.fromJson(
              json['subscriptionPlans'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TopicWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TopicWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : TopicWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopicWhereInputImplToJson(
        _$TopicWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'webinarPlans': instance.webinarPlans?.toJson(),
      'classPlans': instance.classPlans?.toJson(),
      'consultationPlans': instance.consultationPlans?.toJson(),
      'subscriptionPlans': instance.subscriptionPlans?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$TopicListRelationFilterImpl _$$TopicListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : TopicWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : TopicWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TopicWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopicListRelationFilterImplToJson(
        _$TopicListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$TopicRelationFilterImpl _$$TopicRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : TopicWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : TopicWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopicRelationFilterImplToJson(
        _$TopicRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$TopicOrderByInputImpl _$$TopicOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$TopicOrderByInputImplToJson(
        _$TopicOrderByInputImpl instance) =>
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
