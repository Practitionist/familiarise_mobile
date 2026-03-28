// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookie_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CookiePreferenceImpl _$$CookiePreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$CookiePreferenceImpl(
      id: json['id'] as String,
      userId: json['userId'] as String?,
      sessionId: json['sessionId'] as String?,
      essential: json['essential'] as bool? ?? true,
      analytics: json['analytics'] as bool? ?? false,
      marketing: json['marketing'] as bool? ?? false,
      functional: json['functional'] as bool? ?? false,
      consentGivenAt: DateTime.parse(json['consentGivenAt'] as String),
      consentUpdatedAt: DateTime.parse(json['consentUpdatedAt'] as String),
    );

Map<String, dynamic> _$$CookiePreferenceImplToJson(
        _$CookiePreferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'sessionId': instance.sessionId,
      'essential': instance.essential,
      'analytics': instance.analytics,
      'marketing': instance.marketing,
      'functional': instance.functional,
      'consentGivenAt': instance.consentGivenAt.toIso8601String(),
      'consentUpdatedAt': instance.consentUpdatedAt.toIso8601String(),
    };

_$CreateCookiePreferenceInputImpl _$$CreateCookiePreferenceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCookiePreferenceInputImpl(
      userId: json['userId'] as String?,
      sessionId: json['sessionId'] as String?,
      essential: json['essential'] as bool? ?? true,
      analytics: json['analytics'] as bool? ?? false,
      marketing: json['marketing'] as bool? ?? false,
      functional: json['functional'] as bool? ?? false,
    );

Map<String, dynamic> _$$CreateCookiePreferenceInputImplToJson(
        _$CreateCookiePreferenceInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sessionId': instance.sessionId,
      'essential': instance.essential,
      'analytics': instance.analytics,
      'marketing': instance.marketing,
      'functional': instance.functional,
    };

_$UpdateCookiePreferenceInputImpl _$$UpdateCookiePreferenceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCookiePreferenceInputImpl(
      userId: json['userId'] as String?,
      sessionId: json['sessionId'] as String?,
      essential: json['essential'] as bool?,
      analytics: json['analytics'] as bool?,
      marketing: json['marketing'] as bool?,
      functional: json['functional'] as bool?,
    );

Map<String, dynamic> _$$UpdateCookiePreferenceInputImplToJson(
        _$UpdateCookiePreferenceInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sessionId': instance.sessionId,
      'essential': instance.essential,
      'analytics': instance.analytics,
      'marketing': instance.marketing,
      'functional': instance.functional,
    };

_$CookiePreferenceWhereUniqueInputImpl
    _$$CookiePreferenceWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CookiePreferenceWhereUniqueInputImpl(
          id: json['id'] as String?,
          userId: json['userId'] as String?,
          sessionId: json['sessionId'] as String?,
        );

Map<String, dynamic> _$$CookiePreferenceWhereUniqueInputImplToJson(
        _$CookiePreferenceWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'sessionId': instance.sessionId,
    };

_$CookiePreferenceWhereInputImpl _$$CookiePreferenceWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CookiePreferenceWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      sessionId: json['sessionId'] == null
          ? null
          : StringFilter.fromJson(json['sessionId'] as Map<String, dynamic>),
      essential: json['essential'] == null
          ? null
          : BooleanFilter.fromJson(json['essential'] as Map<String, dynamic>),
      analytics: json['analytics'] == null
          ? null
          : BooleanFilter.fromJson(json['analytics'] as Map<String, dynamic>),
      marketing: json['marketing'] == null
          ? null
          : BooleanFilter.fromJson(json['marketing'] as Map<String, dynamic>),
      functional: json['functional'] == null
          ? null
          : BooleanFilter.fromJson(json['functional'] as Map<String, dynamic>),
      consentGivenAt: json['consentGivenAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['consentGivenAt'] as Map<String, dynamic>),
      consentUpdatedAt: json['consentUpdatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['consentUpdatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              CookiePreferenceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              CookiePreferenceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : CookiePreferenceWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CookiePreferenceWhereInputImplToJson(
        _$CookiePreferenceWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'sessionId': instance.sessionId?.toJson(),
      'essential': instance.essential?.toJson(),
      'analytics': instance.analytics?.toJson(),
      'marketing': instance.marketing?.toJson(),
      'functional': instance.functional?.toJson(),
      'consentGivenAt': instance.consentGivenAt?.toJson(),
      'consentUpdatedAt': instance.consentUpdatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$CookiePreferenceListRelationFilterImpl
    _$$CookiePreferenceListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$CookiePreferenceListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : CookiePreferenceWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : CookiePreferenceWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : CookiePreferenceWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CookiePreferenceListRelationFilterImplToJson(
        _$CookiePreferenceListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$CookiePreferenceRelationFilterImpl
    _$$CookiePreferenceRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$CookiePreferenceRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : CookiePreferenceWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : CookiePreferenceWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CookiePreferenceRelationFilterImplToJson(
        _$CookiePreferenceRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$CookiePreferenceOrderByInputImpl _$$CookiePreferenceOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CookiePreferenceOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      sessionId: $enumDecodeNullable(_$SortOrderEnumMap, json['sessionId']),
      essential: $enumDecodeNullable(_$SortOrderEnumMap, json['essential']),
      analytics: $enumDecodeNullable(_$SortOrderEnumMap, json['analytics']),
      marketing: $enumDecodeNullable(_$SortOrderEnumMap, json['marketing']),
      functional: $enumDecodeNullable(_$SortOrderEnumMap, json['functional']),
      consentGivenAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consentGivenAt']),
      consentUpdatedAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consentUpdatedAt']),
    );

Map<String, dynamic> _$$CookiePreferenceOrderByInputImplToJson(
        _$CookiePreferenceOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'userId': _$SortOrderEnumMap[instance.userId],
      'sessionId': _$SortOrderEnumMap[instance.sessionId],
      'essential': _$SortOrderEnumMap[instance.essential],
      'analytics': _$SortOrderEnumMap[instance.analytics],
      'marketing': _$SortOrderEnumMap[instance.marketing],
      'functional': _$SortOrderEnumMap[instance.functional],
      'consentGivenAt': _$SortOrderEnumMap[instance.consentGivenAt],
      'consentUpdatedAt': _$SortOrderEnumMap[instance.consentUpdatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
