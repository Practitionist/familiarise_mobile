// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      paymentId: json['paymentId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      status: $enumDecodeNullable(_$PaymentStatusEnumMap, json['status']) ??
          PaymentStatus.pending,
      items: json['items'] as Map<String, dynamic>,
      pdfUrl: json['pdfUrl'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      taxAmount: (json['taxAmount'] as num?)?.toInt(),
      taxRate: (json['taxRate'] as num?)?.toDouble(),
      hsnCode: json['hsnCode'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentId': instance.paymentId,
      'invoiceNumber': instance.invoiceNumber,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'items': instance.items,
      'pdfUrl': instance.pdfUrl,
      'dueDate': instance.dueDate?.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'taxAmount': instance.taxAmount,
      'taxRate': instance.taxRate,
      'hsnCode': instance.hsnCode,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.succeeded: 'SUCCEEDED',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.expired: 'EXPIRED',
};

_$CreateInvoiceInputImpl _$$CreateInvoiceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateInvoiceInputImpl(
      paymentId: json['paymentId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      status: $enumDecodeNullable(_$PaymentStatusEnumMap, json['status']) ??
          PaymentStatus.pending,
      items: json['items'] as Map<String, dynamic>,
      pdfUrl: json['pdfUrl'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      taxAmount: (json['taxAmount'] as num?)?.toInt(),
      taxRate: (json['taxRate'] as num?)?.toDouble(),
      hsnCode: json['hsnCode'] as String?,
    );

Map<String, dynamic> _$$CreateInvoiceInputImplToJson(
        _$CreateInvoiceInputImpl instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'invoiceNumber': instance.invoiceNumber,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'items': instance.items,
      'pdfUrl': instance.pdfUrl,
      'dueDate': instance.dueDate?.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'taxAmount': instance.taxAmount,
      'taxRate': instance.taxRate,
      'hsnCode': instance.hsnCode,
    };

_$UpdateInvoiceInputImpl _$$UpdateInvoiceInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateInvoiceInputImpl(
      paymentId: json['paymentId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      status: $enumDecodeNullable(_$PaymentStatusEnumMap, json['status']),
      items: json['items'] as Map<String, dynamic>?,
      pdfUrl: json['pdfUrl'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      taxAmount: (json['taxAmount'] as num?)?.toInt(),
      taxRate: (json['taxRate'] as num?)?.toDouble(),
      hsnCode: json['hsnCode'] as String?,
    );

Map<String, dynamic> _$$UpdateInvoiceInputImplToJson(
        _$UpdateInvoiceInputImpl instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'invoiceNumber': instance.invoiceNumber,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': _$PaymentStatusEnumMap[instance.status],
      'items': instance.items,
      'pdfUrl': instance.pdfUrl,
      'dueDate': instance.dueDate?.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'taxAmount': instance.taxAmount,
      'taxRate': instance.taxRate,
      'hsnCode': instance.hsnCode,
    };

_$InvoiceWhereUniqueInputImpl _$$InvoiceWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceWhereUniqueInputImpl(
      id: json['id'] as String?,
      paymentId: json['paymentId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String?,
    );

Map<String, dynamic> _$$InvoiceWhereUniqueInputImplToJson(
        _$InvoiceWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentId': instance.paymentId,
      'invoiceNumber': instance.invoiceNumber,
    };

_$InvoiceWhereInputImpl _$$InvoiceWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      paymentId: json['paymentId'] == null
          ? null
          : StringFilter.fromJson(json['paymentId'] as Map<String, dynamic>),
      invoiceNumber: json['invoiceNumber'] == null
          ? null
          : StringFilter.fromJson(
              json['invoiceNumber'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : PaymentStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      pdfUrl: json['pdfUrl'] == null
          ? null
          : StringFilter.fromJson(json['pdfUrl'] as Map<String, dynamic>),
      dueDate: json['dueDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['dueDate'] as Map<String, dynamic>),
      paidAt: json['paidAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['paidAt'] as Map<String, dynamic>),
      taxAmount: json['taxAmount'] == null
          ? null
          : IntFilter.fromJson(json['taxAmount'] as Map<String, dynamic>),
      taxRate: json['taxRate'] == null
          ? null
          : FloatFilter.fromJson(json['taxRate'] as Map<String, dynamic>),
      hsnCode: json['hsnCode'] == null
          ? null
          : StringFilter.fromJson(json['hsnCode'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : PaymentRelationFilter.fromJson(
              json['payment'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => InvoiceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => InvoiceWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceWhereInputImplToJson(
        _$InvoiceWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'invoiceNumber': instance.invoiceNumber?.toJson(),
      'amount': instance.amount?.toJson(),
      'currency': instance.currency?.toJson(),
      'status': instance.status?.toJson(),
      'pdfUrl': instance.pdfUrl?.toJson(),
      'dueDate': instance.dueDate?.toJson(),
      'paidAt': instance.paidAt?.toJson(),
      'taxAmount': instance.taxAmount?.toJson(),
      'taxRate': instance.taxRate?.toJson(),
      'hsnCode': instance.hsnCode?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'payment': instance.payment?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$InvoiceListRelationFilterImpl _$$InvoiceListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceListRelationFilterImplToJson(
        _$InvoiceListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$InvoiceRelationFilterImpl _$$InvoiceRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : InvoiceWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceRelationFilterImplToJson(
        _$InvoiceRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$InvoiceOrderByInputImpl _$$InvoiceOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
      invoiceNumber:
          $enumDecodeNullable(_$SortOrderEnumMap, json['invoiceNumber']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      pdfUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['pdfUrl']),
      dueDate: $enumDecodeNullable(_$SortOrderEnumMap, json['dueDate']),
      paidAt: $enumDecodeNullable(_$SortOrderEnumMap, json['paidAt']),
      taxAmount: $enumDecodeNullable(_$SortOrderEnumMap, json['taxAmount']),
      taxRate: $enumDecodeNullable(_$SortOrderEnumMap, json['taxRate']),
      hsnCode: $enumDecodeNullable(_$SortOrderEnumMap, json['hsnCode']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$InvoiceOrderByInputImplToJson(
        _$InvoiceOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'invoiceNumber': _$SortOrderEnumMap[instance.invoiceNumber],
      'amount': _$SortOrderEnumMap[instance.amount],
      'currency': _$SortOrderEnumMap[instance.currency],
      'pdfUrl': _$SortOrderEnumMap[instance.pdfUrl],
      'dueDate': _$SortOrderEnumMap[instance.dueDate],
      'paidAt': _$SortOrderEnumMap[instance.paidAt],
      'taxAmount': _$SortOrderEnumMap[instance.taxAmount],
      'taxRate': _$SortOrderEnumMap[instance.taxRate],
      'hsnCode': _$SortOrderEnumMap[instance.hsnCode],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
