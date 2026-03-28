// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get items => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  int? get taxAmount => throw _privateConstructorUsedError;
  double? get taxRate => throw _privateConstructorUsedError;
  String? get hsnCode => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment => throw _privateConstructorUsedError;

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      String? paymentId,
      String invoiceNumber,
      int amount,
      String currency,
      PaymentStatus status,
      Map<String, dynamic> items,
      String? pdfUrl,
      DateTime? dueDate,
      DateTime? paidAt,
      int? taxAmount,
      double? taxRate,
      String? hsnCode,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment});

  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentId = freezed,
    Object? invoiceNumber = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? items = null,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ) as $Val);
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? paymentId,
      String invoiceNumber,
      int amount,
      String currency,
      PaymentStatus status,
      Map<String, dynamic> items,
      String? pdfUrl,
      DateTime? dueDate,
      DateTime? paidAt,
      int? taxAmount,
      double? taxRate,
      String? hsnCode,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment});

  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentId = freezed,
    Object? invoiceNumber = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? items = null,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? payment = freezed,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {required this.id,
      this.paymentId,
      required this.invoiceNumber,
      required this.amount,
      this.currency = "INR",
      this.status = PaymentStatus.pending,
      required final Map<String, dynamic> items,
      this.pdfUrl,
      this.dueDate,
      this.paidAt,
      this.taxAmount,
      this.taxRate,
      this.hsnCode,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payment})
      : _items = items;

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String? paymentId;
  @override
  final String invoiceNumber;
  @override
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final PaymentStatus status;
  final Map<String, dynamic> _items;
  @override
  Map<String, dynamic> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  final String? pdfUrl;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? paidAt;
  @override
  final int? taxAmount;
  @override
  final double? taxRate;
  @override
  final String? hsnCode;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payment? payment;

  @override
  String toString() {
    return 'Invoice(id: $id, paymentId: $paymentId, invoiceNumber: $invoiceNumber, amount: $amount, currency: $currency, status: $status, items: $items, pdfUrl: $pdfUrl, dueDate: $dueDate, paidAt: $paidAt, taxAmount: $taxAmount, taxRate: $taxRate, hsnCode: $hsnCode, createdAt: $createdAt, updatedAt: $updatedAt, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.hsnCode, hsnCode) || other.hsnCode == hsnCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentId,
      invoiceNumber,
      amount,
      currency,
      status,
      const DeepCollectionEquality().hash(_items),
      pdfUrl,
      dueDate,
      paidAt,
      taxAmount,
      taxRate,
      hsnCode,
      createdAt,
      updatedAt,
      payment);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      final String? paymentId,
      required final String invoiceNumber,
      required final int amount,
      final String currency,
      final PaymentStatus status,
      required final Map<String, dynamic> items,
      final String? pdfUrl,
      final DateTime? dueDate,
      final DateTime? paidAt,
      final int? taxAmount,
      final double? taxRate,
      final String? hsnCode,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payment? payment}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  String? get paymentId;
  @override
  String get invoiceNumber;
  @override
  int get amount;
  @override
  String get currency;
  @override
  PaymentStatus get status;
  @override
  Map<String, dynamic> get items;
  @override
  String? get pdfUrl;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get paidAt;
  @override
  int? get taxAmount;
  @override
  double? get taxRate;
  @override
  String? get hsnCode;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateInvoiceInput _$CreateInvoiceInputFromJson(Map<String, dynamic> json) {
  return _CreateInvoiceInput.fromJson(json);
}

/// @nodoc
mixin _$CreateInvoiceInput {
  String? get paymentId => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get items => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  int? get taxAmount => throw _privateConstructorUsedError;
  double? get taxRate => throw _privateConstructorUsedError;
  String? get hsnCode => throw _privateConstructorUsedError;

  /// Serializes this CreateInvoiceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateInvoiceInputCopyWith<CreateInvoiceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvoiceInputCopyWith<$Res> {
  factory $CreateInvoiceInputCopyWith(
          CreateInvoiceInput value, $Res Function(CreateInvoiceInput) then) =
      _$CreateInvoiceInputCopyWithImpl<$Res, CreateInvoiceInput>;
  @useResult
  $Res call(
      {String? paymentId,
      String invoiceNumber,
      int amount,
      String? currency,
      PaymentStatus status,
      Map<String, dynamic> items,
      String? pdfUrl,
      DateTime? dueDate,
      DateTime? paidAt,
      int? taxAmount,
      double? taxRate,
      String? hsnCode});
}

