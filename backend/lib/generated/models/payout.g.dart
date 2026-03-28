// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutImpl _$$PayoutImplFromJson(Map<String, dynamic> json) => _$PayoutImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      provider: $enumDecode(_$PaymentGatewayEnumMap, json['provider']),
      providerPayoutId: json['providerPayoutId'] as String?,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      status: $enumDecodeNullable(_$PayoutStatusEnumMap, json['status']) ??
          PayoutStatus.pending,
      method: $enumDecode(_$PayoutMethodEnumMap, json['method']),
      batchId: json['batchId'] as String?,
      tdsDeducted: (json['tdsDeducted'] as num?)?.toInt() ?? 0,
      netAmount: (json['netAmount'] as num?)?.toInt(),
      tdsRateApplied: (json['tdsRateApplied'] as num?)?.toDouble(),
      tdsFinancialYear: json['tdsFinancialYear'] as String?,
      failureReason: json['failureReason'] as String?,
      retryCount: (json['retryCount'] as num?)?.toInt() ?? 0,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      approvedBy: json['approvedBy'] as String?,
      idempotencyKey: json['idempotencyKey'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      earnings: (json['earnings'] as List<dynamic>)
          .map((e) => ConsultantEarnings.fromJson(e as Map<String, dynamic>))
          .toList(),
      tdsRecords: (json['tdsRecords'] as List<dynamic>)
          .map((e) => TDSRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PayoutImplToJson(_$PayoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider]!,
      'providerPayoutId': instance.providerPayoutId,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PayoutStatusEnumMap[instance.status]!,
      'method': _$PayoutMethodEnumMap[instance.method]!,
      'batchId': instance.batchId,
      'tdsDeducted': instance.tdsDeducted,
      'netAmount': instance.netAmount,
      'tdsRateApplied': instance.tdsRateApplied,
      'tdsFinancialYear': instance.tdsFinancialYear,
      'failureReason': instance.failureReason,
      'retryCount': instance.retryCount,
      'processedAt': instance.processedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'approvedBy': instance.approvedBy,
      'idempotencyKey': instance.idempotencyKey,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'earnings': instance.earnings,
      'tdsRecords': instance.tdsRecords,
    };

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

const _$PayoutStatusEnumMap = {
  PayoutStatus.pending: 'PENDING',
  PayoutStatus.approved: 'APPROVED',
  PayoutStatus.processing: 'PROCESSING',
  PayoutStatus.completed: 'COMPLETED',
  PayoutStatus.failed: 'FAILED',
  PayoutStatus.cancelled: 'CANCELLED',
};

const _$PayoutMethodEnumMap = {
  PayoutMethod.bankTransfer: 'BANK_TRANSFER',
  PayoutMethod.upi: 'UPI',
  PayoutMethod.stripeTransfer: 'STRIPE_TRANSFER',
};

_$CreatePayoutInputImpl _$$CreatePayoutInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePayoutInputImpl(
      consultantProfileId: json['consultantProfileId'] as String,
      provider: $enumDecode(_$PaymentGatewayEnumMap, json['provider']),
      providerPayoutId: json['providerPayoutId'] as String?,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      status: $enumDecodeNullable(_$PayoutStatusEnumMap, json['status']) ??
          PayoutStatus.pending,
      method: $enumDecode(_$PayoutMethodEnumMap, json['method']),
      batchId: json['batchId'] as String?,
      tdsDeducted: (json['tdsDeducted'] as num?)?.toInt() ?? 0,
      netAmount: (json['netAmount'] as num?)?.toInt(),
      tdsRateApplied: (json['tdsRateApplied'] as num?)?.toDouble(),
      tdsFinancialYear: json['tdsFinancialYear'] as String?,
      failureReason: json['failureReason'] as String?,
      retryCount: (json['retryCount'] as num?)?.toInt() ?? 0,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      approvedBy: json['approvedBy'] as String?,
      idempotencyKey: json['idempotencyKey'] as String?,
    );

Map<String, dynamic> _$$CreatePayoutInputImplToJson(
        _$CreatePayoutInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider]!,
      'providerPayoutId': instance.providerPayoutId,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PayoutStatusEnumMap[instance.status]!,
      'method': _$PayoutMethodEnumMap[instance.method]!,
      'batchId': instance.batchId,
      'tdsDeducted': instance.tdsDeducted,
      'netAmount': instance.netAmount,
      'tdsRateApplied': instance.tdsRateApplied,
      'tdsFinancialYear': instance.tdsFinancialYear,
      'failureReason': instance.failureReason,
      'retryCount': instance.retryCount,
      'processedAt': instance.processedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'approvedBy': instance.approvedBy,
      'idempotencyKey': instance.idempotencyKey,
    };

