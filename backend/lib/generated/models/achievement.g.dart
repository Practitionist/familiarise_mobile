// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      achievementType: $enumDecodeNullable(
              _$AchievementTypeEnumMap, json['achievementType']) ??
          AchievementType.other,
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'achievementType': _$AchievementTypeEnumMap[instance.achievementType]!,
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AchievementTypeEnumMap = {
  AchievementType.award: 'AWARD',
  AchievementType.publication: 'PUBLICATION',
  AchievementType.project: 'PROJECT',
  AchievementType.talk: 'TALK',
  AchievementType.openSource: 'OPEN_SOURCE',
  AchievementType.other: 'OTHER',
};

_$CreateAchievementInputImpl _$$CreateAchievementInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAchievementInputImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      achievementType: $enumDecodeNullable(
              _$AchievementTypeEnumMap, json['achievementType']) ??
          AchievementType.other,
      consultantProfileId: json['consultantProfileId'] as String,
    );

Map<String, dynamic> _$$CreateAchievementInputImplToJson(
        _$CreateAchievementInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'achievementType': _$AchievementTypeEnumMap[instance.achievementType]!,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateAchievementInputImpl _$$UpdateAchievementInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAchievementInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      achievementType: $enumDecodeNullable(
          _$AchievementTypeEnumMap, json['achievementType']),
      consultantProfileId: json['consultantProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateAchievementInputImplToJson(
        _$UpdateAchievementInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'achievementType': _$AchievementTypeEnumMap[instance.achievementType],
      'consultantProfileId': instance.consultantProfileId,
    };

_$AchievementWhereUniqueInputImpl _$$AchievementWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$AchievementWhereUniqueInputImplToJson(
        _$AchievementWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$AchievementWhereInputImpl _$$AchievementWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : StringFilter.fromJson(json['url'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] == null
          ? null
          : StringFilter.fromJson(json['imageUrl'] as Map<String, dynamic>),
      achievementType: json['achievementType'] == null
          ? null
          : AchievementTypeFilter.fromJson(
              json['achievementType'] as Map<String, dynamic>),
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
          ?.map(
              (e) => AchievementWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => AchievementWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : AchievementWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AchievementWhereInputImplToJson(
        _$AchievementWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'url': instance.url?.toJson(),
      'imageUrl': instance.imageUrl?.toJson(),
      'achievementType': instance.achievementType?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AchievementListRelationFilterImpl
    _$$AchievementListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$AchievementListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : AchievementWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : AchievementWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : AchievementWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AchievementListRelationFilterImplToJson(
        _$AchievementListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AchievementRelationFilterImpl _$$AchievementRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : AchievementWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AchievementWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AchievementRelationFilterImplToJson(
        _$AchievementRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AchievementOrderByInputImpl _$$AchievementOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
      imageUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['imageUrl']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$AchievementOrderByInputImplToJson(
        _$AchievementOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'url': _$SortOrderEnumMap[instance.url],
      'imageUrl': _$SortOrderEnumMap[instance.imageUrl],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
