// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisputeImpl _$$DisputeImplFromJson(Map<String, dynamic> json) =>
    _$DisputeImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      reason: json['reason'] as String,
      status: $enumDecode(_$DisputeStatusEnumMap, json['status']),
      disputeId: json['disputeId'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      evidence: json['evidence'] as Map<String, dynamic>?,
      dueBy: json['dueBy'] == null
          ? null
          : DateTime.parse(json['dueBy'] as String),
      isChargeRefundable: json['isChargeRefundable'] as bool? ?? true,
      paymentId: json['paymentId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DisputeImplToJson(_$DisputeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$DisputeStatusEnumMap[instance.status]!,
      'disputeId': instance.disputeId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'evidence': instance.evidence,
      'dueBy': instance.dueBy?.toIso8601String(),
      'isChargeRefundable': instance.isChargeRefundable,
      'paymentId': instance.paymentId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DisputeStatusEnumMap = {
  DisputeStatus.warningNeedsResponse: 'WARNING_NEEDS_RESPONSE',
  DisputeStatus.warningUnderReview: 'WARNING_UNDER_REVIEW',
  DisputeStatus.warningClosed: 'WARNING_CLOSED',
  DisputeStatus.needsResponse: 'NEEDS_RESPONSE',
  DisputeStatus.underReview: 'UNDER_REVIEW',
  DisputeStatus.chargeRefunded: 'CHARGE_REFUNDED',
  DisputeStatus.won: 'WON',
  DisputeStatus.lost: 'LOST',
};

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

_$CreateDisputeInputImpl _$$CreateDisputeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDisputeInputImpl(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      reason: json['reason'] as String,
      status: $enumDecode(_$DisputeStatusEnumMap, json['status']),
      disputeId: json['disputeId'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      evidence: json['evidence'] as Map<String, dynamic>?,
      dueBy: json['dueBy'] == null
          ? null
          : DateTime.parse(json['dueBy'] as String),
      isChargeRefundable: json['isChargeRefundable'] as bool? ?? true,
      paymentId: json['paymentId'] as String,
    );

Map<String, dynamic> _$$CreateDisputeInputImplToJson(
        _$CreateDisputeInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$DisputeStatusEnumMap[instance.status]!,
      'disputeId': instance.disputeId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'evidence': instance.evidence,
      'dueBy': instance.dueBy?.toIso8601String(),
      'isChargeRefundable': instance.isChargeRefundable,
      'paymentId': instance.paymentId,
    };

_$UpdateDisputeInputImpl _$$UpdateDisputeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateDisputeInputImpl(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      reason: json['reason'] as String?,
      status: $enumDecodeNullable(_$DisputeStatusEnumMap, json['status']),
      disputeId: json['disputeId'] as String?,
      paymentGateway:
          $enumDecodeNullable(_$PaymentGatewayEnumMap, json['paymentGateway']),
      evidence: json['evidence'] as Map<String, dynamic>?,
      dueBy: json['dueBy'] == null
          ? null
          : DateTime.parse(json['dueBy'] as String),
      isChargeRefundable: json['isChargeRefundable'] as bool?,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$$UpdateDisputeInputImplToJson(
        _$UpdateDisputeInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'reason': instance.reason,
      'status': _$DisputeStatusEnumMap[instance.status],
      'disputeId': instance.disputeId,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway],
      'evidence': instance.evidence,
      'dueBy': instance.dueBy?.toIso8601String(),
      'isChargeRefundable': instance.isChargeRefundable,
      'paymentId': instance.paymentId,
    };

_$DisputeWhereUniqueInputImpl _$$DisputeWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeWhereUniqueInputImpl(
      id: json['id'] as String?,
      disputeId: json['disputeId'] as String?,
    );

Map<String, dynamic> _$$DisputeWhereUniqueInputImplToJson(
        _$DisputeWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disputeId': instance.disputeId,
    };

_$DisputeWhereInputImpl _$$DisputeWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeWhereInputImpl(
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
          : DisputeStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      disputeId: json['disputeId'] == null
          ? null
          : StringFilter.fromJson(json['disputeId'] as Map<String, dynamic>),
      paymentGateway: json['paymentGateway'] == null
          ? null
          : PaymentGatewayFilter.fromJson(
              json['paymentGateway'] as Map<String, dynamic>),
      dueBy: json['dueBy'] == null
          ? null
          : DateTimeFilter.fromJson(json['dueBy'] as Map<String, dynamic>),
      isChargeRefundable: json['isChargeRefundable'] == null
          ? null
          : BooleanFilter.fromJson(
              json['isChargeRefundable'] as Map<String, dynamic>),
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
          ?.map((e) => DisputeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => DisputeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : DisputeWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisputeWhereInputImplToJson(
        _$DisputeWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'amount': instance.amount?.toJson(),
      'currency': instance.currency?.toJson(),
      'reason': instance.reason?.toJson(),
      'status': instance.status?.toJson(),
      'disputeId': instance.disputeId?.toJson(),
      'paymentGateway': instance.paymentGateway?.toJson(),
      'dueBy': instance.dueBy?.toJson(),
      'isChargeRefundable': instance.isChargeRefundable?.toJson(),
      'payment': instance.payment?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$DisputeListRelationFilterImpl _$$DisputeListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : DisputeWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : DisputeWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : DisputeWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisputeListRelationFilterImplToJson(
        _$DisputeListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$DisputeRelationFilterImpl _$$DisputeRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : DisputeWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : DisputeWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisputeRelationFilterImplToJson(
        _$DisputeRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$DisputeOrderByInputImpl _$$DisputeOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DisputeOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      reason: $enumDecodeNullable(_$SortOrderEnumMap, json['reason']),
      disputeId: $enumDecodeNullable(_$SortOrderEnumMap, json['disputeId']),
      dueBy: $enumDecodeNullable(_$SortOrderEnumMap, json['dueBy']),
      isChargeRefundable:
          $enumDecodeNullable(_$SortOrderEnumMap, json['isChargeRefundable']),
      paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$DisputeOrderByInputImplToJson(
        _$DisputeOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'amount': _$SortOrderEnumMap[instance.amount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'reason': _$SortOrderEnumMap[instance.reason],
      'disputeId': _$SortOrderEnumMap[instance.disputeId],
      'dueBy': _$SortOrderEnumMap[instance.dueBy],
      'isChargeRefundable': _$SortOrderEnumMap[instance.isChargeRefundable],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
