// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Refund _$RefundFromJson(Map<String, dynamic> json) {
  return _Refund.fromJson(json);
}

/// @nodoc
mixin _$Refund {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  RefundStatus get status => throw _privateConstructorUsedError;
  String get refundId => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  double? get exchangeRateAtRefund => throw _privateConstructorUsedError;
  String? get displayCurrency => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Refund to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Refund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundCopyWith<Refund> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundCopyWith<$Res> {
  factory $RefundCopyWith(Refund value, $Res Function(Refund) then) =
      _$RefundCopyWithImpl<$Res, Refund>;
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      String? reason,
      RefundStatus status,
      String refundId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      String paymentId,
      DateTime createdAt,
      DateTime updatedAt});

  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$RefundCopyWithImpl<$Res, $Val extends Refund>
    implements $RefundCopyWith<$Res> {
  _$RefundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Refund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? reason = freezed,
    Object? status = null,
    Object? refundId = null,
    Object? paymentGateway = null,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? payment = freezed,
    Object? paymentId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Refund
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
abstract class _$$RefundImplCopyWith<$Res> implements $RefundCopyWith<$Res> {
  factory _$$RefundImplCopyWith(
          _$RefundImpl value, $Res Function(_$RefundImpl) then) =
      __$$RefundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      String? reason,
      RefundStatus status,
      String refundId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      String paymentId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$RefundImplCopyWithImpl<$Res>
    extends _$RefundCopyWithImpl<$Res, _$RefundImpl>
    implements _$$RefundImplCopyWith<$Res> {
  __$$RefundImplCopyWithImpl(
      _$RefundImpl _value, $Res Function(_$RefundImpl) _then)
      : super(_value, _then);

  /// Create a copy of Refund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? reason = freezed,
    Object? status = null,
    Object? refundId = null,
    Object? paymentGateway = null,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? payment = freezed,
    Object? paymentId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RefundImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundImpl implements _Refund {
  const _$RefundImpl(
      {required this.id,
      required this.amount,
      required this.currency,
      this.reason,
      required this.status,
      required this.refundId,
      required this.paymentGateway,
      final Map<String, dynamic>? metadata,
      this.exchangeRateAtRefund,
      this.displayCurrency,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payment,
      required this.paymentId,
      required this.createdAt,
      required this.updatedAt})
      : _metadata = metadata;

  factory _$RefundImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final String? reason;
  @override
  final RefundStatus status;
  @override
  final String refundId;
  @override
  final PaymentGateway paymentGateway;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? exchangeRateAtRefund;
  @override
  final String? displayCurrency;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payment? payment;
  @override
  final String paymentId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Refund(id: $id, amount: $amount, currency: $currency, reason: $reason, status: $status, refundId: $refundId, paymentGateway: $paymentGateway, metadata: $metadata, exchangeRateAtRefund: $exchangeRateAtRefund, displayCurrency: $displayCurrency, payment: $payment, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.exchangeRateAtRefund, exchangeRateAtRefund) ||
                other.exchangeRateAtRefund == exchangeRateAtRefund) &&
            (identical(other.displayCurrency, displayCurrency) ||
                other.displayCurrency == displayCurrency) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
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
      amount,
      currency,
      reason,
      status,
      refundId,
      paymentGateway,
      const DeepCollectionEquality().hash(_metadata),
      exchangeRateAtRefund,
      displayCurrency,
      payment,
      paymentId,
      createdAt,
      updatedAt);

  /// Create a copy of Refund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundImplCopyWith<_$RefundImpl> get copyWith =>
      __$$RefundImplCopyWithImpl<_$RefundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundImplToJson(
      this,
    );
  }
}

