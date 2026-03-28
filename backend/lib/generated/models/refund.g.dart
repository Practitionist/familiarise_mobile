// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundImpl _$$RefundImplFromJson(Map<String, dynamic> json) => _$RefundImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      reason: json['reason'] as String?,
      status: $enumDecode(_$RefundStatusEnumMap, json['status']),
      refundId: json['refundId'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      exchangeRateAtRefund: (json['exchangeRateAtRefund'] as num?)?.toDouble(),
      displayCurrency: json['displayCurrency'] as String?,
      paymentId: json['paymentId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$RefundStatusEnumMap[instance.status]!,
      'refundId': instance.refundId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'metadata': instance.metadata,
      'exchangeRateAtRefund': instance.exchangeRateAtRefund,
      'displayCurrency': instance.displayCurrency,
      'paymentId': instance.paymentId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$RefundStatusEnumMap = {
  RefundStatus.pending: 'PENDING',
  RefundStatus.succeeded: 'SUCCEEDED',
  RefundStatus.failed: 'FAILED',
  RefundStatus.cancelled: 'CANCELLED',
};

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

_$CreateRefundInputImpl _$$CreateRefundInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRefundInputImpl(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      reason: json['reason'] as String?,
      status: $enumDecode(_$RefundStatusEnumMap, json['status']),
      refundId: json['refundId'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      exchangeRateAtRefund: (json['exchangeRateAtRefund'] as num?)?.toDouble(),
      displayCurrency: json['displayCurrency'] as String?,
      paymentId: json['paymentId'] as String,
    );

Map<String, dynamic> _$$CreateRefundInputImplToJson(
        _$CreateRefundInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$RefundStatusEnumMap[instance.status]!,
      'refundId': instance.refundId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'metadata': instance.metadata,
      'exchangeRateAtRefund': instance.exchangeRateAtRefund,
      'displayCurrency': instance.displayCurrency,
      'paymentId': instance.paymentId,
    };

_$UpdateRefundInputImpl _$$UpdateRefundInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRefundInputImpl(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      reason: json['reason'] as String?,
      status: $enumDecodeNullable(_$RefundStatusEnumMap, json['status']),
      refundId: json['refundId'] as String?,
      paymentGateway:
          $enumDecodeNullable(_$PaymentGatewayEnumMap, json['paymentGateway']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      exchangeRateAtRefund: (json['exchangeRateAtRefund'] as num?)?.toDouble(),
      displayCurrency: json['displayCurrency'] as String?,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$$UpdateRefundInputImplToJson(
        _$UpdateRefundInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$RefundStatusEnumMap[instance.status],
      'refundId': instance.refundId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway],
      'metadata': instance.metadata,
      'exchangeRateAtRefund': instance.exchangeRateAtRefund,
      'displayCurrency': instance.displayCurrency,
      'paymentId': instance.paymentId,
    };

_$RefundWhereUniqueInputImpl _$$RefundWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundWhereUniqueInputImpl(
      id: json['id'] as String?,
      refundId: json['refundId'] as String?,
    );

Map<String, dynamic> _$$RefundWhereUniqueInputImplToJson(
        _$RefundWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refundId': instance.refundId,
    };

_$RefundWhereInputImpl _$$RefundWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : StringFilter.fromJson(json['reason'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : RefundStatusFilter.fromJson(json['status'] as Map<String, dynamic>),
      refundId: json['refundId'] == null
          ? null
          : StringFilter.fromJson(json['refundId'] as Map<String, dynamic>),
      paymentGateway: json['paymentGateway'] == null
          ? null
          : PaymentGatewayFilter.fromJson(
              json['paymentGateway'] as Map<String, dynamic>),
      exchangeRateAtRefund: json['exchangeRateAtRefund'] == null
          ? null
          : FloatFilter.fromJson(
              json['exchangeRateAtRefund'] as Map<String, dynamic>),
      displayCurrency: json['displayCurrency'] == null
          ? null
          : StringFilter.fromJson(
              json['displayCurrency'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : PaymentRelationFilter.fromJson(
              json['payment'] as Map<String, dynamic>),
      paymentId: json['paymentId'] == null
          ? null
          : StringFilter.fromJson(json['paymentId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => RefundWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => RefundWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : RefundWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundWhereInputImplToJson(
        _$RefundWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'amount': instance.amount?.toJson(),
      'currency': instance.currency?.toJson(),
      'reason': instance.reason?.toJson(),
      'status': instance.status?.toJson(),
      'refundId': instance.refundId?.toJson(),
      'paymentGateway': instance.paymentGateway?.toJson(),
      'exchangeRateAtRefund': instance.exchangeRateAtRefund?.toJson(),
      'displayCurrency': instance.displayCurrency?.toJson(),
      'payment': instance.payment?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$RefundListRelationFilterImpl _$$RefundListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : RefundWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : RefundWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : RefundWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundListRelationFilterImplToJson(
        _$RefundListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$RefundRelationFilterImpl _$$RefundRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : RefundWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : RefundWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundRelationFilterImplToJson(
        _$RefundRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$RefundOrderByInputImpl _$$RefundOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      reason: $enumDecodeNullable(_$SortOrderEnumMap, json['reason']),
      refundId: $enumDecodeNullable(_$SortOrderEnumMap, json['refundId']),
      exchangeRateAtRefund:
          $enumDecodeNullable(_$SortOrderEnumMap, json['exchangeRateAtRefund']),
      displayCurrency:
          $enumDecodeNullable(_$SortOrderEnumMap, json['displayCurrency']),
      paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$RefundOrderByInputImplToJson(
        _$RefundOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'amount': _$SortOrderEnumMap[instance.amount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'reason': _$SortOrderEnumMap[instance.reason],
      'refundId': _$SortOrderEnumMap[instance.refundId],
      'exchangeRateAtRefund': _$SortOrderEnumMap[instance.exchangeRateAtRefund],
      'displayCurrency': _$SortOrderEnumMap[instance.displayCurrency],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
