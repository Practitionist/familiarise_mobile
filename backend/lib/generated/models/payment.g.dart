// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      originalAmount: (json['originalAmount'] as num).toInt(),
      taxAmount: (json['taxAmount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String,
      description: json['description'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      paymentMethod: json['paymentMethod'] as String,
      paymentIntent: json['paymentIntent'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      isMockPayment: json['isMockPayment'] as bool? ?? false,
      buyerCountry: json['buyerCountry'] as String?,
      isInternational: json['isInternational'] as bool? ?? false,
      displayCurrencyAtCheckout: json['displayCurrencyAtCheckout'] as String?,
      exchangeRateAtCheckout:
          (json['exchangeRateAtCheckout'] as num?)?.toDouble(),
      userId: json['userId'] as String,
      appointmentId: json['appointmentId'] as String?,
      discountCodeId: json['discountCodeId'] as String?,
      refunds: (json['refunds'] as List<dynamic>)
          .map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      disputes: (json['disputes'] as List<dynamic>)
          .map((e) => Dispute.fromJson(e as Map<String, dynamic>))
          .toList(),
      earnings: (json['earnings'] as List<dynamic>)
          .map((e) => ConsultantEarnings.fromJson(e as Map<String, dynamic>))
          .toList(),
      creditUsages: (json['creditUsages'] as List<dynamic>)
          .map((e) => ReferralCreditUsage.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'taxAmount': instance.taxAmount,
      'currency': instance.currency,
      'description': instance.description,
      'receiptUrl': instance.receiptUrl,
      'paymentMethod': instance.paymentMethod,
      'paymentIntent': instance.paymentIntent,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'isMockPayment': instance.isMockPayment,
      'buyerCountry': instance.buyerCountry,
      'isInternational': instance.isInternational,
      'displayCurrencyAtCheckout': instance.displayCurrencyAtCheckout,
      'exchangeRateAtCheckout': instance.exchangeRateAtCheckout,
      'userId': instance.userId,
      'appointmentId': instance.appointmentId,
      'discountCodeId': instance.discountCodeId,
      'refunds': instance.refunds,
      'disputes': instance.disputes,
      'earnings': instance.earnings,
      'creditUsages': instance.creditUsages,
      'invoice': instance.invoice,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.succeeded: 'SUCCEEDED',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.expired: 'EXPIRED',
};

_$CreatePaymentInputImpl _$$CreatePaymentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaymentInputImpl(
      amount: (json['amount'] as num).toInt(),
      originalAmount: (json['originalAmount'] as num).toInt(),
      taxAmount: (json['taxAmount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String,
      description: json['description'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      paymentMethod: json['paymentMethod'] as String,
      paymentIntent: json['paymentIntent'] as String,
      paymentGateway:
          $enumDecode(_$PaymentGatewayEnumMap, json['paymentGateway']),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      isMockPayment: json['isMockPayment'] as bool? ?? false,
      buyerCountry: json['buyerCountry'] as String?,
      isInternational: json['isInternational'] as bool? ?? false,
      displayCurrencyAtCheckout: json['displayCurrencyAtCheckout'] as String?,
      exchangeRateAtCheckout:
          (json['exchangeRateAtCheckout'] as num?)?.toDouble(),
      userId: json['userId'] as String,
      appointmentId: json['appointmentId'] as String?,
      discountCodeId: json['discountCodeId'] as String?,
    );

Map<String, dynamic> _$$CreatePaymentInputImplToJson(
        _$CreatePaymentInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'taxAmount': instance.taxAmount,
      'currency': instance.currency,
      'description': instance.description,
      'receiptUrl': instance.receiptUrl,
      'paymentMethod': instance.paymentMethod,
      'paymentIntent': instance.paymentIntent,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'isMockPayment': instance.isMockPayment,
      'buyerCountry': instance.buyerCountry,
      'isInternational': instance.isInternational,
      'displayCurrencyAtCheckout': instance.displayCurrencyAtCheckout,
      'exchangeRateAtCheckout': instance.exchangeRateAtCheckout,
      'userId': instance.userId,
      'appointmentId': instance.appointmentId,
      'discountCodeId': instance.discountCodeId,
    };

_$UpdatePaymentInputImpl _$$UpdatePaymentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePaymentInputImpl(
      amount: (json['amount'] as num?)?.toInt(),
      originalAmount: (json['originalAmount'] as num?)?.toInt(),
      taxAmount: (json['taxAmount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      description: json['description'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentIntent: json['paymentIntent'] as String?,
      paymentGateway:
          $enumDecodeNullable(_$PaymentGatewayEnumMap, json['paymentGateway']),
      paymentStatus:
          $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      isMockPayment: json['isMockPayment'] as bool?,
      buyerCountry: json['buyerCountry'] as String?,
      isInternational: json['isInternational'] as bool?,
      displayCurrencyAtCheckout: json['displayCurrencyAtCheckout'] as String?,
      exchangeRateAtCheckout:
          (json['exchangeRateAtCheckout'] as num?)?.toDouble(),
      userId: json['userId'] as String?,
      appointmentId: json['appointmentId'] as String?,
      discountCodeId: json['discountCodeId'] as String?,
    );

Map<String, dynamic> _$$UpdatePaymentInputImplToJson(
        _$UpdatePaymentInputImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'originalAmount': instance.originalAmount,
      'taxAmount': instance.taxAmount,
      'currency': instance.currency,
      'description': instance.description,
      'receiptUrl': instance.receiptUrl,
      'paymentMethod': instance.paymentMethod,
      'paymentIntent': instance.paymentIntent,
      'paymentGateway': _$PaymentGatewayEnumMap[instance.paymentGateway],
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'isMockPayment': instance.isMockPayment,
      'buyerCountry': instance.buyerCountry,
      'isInternational': instance.isInternational,
      'displayCurrencyAtCheckout': instance.displayCurrencyAtCheckout,
      'exchangeRateAtCheckout': instance.exchangeRateAtCheckout,
      'userId': instance.userId,
      'appointmentId': instance.appointmentId,
      'discountCodeId': instance.discountCodeId,
    };

_$PaymentWhereUniqueInputImpl _$$PaymentWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentWhereUniqueInputImpl(
      id: json['id'] as String?,
      paymentIntent: json['paymentIntent'] as String?,
    );

Map<String, dynamic> _$$PaymentWhereUniqueInputImplToJson(
        _$PaymentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentIntent': instance.paymentIntent,
    };

_$PaymentWhereInputImpl _$$PaymentWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      originalAmount: json['originalAmount'] == null
          ? null
          : IntFilter.fromJson(json['originalAmount'] as Map<String, dynamic>),
      taxAmount: json['taxAmount'] == null
          ? null
          : IntFilter.fromJson(json['taxAmount'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      receiptUrl: json['receiptUrl'] == null
          ? null
          : StringFilter.fromJson(json['receiptUrl'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : StringFilter.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      paymentIntent: json['paymentIntent'] == null
          ? null
          : StringFilter.fromJson(
              json['paymentIntent'] as Map<String, dynamic>),
      paymentGateway: json['paymentGateway'] == null
          ? null
          : PaymentGatewayFilter.fromJson(
              json['paymentGateway'] as Map<String, dynamic>),
      paymentStatus: json['paymentStatus'] == null
          ? null
          : PaymentStatusFilter.fromJson(
              json['paymentStatus'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      isMockPayment: json['isMockPayment'] == null
          ? null
          : BooleanFilter.fromJson(
              json['isMockPayment'] as Map<String, dynamic>),
      buyerCountry: json['buyerCountry'] == null
          ? null
          : StringFilter.fromJson(json['buyerCountry'] as Map<String, dynamic>),
      isInternational: json['isInternational'] == null
          ? null
          : BooleanFilter.fromJson(
              json['isInternational'] as Map<String, dynamic>),
      displayCurrencyAtCheckout: json['displayCurrencyAtCheckout'] == null
          ? null
          : StringFilter.fromJson(
              json['displayCurrencyAtCheckout'] as Map<String, dynamic>),
      exchangeRateAtCheckout: json['exchangeRateAtCheckout'] == null
          ? null
          : FloatFilter.fromJson(
              json['exchangeRateAtCheckout'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      appointment: json['appointment'] == null
          ? null
          : AppointmentRelationFilter.fromJson(
              json['appointment'] as Map<String, dynamic>),
      appointmentId: json['appointmentId'] == null
          ? null
          : StringFilter.fromJson(
              json['appointmentId'] as Map<String, dynamic>),
      discountCode: json['discountCode'] == null
          ? null
          : DiscountCodeRelationFilter.fromJson(
              json['discountCode'] as Map<String, dynamic>),
      discountCodeId: json['discountCodeId'] == null
          ? null
          : StringFilter.fromJson(
              json['discountCodeId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => PaymentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => PaymentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : PaymentWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentWhereInputImplToJson(
        _$PaymentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'amount': instance.amount?.toJson(),
      'originalAmount': instance.originalAmount?.toJson(),
      'taxAmount': instance.taxAmount?.toJson(),
      'currency': instance.currency?.toJson(),
      'description': instance.description?.toJson(),
      'receiptUrl': instance.receiptUrl?.toJson(),
      'paymentMethod': instance.paymentMethod?.toJson(),
      'paymentIntent': instance.paymentIntent?.toJson(),
      'paymentGateway': instance.paymentGateway?.toJson(),
      'paymentStatus': instance.paymentStatus?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'isMockPayment': instance.isMockPayment?.toJson(),
      'buyerCountry': instance.buyerCountry?.toJson(),
      'isInternational': instance.isInternational?.toJson(),
      'displayCurrencyAtCheckout': instance.displayCurrencyAtCheckout?.toJson(),
      'exchangeRateAtCheckout': instance.exchangeRateAtCheckout?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'appointment': instance.appointment?.toJson(),
      'appointmentId': instance.appointmentId?.toJson(),
      'discountCode': instance.discountCode?.toJson(),
      'discountCodeId': instance.discountCodeId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$PaymentListRelationFilterImpl _$$PaymentListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : PaymentWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : PaymentWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : PaymentWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentListRelationFilterImplToJson(
        _$PaymentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$PaymentRelationFilterImpl _$$PaymentRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : PaymentWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : PaymentWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentRelationFilterImplToJson(
        _$PaymentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$PaymentOrderByInputImpl _$$PaymentOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      originalAmount:
          $enumDecodeNullable(_$SortOrderEnumMap, json['originalAmount']),
      taxAmount: $enumDecodeNullable(_$SortOrderEnumMap, json['taxAmount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      receiptUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['receiptUrl']),
      paymentMethod:
          $enumDecodeNullable(_$SortOrderEnumMap, json['paymentMethod']),
      paymentIntent:
          $enumDecodeNullable(_$SortOrderEnumMap, json['paymentIntent']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      isMockPayment:
          $enumDecodeNullable(_$SortOrderEnumMap, json['isMockPayment']),
      buyerCountry:
          $enumDecodeNullable(_$SortOrderEnumMap, json['buyerCountry']),
      isInternational:
          $enumDecodeNullable(_$SortOrderEnumMap, json['isInternational']),
      displayCurrencyAtCheckout: $enumDecodeNullable(
          _$SortOrderEnumMap, json['displayCurrencyAtCheckout']),
      exchangeRateAtCheckout: $enumDecodeNullable(
          _$SortOrderEnumMap, json['exchangeRateAtCheckout']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      appointmentId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['appointmentId']),
      discountCodeId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['discountCodeId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$PaymentOrderByInputImplToJson(
        _$PaymentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'amount': _$SortOrderEnumMap[instance.amount],
      'originalAmount': _$SortOrderEnumMap[instance.originalAmount],
      'taxAmount': _$SortOrderEnumMap[instance.taxAmount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'description': _$SortOrderEnumMap[instance.description],
      'receiptUrl': _$SortOrderEnumMap[instance.receiptUrl],
      'paymentMethod': _$SortOrderEnumMap[instance.paymentMethod],
      'paymentIntent': _$SortOrderEnumMap[instance.paymentIntent],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'isMockPayment': _$SortOrderEnumMap[instance.isMockPayment],
      'buyerCountry': _$SortOrderEnumMap[instance.buyerCountry],
      'isInternational': _$SortOrderEnumMap[instance.isInternational],
      'displayCurrencyAtCheckout':
          _$SortOrderEnumMap[instance.displayCurrencyAtCheckout],
      'exchangeRateAtCheckout':
          _$SortOrderEnumMap[instance.exchangeRateAtCheckout],
      'userId': _$SortOrderEnumMap[instance.userId],
      'appointmentId': _$SortOrderEnumMap[instance.appointmentId],
      'discountCodeId': _$SortOrderEnumMap[instance.discountCodeId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