abstract class _Refund implements Refund {
  const factory _Refund(
      {required final String id,
      required final int amount,
      required final String currency,
      final String? reason,
      required final RefundStatus status,
      required final String refundId,
      required final PaymentGateway paymentGateway,
      final Map<String, dynamic>? metadata,
      final double? exchangeRateAtRefund,
      final String? displayCurrency,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payment? payment,
      required final String paymentId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$RefundImpl;

  factory _Refund.fromJson(Map<String, dynamic> json) = _$RefundImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String? get reason;
  @override
  RefundStatus get status;
  @override
  String get refundId;
  @override
  PaymentGateway get paymentGateway;
  @override
  Map<String, dynamic>? get metadata;
  @override
  double? get exchangeRateAtRefund;
  @override
  String? get displayCurrency;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment;
  @override
  String get paymentId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Refund
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundImplCopyWith<_$RefundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateRefundInput _$CreateRefundInputFromJson(Map<String, dynamic> json) {
  return _CreateRefundInput.fromJson(json);
}

/// @nodoc
mixin _$CreateRefundInput {
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  RefundStatus get status => throw _privateConstructorUsedError;
  String get refundId => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  double? get exchangeRateAtRefund => throw _privateConstructorUsedError;
  String? get displayCurrency => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;

  /// Serializes this CreateRefundInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRefundInputCopyWith<CreateRefundInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRefundInputCopyWith<$Res> {
  factory $CreateRefundInputCopyWith(
          CreateRefundInput value, $Res Function(CreateRefundInput) then) =
      _$CreateRefundInputCopyWithImpl<$Res, CreateRefundInput>;
  @useResult
  $Res call(
      {int amount,
      String currency,
      String? reason,
      RefundStatus status,
      String refundId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      String paymentId});
}

/// @nodoc
class _$CreateRefundInputCopyWithImpl<$Res, $Val extends CreateRefundInput>
    implements $CreateRefundInputCopyWith<$Res> {
  _$CreateRefundInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? reason = freezed,
    Object? status = null,
    Object? refundId = null,
    Object? paymentGateway = null,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRefundInputImplCopyWith<$Res>
    implements $CreateRefundInputCopyWith<$Res> {
  factory _$$CreateRefundInputImplCopyWith(_$CreateRefundInputImpl value,
          $Res Function(_$CreateRefundInputImpl) then) =
      __$$CreateRefundInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      String currency,
      String? reason,
      RefundStatus status,
      String refundId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      String paymentId});
}

/// @nodoc
class __$$CreateRefundInputImplCopyWithImpl<$Res>
    extends _$CreateRefundInputCopyWithImpl<$Res, _$CreateRefundInputImpl>
    implements _$$CreateRefundInputImplCopyWith<$Res> {
  __$$CreateRefundInputImplCopyWithImpl(_$CreateRefundInputImpl _value,
      $Res Function(_$CreateRefundInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? reason = freezed,
    Object? status = null,
    Object? refundId = null,
    Object? paymentGateway = null,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = null,
  }) {
    return _then(_$CreateRefundInputImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRefundInputImpl implements _CreateRefundInput {
  const _$CreateRefundInputImpl(
      {required this.amount,
      required this.currency,
      this.reason,
      required this.status,
      required this.refundId,
      required this.paymentGateway,
      final Map<String, dynamic>? metadata,
      this.exchangeRateAtRefund,
      this.displayCurrency,
      required this.paymentId})
      : _metadata = metadata;

  factory _$CreateRefundInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRefundInputImplFromJson(json);

  @override
  final int amount;
  @override
  final String currency;
  @override
  final String? reason;
  @override
  final RefundStatus status;
  @override
  final String refundId;
  @override
  final PaymentGateway paymentGateway;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? exchangeRateAtRefund;
  @override
  final String? displayCurrency;
  @override
  final String paymentId;

  @override
  String toString() {
    return 'CreateRefundInput(amount: $amount, currency: $currency, reason: $reason, status: $status, refundId: $refundId, paymentGateway: $paymentGateway, metadata: $metadata, exchangeRateAtRefund: $exchangeRateAtRefund, displayCurrency: $displayCurrency, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRefundInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.exchangeRateAtRefund, exchangeRateAtRefund) ||
                other.exchangeRateAtRefund == exchangeRateAtRefund) &&
            (identical(other.displayCurrency, displayCurrency) ||
                other.displayCurrency == displayCurrency) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      currency,
      reason,
      status,
      refundId,
      paymentGateway,
      const DeepCollectionEquality().hash(_metadata),
      exchangeRateAtRefund,
      displayCurrency,
      paymentId);

  /// Create a copy of CreateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRefundInputImplCopyWith<_$CreateRefundInputImpl> get copyWith =>
      __$$CreateRefundInputImplCopyWithImpl<_$CreateRefundInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRefundInputImplToJson(
      this,
    );
  }
}

abstract class _CreateRefundInput implements CreateRefundInput {
  const factory _CreateRefundInput(
      {required final int amount,
      required final String currency,
      final String? reason,
      required final RefundStatus status,
      required final String refundId,
      required final PaymentGateway paymentGateway,
      final Map<String, dynamic>? metadata,
      final double? exchangeRateAtRefund,
      final String? displayCurrency,
      required final String paymentId}) = _$CreateRefundInputImpl;

  factory _CreateRefundInput.fromJson(Map<String, dynamic> json) =
      _$CreateRefundInputImpl.fromJson;

  @override
  int get amount;
  @override
  String get currency;
  @override
  String? get reason;
  @override
  RefundStatus get status;
  @override
  String get refundId;
  @override
  PaymentGateway get paymentGateway;
  @override
  Map<String, dynamic>? get metadata;
  @override
  double? get exchangeRateAtRefund;
  @override
  String? get displayCurrency;
  @override
  String get paymentId;

  /// Create a copy of CreateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRefundInputImplCopyWith<_$CreateRefundInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateRefundInput _$UpdateRefundInputFromJson(Map<String, dynamic> json) {
  return _UpdateRefundInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateRefundInput {
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  RefundStatus? get status => throw _privateConstructorUsedError;
  String? get refundId => throw _privateConstructorUsedError;
  PaymentGateway? get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  double? get exchangeRateAtRefund => throw _privateConstructorUsedError;
  String? get displayCurrency => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;

  /// Serializes this UpdateRefundInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateRefundInputCopyWith<UpdateRefundInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRefundInputCopyWith<$Res> {
  factory $UpdateRefundInputCopyWith(
          UpdateRefundInput value, $Res Function(UpdateRefundInput) then) =
      _$UpdateRefundInputCopyWithImpl<$Res, UpdateRefundInput>;
  @useResult
  $Res call(
      {int? amount,
      String? currency,
      String? reason,
      RefundStatus? status,
      String? refundId,
      PaymentGateway? paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      String? paymentId});
}

/// @nodoc
class _$UpdateRefundInputCopyWithImpl<$Res, $Val extends UpdateRefundInput>
    implements $UpdateRefundInputCopyWith<$Res> {
  _$UpdateRefundInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? refundId = freezed,
    Object? paymentGateway = freezed,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRefundInputImplCopyWith<$Res>
    implements $UpdateRefundInputCopyWith<$Res> {
  factory _$$UpdateRefundInputImplCopyWith(_$UpdateRefundInputImpl value,
          $Res Function(_$UpdateRefundInputImpl) then) =
      __$$UpdateRefundInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      String? currency,
      String? reason,
      RefundStatus? status,
      String? refundId,
      PaymentGateway? paymentGateway,
      Map<String, dynamic>? metadata,
      double? exchangeRateAtRefund,
      String? displayCurrency,
      String? paymentId});
}

/// @nodoc
class __$$UpdateRefundInputImplCopyWithImpl<$Res>
    extends _$UpdateRefundInputCopyWithImpl<$Res, _$UpdateRefundInputImpl>
    implements _$$UpdateRefundInputImplCopyWith<$Res> {
  __$$UpdateRefundInputImplCopyWithImpl(_$UpdateRefundInputImpl _value,
      $Res Function(_$UpdateRefundInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? refundId = freezed,
    Object? paymentGateway = freezed,
    Object? metadata = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_$UpdateRefundInputImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as double?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRefundInputImpl implements _UpdateRefundInput {
  const _$UpdateRefundInputImpl(
      {this.amount,
      this.currency,
      this.reason,
      this.status,
      this.refundId,
      this.paymentGateway,
      final Map<String, dynamic>? metadata,
      this.exchangeRateAtRefund,
      this.displayCurrency,
      this.paymentId})
      : _metadata = metadata;

  factory _$UpdateRefundInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRefundInputImplFromJson(json);

  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final String? reason;
  @override
  final RefundStatus? status;
  @override
  final String? refundId;
  @override
  final PaymentGateway? paymentGateway;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? exchangeRateAtRefund;
  @override
  final String? displayCurrency;
  @override
  final String? paymentId;

  @override
  String toString() {
    return 'UpdateRefundInput(amount: $amount, currency: $currency, reason: $reason, status: $status, refundId: $refundId, paymentGateway: $paymentGateway, metadata: $metadata, exchangeRateAtRefund: $exchangeRateAtRefund, displayCurrency: $displayCurrency, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRefundInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.exchangeRateAtRefund, exchangeRateAtRefund) ||
                other.exchangeRateAtRefund == exchangeRateAtRefund) &&
            (identical(other.displayCurrency, displayCurrency) ||
                other.displayCurrency == displayCurrency) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      currency,
      reason,
      status,
      refundId,
      paymentGateway,
      const DeepCollectionEquality().hash(_metadata),
      exchangeRateAtRefund,
      displayCurrency,
      paymentId);

  /// Create a copy of UpdateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRefundInputImplCopyWith<_$UpdateRefundInputImpl> get copyWith =>
      __$$UpdateRefundInputImplCopyWithImpl<_$UpdateRefundInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRefundInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateRefundInput implements UpdateRefundInput {
  const factory _UpdateRefundInput(
      {final int? amount,
      final String? currency,
      final String? reason,
      final RefundStatus? status,
      final String? refundId,
      final PaymentGateway? paymentGateway,
      final Map<String, dynamic>? metadata,
      final double? exchangeRateAtRefund,
      final String? displayCurrency,
      final String? paymentId}) = _$UpdateRefundInputImpl;

  factory _UpdateRefundInput.fromJson(Map<String, dynamic> json) =
      _$UpdateRefundInputImpl.fromJson;

  @override
  int? get amount;
  @override
  String? get currency;
  @override
  String? get reason;
  @override
  RefundStatus? get status;
  @override
  String? get refundId;
  @override
  PaymentGateway? get paymentGateway;
  @override
  Map<String, dynamic>? get metadata;
  @override
  double? get exchangeRateAtRefund;
  @override
  String? get displayCurrency;
  @override
  String? get paymentId;

  /// Create a copy of UpdateRefundInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRefundInputImplCopyWith<_$UpdateRefundInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundWhereUniqueInput _$RefundWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _RefundWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$RefundWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get refundId => throw _privateConstructorUsedError;

  /// Serializes this RefundWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundWhereUniqueInputCopyWith<RefundWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundWhereUniqueInputCopyWith<$Res> {
  factory $RefundWhereUniqueInputCopyWith(RefundWhereUniqueInput value,
          $Res Function(RefundWhereUniqueInput) then) =
      _$RefundWhereUniqueInputCopyWithImpl<$Res, RefundWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? refundId});
}

/// @nodoc
class _$RefundWhereUniqueInputCopyWithImpl<$Res,
        $Val extends RefundWhereUniqueInput>
    implements $RefundWhereUniqueInputCopyWith<$Res> {
  _$RefundWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refundId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundWhereUniqueInputImplCopyWith<$Res>
    implements $RefundWhereUniqueInputCopyWith<$Res> {
  factory _$$RefundWhereUniqueInputImplCopyWith(
          _$RefundWhereUniqueInputImpl value,
          $Res Function(_$RefundWhereUniqueInputImpl) then) =
      __$$RefundWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? refundId});
}

/// @nodoc
class __$$RefundWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$RefundWhereUniqueInputCopyWithImpl<$Res,
        _$RefundWhereUniqueInputImpl>
    implements _$$RefundWhereUniqueInputImplCopyWith<$Res> {
  __$$RefundWhereUniqueInputImplCopyWithImpl(
      _$RefundWhereUniqueInputImpl _value,
      $Res Function(_$RefundWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refundId = freezed,
  }) {
    return _then(_$RefundWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundWhereUniqueInputImpl implements _RefundWhereUniqueInput {
  const _$RefundWhereUniqueInputImpl({this.id, this.refundId});

  factory _$RefundWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? refundId;

  @override
  String toString() {
    return 'RefundWhereUniqueInput(id: $id, refundId: $refundId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, refundId);

  /// Create a copy of RefundWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundWhereUniqueInputImplCopyWith<_$RefundWhereUniqueInputImpl>
      get copyWith => __$$RefundWhereUniqueInputImplCopyWithImpl<
          _$RefundWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _RefundWhereUniqueInput implements RefundWhereUniqueInput {
  const factory _RefundWhereUniqueInput(
      {final String? id,
      final String? refundId}) = _$RefundWhereUniqueInputImpl;

  factory _RefundWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$RefundWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get refundId;

  /// Create a copy of RefundWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundWhereUniqueInputImplCopyWith<_$RefundWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RefundWhereInput _$RefundWhereInputFromJson(Map<String, dynamic> json) {
  return _RefundWhereInput.fromJson(json);
}

/// @nodoc
mixin _$RefundWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  StringFilter? get reason => throw _privateConstructorUsedError;
  RefundStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get refundId => throw _privateConstructorUsedError;
  PaymentGatewayFilter? get paymentGateway =>
      throw _privateConstructorUsedError;
  FloatFilter? get exchangeRateAtRefund => throw _privateConstructorUsedError;
  StringFilter? get displayCurrency => throw _privateConstructorUsedError;

  /// Filter by payment relation
  PaymentRelationFilter? get payment => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<RefundWhereInput>? get AND => throw _privateConstructorUsedError;
  List<RefundWhereInput>? get OR => throw _privateConstructorUsedError;
  RefundWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this RefundWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundWhereInputCopyWith<RefundWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundWhereInputCopyWith<$Res> {
  factory $RefundWhereInputCopyWith(
          RefundWhereInput value, $Res Function(RefundWhereInput) then) =
      _$RefundWhereInputCopyWithImpl<$Res, RefundWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      StringFilter? currency,
      StringFilter? reason,
      RefundStatusFilter? status,
      StringFilter? refundId,
      PaymentGatewayFilter? paymentGateway,
      FloatFilter? exchangeRateAtRefund,
      StringFilter? displayCurrency,
      PaymentRelationFilter? payment,
      StringFilter? paymentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<RefundWhereInput>? AND,
      List<RefundWhereInput>? OR,
      RefundWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $IntFilterCopyWith<$Res>? get amount;
  $StringFilterCopyWith<$Res>? get currency;
  $StringFilterCopyWith<$Res>? get reason;
  $RefundStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get refundId;
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  $FloatFilterCopyWith<$Res>? get exchangeRateAtRefund;
  $StringFilterCopyWith<$Res>? get displayCurrency;
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  $StringFilterCopyWith<$Res>? get paymentId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $RefundWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$RefundWhereInputCopyWithImpl<$Res, $Val extends RefundWhereInput>
    implements $RefundWhereInputCopyWith<$Res> {
  _$RefundWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? refundId = freezed,
    Object? paymentGateway = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? payment = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatusFilter?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<RefundWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<RefundWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reason {
    if (_value.reason == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reason!, (value) {
      return _then(_value.copyWith(reason: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $RefundStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get refundId {
    if (_value.refundId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.refundId!, (value) {
      return _then(_value.copyWith(refundId: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway {
    if (_value.paymentGateway == null) {
      return null;
    }

    return $PaymentGatewayFilterCopyWith<$Res>(_value.paymentGateway!, (value) {
      return _then(_value.copyWith(paymentGateway: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get exchangeRateAtRefund {
    if (_value.exchangeRateAtRefund == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.exchangeRateAtRefund!, (value) {
      return _then(_value.copyWith(exchangeRateAtRefund: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get displayCurrency {
    if (_value.displayCurrency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.displayCurrency!, (value) {
      return _then(_value.copyWith(displayCurrency: value) as $Val);
    });
  }

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
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

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundWhereInputImplCopyWith<$Res>
    implements $RefundWhereInputCopyWith<$Res> {
  factory _$$RefundWhereInputImplCopyWith(_$RefundWhereInputImpl value,
          $Res Function(_$RefundWhereInputImpl) then) =
      __$$RefundWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      StringFilter? currency,
      StringFilter? reason,
      RefundStatusFilter? status,
      StringFilter? refundId,
      PaymentGatewayFilter? paymentGateway,
      FloatFilter? exchangeRateAtRefund,
      StringFilter? displayCurrency,
      PaymentRelationFilter? payment,
      StringFilter? paymentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<RefundWhereInput>? AND,
      List<RefundWhereInput>? OR,
      RefundWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $StringFilterCopyWith<$Res>? get reason;
  @override
  $RefundStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get refundId;
  @override
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  @override
  $FloatFilterCopyWith<$Res>? get exchangeRateAtRefund;
  @override
  $StringFilterCopyWith<$Res>? get displayCurrency;
  @override
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $RefundWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$RefundWhereInputImplCopyWithImpl<$Res>
    extends _$RefundWhereInputCopyWithImpl<$Res, _$RefundWhereInputImpl>
    implements _$$RefundWhereInputImplCopyWith<$Res> {
  __$$RefundWhereInputImplCopyWithImpl(_$RefundWhereInputImpl _value,
      $Res Function(_$RefundWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? refundId = freezed,
    Object? paymentGateway = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? payment = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$RefundWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefundStatusFilter?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<RefundWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<RefundWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RefundWhereInputImpl implements _RefundWhereInput {
  const _$RefundWhereInputImpl(
      {this.id,
      this.amount,
      this.currency,
      this.reason,
      this.status,
      this.refundId,
      this.paymentGateway,
      this.exchangeRateAtRefund,
      this.displayCurrency,
      this.payment,
      this.paymentId,
      this.createdAt,
      this.updatedAt,
      final List<RefundWhereInput>? AND,
      final List<RefundWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$RefundWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final IntFilter? amount;
  @override
  final StringFilter? currency;
  @override
  final StringFilter? reason;
  @override
  final RefundStatusFilter? status;
  @override
  final StringFilter? refundId;
  @override
  final PaymentGatewayFilter? paymentGateway;
  @override
  final FloatFilter? exchangeRateAtRefund;
  @override
  final StringFilter? displayCurrency;

  /// Filter by payment relation
  @override
  final PaymentRelationFilter? payment;
  @override
  final StringFilter? paymentId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<RefundWhereInput>? _AND;
  @override
  List<RefundWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RefundWhereInput>? _OR;
  @override
  List<RefundWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RefundWhereInput? NOT;

  @override
  String toString() {
    return 'RefundWhereInput(id: $id, amount: $amount, currency: $currency, reason: $reason, status: $status, refundId: $refundId, paymentGateway: $paymentGateway, exchangeRateAtRefund: $exchangeRateAtRefund, displayCurrency: $displayCurrency, payment: $payment, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.exchangeRateAtRefund, exchangeRateAtRefund) ||
                other.exchangeRateAtRefund == exchangeRateAtRefund) &&
            (identical(other.displayCurrency, displayCurrency) ||
                other.displayCurrency == displayCurrency) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      currency,
      reason,
      status,
      refundId,
      paymentGateway,
      exchangeRateAtRefund,
      displayCurrency,
      payment,
      paymentId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundWhereInputImplCopyWith<_$RefundWhereInputImpl> get copyWith =>
      __$$RefundWhereInputImplCopyWithImpl<_$RefundWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundWhereInputImplToJson(
      this,
    );
  }
}

abstract class _RefundWhereInput implements RefundWhereInput {
  const factory _RefundWhereInput(
      {final StringFilter? id,
      final IntFilter? amount,
      final StringFilter? currency,
      final StringFilter? reason,
      final RefundStatusFilter? status,
      final StringFilter? refundId,
      final PaymentGatewayFilter? paymentGateway,
      final FloatFilter? exchangeRateAtRefund,
      final StringFilter? displayCurrency,
      final PaymentRelationFilter? payment,
      final StringFilter? paymentId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<RefundWhereInput>? AND,
      final List<RefundWhereInput>? OR,
      final RefundWhereInput? NOT}) = _$RefundWhereInputImpl;

  factory _RefundWhereInput.fromJson(Map<String, dynamic> json) =
      _$RefundWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  IntFilter? get amount;
  @override
  StringFilter? get currency;
  @override
  StringFilter? get reason;
  @override
  RefundStatusFilter? get status;
  @override
  StringFilter? get refundId;
  @override
  PaymentGatewayFilter? get paymentGateway;
  @override
  FloatFilter? get exchangeRateAtRefund;
  @override
  StringFilter? get displayCurrency;

  /// Filter by payment relation
  @override
  PaymentRelationFilter? get payment;
  @override
  StringFilter? get paymentId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<RefundWhereInput>? get AND;
  @override
  List<RefundWhereInput>? get OR;
  @override
  RefundWhereInput? get NOT;

  /// Create a copy of RefundWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundWhereInputImplCopyWith<_$RefundWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundListRelationFilter _$RefundListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _RefundListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$RefundListRelationFilter {
  /// At least one related record matches
  RefundWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  RefundWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  RefundWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this RefundListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundListRelationFilterCopyWith<RefundListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundListRelationFilterCopyWith<$Res> {
  factory $RefundListRelationFilterCopyWith(RefundListRelationFilter value,
          $Res Function(RefundListRelationFilter) then) =
      _$RefundListRelationFilterCopyWithImpl<$Res, RefundListRelationFilter>;
  @useResult
  $Res call(
      {RefundWhereInput? some,
      RefundWhereInput? every,
      RefundWhereInput? none});

  $RefundWhereInputCopyWith<$Res>? get some;
  $RefundWhereInputCopyWith<$Res>? get every;
  $RefundWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$RefundListRelationFilterCopyWithImpl<$Res,
        $Val extends RefundListRelationFilter>
    implements $RefundListRelationFilterCopyWith<$Res> {
  _$RefundListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundListRelationFilter
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
              as RefundWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundListRelationFilterImplCopyWith<$Res>
    implements $RefundListRelationFilterCopyWith<$Res> {
  factory _$$RefundListRelationFilterImplCopyWith(
          _$RefundListRelationFilterImpl value,
          $Res Function(_$RefundListRelationFilterImpl) then) =
      __$$RefundListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RefundWhereInput? some,
      RefundWhereInput? every,
      RefundWhereInput? none});

  @override
  $RefundWhereInputCopyWith<$Res>? get some;
  @override
  $RefundWhereInputCopyWith<$Res>? get every;
  @override
  $RefundWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$RefundListRelationFilterImplCopyWithImpl<$Res>
    extends _$RefundListRelationFilterCopyWithImpl<$Res,
        _$RefundListRelationFilterImpl>
    implements _$$RefundListRelationFilterImplCopyWith<$Res> {
  __$$RefundListRelationFilterImplCopyWithImpl(
      _$RefundListRelationFilterImpl _value,
      $Res Function(_$RefundListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$RefundListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundListRelationFilterImpl implements _RefundListRelationFilter {
  const _$RefundListRelationFilterImpl({this.some, this.every, this.none});

  factory _$RefundListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final RefundWhereInput? some;

  /// All related records match
  @override
  final RefundWhereInput? every;

  /// No related records match
  @override
  final RefundWhereInput? none;

  @override
  String toString() {
    return 'RefundListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundListRelationFilterImplCopyWith<_$RefundListRelationFilterImpl>
      get copyWith => __$$RefundListRelationFilterImplCopyWithImpl<
          _$RefundListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _RefundListRelationFilter implements RefundListRelationFilter {
  const factory _RefundListRelationFilter(
      {final RefundWhereInput? some,
      final RefundWhereInput? every,
      final RefundWhereInput? none}) = _$RefundListRelationFilterImpl;

  factory _RefundListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$RefundListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  RefundWhereInput? get some;

  /// All related records match
  @override
  RefundWhereInput? get every;

  /// No related records match
  @override
  RefundWhereInput? get none;

  /// Create a copy of RefundListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundListRelationFilterImplCopyWith<_$RefundListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RefundRelationFilter _$RefundRelationFilterFromJson(Map<String, dynamic> json) {
  return _RefundRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$RefundRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  RefundWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  RefundWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this RefundRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundRelationFilterCopyWith<RefundRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundRelationFilterCopyWith<$Res> {
  factory $RefundRelationFilterCopyWith(RefundRelationFilter value,
          $Res Function(RefundRelationFilter) then) =
      _$RefundRelationFilterCopyWithImpl<$Res, RefundRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') RefundWhereInput? is_, RefundWhereInput? isNot});

  $RefundWhereInputCopyWith<$Res>? get is_;
  $RefundWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$RefundRelationFilterCopyWithImpl<$Res,
        $Val extends RefundRelationFilter>
    implements $RefundRelationFilterCopyWith<$Res> {
  _$RefundRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundRelationFilter
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
              as RefundWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $RefundWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundRelationFilterImplCopyWith<$Res>
    implements $RefundRelationFilterCopyWith<$Res> {
  factory _$$RefundRelationFilterImplCopyWith(_$RefundRelationFilterImpl value,
          $Res Function(_$RefundRelationFilterImpl) then) =
      __$$RefundRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') RefundWhereInput? is_, RefundWhereInput? isNot});

  @override
  $RefundWhereInputCopyWith<$Res>? get is_;
  @override
  $RefundWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$RefundRelationFilterImplCopyWithImpl<$Res>
    extends _$RefundRelationFilterCopyWithImpl<$Res, _$RefundRelationFilterImpl>
    implements _$$RefundRelationFilterImplCopyWith<$Res> {
  __$$RefundRelationFilterImplCopyWithImpl(_$RefundRelationFilterImpl _value,
      $Res Function(_$RefundRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$RefundRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as RefundWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundRelationFilterImpl implements _RefundRelationFilter {
  const _$RefundRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$RefundRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final RefundWhereInput? is_;

  /// Related record does not match
  @override
  final RefundWhereInput? isNot;

  @override
  String toString() {
    return 'RefundRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundRelationFilterImplCopyWith<_$RefundRelationFilterImpl>
      get copyWith =>
          __$$RefundRelationFilterImplCopyWithImpl<_$RefundRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _RefundRelationFilter implements RefundRelationFilter {
  const factory _RefundRelationFilter(
      {@JsonKey(name: 'is') final RefundWhereInput? is_,
      final RefundWhereInput? isNot}) = _$RefundRelationFilterImpl;

  factory _RefundRelationFilter.fromJson(Map<String, dynamic> json) =
      _$RefundRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  RefundWhereInput? get is_;

  /// Related record does not match
  @override
  RefundWhereInput? get isNot;

  /// Create a copy of RefundRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundRelationFilterImplCopyWith<_$RefundRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RefundOrderByInput _$RefundOrderByInputFromJson(Map<String, dynamic> json) {
  return _RefundOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$RefundOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get reason => throw _privateConstructorUsedError;
  SortOrder? get refundId => throw _privateConstructorUsedError;
  SortOrder? get exchangeRateAtRefund => throw _privateConstructorUsedError;
  SortOrder? get displayCurrency => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RefundOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundOrderByInputCopyWith<RefundOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundOrderByInputCopyWith<$Res> {
  factory $RefundOrderByInputCopyWith(
          RefundOrderByInput value, $Res Function(RefundOrderByInput) then) =
      _$RefundOrderByInputCopyWithImpl<$Res, RefundOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? reason,
      SortOrder? refundId,
      SortOrder? exchangeRateAtRefund,
      SortOrder? displayCurrency,
      SortOrder? paymentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$RefundOrderByInputCopyWithImpl<$Res, $Val extends RefundOrderByInput>
    implements $RefundOrderByInputCopyWith<$Res> {
  _$RefundOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? refundId = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RefundOrderByInputImplCopyWith<$Res>
    implements $RefundOrderByInputCopyWith<$Res> {
  factory _$$RefundOrderByInputImplCopyWith(_$RefundOrderByInputImpl value,
          $Res Function(_$RefundOrderByInputImpl) then) =
      __$$RefundOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? reason,
      SortOrder? refundId,
      SortOrder? exchangeRateAtRefund,
      SortOrder? displayCurrency,
      SortOrder? paymentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$RefundOrderByInputImplCopyWithImpl<$Res>
    extends _$RefundOrderByInputCopyWithImpl<$Res, _$RefundOrderByInputImpl>
    implements _$$RefundOrderByInputImplCopyWith<$Res> {
  __$$RefundOrderByInputImplCopyWithImpl(_$RefundOrderByInputImpl _value,
      $Res Function(_$RefundOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? refundId = freezed,
    Object? exchangeRateAtRefund = freezed,
    Object? displayCurrency = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RefundOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      exchangeRateAtRefund: freezed == exchangeRateAtRefund
          ? _value.exchangeRateAtRefund
          : exchangeRateAtRefund // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      displayCurrency: freezed == displayCurrency
          ? _value.displayCurrency
          : displayCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
class _$RefundOrderByInputImpl implements _RefundOrderByInput {
  const _$RefundOrderByInputImpl(
      {this.id,
      this.amount,
      this.currency,
      this.reason,
      this.refundId,
      this.exchangeRateAtRefund,
      this.displayCurrency,
      this.paymentId,
      this.createdAt,
      this.updatedAt});

  factory _$RefundOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? reason;
  @override
  final SortOrder? refundId;
  @override
  final SortOrder? exchangeRateAtRefund;
  @override
  final SortOrder? displayCurrency;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'RefundOrderByInput(id: $id, amount: $amount, currency: $currency, reason: $reason, refundId: $refundId, exchangeRateAtRefund: $exchangeRateAtRefund, displayCurrency: $displayCurrency, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.exchangeRateAtRefund, exchangeRateAtRefund) ||
                other.exchangeRateAtRefund == exchangeRateAtRefund) &&
            (identical(other.displayCurrency, displayCurrency) ||
                other.displayCurrency == displayCurrency) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
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
      amount,
      currency,
      reason,
      refundId,
      exchangeRateAtRefund,
      displayCurrency,
      paymentId,
      createdAt,
      updatedAt);

  /// Create a copy of RefundOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundOrderByInputImplCopyWith<_$RefundOrderByInputImpl> get copyWith =>
      __$$RefundOrderByInputImplCopyWithImpl<_$RefundOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _RefundOrderByInput implements RefundOrderByInput {
  const factory _RefundOrderByInput(
      {final SortOrder? id,
      final SortOrder? amount,
      final SortOrder? currency,
      final SortOrder? reason,
      final SortOrder? refundId,
      final SortOrder? exchangeRateAtRefund,
      final SortOrder? displayCurrency,
      final SortOrder? paymentId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$RefundOrderByInputImpl;

  factory _RefundOrderByInput.fromJson(Map<String, dynamic> json) =
      _$RefundOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get reason;
  @override
  SortOrder? get refundId;
  @override
  SortOrder? get exchangeRateAtRefund;
  @override
  SortOrder? get displayCurrency;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of RefundOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundOrderByInputImplCopyWith<_$RefundOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
