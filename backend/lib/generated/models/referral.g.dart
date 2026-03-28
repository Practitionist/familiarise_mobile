// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralImpl _$$ReferralImplFromJson(Map<String, dynamic> json) =>
    _$ReferralImpl(
      id: json['id'] as String,
      referralCodeId: json['referralCodeId'] as String,
      referredUserId: json['referredUserId'] as String,
      status: $enumDecodeNullable(_$ReferralStatusEnumMap, json['status']) ??
          ReferralStatus.signedUp,
      referrerRewardAmount: (json['referrerRewardAmount'] as num?)?.toInt(),
      refereeRewardAmount: (json['refereeRewardAmount'] as num?)?.toInt(),
      referrerRewardPaidAt: json['referrerRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['referrerRewardPaidAt'] as String),
      refereeRewardPaidAt: json['refereeRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['refereeRewardPaidAt'] as String),
      signedUpAt: DateTime.parse(json['signedUpAt'] as String),
      qualifiedAt: json['qualifiedAt'] == null
          ? null
          : DateTime.parse(json['qualifiedAt'] as String),
      qualifyingAction: json['qualifyingAction'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReferralImplToJson(_$ReferralImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referralCodeId': instance.referralCodeId,
      'referredUserId': instance.referredUserId,
      'status': _$ReferralStatusEnumMap[instance.status]!,
      'referrerRewardAmount': instance.referrerRewardAmount,
      'refereeRewardAmount': instance.refereeRewardAmount,
      'referrerRewardPaidAt': instance.referrerRewardPaidAt?.toIso8601String(),
      'refereeRewardPaidAt': instance.refereeRewardPaidAt?.toIso8601String(),
      'signedUpAt': instance.signedUpAt.toIso8601String(),
      'qualifiedAt': instance.qualifiedAt?.toIso8601String(),
      'qualifyingAction': instance.qualifyingAction,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ReferralStatusEnumMap = {
  ReferralStatus.signedUp: 'SIGNED_UP',
  ReferralStatus.qualified: 'QUALIFIED',
  ReferralStatus.rewarded: 'REWARDED',
  ReferralStatus.expired: 'EXPIRED',
  ReferralStatus.fraudulent: 'FRAUDULENT',
};

_$CreateReferralInputImpl _$$CreateReferralInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReferralInputImpl(
      referralCodeId: json['referralCodeId'] as String,
      referredUserId: json['referredUserId'] as String,
      status: $enumDecodeNullable(_$ReferralStatusEnumMap, json['status']) ??
          ReferralStatus.signedUp,
      referrerRewardAmount: (json['referrerRewardAmount'] as num?)?.toInt(),
      refereeRewardAmount: (json['refereeRewardAmount'] as num?)?.toInt(),
      referrerRewardPaidAt: json['referrerRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['referrerRewardPaidAt'] as String),
      refereeRewardPaidAt: json['refereeRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['refereeRewardPaidAt'] as String),
      qualifiedAt: json['qualifiedAt'] == null
          ? null
          : DateTime.parse(json['qualifiedAt'] as String),
      qualifyingAction: json['qualifyingAction'] as String?,
    );

Map<String, dynamic> _$$CreateReferralInputImplToJson(
        _$CreateReferralInputImpl instance) =>
    <String, dynamic>{
      'referralCodeId': instance.referralCodeId,
      'referredUserId': instance.referredUserId,
      'status': _$ReferralStatusEnumMap[instance.status]!,
      'referrerRewardAmount': instance.referrerRewardAmount,
      'refereeRewardAmount': instance.refereeRewardAmount,
      'referrerRewardPaidAt': instance.referrerRewardPaidAt?.toIso8601String(),
      'refereeRewardPaidAt': instance.refereeRewardPaidAt?.toIso8601String(),
      'qualifiedAt': instance.qualifiedAt?.toIso8601String(),
      'qualifyingAction': instance.qualifyingAction,
    };

_$UpdateReferralInputImpl _$$UpdateReferralInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateReferralInputImpl(
      referralCodeId: json['referralCodeId'] as String?,
      referredUserId: json['referredUserId'] as String?,
      status: $enumDecodeNullable(_$ReferralStatusEnumMap, json['status']),
      referrerRewardAmount: (json['referrerRewardAmount'] as num?)?.toInt(),
      refereeRewardAmount: (json['refereeRewardAmount'] as num?)?.toInt(),
      referrerRewardPaidAt: json['referrerRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['referrerRewardPaidAt'] as String),
      refereeRewardPaidAt: json['refereeRewardPaidAt'] == null
          ? null
          : DateTime.parse(json['refereeRewardPaidAt'] as String),
      qualifiedAt: json['qualifiedAt'] == null
          ? null
          : DateTime.parse(json['qualifiedAt'] as String),
      qualifyingAction: json['qualifyingAction'] as String?,
    );

Map<String, dynamic> _$$UpdateReferralInputImplToJson(
        _$UpdateReferralInputImpl instance) =>
    <String, dynamic>{
      'referralCodeId': instance.referralCodeId,
      'referredUserId': instance.referredUserId,
      'status': _$ReferralStatusEnumMap[instance.status],
      'referrerRewardAmount': instance.referrerRewardAmount,
      'refereeRewardAmount': instance.refereeRewardAmount,
      'referrerRewardPaidAt': instance.referrerRewardPaidAt?.toIso8601String(),
      'refereeRewardPaidAt': instance.refereeRewardPaidAt?.toIso8601String(),
      'qualifiedAt': instance.qualifiedAt?.toIso8601String(),
      'qualifyingAction': instance.qualifyingAction,
    };

_$ReferralWhereUniqueInputImpl _$$ReferralWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralWhereUniqueInputImpl(
      id: json['id'] as String?,
      referredUserId: json['referredUserId'] as String?,
    );

Map<String, dynamic> _$$ReferralWhereUniqueInputImplToJson(
        _$ReferralWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referredUserId': instance.referredUserId,
    };

_$ReferralWhereInputImpl _$$ReferralWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      referralCodeId: json['referralCodeId'] == null
          ? null
          : StringFilter.fromJson(
              json['referralCodeId'] as Map<String, dynamic>),
      referredUserId: json['referredUserId'] == null
          ? null
          : StringFilter.fromJson(
              json['referredUserId'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : ReferralStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      referrerRewardAmount: json['referrerRewardAmount'] == null
          ? null
          : IntFilter.fromJson(
              json['referrerRewardAmount'] as Map<String, dynamic>),
      refereeRewardAmount: json['refereeRewardAmount'] == null
          ? null
          : IntFilter.fromJson(
              json['refereeRewardAmount'] as Map<String, dynamic>),
      referrerRewardPaidAt: json['referrerRewardPaidAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['referrerRewardPaidAt'] as Map<String, dynamic>),
      refereeRewardPaidAt: json['refereeRewardPaidAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['refereeRewardPaidAt'] as Map<String, dynamic>),
      signedUpAt: json['signedUpAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['signedUpAt'] as Map<String, dynamic>),
      qualifiedAt: json['qualifiedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['qualifiedAt'] as Map<String, dynamic>),
      qualifyingAction: json['qualifyingAction'] == null
          ? null
          : StringFilter.fromJson(
              json['qualifyingAction'] as Map<String, dynamic>),
      referralCode: json['referralCode'] == null
          ? null
          : ReferralCodeRelationFilter.fromJson(
              json['referralCode'] as Map<String, dynamic>),
      referredUser: json['referredUser'] == null
          ? null
          : UserRelationFilter.fromJson(
              json['referredUser'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ReferralWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ReferralWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ReferralWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralWhereInputImplToJson(
        _$ReferralWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'referralCodeId': instance.referralCodeId?.toJson(),
      'referredUserId': instance.referredUserId?.toJson(),
      'status': instance.status?.toJson(),
      'referrerRewardAmount': instance.referrerRewardAmount?.toJson(),
      'refereeRewardAmount': instance.refereeRewardAmount?.toJson(),
      'referrerRewardPaidAt': instance.referrerRewardPaidAt?.toJson(),
      'refereeRewardPaidAt': instance.refereeRewardPaidAt?.toJson(),
      'signedUpAt': instance.signedUpAt?.toJson(),
      'qualifiedAt': instance.qualifiedAt?.toJson(),
      'qualifyingAction': instance.qualifyingAction?.toJson(),
      'referralCode': instance.referralCode?.toJson(),
      'referredUser': instance.referredUser?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ReferralListRelationFilterImpl _$$ReferralListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : ReferralWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : ReferralWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ReferralWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralListRelationFilterImplToJson(
        _$ReferralListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ReferralRelationFilterImpl _$$ReferralRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ReferralWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ReferralWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralRelationFilterImplToJson(
        _$ReferralRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ReferralOrderByInputImpl _$$ReferralOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      referralCodeId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['referralCodeId']),
      referredUserId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['referredUserId']),
      referrerRewardAmount:
          $enumDecodeNullable(_$SortOrderEnumMap, json['referrerRewardAmount']),
      refereeRewardAmount:
          $enumDecodeNullable(_$SortOrderEnumMap, json['refereeRewardAmount']),
      referrerRewardPaidAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['referrerRewardPaidAt']),
      refereeRewardPaidAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['refereeRewardPaidAt']),
      signedUpAt: $enumDecodeNullable(_$SortOrderEnumMap, json['signedUpAt']),
      qualifiedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['qualifiedAt']),
      qualifyingAction:
          $enumDecodeNullable(_$SortOrderEnumMap, json['qualifyingAction']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ReferralOrderByInputImplToJson(
        _$ReferralOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'referralCodeId': _$SortOrderEnumMap[instance.referralCodeId],
      'referredUserId': _$SortOrderEnumMap[instance.referredUserId],
      'referrerRewardAmount': _$SortOrderEnumMap[instance.referrerRewardAmount],
      'refereeRewardAmount': _$SortOrderEnumMap[instance.refereeRewardAmount],
      'referrerRewardPaidAt': _$SortOrderEnumMap[instance.referrerRewardPaidAt],
      'refereeRewardPaidAt': _$SortOrderEnumMap[instance.refereeRewardPaidAt],
      'signedUpAt': _$SortOrderEnumMap[instance.signedUpAt],
      'qualifiedAt': _$SortOrderEnumMap[instance.qualifiedAt],
      'qualifyingAction': _$SortOrderEnumMap[instance.qualifyingAction],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