_$UpdatePayoutInputImpl _$$UpdatePayoutInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePayoutInputImpl(
      consultantProfileId: json['consultantProfileId'] as String?,
      provider: $enumDecodeNullable(_$PaymentGatewayEnumMap, json['provider']),
      providerPayoutId: json['providerPayoutId'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      status: $enumDecodeNullable(_$PayoutStatusEnumMap, json['status']),
      method: $enumDecodeNullable(_$PayoutMethodEnumMap, json['method']),
      batchId: json['batchId'] as String?,
      tdsDeducted: (json['tdsDeducted'] as num?)?.toInt(),
      netAmount: (json['netAmount'] as num?)?.toInt(),
      tdsRateApplied: (json['tdsRateApplied'] as num?)?.toDouble(),
      tdsFinancialYear: json['tdsFinancialYear'] as String?,
      failureReason: json['failureReason'] as String?,
      retryCount: (json['retryCount'] as num?)?.toInt(),
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      approvedBy: json['approvedBy'] as String?,
      idempotencyKey: json['idempotencyKey'] as String?,
    );

Map<String, dynamic> _$$UpdatePayoutInputImplToJson(
        _$UpdatePayoutInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider],
      'providerPayoutId': instance.providerPayoutId,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PayoutStatusEnumMap[instance.status],
      'method': _$PayoutMethodEnumMap[instance.method],
      'batchId': instance.batchId,
      'tdsDeducted': instance.tdsDeducted,
      'netAmount': instance.netAmount,
      'tdsRateApplied': instance.tdsRateApplied,
      'tdsFinancialYear': instance.tdsFinancialYear,
      'failureReason': instance.failureReason,
      'retryCount': instance.retryCount,
      'processedAt': instance.processedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'approvedBy': instance.approvedBy,
      'idempotencyKey': instance.idempotencyKey,
    };

_$PayoutWhereUniqueInputImpl _$$PayoutWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutWhereUniqueInputImpl(
      id: json['id'] as String?,
      providerPayoutId: json['providerPayoutId'] as String?,
      idempotencyKey: json['idempotencyKey'] as String?,
    );

Map<String, dynamic> _$$PayoutWhereUniqueInputImplToJson(
        _$PayoutWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'providerPayoutId': instance.providerPayoutId,
      'idempotencyKey': instance.idempotencyKey,
    };

