// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionContentImpl _$$SubscriptionContentImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionContentImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      contentType: json['contentType'] as String?,
      contentUrl: json['contentUrl'] as String?,
      order: (json['order'] as num).toInt(),
      hoursAllotted: (json['hoursAllotted'] as num?)?.toDouble() ?? 1.0,
      subscriptionPlanId: json['subscriptionPlanId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SubscriptionContentImplToJson(
        _$SubscriptionContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateSubscriptionContentInputImpl
    _$$CreateSubscriptionContentInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateSubscriptionContentInputImpl(
          title: json['title'] as String,
          description: json['description'] as String,
          contentType: json['contentType'] as String?,
          contentUrl: json['contentUrl'] as String?,
          order: (json['order'] as num).toInt(),
          hoursAllotted: (json['hoursAllotted'] as num?)?.toDouble() ?? 1.0,
          subscriptionPlanId: json['subscriptionPlanId'] as String,
        );

Map<String, dynamic> _$$CreateSubscriptionContentInputImplToJson(
        _$CreateSubscriptionContentInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'subscriptionPlanId': instance.subscriptionPlanId,
    };

_$UpdateSubscriptionContentInputImpl
    _$$UpdateSubscriptionContentInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateSubscriptionContentInputImpl(
          title: json['title'] as String?,
          description: json['description'] as String?,
          contentType: json['contentType'] as String?,
          contentUrl: json['contentUrl'] as String?,
          order: (json['order'] as num?)?.toInt(),
          hoursAllotted: (json['hoursAllotted'] as num?)?.toDouble(),
          subscriptionPlanId: json['subscriptionPlanId'] as String?,
        );

Map<String, dynamic> _$$UpdateSubscriptionContentInputImplToJson(
        _$UpdateSubscriptionContentInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'contentType': instance.contentType,
      'contentUrl': instance.contentUrl,
      'order': instance.order,
      'hoursAllotted': instance.hoursAllotted,
      'subscriptionPlanId': instance.subscriptionPlanId,
    };

_$SubscriptionContentWhereUniqueInputImpl
    _$$SubscriptionContentWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionContentWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SubscriptionContentWhereUniqueInputImplToJson(
        _$SubscriptionContentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SubscriptionContentWhereInputImpl
    _$$SubscriptionContentWhereInputImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionContentWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
          description: json['description'] == null
              ? null
              : StringFilter.fromJson(
                  json['description'] as Map<String, dynamic>),
          contentType: json['contentType'] == null
              ? null
              : StringFilter.fromJson(
                  json['contentType'] as Map<String, dynamic>),
          contentUrl: json['contentUrl'] == null
              ? null
              : StringFilter.fromJson(
                  json['contentUrl'] as Map<String, dynamic>),
          order: json['order'] == null
              ? null
              : IntFilter.fromJson(json['order'] as Map<String, dynamic>),
          hoursAllotted: json['hoursAllotted'] == null
              ? null
              : FloatFilter.fromJson(
                  json['hoursAllotted'] as Map<String, dynamic>),
          subscriptionPlan: json['subscriptionPlan'] == null
              ? null
              : SubscriptionPlanRelationFilter.fromJson(
                  json['subscriptionPlan'] as Map<String, dynamic>),
          subscriptionPlanId: json['subscriptionPlanId'] == null
              ? null
              : StringFilter.fromJson(
                  json['subscriptionPlanId'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => SubscriptionContentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => SubscriptionContentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionContentWhereInputImplToJson(
        _$SubscriptionContentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'contentType': instance.contentType?.toJson(),
      'contentUrl': instance.contentUrl?.toJson(),
      'order': instance.order?.toJson(),
      'hoursAllotted': instance.hoursAllotted?.toJson(),
      'subscriptionPlan': instance.subscriptionPlan?.toJson(),
      'subscriptionPlanId': instance.subscriptionPlanId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SubscriptionContentListRelationFilterImpl
    _$$SubscriptionContentListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionContentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionContentListRelationFilterImplToJson(
        _$SubscriptionContentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SubscriptionContentRelationFilterImpl
    _$$SubscriptionContentRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionContentRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SubscriptionContentWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionContentRelationFilterImplToJson(
        _$SubscriptionContentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SubscriptionContentOrderByInputImpl
    _$$SubscriptionContentOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionContentOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          description:
              $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
          contentType:
              $enumDecodeNullable(_$SortOrderEnumMap, json['contentType']),
          contentUrl:
              $enumDecodeNullable(_$SortOrderEnumMap, json['contentUrl']),
          order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
          hoursAllotted:
              $enumDecodeNullable(_$SortOrderEnumMap, json['hoursAllotted']),
          subscriptionPlanId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['subscriptionPlanId']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$SubscriptionContentOrderByInputImplToJson(
        _$SubscriptionContentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'contentType': _$SortOrderEnumMap[instance.contentType],
      'contentUrl': _$SortOrderEnumMap[instance.contentUrl],
      'order': _$SortOrderEnumMap[instance.order],
      'hoursAllotted': _$SortOrderEnumMap[instance.hoursAllotted],
      'subscriptionPlanId': _$SortOrderEnumMap[instance.subscriptionPlanId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
