// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassContentImpl _$$ClassContentImplFromJson(Map<String, dynamic> json) =>
    _$ClassContentImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      contentType: json['contentType'] as String?,
      contentUrl: json['contentUrl'] as String?,
      order: (json['order'] as num).toInt(),
      hoursAllotted: (json['hoursAllotted'] as num).toDouble(),
      classPlanId: json['classPlanId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ClassContentImplToJson(_$ClassContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'classPlanId': instance.classPlanId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateClassContentInputImpl _$$CreateClassContentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassContentInputImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      contentType: json['contentType'] as String?,
      contentUrl: json['contentUrl'] as String?,
      order: (json['order'] as num).toInt(),
      hoursAllotted: (json['hoursAllotted'] as num).toDouble(),
      classPlanId: json['classPlanId'] as String,
    );

Map<String, dynamic> _$$CreateClassContentInputImplToJson(
        _$CreateClassContentInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'classPlanId': instance.classPlanId,
    };

_$UpdateClassContentInputImpl _$$UpdateClassContentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassContentInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      contentType: json['contentType'] as String?,
      contentUrl: json['contentUrl'] as String?,
      order: (json['order'] as num?)?.toInt(),
      hoursAllotted: (json['hoursAllotted'] as num?)?.toDouble(),
      classPlanId: json['classPlanId'] as String?,
    );

Map<String, dynamic> _$$UpdateClassContentInputImplToJson(
        _$UpdateClassContentInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'classPlanId': instance.classPlanId,
    };

_$ClassContentWhereUniqueInputImpl _$$ClassContentWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassContentWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ClassContentWhereUniqueInputImplToJson(
        _$ClassContentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ClassContentWhereInputImpl _$$ClassContentWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassContentWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      contentType: json['contentType'] == null
          ? null
          : StringFilter.fromJson(json['contentType'] as Map<String, dynamic>),
      contentUrl: json['contentUrl'] == null
          ? null
          : StringFilter.fromJson(json['contentUrl'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : IntFilter.fromJson(json['order'] as Map<String, dynamic>),
      hoursAllotted: json['hoursAllotted'] == null
          ? null
          : FloatFilter.fromJson(json['hoursAllotted'] as Map<String, dynamic>),
      classPlan: json['classPlan'] == null
          ? null
          : ClassPlanRelationFilter.fromJson(
              json['classPlan'] as Map<String, dynamic>),
      classPlanId: json['classPlanId'] == null
          ? null
          : StringFilter.fromJson(json['classPlanId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => ClassContentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => ClassContentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ClassContentWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassContentWhereInputImplToJson(
        _$ClassContentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'contentType': instance.contentType?.toJson(),
      'contentUrl': instance.contentUrl?.toJson(),
      'order': instance.order?.toJson(),
      'hoursAllotted': instance.hoursAllotted?.toJson(),
      'classPlan': instance.classPlan?.toJson(),
      'classPlanId': instance.classPlanId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ClassContentListRelationFilterImpl
    _$$ClassContentListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ClassContentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ClassContentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ClassContentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ClassContentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ClassContentListRelationFilterImplToJson(
        _$ClassContentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ClassContentRelationFilterImpl _$$ClassContentRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassContentRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ClassContentWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ClassContentWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassContentRelationFilterImplToJson(
        _$ClassContentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ClassContentOrderByInputImpl _$$ClassContentOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassContentOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      contentType: $enumDecodeNullable(_$SortOrderEnumMap, json['contentType']),
      contentUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['contentUrl']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
      hoursAllotted:
          $enumDecodeNullable(_$SortOrderEnumMap, json['hoursAllotted']),
      classPlanId: $enumDecodeNullable(_$SortOrderEnumMap, json['classPlanId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ClassContentOrderByInputImplToJson(
        _$ClassContentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'contentType': _$SortOrderEnumMap[instance.contentType],
      'contentUrl': _$SortOrderEnumMap[instance.contentUrl],
      'order': _$SortOrderEnumMap[instance.order],
      'hoursAllotted': _$SortOrderEnumMap[instance.hoursAllotted],
      'classPlanId': _$SortOrderEnumMap[instance.classPlanId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
