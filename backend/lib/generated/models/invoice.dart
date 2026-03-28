import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'payment_status.dart';
import 'payment.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    String? paymentId,
    required String invoiceNumber,
    required int amount,
    @Default("INR")
    String currency,
    @Default(PaymentStatus.pending)
    PaymentStatus status,
    required Map<String, dynamic> items,
    String? pdfUrl,
    DateTime? dueDate,
    DateTime? paidAt,
    int? taxAmount,
    double? taxRate,
    String? hsnCode,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payment? payment,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

/// Input for creating a new Invoice
@freezed
class CreateInvoiceInput with _$CreateInvoiceInput {
  const factory CreateInvoiceInput({
    String? paymentId,
    required String invoiceNumber,
    required int amount,
    @Default("INR")
    String? currency,
    @Default(PaymentStatus.pending)
    PaymentStatus status,
    required Map<String, dynamic> items,
    String? pdfUrl,
    DateTime? dueDate,
    DateTime? paidAt,
    int? taxAmount,
    double? taxRate,
    String? hsnCode,
  }) = _CreateInvoiceInput;

  factory CreateInvoiceInput.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceInputFromJson(json);
}

/// Input for updating an existing Invoice
@freezed
class UpdateInvoiceInput with _$UpdateInvoiceInput {
  const factory UpdateInvoiceInput({
    String? paymentId,
    String? invoiceNumber,
    int? amount,
    String? currency,
    PaymentStatus? status,
    Map<String, dynamic>? items,
    String? pdfUrl,
    DateTime? dueDate,
    DateTime? paidAt,
    int? taxAmount,
    double? taxRate,
    String? hsnCode,
  }) = _UpdateInvoiceInput;

  factory UpdateInvoiceInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvoiceInputFromJson(json);
}

/// Unique where input for Invoice
/// At least one field must be provided
@freezed
class InvoiceWhereUniqueInput with _$InvoiceWhereUniqueInput {
  const factory InvoiceWhereUniqueInput({
    String? id,
    String? paymentId,
    String? invoiceNumber,
  }) = _InvoiceWhereUniqueInput;

  factory InvoiceWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$InvoiceWhereUniqueInputFromJson(json);
}

/// Where input for filtering Invoice records
@freezed
class InvoiceWhereInput with _$InvoiceWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory InvoiceWhereInput({
    StringFilter? id,
    StringFilter? paymentId,
    StringFilter? invoiceNumber,
    IntFilter? amount,
    StringFilter? currency,
    PaymentStatusFilter? status,
    StringFilter? pdfUrl,
    DateTimeFilter? dueDate,
    DateTimeFilter? paidAt,
    IntFilter? taxAmount,
    FloatFilter? taxRate,
    StringFilter? hsnCode,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by payment relation
    PaymentRelationFilter? payment,
    List<InvoiceWhereInput>? AND,
    List<InvoiceWhereInput>? OR,
    InvoiceWhereInput? NOT,
  }) = _InvoiceWhereInput;

  factory InvoiceWhereInput.fromJson(Map<String, dynamic> json) =>
      _$InvoiceWhereInputFromJson(json);
}

/// Filter for Invoice list relations (one-to-many, many-to-many)
@freezed
class InvoiceListRelationFilter with _$InvoiceListRelationFilter {
  const factory InvoiceListRelationFilter({
    /// At least one related record matches
    InvoiceWhereInput? some,
    /// All related records match
    InvoiceWhereInput? every,
    /// No related records match
    InvoiceWhereInput? none,
  }) = _InvoiceListRelationFilter;

  factory InvoiceListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$InvoiceListRelationFilterFromJson(json);
}

/// Filter for Invoice single relations (one-to-one, many-to-one)
@freezed
class InvoiceRelationFilter with _$InvoiceRelationFilter {
  const factory InvoiceRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') InvoiceWhereInput? is_,
    /// Related record does not match
    InvoiceWhereInput? isNot,
  }) = _InvoiceRelationFilter;

  factory InvoiceRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRelationFilterFromJson(json);
}

/// Order by input for sorting Invoice records
@freezed
class InvoiceOrderByInput with _$InvoiceOrderByInput {
  const factory InvoiceOrderByInput({
    SortOrder? id,
    SortOrder? paymentId,
    SortOrder? invoiceNumber,
    SortOrder? amount,
    SortOrder? currency,
    SortOrder? pdfUrl,
    SortOrder? dueDate,
    SortOrder? paidAt,
    SortOrder? taxAmount,
    SortOrder? taxRate,
    SortOrder? hsnCode,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _InvoiceOrderByInput;

  factory InvoiceOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$InvoiceOrderByInputFromJson(json);
}

