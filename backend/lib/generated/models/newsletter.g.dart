// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsletter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsletterImpl _$$NewsletterImplFromJson(Map<String, dynamic> json) =>
    _$NewsletterImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      unsubscribed: json['unsubscribed'] as bool? ?? false,
      unsubscribedAt: json['unsubscribedAt'] == null
          ? null
          : DateTime.parse(json['unsubscribedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$NewsletterImplToJson(_$NewsletterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'unsubscribed': instance.unsubscribed,
      'unsubscribedAt': instance.unsubscribedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateNewsletterInputImpl _$$CreateNewsletterInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNewsletterInputImpl(
      email: json['email'] as String,
      unsubscribed: json['unsubscribed'] as bool? ?? false,
      unsubscribedAt: json['unsubscribedAt'] == null
          ? null
          : DateTime.parse(json['unsubscribedAt'] as String),
    );

Map<String, dynamic> _$$CreateNewsletterInputImplToJson(
        _$CreateNewsletterInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'unsubscribed': instance.unsubscribed,
      'unsubscribedAt': instance.unsubscribedAt?.toIso8601String(),
    };

_$UpdateNewsletterInputImpl _$$UpdateNewsletterInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNewsletterInputImpl(
      email: json['email'] as String?,
      unsubscribed: json['unsubscribed'] as bool?,
      unsubscribedAt: json['unsubscribedAt'] == null
          ? null
          : DateTime.parse(json['unsubscribedAt'] as String),
    );

Map<String, dynamic> _$$UpdateNewsletterInputImplToJson(
        _$UpdateNewsletterInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'unsubscribed': instance.unsubscribed,
      'unsubscribedAt': instance.unsubscribedAt?.toIso8601String(),
    };

_$NewsletterWhereUniqueInputImpl _$$NewsletterWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsletterWhereUniqueInputImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$NewsletterWhereUniqueInputImplToJson(
        _$NewsletterWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$NewsletterWhereInputImpl _$$NewsletterWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsletterWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      unsubscribed: json['unsubscribed'] == null
          ? null
          : BooleanFilter.fromJson(
              json['unsubscribed'] as Map<String, dynamic>),
      unsubscribedAt: json['unsubscribedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['unsubscribedAt'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => NewsletterWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => NewsletterWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : NewsletterWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsletterWhereInputImplToJson(
        _$NewsletterWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'email': instance.email?.toJson(),
      'unsubscribed': instance.unsubscribed?.toJson(),
      'unsubscribedAt': instance.unsubscribedAt?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$NewsletterListRelationFilterImpl _$$NewsletterListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsletterListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : NewsletterWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : NewsletterWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : NewsletterWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsletterListRelationFilterImplToJson(
        _$NewsletterListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$NewsletterRelationFilterImpl _$$NewsletterRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsletterRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : NewsletterWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : NewsletterWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsletterRelationFilterImplToJson(
        _$NewsletterRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$NewsletterOrderByInputImpl _$$NewsletterOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsletterOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      unsubscribed:
          $enumDecodeNullable(_$SortOrderEnumMap, json['unsubscribed']),
      unsubscribedAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['unsubscribedAt']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$NewsletterOrderByInputImplToJson(
        _$NewsletterOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'email': _$SortOrderEnumMap[instance.email],
      'unsubscribed': _$SortOrderEnumMap[instance.unsubscribed],
      'unsubscribedAt': _$SortOrderEnumMap[instance.unsubscribedAt],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
