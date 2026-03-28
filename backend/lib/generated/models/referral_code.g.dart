// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralCodeImpl _$$ReferralCodeImplFromJson(Map<String, dynamic> json) =>
    _$ReferralCodeImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      code: json['code'] as String,
      customCode: json['customCode'] as String?,
      referrerReward: (json['referrerReward'] as num?)?.toInt(),
      refereeReward: (json['refereeReward'] as num?)?.toInt(),
      totalReferrals: (json['totalReferrals'] as num?)?.toInt() ?? 0,
      successfulReferrals: (json['successfulReferrals'] as num?)?.toInt() ?? 0,
      totalEarned: (json['totalEarned'] as num?)?.toInt() ?? 0,
      maxReferrals: (json['maxReferrals'] as num?)?.toInt() ?? 50,
      isActive: json['isActive'] as bool? ?? true,
      referrals: (json['referrals'] as List<dynamic>)
          .map((e) => Referral.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReferralCodeImplToJson(_$ReferralCodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'code': instance.code,
      'customCode': instance.customCode,
      'referrerReward': instance.referrerReward,
      'refereeReward': instance.refereeReward,
      'totalReferrals': instance.totalReferrals,
      'successfulReferrals': instance.successfulReferrals,
      'totalEarned': instance.totalEarned,
      'maxReferrals': instance.maxReferrals,
      'isActive': instance.isActive,
      'referrals': instance.referrals,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateReferralCodeInputImpl _$$CreateReferralCodeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReferralCodeInputImpl(
      userId: json['userId'] as String,
      code: json['code'] as String,
      customCode: json['customCode'] as String?,
      referrerReward: (json['referrerReward'] as num?)?.toInt(),
      refereeReward: (json['refereeReward'] as num?)?.toInt(),
      totalReferrals: (json['totalReferrals'] as num?)?.toInt() ?? 0,
      successfulReferrals: (json['successfulReferrals'] as num?)?.toInt() ?? 0,
      totalEarned: (json['totalEarned'] as num?)?.toInt() ?? 0,
      maxReferrals: (json['maxReferrals'] as num?)?.toInt() ?? 50,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$CreateReferralCodeInputImplToJson(
        _$CreateReferralCodeInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'code': instance.code,
      'customCode': instance.customCode,
      'referrerReward': instance.referrerReward,
      'refereeReward': instance.refereeReward,
      'totalReferrals': instance.totalReferrals,
      'successfulReferrals': instance.successfulReferrals,
      'totalEarned': instance.totalEarned,
      'maxReferrals': instance.maxReferrals,
      'isActive': instance.isActive,
    };

_$UpdateReferralCodeInputImpl _$$UpdateReferralCodeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateReferralCodeInputImpl(
      userId: json['userId'] as String?,
      code: json['code'] as String?,
      customCode: json['customCode'] as String?,
      referrerReward: (json['referrerReward'] as num?)?.toInt(),
      refereeReward: (json['refereeReward'] as num?)?.toInt(),
      totalReferrals: (json['totalReferrals'] as num?)?.toInt(),
      successfulReferrals: (json['successfulReferrals'] as num?)?.toInt(),
      totalEarned: (json['totalEarned'] as num?)?.toInt(),
      maxReferrals: (json['maxReferrals'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$UpdateReferralCodeInputImplToJson(
        _$UpdateReferralCodeInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'code': instance.code,
      'customCode': instance.customCode,
      'referrerReward': instance.referrerReward,
      'refereeReward': instance.refereeReward,
      'totalReferrals': instance.totalReferrals,
      'successfulReferrals': instance.successfulReferrals,
      'totalEarned': instance.totalEarned,
      'maxReferrals': instance.maxReferrals,
      'isActive': instance.isActive,
    };

_$ReferralCodeWhereUniqueInputImpl _$$ReferralCodeWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCodeWhereUniqueInputImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      code: json['code'] as String?,
      customCode: json['customCode'] as String?,
    );

Map<String, dynamic> _$$ReferralCodeWhereUniqueInputImplToJson(
        _$ReferralCodeWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'code': instance.code,
      'customCode': instance.customCode,
    };

_$ReferralCodeWhereInputImpl _$$ReferralCodeWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCodeWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : StringFilter.fromJson(json['code'] as Map<String, dynamic>),
      customCode: json['customCode'] == null
          ? null
          : StringFilter.fromJson(json['customCode'] as Map<String, dynamic>),
      referrerReward: json['referrerReward'] == null
          ? null
          : IntFilter.fromJson(json['referrerReward'] as Map<String, dynamic>),
      refereeReward: json['refereeReward'] == null
          ? null
          : IntFilter.fromJson(json['refereeReward'] as Map<String, dynamic>),
      totalReferrals: json['totalReferrals'] == null
          ? null
          : IntFilter.fromJson(json['totalReferrals'] as Map<String, dynamic>),
      successfulReferrals: json['successfulReferrals'] == null
          ? null
          : IntFilter.fromJson(
              json['successfulReferrals'] as Map<String, dynamic>),
      totalEarned: json['totalEarned'] == null
          ? null
          : IntFilter.fromJson(json['totalEarned'] as Map<String, dynamic>),
      maxReferrals: json['maxReferrals'] == null
          ? null
          : IntFilter.fromJson(json['maxReferrals'] as Map<String, dynamic>),
      isActive: json['isActive'] == null
          ? null
          : BooleanFilter.fromJson(json['isActive'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => ReferralCodeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => ReferralCodeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ReferralCodeWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralCodeWhereInputImplToJson(
        _$ReferralCodeWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'userId': instance.userId?.toJson(),
      'code': instance.code?.toJson(),
      'customCode': instance.customCode?.toJson(),
      'referrerReward': instance.referrerReward?.toJson(),
      'refereeReward': instance.refereeReward?.toJson(),
      'totalReferrals': instance.totalReferrals?.toJson(),
      'successfulReferrals': instance.successfulReferrals?.toJson(),
      'totalEarned': instance.totalEarned?.toJson(),
      'maxReferrals': instance.maxReferrals?.toJson(),
      'isActive': instance.isActive?.toJson(),
      'user': instance.user?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ReferralCodeListRelationFilterImpl
    _$$ReferralCodeListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ReferralCodeListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ReferralCodeWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ReferralCodeWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ReferralCodeWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ReferralCodeListRelationFilterImplToJson(
        _$ReferralCodeListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ReferralCodeRelationFilterImpl _$$ReferralCodeRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCodeRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ReferralCodeWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ReferralCodeWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralCodeRelationFilterImplToJson(
        _$ReferralCodeRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ReferralCodeOrderByInputImpl _$$ReferralCodeOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCodeOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      code: $enumDecodeNullable(_$SortOrderEnumMap, json['code']),
      customCode: $enumDecodeNullable(_$SortOrderEnumMap, json['customCode']),
      referrerReward:
          $enumDecodeNullable(_$SortOrderEnumMap, json['referrerReward']),
      refereeReward:
          $enumDecodeNullable(_$SortOrderEnumMap, json['refereeReward']),
      totalReferrals:
          $enumDecodeNullable(_$SortOrderEnumMap, json['totalReferrals']),
      successfulReferrals:
          $enumDecodeNullable(_$SortOrderEnumMap, json['successfulReferrals']),
      totalEarned: $enumDecodeNullable(_$SortOrderEnumMap, json['totalEarned']),
      maxReferrals:
          $enumDecodeNullable(_$SortOrderEnumMap, json['maxReferrals']),
      isActive: $enumDecodeNullable(_$SortOrderEnumMap, json['isActive']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ReferralCodeOrderByInputImplToJson(
        _$ReferralCodeOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'userId': _$SortOrderEnumMap[instance.userId],
      'code': _$SortOrderEnumMap[instance.code],
      'customCode': _$SortOrderEnumMap[instance.customCode],
      'referrerReward': _$SortOrderEnumMap[instance.referrerReward],
      'refereeReward': _$SortOrderEnumMap[instance.refereeReward],
      'totalReferrals': _$SortOrderEnumMap[instance.totalReferrals],
      'successfulReferrals': _$SortOrderEnumMap[instance.successfulReferrals],
      'totalEarned': _$SortOrderEnumMap[instance.totalEarned],
      'maxReferrals': _$SortOrderEnumMap[instance.maxReferrals],
      'isActive': _$SortOrderEnumMap[instance.isActive],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
