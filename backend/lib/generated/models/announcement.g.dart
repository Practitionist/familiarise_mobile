// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementImpl _$$AnnouncementImplFromJson(Map<String, dynamic> json) =>
    _$AnnouncementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isActive: json['isActive'] as bool? ?? true,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      backgroundColor: json['backgroundColor'] as String? ?? "#000000",
      textColor: json['textColor'] as String? ?? "#FFFFFF",
      linkUrl: json['linkUrl'] as String?,
      linkText: json['linkText'] as String?,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AnnouncementImplToJson(_$AnnouncementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'isActive': instance.isActive,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'linkUrl': instance.linkUrl,
      'linkText': instance.linkText,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateAnnouncementInputImpl _$$CreateAnnouncementInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAnnouncementInputImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      isActive: json['isActive'] as bool? ?? true,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      backgroundColor: json['backgroundColor'] as String? ?? "#000000",
      textColor: json['textColor'] as String? ?? "#FFFFFF",
      linkUrl: json['linkUrl'] as String?,
      linkText: json['linkText'] as String?,
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$$CreateAnnouncementInputImplToJson(
        _$CreateAnnouncementInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'isActive': instance.isActive,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'linkUrl': instance.linkUrl,
      'linkText': instance.linkText,
      'createdBy': instance.createdBy,
    };

_$UpdateAnnouncementInputImpl _$$UpdateAnnouncementInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAnnouncementInputImpl(
      title: json['title'] as String?,
      content: json['content'] as String?,
      isActive: json['isActive'] as bool?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      backgroundColor: json['backgroundColor'] as String?,
      textColor: json['textColor'] as String?,
      linkUrl: json['linkUrl'] as String?,
      linkText: json['linkText'] as String?,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$$UpdateAnnouncementInputImplToJson(
        _$UpdateAnnouncementInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'isActive': instance.isActive,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'linkUrl': instance.linkUrl,
      'linkText': instance.linkText,
      'createdBy': instance.createdBy,
    };

_$AnnouncementWhereUniqueInputImpl _$$AnnouncementWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$AnnouncementWhereUniqueInputImplToJson(
        _$AnnouncementWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$AnnouncementWhereInputImpl _$$AnnouncementWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFilter.fromJson(json['content'] as Map<String, dynamic>),
      isActive: json['isActive'] == null
          ? null
          : BooleanFilter.fromJson(json['isActive'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['endDate'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : StringFilter.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      textColor: json['textColor'] == null
          ? null
          : StringFilter.fromJson(json['textColor'] as Map<String, dynamic>),
      linkUrl: json['linkUrl'] == null
          ? null
          : StringFilter.fromJson(json['linkUrl'] as Map<String, dynamic>),
      linkText: json['linkText'] == null
          ? null
          : StringFilter.fromJson(json['linkText'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : StringFilter.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => AnnouncementWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => AnnouncementWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : AnnouncementWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnnouncementWhereInputImplToJson(
        _$AnnouncementWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'content': instance.content?.toJson(),
      'isActive': instance.isActive?.toJson(),
      'startDate': instance.startDate?.toJson(),
      'endDate': instance.endDate?.toJson(),
      'backgroundColor': instance.backgroundColor?.toJson(),
      'textColor': instance.textColor?.toJson(),
      'linkUrl': instance.linkUrl?.toJson(),
      'linkText': instance.linkText?.toJson(),
      'createdBy': instance.createdBy?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AnnouncementListRelationFilterImpl
    _$$AnnouncementListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$AnnouncementListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : AnnouncementWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : AnnouncementWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : AnnouncementWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AnnouncementListRelationFilterImplToJson(
        _$AnnouncementListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AnnouncementRelationFilterImpl _$$AnnouncementRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : AnnouncementWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AnnouncementWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnnouncementRelationFilterImplToJson(
        _$AnnouncementRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AnnouncementOrderByInputImpl _$$AnnouncementOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
      isActive: $enumDecodeNullable(_$SortOrderEnumMap, json['isActive']),
      startDate: $enumDecodeNullable(_$SortOrderEnumMap, json['startDate']),
      endDate: $enumDecodeNullable(_$SortOrderEnumMap, json['endDate']),
      backgroundColor:
          $enumDecodeNullable(_$SortOrderEnumMap, json['backgroundColor']),
      textColor: $enumDecodeNullable(_$SortOrderEnumMap, json['textColor']),
      linkUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['linkUrl']),
      linkText: $enumDecodeNullable(_$SortOrderEnumMap, json['linkText']),
      createdBy: $enumDecodeNullable(_$SortOrderEnumMap, json['createdBy']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$AnnouncementOrderByInputImplToJson(
        _$AnnouncementOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'content': _$SortOrderEnumMap[instance.content],
      'isActive': _$SortOrderEnumMap[instance.isActive],
      'startDate': _$SortOrderEnumMap[instance.startDate],
      'endDate': _$SortOrderEnumMap[instance.endDate],
      'backgroundColor': _$SortOrderEnumMap[instance.backgroundColor],
      'textColor': _$SortOrderEnumMap[instance.textColor],
      'linkUrl': _$SortOrderEnumMap[instance.linkUrl],
      'linkText': _$SortOrderEnumMap[instance.linkText],
      'createdBy': _$SortOrderEnumMap[instance.createdBy],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
