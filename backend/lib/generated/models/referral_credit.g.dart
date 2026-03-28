// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_credit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralCreditImpl _$$ReferralCreditImplFromJson(Map<String, dynamic> json) =>
    _$ReferralCreditImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      source: $enumDecode(_$CreditSourceEnumMap, json['source']),
      referralId: json['referralId'] as String?,
      usedAmount: (json['usedAmount'] as num?)?.toInt() ?? 0,
      remainingAmount: (json['remainingAmount'] as num).toInt(),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      usedAt: json['usedAt'] == null
          ? null
          : DateTime.parse(json['usedAt'] as String),
      usages: (json['usages'] as List<dynamic>)
          .map((e) => ReferralCreditUsage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReferralCreditImplToJson(
        _$ReferralCreditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'source': _$CreditSourceEnumMap[instance.source]!,
      'referralId': instance.referralId,
      'usedAmount': instance.usedAmount,
      'remainingAmount': instance.remainingAmount,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'usedAt': instance.usedAt?.toIso8601String(),
      'usages': instance.usages,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$CreditSourceEnumMap = {
  CreditSource.referralBonus: 'REFERRAL_BONUS',
  CreditSource.refereeBonus: 'REFEREE_BONUS',
  CreditSource.promotion: 'PROMOTION',
  CreditSource.compensation: 'COMPENSATION',
  CreditSource.manual: 'MANUAL',
};

_$CreateReferralCreditInputImpl _$$CreateReferralCreditInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReferralCreditInputImpl(
      userId: json['userId'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      source: $enumDecode(_$CreditSourceEnumMap, json['source']),
      referralId: json['referralId'] as String?,
      usedAmount: (json['usedAmount'] as num?)?.toInt() ?? 0,
      remainingAmount: (json['remainingAmount'] as num).toInt(),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      usedAt: json['usedAt'] == null
          ? null
          : DateTime.parse(json['usedAt'] as String),
    );

Map<String, dynamic> _$$CreateReferralCreditInputImplToJson(
        _$CreateReferralCreditInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'source': _$CreditSourceEnumMap[instance.source]!,
      'referralId': instance.referralId,
      'usedAmount': instance.usedAmount,
      'remainingAmount': instance.remainingAmount,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'usedAt': instance.usedAt?.toIso8601String(),
    };

_$UpdateReferralCreditInputImpl _$$UpdateReferralCreditInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateReferralCreditInputImpl(
      userId: json['userId'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      source: $enumDecodeNullable(_$CreditSourceEnumMap, json['source']),
      referralId: json['referralId'] as String?,
      usedAmount: (json['usedAmount'] as num?)?.toInt(),
      remainingAmount: (json['remainingAmount'] as num?)?.toInt(),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      usedAt: json['usedAt'] == null
          ? null
          : DateTime.parse(json['usedAt'] as String),
    );

Map<String, dynamic> _$$UpdateReferralCreditInputImplToJson(
        _$UpdateReferralCreditInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'source': _$CreditSourceEnumMap[instance.source],
      'referralId': instance.referralId,
      'usedAmount': instance.usedAmount,
      'remainingAmount': instance.remainingAmount,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'usedAt': instance.usedAt?.toIso8601String(),
    };

_$ReferralCreditWhereUniqueInputImpl
    _$$ReferralCreditWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$ReferralCreditWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ReferralCreditWhereUniqueInputImplToJson(
        _$ReferralCreditWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ReferralCreditWhereInputImpl _$$ReferralCreditWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCreditWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      source: json['source'] == null
          ? null
          : CreditSourceFilter.fromJson(json['source'] as Map<String, dynamic>),
      referralId: json['referralId'] == null
          ? null
          : StringFilter.fromJson(json['referralId'] as Map<String, dynamic>),
      usedAmount: json['usedAmount'] == null
          ? null
          : IntFilter.fromJson(json['usedAmount'] as Map<String, dynamic>),
      remainingAmount: json['remainingAmount'] == null
          ? null
          : IntFilter.fromJson(json['remainingAmount'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      usedAt: json['usedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['usedAt'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ReferralCreditWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ReferralCreditWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ReferralCreditWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralCreditWhereInputImplToJson(
        _$ReferralCreditWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'userId': instance.userId?.toJson(),
      'amount': instance.amount?.toJson(),
      'currency': instance.currency?.toJson(),
      'source': instance.source?.toJson(),
      'referralId': instance.referralId?.toJson(),
      'usedAmount': instance.usedAmount?.toJson(),
      'remainingAmount': instance.remainingAmount?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'usedAt': instance.usedAt?.toJson(),
      'user': instance.user?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ReferralCreditListRelationFilterImpl
    _$$ReferralCreditListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ReferralCreditListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ReferralCreditWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ReferralCreditWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ReferralCreditWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ReferralCreditListRelationFilterImplToJson(
        _$ReferralCreditListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ReferralCreditRelationFilterImpl _$$ReferralCreditRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCreditRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ReferralCreditWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ReferralCreditWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReferralCreditRelationFilterImplToJson(
        _$ReferralCreditRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ReferralCreditOrderByInputImpl _$$ReferralCreditOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCreditOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      referralId: $enumDecodeNullable(_$SortOrderEnumMap, json['referralId']),
      usedAmount: $enumDecodeNullable(_$SortOrderEnumMap, json['usedAmount']),
      remainingAmount:
          $enumDecodeNullable(_$SortOrderEnumMap, json['remainingAmount']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      usedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['usedAt']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
    );

Map<String, dynamic> _$$ReferralCreditOrderByInputImplToJson(
        _$ReferralCreditOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'userId': _$SortOrderEnumMap[instance.userId],
      'amount': _$SortOrderEnumMap[instance.amount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'referralId': _$SortOrderEnumMap[instance.referralId],
      'usedAmount': _$SortOrderEnumMap[instance.usedAmount],
      'remainingAmount': _$SortOrderEnumMap[instance.remainingAmount],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'usedAt': _$SortOrderEnumMap[instance.usedAt],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