/// @nodoc
class _$CreateInvoiceInputCopyWithImpl<$Res, $Val extends CreateInvoiceInput>
    implements $CreateInvoiceInputCopyWith<$Res> {
  _$CreateInvoiceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? invoiceNumber = null,
    Object? amount = null,
    Object? currency = freezed,
    Object? status = null,
    Object? items = null,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
  }) {
    return _then(_value.copyWith(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateInvoiceInputImplCopyWith<$Res>
    implements $CreateInvoiceInputCopyWith<$Res> {
  factory _$$CreateInvoiceInputImplCopyWith(_$CreateInvoiceInputImpl value,
          $Res Function(_$CreateInvoiceInputImpl) then) =
      __$$CreateInvoiceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? paymentId,
      String invoiceNumber,
      int amount,
      String? currency,
      PaymentStatus status,
      Map<String, dynamic> items,
      String? pdfUrl,
      DateTime? dueDate,
      DateTime? paidAt,
      int? taxAmount,
      double? taxRate,
      String? hsnCode});
}

/// @nodoc
class __$$CreateInvoiceInputImplCopyWithImpl<$Res>
    extends _$CreateInvoiceInputCopyWithImpl<$Res, _$CreateInvoiceInputImpl>
    implements _$$CreateInvoiceInputImplCopyWith<$Res> {
  __$$CreateInvoiceInputImplCopyWithImpl(_$CreateInvoiceInputImpl _value,
      $Res Function(_$CreateInvoiceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? invoiceNumber = null,
    Object? amount = null,
    Object? currency = freezed,
    Object? status = null,
    Object? items = null,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
  }) {
    return _then(_$CreateInvoiceInputImpl(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateInvoiceInputImpl implements _CreateInvoiceInput {
  const _$CreateInvoiceInputImpl(
      {this.paymentId,
      required this.invoiceNumber,
      required this.amount,
      this.currency = "INR",
      this.status = PaymentStatus.pending,
      required final Map<String, dynamic> items,
      this.pdfUrl,
      this.dueDate,
      this.paidAt,
      this.taxAmount,
      this.taxRate,
      this.hsnCode})
      : _items = items;

  factory _$CreateInvoiceInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateInvoiceInputImplFromJson(json);

  @override
  final String? paymentId;
  @override
  final String invoiceNumber;
  @override
  final int amount;
  @override
  @JsonKey()
  final String? currency;
  @override
  @JsonKey()
  final PaymentStatus status;
  final Map<String, dynamic> _items;
  @override
  Map<String, dynamic> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  final String? pdfUrl;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? paidAt;
  @override
  final int? taxAmount;
  @override
  final double? taxRate;
  @override
  final String? hsnCode;

  @override
  String toString() {
    return 'CreateInvoiceInput(paymentId: $paymentId, invoiceNumber: $invoiceNumber, amount: $amount, currency: $currency, status: $status, items: $items, pdfUrl: $pdfUrl, dueDate: $dueDate, paidAt: $paidAt, taxAmount: $taxAmount, taxRate: $taxRate, hsnCode: $hsnCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvoiceInputImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.hsnCode, hsnCode) || other.hsnCode == hsnCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentId,
      invoiceNumber,
      amount,
      currency,
      status,
      const DeepCollectionEquality().hash(_items),
      pdfUrl,
      dueDate,
      paidAt,
      taxAmount,
      taxRate,
      hsnCode);

  /// Create a copy of CreateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvoiceInputImplCopyWith<_$CreateInvoiceInputImpl> get copyWith =>
      __$$CreateInvoiceInputImplCopyWithImpl<_$CreateInvoiceInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInvoiceInputImplToJson(
      this,
    );
  }
}

abstract class _CreateInvoiceInput implements CreateInvoiceInput {
  const factory _CreateInvoiceInput(
      {final String? paymentId,
      required final String invoiceNumber,
      required final int amount,
      final String? currency,
      final PaymentStatus status,
      required final Map<String, dynamic> items,
      final String? pdfUrl,
      final DateTime? dueDate,
      final DateTime? paidAt,
      final int? taxAmount,
      final double? taxRate,
      final String? hsnCode}) = _$CreateInvoiceInputImpl;

  factory _CreateInvoiceInput.fromJson(Map<String, dynamic> json) =
      _$CreateInvoiceInputImpl.fromJson;

  @override
  String? get paymentId;
  @override
  String get invoiceNumber;
  @override
  int get amount;
  @override
  String? get currency;
  @override
  PaymentStatus get status;
  @override
  Map<String, dynamic> get items;
  @override
  String? get pdfUrl;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get paidAt;
  @override
  int? get taxAmount;
  @override
  double? get taxRate;
  @override
  String? get hsnCode;

  /// Create a copy of CreateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInvoiceInputImplCopyWith<_$CreateInvoiceInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateInvoiceInput _$UpdateInvoiceInputFromJson(Map<String, dynamic> json) {
  return _UpdateInvoiceInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateInvoiceInput {
  String? get paymentId => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  PaymentStatus? get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get items => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  int? get taxAmount => throw _privateConstructorUsedError;
  double? get taxRate => throw _privateConstructorUsedError;
  String? get hsnCode => throw _privateConstructorUsedError;

  /// Serializes this UpdateInvoiceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateInvoiceInputCopyWith<UpdateInvoiceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInvoiceInputCopyWith<$Res> {
  factory $UpdateInvoiceInputCopyWith(
          UpdateInvoiceInput value, $Res Function(UpdateInvoiceInput) then) =
      _$UpdateInvoiceInputCopyWithImpl<$Res, UpdateInvoiceInput>;
  @useResult
  $Res call(
      {String? paymentId,
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
      String? hsnCode});
}

/// @nodoc
class _$UpdateInvoiceInputCopyWithImpl<$Res, $Val extends UpdateInvoiceInput>
    implements $UpdateInvoiceInputCopyWith<$Res> {
  _$UpdateInvoiceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? items = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
  }) {
    return _then(_value.copyWith(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInvoiceInputImplCopyWith<$Res>
    implements $UpdateInvoiceInputCopyWith<$Res> {
  factory _$$UpdateInvoiceInputImplCopyWith(_$UpdateInvoiceInputImpl value,
          $Res Function(_$UpdateInvoiceInputImpl) then) =
      __$$UpdateInvoiceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? paymentId,
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
      String? hsnCode});
}

/// @nodoc
class __$$UpdateInvoiceInputImplCopyWithImpl<$Res>
    extends _$UpdateInvoiceInputCopyWithImpl<$Res, _$UpdateInvoiceInputImpl>
    implements _$$UpdateInvoiceInputImplCopyWith<$Res> {
  __$$UpdateInvoiceInputImplCopyWithImpl(_$UpdateInvoiceInputImpl _value,
      $Res Function(_$UpdateInvoiceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? items = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
  }) {
    return _then(_$UpdateInvoiceInputImpl(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateInvoiceInputImpl implements _UpdateInvoiceInput {
  const _$UpdateInvoiceInputImpl(
      {this.paymentId,
      this.invoiceNumber,
      this.amount,
      this.currency,
      this.status,
      final Map<String, dynamic>? items,
      this.pdfUrl,
      this.dueDate,
      this.paidAt,
      this.taxAmount,
      this.taxRate,
      this.hsnCode})
      : _items = items;

  factory _$UpdateInvoiceInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateInvoiceInputImplFromJson(json);

  @override
  final String? paymentId;
  @override
  final String? invoiceNumber;
  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final PaymentStatus? status;
  final Map<String, dynamic>? _items;
  @override
  Map<String, dynamic>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? pdfUrl;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? paidAt;
  @override
  final int? taxAmount;
  @override
  final double? taxRate;
  @override
  final String? hsnCode;

  @override
  String toString() {
    return 'UpdateInvoiceInput(paymentId: $paymentId, invoiceNumber: $invoiceNumber, amount: $amount, currency: $currency, status: $status, items: $items, pdfUrl: $pdfUrl, dueDate: $dueDate, paidAt: $paidAt, taxAmount: $taxAmount, taxRate: $taxRate, hsnCode: $hsnCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInvoiceInputImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.hsnCode, hsnCode) || other.hsnCode == hsnCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentId,
      invoiceNumber,
      amount,
      currency,
      status,
      const DeepCollectionEquality().hash(_items),
      pdfUrl,
      dueDate,
      paidAt,
      taxAmount,
      taxRate,
      hsnCode);

  /// Create a copy of UpdateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInvoiceInputImplCopyWith<_$UpdateInvoiceInputImpl> get copyWith =>
      __$$UpdateInvoiceInputImplCopyWithImpl<_$UpdateInvoiceInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateInvoiceInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateInvoiceInput implements UpdateInvoiceInput {
  const factory _UpdateInvoiceInput(
      {final String? paymentId,
      final String? invoiceNumber,
      final int? amount,
      final String? currency,
      final PaymentStatus? status,
      final Map<String, dynamic>? items,
      final String? pdfUrl,
      final DateTime? dueDate,
      final DateTime? paidAt,
      final int? taxAmount,
      final double? taxRate,
      final String? hsnCode}) = _$UpdateInvoiceInputImpl;

  factory _UpdateInvoiceInput.fromJson(Map<String, dynamic> json) =
      _$UpdateInvoiceInputImpl.fromJson;

  @override
  String? get paymentId;
  @override
  String? get invoiceNumber;
  @override
  int? get amount;
  @override
  String? get currency;
  @override
  PaymentStatus? get status;
  @override
  Map<String, dynamic>? get items;
  @override
  String? get pdfUrl;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get paidAt;
  @override
  int? get taxAmount;
  @override
  double? get taxRate;
  @override
  String? get hsnCode;

  /// Create a copy of UpdateInvoiceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInvoiceInputImplCopyWith<_$UpdateInvoiceInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceWhereUniqueInput _$InvoiceWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _InvoiceWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$InvoiceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;

  /// Serializes this InvoiceWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceWhereUniqueInputCopyWith<InvoiceWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceWhereUniqueInputCopyWith<$Res> {
  factory $InvoiceWhereUniqueInputCopyWith(InvoiceWhereUniqueInput value,
          $Res Function(InvoiceWhereUniqueInput) then) =
      _$InvoiceWhereUniqueInputCopyWithImpl<$Res, InvoiceWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? paymentId, String? invoiceNumber});
}

/// @nodoc
class _$InvoiceWhereUniqueInputCopyWithImpl<$Res,
        $Val extends InvoiceWhereUniqueInput>
    implements $InvoiceWhereUniqueInputCopyWith<$Res> {
  _$InvoiceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceWhereUniqueInputImplCopyWith<$Res>
    implements $InvoiceWhereUniqueInputCopyWith<$Res> {
  factory _$$InvoiceWhereUniqueInputImplCopyWith(
          _$InvoiceWhereUniqueInputImpl value,
          $Res Function(_$InvoiceWhereUniqueInputImpl) then) =
      __$$InvoiceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? paymentId, String? invoiceNumber});
}

/// @nodoc
class __$$InvoiceWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$InvoiceWhereUniqueInputCopyWithImpl<$Res,
        _$InvoiceWhereUniqueInputImpl>
    implements _$$InvoiceWhereUniqueInputImplCopyWith<$Res> {
  __$$InvoiceWhereUniqueInputImplCopyWithImpl(
      _$InvoiceWhereUniqueInputImpl _value,
      $Res Function(_$InvoiceWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
  }) {
    return _then(_$InvoiceWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceWhereUniqueInputImpl implements _InvoiceWhereUniqueInput {
  const _$InvoiceWhereUniqueInputImpl(
      {this.id, this.paymentId, this.invoiceNumber});

  factory _$InvoiceWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? paymentId;
  @override
  final String? invoiceNumber;

  @override
  String toString() {
    return 'InvoiceWhereUniqueInput(id: $id, paymentId: $paymentId, invoiceNumber: $invoiceNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, paymentId, invoiceNumber);

  /// Create a copy of InvoiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceWhereUniqueInputImplCopyWith<_$InvoiceWhereUniqueInputImpl>
      get copyWith => __$$InvoiceWhereUniqueInputImplCopyWithImpl<
          _$InvoiceWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _InvoiceWhereUniqueInput implements InvoiceWhereUniqueInput {
  const factory _InvoiceWhereUniqueInput(
      {final String? id,
      final String? paymentId,
      final String? invoiceNumber}) = _$InvoiceWhereUniqueInputImpl;

  factory _InvoiceWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$InvoiceWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get paymentId;
  @override
  String? get invoiceNumber;

  /// Create a copy of InvoiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceWhereUniqueInputImplCopyWith<_$InvoiceWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceWhereInput _$InvoiceWhereInputFromJson(Map<String, dynamic> json) {
  return _InvoiceWhereInput.fromJson(json);
}

/// @nodoc
mixin _$InvoiceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  StringFilter? get invoiceNumber => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  PaymentStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get pdfUrl => throw _privateConstructorUsedError;
  DateTimeFilter? get dueDate => throw _privateConstructorUsedError;
  DateTimeFilter? get paidAt => throw _privateConstructorUsedError;
  IntFilter? get taxAmount => throw _privateConstructorUsedError;
  FloatFilter? get taxRate => throw _privateConstructorUsedError;
  StringFilter? get hsnCode => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by payment relation
  PaymentRelationFilter? get payment => throw _privateConstructorUsedError;
  List<InvoiceWhereInput>? get AND => throw _privateConstructorUsedError;
  List<InvoiceWhereInput>? get OR => throw _privateConstructorUsedError;
  InvoiceWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this InvoiceWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceWhereInputCopyWith<InvoiceWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceWhereInputCopyWith<$Res> {
  factory $InvoiceWhereInputCopyWith(
          InvoiceWhereInput value, $Res Function(InvoiceWhereInput) then) =
      _$InvoiceWhereInputCopyWithImpl<$Res, InvoiceWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
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
      PaymentRelationFilter? payment,
      List<InvoiceWhereInput>? AND,
      List<InvoiceWhereInput>? OR,
      InvoiceWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get paymentId;
  $StringFilterCopyWith<$Res>? get invoiceNumber;
  $IntFilterCopyWith<$Res>? get amount;
  $StringFilterCopyWith<$Res>? get currency;
  $PaymentStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get pdfUrl;
  $DateTimeFilterCopyWith<$Res>? get dueDate;
  $DateTimeFilterCopyWith<$Res>? get paidAt;
  $IntFilterCopyWith<$Res>? get taxAmount;
  $FloatFilterCopyWith<$Res>? get taxRate;
  $StringFilterCopyWith<$Res>? get hsnCode;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  $InvoiceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$InvoiceWhereInputCopyWithImpl<$Res, $Val extends InvoiceWhereInput>
    implements $InvoiceWhereInputCopyWith<$Res> {
  _$InvoiceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payment = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusFilter?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<InvoiceWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<InvoiceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get paymentId {
    if (_value.paymentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.paymentId!, (value) {
      return _then(_value.copyWith(paymentId: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get invoiceNumber {
    if (_value.invoiceNumber == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.invoiceNumber!, (value) {
      return _then(_value.copyWith(invoiceNumber: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $PaymentStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get pdfUrl {
    if (_value.pdfUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.pdfUrl!, (value) {
      return _then(_value.copyWith(pdfUrl: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get dueDate {
    if (_value.dueDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.dueDate!, (value) {
      return _then(_value.copyWith(dueDate: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get paidAt {
    if (_value.paidAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.paidAt!, (value) {
      return _then(_value.copyWith(paidAt: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get taxAmount {
    if (_value.taxAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.taxAmount!, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get taxRate {
    if (_value.taxRate == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.taxRate!, (value) {
      return _then(_value.copyWith(taxRate: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get hsnCode {
    if (_value.hsnCode == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.hsnCode!, (value) {
      return _then(_value.copyWith(hsnCode: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_value.updatedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.updatedAt!, (value) {
      return _then(_value.copyWith(updatedAt: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentRelationFilterCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentRelationFilterCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceWhereInputImplCopyWith<$Res>
    implements $InvoiceWhereInputCopyWith<$Res> {
  factory _$$InvoiceWhereInputImplCopyWith(_$InvoiceWhereInputImpl value,
          $Res Function(_$InvoiceWhereInputImpl) then) =
      __$$InvoiceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
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
      PaymentRelationFilter? payment,
      List<InvoiceWhereInput>? AND,
      List<InvoiceWhereInput>? OR,
      InvoiceWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $StringFilterCopyWith<$Res>? get invoiceNumber;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $PaymentStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get pdfUrl;
  @override
  $DateTimeFilterCopyWith<$Res>? get dueDate;
  @override
  $DateTimeFilterCopyWith<$Res>? get paidAt;
  @override
  $IntFilterCopyWith<$Res>? get taxAmount;
  @override
  $FloatFilterCopyWith<$Res>? get taxRate;
  @override
  $StringFilterCopyWith<$Res>? get hsnCode;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  @override
  $InvoiceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$InvoiceWhereInputImplCopyWithImpl<$Res>
    extends _$InvoiceWhereInputCopyWithImpl<$Res, _$InvoiceWhereInputImpl>
    implements _$$InvoiceWhereInputImplCopyWith<$Res> {
  __$$InvoiceWhereInputImplCopyWithImpl(_$InvoiceWhereInputImpl _value,
      $Res Function(_$InvoiceWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payment = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$InvoiceWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusFilter?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<InvoiceWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<InvoiceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$InvoiceWhereInputImpl implements _InvoiceWhereInput {
  const _$InvoiceWhereInputImpl(
      {this.id,
      this.paymentId,
      this.invoiceNumber,
      this.amount,
      this.currency,
      this.status,
      this.pdfUrl,
      this.dueDate,
      this.paidAt,
      this.taxAmount,
      this.taxRate,
      this.hsnCode,
      this.createdAt,
      this.updatedAt,
      this.payment,
      final List<InvoiceWhereInput>? AND,
      final List<InvoiceWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$InvoiceWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? paymentId;
  @override
  final StringFilter? invoiceNumber;
  @override
  final IntFilter? amount;
  @override
  final StringFilter? currency;
  @override
  final PaymentStatusFilter? status;
  @override
  final StringFilter? pdfUrl;
  @override
  final DateTimeFilter? dueDate;
  @override
  final DateTimeFilter? paidAt;
  @override
  final IntFilter? taxAmount;
  @override
  final FloatFilter? taxRate;
  @override
  final StringFilter? hsnCode;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;

  /// Filter by payment relation
  @override
  final PaymentRelationFilter? payment;
  final List<InvoiceWhereInput>? _AND;
  @override
  List<InvoiceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InvoiceWhereInput>? _OR;
  @override
  List<InvoiceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final InvoiceWhereInput? NOT;

  @override
  String toString() {
    return 'InvoiceWhereInput(id: $id, paymentId: $paymentId, invoiceNumber: $invoiceNumber, amount: $amount, currency: $currency, status: $status, pdfUrl: $pdfUrl, dueDate: $dueDate, paidAt: $paidAt, taxAmount: $taxAmount, taxRate: $taxRate, hsnCode: $hsnCode, createdAt: $createdAt, updatedAt: $updatedAt, payment: $payment, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.hsnCode, hsnCode) || other.hsnCode == hsnCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentId,
      invoiceNumber,
      amount,
      currency,
      status,
      pdfUrl,
      dueDate,
      paidAt,
      taxAmount,
      taxRate,
      hsnCode,
      createdAt,
      updatedAt,
      payment,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceWhereInputImplCopyWith<_$InvoiceWhereInputImpl> get copyWith =>
      __$$InvoiceWhereInputImplCopyWithImpl<_$InvoiceWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceWhereInputImplToJson(
      this,
    );
  }
}

abstract class _InvoiceWhereInput implements InvoiceWhereInput {
  const factory _InvoiceWhereInput(
      {final StringFilter? id,
      final StringFilter? paymentId,
      final StringFilter? invoiceNumber,
      final IntFilter? amount,
      final StringFilter? currency,
      final PaymentStatusFilter? status,
      final StringFilter? pdfUrl,
      final DateTimeFilter? dueDate,
      final DateTimeFilter? paidAt,
      final IntFilter? taxAmount,
      final FloatFilter? taxRate,
      final StringFilter? hsnCode,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final PaymentRelationFilter? payment,
      final List<InvoiceWhereInput>? AND,
      final List<InvoiceWhereInput>? OR,
      final InvoiceWhereInput? NOT}) = _$InvoiceWhereInputImpl;

  factory _InvoiceWhereInput.fromJson(Map<String, dynamic> json) =
      _$InvoiceWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get paymentId;
  @override
  StringFilter? get invoiceNumber;
  @override
  IntFilter? get amount;
  @override
  StringFilter? get currency;
  @override
  PaymentStatusFilter? get status;
  @override
  StringFilter? get pdfUrl;
  @override
  DateTimeFilter? get dueDate;
  @override
  DateTimeFilter? get paidAt;
  @override
  IntFilter? get taxAmount;
  @override
  FloatFilter? get taxRate;
  @override
  StringFilter? get hsnCode;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;

  /// Filter by payment relation
  @override
  PaymentRelationFilter? get payment;
  @override
  List<InvoiceWhereInput>? get AND;
  @override
  List<InvoiceWhereInput>? get OR;
  @override
  InvoiceWhereInput? get NOT;

  /// Create a copy of InvoiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceWhereInputImplCopyWith<_$InvoiceWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceListRelationFilter _$InvoiceListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _InvoiceListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$InvoiceListRelationFilter {
  /// At least one related record matches
  InvoiceWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  InvoiceWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  InvoiceWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this InvoiceListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceListRelationFilterCopyWith<InvoiceListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceListRelationFilterCopyWith<$Res> {
  factory $InvoiceListRelationFilterCopyWith(InvoiceListRelationFilter value,
          $Res Function(InvoiceListRelationFilter) then) =
      _$InvoiceListRelationFilterCopyWithImpl<$Res, InvoiceListRelationFilter>;
  @useResult
  $Res call(
      {InvoiceWhereInput? some,
      InvoiceWhereInput? every,
      InvoiceWhereInput? none});

  $InvoiceWhereInputCopyWith<$Res>? get some;
  $InvoiceWhereInputCopyWith<$Res>? get every;
  $InvoiceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$InvoiceListRelationFilterCopyWithImpl<$Res,
        $Val extends InvoiceListRelationFilter>
    implements $InvoiceListRelationFilterCopyWith<$Res> {
  _$InvoiceListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_value.copyWith(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceListRelationFilterImplCopyWith<$Res>
    implements $InvoiceListRelationFilterCopyWith<$Res> {
  factory _$$InvoiceListRelationFilterImplCopyWith(
          _$InvoiceListRelationFilterImpl value,
          $Res Function(_$InvoiceListRelationFilterImpl) then) =
      __$$InvoiceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvoiceWhereInput? some,
      InvoiceWhereInput? every,
      InvoiceWhereInput? none});

  @override
  $InvoiceWhereInputCopyWith<$Res>? get some;
  @override
  $InvoiceWhereInputCopyWith<$Res>? get every;
  @override
  $InvoiceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$InvoiceListRelationFilterImplCopyWithImpl<$Res>
    extends _$InvoiceListRelationFilterCopyWithImpl<$Res,
        _$InvoiceListRelationFilterImpl>
    implements _$$InvoiceListRelationFilterImplCopyWith<$Res> {
  __$$InvoiceListRelationFilterImplCopyWithImpl(
      _$InvoiceListRelationFilterImpl _value,
      $Res Function(_$InvoiceListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$InvoiceListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceListRelationFilterImpl implements _InvoiceListRelationFilter {
  const _$InvoiceListRelationFilterImpl({this.some, this.every, this.none});

  factory _$InvoiceListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final InvoiceWhereInput? some;

  /// All related records match
  @override
  final InvoiceWhereInput? every;

  /// No related records match
  @override
  final InvoiceWhereInput? none;

  @override
  String toString() {
    return 'InvoiceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceListRelationFilterImplCopyWith<_$InvoiceListRelationFilterImpl>
      get copyWith => __$$InvoiceListRelationFilterImplCopyWithImpl<
          _$InvoiceListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _InvoiceListRelationFilter implements InvoiceListRelationFilter {
  const factory _InvoiceListRelationFilter(
      {final InvoiceWhereInput? some,
      final InvoiceWhereInput? every,
      final InvoiceWhereInput? none}) = _$InvoiceListRelationFilterImpl;

  factory _InvoiceListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$InvoiceListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  InvoiceWhereInput? get some;

  /// All related records match
  @override
  InvoiceWhereInput? get every;

  /// No related records match
  @override
  InvoiceWhereInput? get none;

  /// Create a copy of InvoiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceListRelationFilterImplCopyWith<_$InvoiceListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceRelationFilter _$InvoiceRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _InvoiceRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$InvoiceRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  InvoiceWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  InvoiceWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this InvoiceRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceRelationFilterCopyWith<InvoiceRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceRelationFilterCopyWith<$Res> {
  factory $InvoiceRelationFilterCopyWith(InvoiceRelationFilter value,
          $Res Function(InvoiceRelationFilter) then) =
      _$InvoiceRelationFilterCopyWithImpl<$Res, InvoiceRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') InvoiceWhereInput? is_, InvoiceWhereInput? isNot});

  $InvoiceWhereInputCopyWith<$Res>? get is_;
  $InvoiceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$InvoiceRelationFilterCopyWithImpl<$Res,
        $Val extends InvoiceRelationFilter>
    implements $InvoiceRelationFilterCopyWith<$Res> {
  _$InvoiceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_value.copyWith(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $InvoiceWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceRelationFilterImplCopyWith<$Res>
    implements $InvoiceRelationFilterCopyWith<$Res> {
  factory _$$InvoiceRelationFilterImplCopyWith(
          _$InvoiceRelationFilterImpl value,
          $Res Function(_$InvoiceRelationFilterImpl) then) =
      __$$InvoiceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') InvoiceWhereInput? is_, InvoiceWhereInput? isNot});

  @override
  $InvoiceWhereInputCopyWith<$Res>? get is_;
  @override
  $InvoiceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$InvoiceRelationFilterImplCopyWithImpl<$Res>
    extends _$InvoiceRelationFilterCopyWithImpl<$Res,
        _$InvoiceRelationFilterImpl>
    implements _$$InvoiceRelationFilterImplCopyWith<$Res> {
  __$$InvoiceRelationFilterImplCopyWithImpl(_$InvoiceRelationFilterImpl _value,
      $Res Function(_$InvoiceRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$InvoiceRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as InvoiceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceRelationFilterImpl implements _InvoiceRelationFilter {
  const _$InvoiceRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$InvoiceRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final InvoiceWhereInput? is_;

  /// Related record does not match
  @override
  final InvoiceWhereInput? isNot;

  @override
  String toString() {
    return 'InvoiceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceRelationFilterImplCopyWith<_$InvoiceRelationFilterImpl>
      get copyWith => __$$InvoiceRelationFilterImplCopyWithImpl<
          _$InvoiceRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _InvoiceRelationFilter implements InvoiceRelationFilter {
  const factory _InvoiceRelationFilter(
      {@JsonKey(name: 'is') final InvoiceWhereInput? is_,
      final InvoiceWhereInput? isNot}) = _$InvoiceRelationFilterImpl;

  factory _InvoiceRelationFilter.fromJson(Map<String, dynamic> json) =
      _$InvoiceRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  InvoiceWhereInput? get is_;

  /// Related record does not match
  @override
  InvoiceWhereInput? get isNot;

  /// Create a copy of InvoiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceRelationFilterImplCopyWith<_$InvoiceRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceOrderByInput _$InvoiceOrderByInputFromJson(Map<String, dynamic> json) {
  return _InvoiceOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$InvoiceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get invoiceNumber => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get pdfUrl => throw _privateConstructorUsedError;
  SortOrder? get dueDate => throw _privateConstructorUsedError;
  SortOrder? get paidAt => throw _privateConstructorUsedError;
  SortOrder? get taxAmount => throw _privateConstructorUsedError;
  SortOrder? get taxRate => throw _privateConstructorUsedError;
  SortOrder? get hsnCode => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this InvoiceOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceOrderByInputCopyWith<InvoiceOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceOrderByInputCopyWith<$Res> {
  factory $InvoiceOrderByInputCopyWith(
          InvoiceOrderByInput value, $Res Function(InvoiceOrderByInput) then) =
      _$InvoiceOrderByInputCopyWithImpl<$Res, InvoiceOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
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
      SortOrder? updatedAt});
}

/// @nodoc
class _$InvoiceOrderByInputCopyWithImpl<$Res, $Val extends InvoiceOrderByInput>
    implements $InvoiceOrderByInputCopyWith<$Res> {
  _$InvoiceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceOrderByInputImplCopyWith<$Res>
    implements $InvoiceOrderByInputCopyWith<$Res> {
  factory _$$InvoiceOrderByInputImplCopyWith(_$InvoiceOrderByInputImpl value,
          $Res Function(_$InvoiceOrderByInputImpl) then) =
      __$$InvoiceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
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
      SortOrder? updatedAt});
}

/// @nodoc
class __$$InvoiceOrderByInputImplCopyWithImpl<$Res>
    extends _$InvoiceOrderByInputCopyWithImpl<$Res, _$InvoiceOrderByInputImpl>
    implements _$$InvoiceOrderByInputImplCopyWith<$Res> {
  __$$InvoiceOrderByInputImplCopyWithImpl(_$InvoiceOrderByInputImpl _value,
      $Res Function(_$InvoiceOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentId = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? pdfUrl = freezed,
    Object? dueDate = freezed,
    Object? paidAt = freezed,
    Object? taxAmount = freezed,
    Object? taxRate = freezed,
    Object? hsnCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InvoiceOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxRate: freezed == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hsnCode: freezed == hsnCode
          ? _value.hsnCode
          : hsnCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceOrderByInputImpl implements _InvoiceOrderByInput {
  const _$InvoiceOrderByInputImpl(
      {this.id,
      this.paymentId,
      this.invoiceNumber,
      this.amount,
      this.currency,
      this.pdfUrl,
      this.dueDate,
      this.paidAt,
      this.taxAmount,
      this.taxRate,
      this.hsnCode,
      this.createdAt,
      this.updatedAt});

  factory _$InvoiceOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? invoiceNumber;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? pdfUrl;
  @override
  final SortOrder? dueDate;
  @override
  final SortOrder? paidAt;
  @override
  final SortOrder? taxAmount;
  @override
  final SortOrder? taxRate;
  @override
  final SortOrder? hsnCode;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'InvoiceOrderByInput(id: $id, paymentId: $paymentId, invoiceNumber: $invoiceNumber, amount: $amount, currency: $currency, pdfUrl: $pdfUrl, dueDate: $dueDate, paidAt: $paidAt, taxAmount: $taxAmount, taxRate: $taxRate, hsnCode: $hsnCode, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.hsnCode, hsnCode) || other.hsnCode == hsnCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentId,
      invoiceNumber,
      amount,
      currency,
      pdfUrl,
      dueDate,
      paidAt,
      taxAmount,
      taxRate,
      hsnCode,
      createdAt,
      updatedAt);

  /// Create a copy of InvoiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceOrderByInputImplCopyWith<_$InvoiceOrderByInputImpl> get copyWith =>
      __$$InvoiceOrderByInputImplCopyWithImpl<_$InvoiceOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _InvoiceOrderByInput implements InvoiceOrderByInput {
  const factory _InvoiceOrderByInput(
      {final SortOrder? id,
      final SortOrder? paymentId,
      final SortOrder? invoiceNumber,
      final SortOrder? amount,
      final SortOrder? currency,
      final SortOrder? pdfUrl,
      final SortOrder? dueDate,
      final SortOrder? paidAt,
      final SortOrder? taxAmount,
      final SortOrder? taxRate,
      final SortOrder? hsnCode,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$InvoiceOrderByInputImpl;

  factory _InvoiceOrderByInput.fromJson(Map<String, dynamic> json) =
      _$InvoiceOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get invoiceNumber;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get pdfUrl;
  @override
  SortOrder? get dueDate;
  @override
  SortOrder? get paidAt;
  @override
  SortOrder? get taxAmount;
  @override
  SortOrder? get taxRate;
  @override
  SortOrder? get hsnCode;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of InvoiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceOrderByInputImplCopyWith<_$InvoiceOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
