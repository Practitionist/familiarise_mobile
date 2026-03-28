// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_credit_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralCreditUsageImpl _$$ReferralCreditUsageImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCreditUsageImpl(
      id: json['id'] as String,
      creditId: json['creditId'] as String,
      paymentId: json['paymentId'] as String,
      amount: (json['amount'] as num).toInt(),
      originalAmount: (json['originalAmount'] as num).toInt(),
      restoredAmount: (json['restoredAmount'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReferralCreditUsageImplToJson(
        _$ReferralCreditUsageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditId': instance.creditId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'restoredAmount': instance.restoredAmount,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreateReferralCreditUsageInputImpl
    _$$CreateReferralCreditUsageInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateReferralCreditUsageInputImpl(
          creditId: json['creditId'] as String,
          paymentId: json['paymentId'] as String,
          amount: (json['amount'] as num).toInt(),
          originalAmount: (json['originalAmount'] as num).toInt(),
          restoredAmount: (json['restoredAmount'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$CreateReferralCreditUsageInputImplToJson(
        _$CreateReferralCreditUsageInputImpl instance) =>
    <String, dynamic>{
      'creditId': instance.creditId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'restoredAmount': instance.restoredAmount,
    };

_$UpdateReferralCreditUsageInputImpl
    _$$UpdateReferralCreditUsageInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateReferralCreditUsageInputImpl(
          creditId: json['creditId'] as String?,
          paymentId: json['paymentId'] as String?,
          amount: (json['amount'] as num?)?.toInt(),
          originalAmount: (json['originalAmount'] as num?)?.toInt(),
          restoredAmount: (json['restoredAmount'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$UpdateReferralCreditUsageInputImplToJson(
        _$UpdateReferralCreditUsageInputImpl instance) =>
    <String, dynamic>{
      'creditId': instance.creditId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'restoredAmount': instance.restoredAmount,
    };

_$ReferralCreditUsageWhereUniqueInputImpl
    _$$ReferralCreditUsageWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ReferralCreditUsageWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ReferralCreditUsageWhereUniqueInputImplToJson(
        _$ReferralCreditUsageWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ReferralCreditUsageWhereInputImpl
    _$$ReferralCreditUsageWhereInputImplFromJson(Map<String, dynamic> json) =>
        _$ReferralCreditUsageWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          creditId: json['creditId'] == null
              ? null
              : StringFilter.fromJson(json['creditId'] as Map<String, dynamic>),
          paymentId: json['paymentId'] == null
              ? null
              : StringFilter.fromJson(
                  json['paymentId'] as Map<String, dynamic>),
          amount: json['amount'] == null
              ? null
              : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
          originalAmount: json['originalAmount'] == null
              ? null
              : IntFilter.fromJson(
                  json['originalAmount'] as Map<String, dynamic>),
          restoredAmount: json['restoredAmount'] == null
              ? null
              : IntFilter.fromJson(
                  json['restoredAmount'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          credit: json['credit'] == null
              ? null
              : ReferralCreditRelationFilter.fromJson(
                  json['credit'] as Map<String, dynamic>),
          payment: json['payment'] == null
              ? null
              : PaymentRelationFilter.fromJson(
                  json['payment'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => ReferralCreditUsageWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => ReferralCreditUsageWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ReferralCreditUsageWhereInputImplToJson(
        _$ReferralCreditUsageWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'creditId': instance.creditId?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'amount': instance.amount?.toJson(),
      'originalAmount': instance.originalAmount?.toJson(),
      'restoredAmount': instance.restoredAmount?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'credit': instance.credit?.toJson(),
      'payment': instance.payment?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ReferralCreditUsageListRelationFilterImpl
    _$$ReferralCreditUsageListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ReferralCreditUsageListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ReferralCreditUsageListRelationFilterImplToJson(
        _$ReferralCreditUsageListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ReferralCreditUsageRelationFilterImpl
    _$$ReferralCreditUsageRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ReferralCreditUsageRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ReferralCreditUsageWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ReferralCreditUsageRelationFilterImplToJson(
        _$ReferralCreditUsageRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ReferralCreditUsageOrderByInputImpl
    _$$ReferralCreditUsageOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$ReferralCreditUsageOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          creditId: $enumDecodeNullable(_$SortOrderEnumMap, json['creditId']),
          paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
          originalAmount:
              $enumDecodeNullable(_$SortOrderEnumMap, json['originalAmount']),
          restoredAmount:
              $enumDecodeNullable(_$SortOrderEnumMap, json['restoredAmount']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
        );

Map<String, dynamic> _$$ReferralCreditUsageOrderByInputImplToJson(
        _$ReferralCreditUsageOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'creditId': _$SortOrderEnumMap[instance.creditId],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'amount': _$SortOrderEnumMap[instance.amount],
      'originalAmount': _$SortOrderEnumMap[instance.originalAmount],
      'restoredAmount': _$SortOrderEnumMap[instance.restoredAmount],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