_$PayoutWhereInputImpl _$$PayoutWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      provider: json['provider'] == null
          ? null
          : PaymentGatewayFilter.fromJson(
              json['provider'] as Map<String, dynamic>),
      providerPayoutId: json['providerPayoutId'] == null
          ? null
          : StringFilter.fromJson(
              json['providerPayoutId'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : PayoutStatusFilter.fromJson(json['status'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : PayoutMethodFilter.fromJson(json['method'] as Map<String, dynamic>),
      batchId: json['batchId'] == null
          ? null
          : StringFilter.fromJson(json['batchId'] as Map<String, dynamic>),
      tdsDeducted: json['tdsDeducted'] == null
          ? null
          : IntFilter.fromJson(json['tdsDeducted'] as Map<String, dynamic>),
      netAmount: json['netAmount'] == null
          ? null
          : IntFilter.fromJson(json['netAmount'] as Map<String, dynamic>),
      tdsRateApplied: json['tdsRateApplied'] == null
          ? null
          : FloatFilter.fromJson(
              json['tdsRateApplied'] as Map<String, dynamic>),
      tdsFinancialYear: json['tdsFinancialYear'] == null
          ? null
          : StringFilter.fromJson(
              json['tdsFinancialYear'] as Map<String, dynamic>),
      failureReason: json['failureReason'] == null
          ? null
          : StringFilter.fromJson(
              json['failureReason'] as Map<String, dynamic>),
      retryCount: json['retryCount'] == null
          ? null
          : IntFilter.fromJson(json['retryCount'] as Map<String, dynamic>),
      processedAt: json['processedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['processedAt'] as Map<String, dynamic>),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['approvedAt'] as Map<String, dynamic>),
      approvedBy: json['approvedBy'] == null
          ? null
          : StringFilter.fromJson(json['approvedBy'] as Map<String, dynamic>),
      idempotencyKey: json['idempotencyKey'] == null
          ? null
          : StringFilter.fromJson(
              json['idempotencyKey'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => PayoutWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => PayoutWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : PayoutWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutWhereInputImplToJson(
        _$PayoutWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'provider': instance.provider?.toJson(),
      'providerPayoutId': instance.providerPayoutId?.toJson(),
      'amount': instance.amount?.toJson(),
      'currency': instance.currency?.toJson(),
      'status': instance.status?.toJson(),
      'method': instance.method?.toJson(),
      'batchId': instance.batchId?.toJson(),
      'tdsDeducted': instance.tdsDeducted?.toJson(),
      'netAmount': instance.netAmount?.toJson(),
      'tdsRateApplied': instance.tdsRateApplied?.toJson(),
      'tdsFinancialYear': instance.tdsFinancialYear?.toJson(),
      'failureReason': instance.failureReason?.toJson(),
      'retryCount': instance.retryCount?.toJson(),
      'processedAt': instance.processedAt?.toJson(),
      'approvedAt': instance.approvedAt?.toJson(),
      'approvedBy': instance.approvedBy?.toJson(),
      'idempotencyKey': instance.idempotencyKey?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$PayoutListRelationFilterImpl _$$PayoutListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : PayoutWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : PayoutWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : PayoutWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutListRelationFilterImplToJson(
        _$PayoutListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$PayoutRelationFilterImpl _$$PayoutRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : PayoutWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : PayoutWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutRelationFilterImplToJson(
        _$PayoutRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$PayoutOrderByInputImpl _$$PayoutOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      providerPayoutId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['providerPayoutId']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      batchId: $enumDecodeNullable(_$SortOrderEnumMap, json['batchId']),
      tdsDeducted: $enumDecodeNullable(_$SortOrderEnumMap, json['tdsDeducted']),
      netAmount: $enumDecodeNullable(_$SortOrderEnumMap, json['netAmount']),
      tdsRateApplied:
          $enumDecodeNullable(_$SortOrderEnumMap, json['tdsRateApplied']),
      tdsFinancialYear:
          $enumDecodeNullable(_$SortOrderEnumMap, json['tdsFinancialYear']),
      failureReason:
          $enumDecodeNullable(_$SortOrderEnumMap, json['failureReason']),
      retryCount: $enumDecodeNullable(_$SortOrderEnumMap, json['retryCount']),
      processedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['processedAt']),
      approvedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['approvedAt']),
      approvedBy: $enumDecodeNullable(_$SortOrderEnumMap, json['approvedBy']),
      idempotencyKey:
          $enumDecodeNullable(_$SortOrderEnumMap, json['idempotencyKey']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$PayoutOrderByInputImplToJson(
        _$PayoutOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'providerPayoutId': _$SortOrderEnumMap[instance.providerPayoutId],
      'amount': _$SortOrderEnumMap[instance.amount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'batchId': _$SortOrderEnumMap[instance.batchId],
      'tdsDeducted': _$SortOrderEnumMap[instance.tdsDeducted],
      'netAmount': _$SortOrderEnumMap[instance.netAmount],
      'tdsRateApplied': _$SortOrderEnumMap[instance.tdsRateApplied],
      'tdsFinancialYear': _$SortOrderEnumMap[instance.tdsFinancialYear],
      'failureReason': _$SortOrderEnumMap[instance.failureReason],
      'retryCount': _$SortOrderEnumMap[instance.retryCount],
      'processedAt': _$SortOrderEnumMap[instance.processedAt],
      'approvedAt': _$SortOrderEnumMap[instance.approvedAt],
      'approvedBy': _$SortOrderEnumMap[instance.approvedBy],
      'idempotencyKey': _$SortOrderEnumMap[instance.idempotencyKey],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
