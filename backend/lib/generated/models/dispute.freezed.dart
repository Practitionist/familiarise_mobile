// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dispute _$DisputeFromJson(Map<String, dynamic> json) {
  return _Dispute.fromJson(json);
}

/// @nodoc
mixin _$Dispute {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DisputeStatus get status => throw _privateConstructorUsedError;
  String get disputeId => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get evidence => throw _privateConstructorUsedError;
  DateTime? get dueBy => throw _privateConstructorUsedError;
  bool get isChargeRefundable => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Dispute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeCopyWith<Dispute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeCopyWith<$Res> {
  factory $DisputeCopyWith(Dispute value, $Res Function(Dispute) then) =
      _$DisputeCopyWithImpl<$Res, Dispute>;
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      String reason,
      DisputeStatus status,
      String disputeId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool isChargeRefundable,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      String paymentId,
      DateTime createdAt,
      DateTime updatedAt});

  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$DisputeCopyWithImpl<$Res, $Val extends Dispute>
    implements $DisputeCopyWith<$Res> {
  _$DisputeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? reason = null,
    Object? status = null,
    Object? disputeId = null,
    Object? paymentGateway = null,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = null,
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
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DisputeStatus,
      disputeId: null == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      evidence: freezed == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: null == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of Dispute
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
abstract class _$$DisputeImplCopyWith<$Res> implements $DisputeCopyWith<$Res> {
  factory _$$DisputeImplCopyWith(
          _$DisputeImpl value, $Res Function(_$DisputeImpl) then) =
      __$$DisputeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      String reason,
      DisputeStatus status,
      String disputeId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool isChargeRefundable,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      String paymentId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$DisputeImplCopyWithImpl<$Res>
    extends _$DisputeCopyWithImpl<$Res, _$DisputeImpl>
    implements _$$DisputeImplCopyWith<$Res> {
  __$$DisputeImplCopyWithImpl(
      _$DisputeImpl _value, $Res Function(_$DisputeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? reason = null,
    Object? status = null,
    Object? disputeId = null,
    Object? paymentGateway = null,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = null,
    Object? payment = freezed,
    Object? paymentId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DisputeImpl(
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
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DisputeStatus,
      disputeId: null == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      evidence: freezed == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: null == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$DisputeImpl implements _Dispute {
  const _$DisputeImpl(
      {required this.id,
      required this.amount,
      required this.currency,
      required this.reason,
      required this.status,
      required this.disputeId,
      required this.paymentGateway,
      final Map<String, dynamic>? evidence,
      this.dueBy,
      this.isChargeRefundable = true,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payment,
      required this.paymentId,
      required this.createdAt,
      required this.updatedAt})
      : _evidence = evidence;

  factory _$DisputeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final String reason;
  @override
  final DisputeStatus status;
  @override
  final String disputeId;
  @override
  final PaymentGateway paymentGateway;
  final Map<String, dynamic>? _evidence;
  @override
  Map<String, dynamic>? get evidence {
    final value = _evidence;
    if (value == null) return null;
    if (_evidence is EqualUnmodifiableMapView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? dueBy;
  @override
  @JsonKey()
  final bool isChargeRefundable;
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
    return 'Dispute(id: $id, amount: $amount, currency: $currency, reason: $reason, status: $status, disputeId: $disputeId, paymentGateway: $paymentGateway, evidence: $evidence, dueBy: $dueBy, isChargeRefundable: $isChargeRefundable, payment: $payment, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.dueBy, dueBy) || other.dueBy == dueBy) &&
            (identical(other.isChargeRefundable, isChargeRefundable) ||
                other.isChargeRefundable == isChargeRefundable) &&
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
      disputeId,
      paymentGateway,
      const DeepCollectionEquality().hash(_evidence),
      dueBy,
      isChargeRefundable,
      payment,
      paymentId,
      createdAt,
      updatedAt);

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeImplCopyWith<_$DisputeImpl> get copyWith =>
      __$$DisputeImplCopyWithImpl<_$DisputeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeImplToJson(
      this,
    );
  }
}

abstract class _Dispute implements Dispute {
  const factory _Dispute(
      {required final String id,
      required final int amount,
      required final String currency,
      required final String reason,
      required final DisputeStatus status,
      required final String disputeId,
      required final PaymentGateway paymentGateway,
      final Map<String, dynamic>? evidence,
      final DateTime? dueBy,
      final bool isChargeRefundable,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payment? payment,
      required final String paymentId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DisputeImpl;

  factory _Dispute.fromJson(Map<String, dynamic> json) = _$DisputeImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get reason;
  @override
  DisputeStatus get status;
  @override
  String get disputeId;
  @override
  PaymentGateway get paymentGateway;
  @override
  Map<String, dynamic>? get evidence;
  @override
  DateTime? get dueBy;
  @override
  bool get isChargeRefundable;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment;
  @override
  String get paymentId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeImplCopyWith<_$DisputeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateDisputeInput _$CreateDisputeInputFromJson(Map<String, dynamic> json) {
  return _CreateDisputeInput.fromJson(json);
}

/// @nodoc
mixin _$CreateDisputeInput {
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DisputeStatus get status => throw _privateConstructorUsedError;
  String get disputeId => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get evidence => throw _privateConstructorUsedError;
  DateTime? get dueBy => throw _privateConstructorUsedError;
  bool? get isChargeRefundable => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;

  /// Serializes this CreateDisputeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDisputeInputCopyWith<CreateDisputeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDisputeInputCopyWith<$Res> {
  factory $CreateDisputeInputCopyWith(
          CreateDisputeInput value, $Res Function(CreateDisputeInput) then) =
      _$CreateDisputeInputCopyWithImpl<$Res, CreateDisputeInput>;
  @useResult
  $Res call(
      {int amount,
      String currency,
      String reason,
      DisputeStatus status,
      String disputeId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool? isChargeRefundable,
      String paymentId});
}

/// @nodoc
class _$CreateDisputeInputCopyWithImpl<$Res, $Val extends CreateDisputeInput>
    implements $CreateDisputeInputCopyWith<$Res> {
  _$CreateDisputeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? reason = null,
    Object? status = null,
    Object? disputeId = null,
    Object? paymentGateway = null,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
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
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DisputeStatus,
      disputeId: null == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      evidence: freezed == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDisputeInputImplCopyWith<$Res>
    implements $CreateDisputeInputCopyWith<$Res> {
  factory _$$CreateDisputeInputImplCopyWith(_$CreateDisputeInputImpl value,
          $Res Function(_$CreateDisputeInputImpl) then) =
      __$$CreateDisputeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      String currency,
      String reason,
      DisputeStatus status,
      String disputeId,
      PaymentGateway paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool? isChargeRefundable,
      String paymentId});
}

/// @nodoc
class __$$CreateDisputeInputImplCopyWithImpl<$Res>
    extends _$CreateDisputeInputCopyWithImpl<$Res, _$CreateDisputeInputImpl>
    implements _$$CreateDisputeInputImplCopyWith<$Res> {
  __$$CreateDisputeInputImplCopyWithImpl(_$CreateDisputeInputImpl _value,
      $Res Function(_$CreateDisputeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? reason = null,
    Object? status = null,
    Object? disputeId = null,
    Object? paymentGateway = null,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
    Object? paymentId = null,
  }) {
    return _then(_$CreateDisputeInputImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DisputeStatus,
      disputeId: null == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      evidence: freezed == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDisputeInputImpl implements _CreateDisputeInput {
  const _$CreateDisputeInputImpl(
      {required this.amount,
      required this.currency,
      required this.reason,
      required this.status,
      required this.disputeId,
      required this.paymentGateway,
      final Map<String, dynamic>? evidence,
      this.dueBy,
      this.isChargeRefundable = true,
      required this.paymentId})
      : _evidence = evidence;

  factory _$CreateDisputeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDisputeInputImplFromJson(json);

  @override
  final int amount;
  @override
  final String currency;
  @override
  final String reason;
  @override
  final DisputeStatus status;
  @override
  final String disputeId;
  @override
  final PaymentGateway paymentGateway;
  final Map<String, dynamic>? _evidence;
  @override
  Map<String, dynamic>? get evidence {
    final value = _evidence;
    if (value == null) return null;
    if (_evidence is EqualUnmodifiableMapView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? dueBy;
  @override
  @JsonKey()
  final bool? isChargeRefundable;
  @override
  final String paymentId;

  @override
  String toString() {
    return 'CreateDisputeInput(amount: $amount, currency: $currency, reason: $reason, status: $status, disputeId: $disputeId, paymentGateway: $paymentGateway, evidence: $evidence, dueBy: $dueBy, isChargeRefundable: $isChargeRefundable, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDisputeInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.dueBy, dueBy) || other.dueBy == dueBy) &&
            (identical(other.isChargeRefundable, isChargeRefundable) ||
                other.isChargeRefundable == isChargeRefundable) &&
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
      disputeId,
      paymentGateway,
      const DeepCollectionEquality().hash(_evidence),
      dueBy,
      isChargeRefundable,
      paymentId);

  /// Create a copy of CreateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDisputeInputImplCopyWith<_$CreateDisputeInputImpl> get copyWith =>
      __$$CreateDisputeInputImplCopyWithImpl<_$CreateDisputeInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDisputeInputImplToJson(
      this,
    );
  }
}

abstract class _CreateDisputeInput implements CreateDisputeInput {
  const factory _CreateDisputeInput(
      {required final int amount,
      required final String currency,
      required final String reason,
      required final DisputeStatus status,
      required final String disputeId,
      required final PaymentGateway paymentGateway,
      final Map<String, dynamic>? evidence,
      final DateTime? dueBy,
      final bool? isChargeRefundable,
      required final String paymentId}) = _$CreateDisputeInputImpl;

  factory _CreateDisputeInput.fromJson(Map<String, dynamic> json) =
      _$CreateDisputeInputImpl.fromJson;

  @override
  int get amount;
  @override
  String get currency;
  @override
  String get reason;
  @override
  DisputeStatus get status;
  @override
  String get disputeId;
  @override
  PaymentGateway get paymentGateway;
  @override
  Map<String, dynamic>? get evidence;
  @override
  DateTime? get dueBy;
  @override
  bool? get isChargeRefundable;
  @override
  String get paymentId;

  /// Create a copy of CreateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDisputeInputImplCopyWith<_$CreateDisputeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateDisputeInput _$UpdateDisputeInputFromJson(Map<String, dynamic> json) {
  return _UpdateDisputeInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateDisputeInput {
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DisputeStatus? get status => throw _privateConstructorUsedError;
  String? get disputeId => throw _privateConstructorUsedError;
  PaymentGateway? get paymentGateway => throw _privateConstructorUsedError;
  Map<String, dynamic>? get evidence => throw _privateConstructorUsedError;
  DateTime? get dueBy => throw _privateConstructorUsedError;
  bool? get isChargeRefundable => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;

  /// Serializes this UpdateDisputeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDisputeInputCopyWith<UpdateDisputeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisputeInputCopyWith<$Res> {
  factory $UpdateDisputeInputCopyWith(
          UpdateDisputeInput value, $Res Function(UpdateDisputeInput) then) =
      _$UpdateDisputeInputCopyWithImpl<$Res, UpdateDisputeInput>;
  @useResult
  $Res call(
      {int? amount,
      String? currency,
      String? reason,
      DisputeStatus? status,
      String? disputeId,
      PaymentGateway? paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool? isChargeRefundable,
      String? paymentId});
}

/// @nodoc
class _$UpdateDisputeInputCopyWithImpl<$Res, $Val extends UpdateDisputeInput>
    implements $UpdateDisputeInputCopyWith<$Res> {
  _$UpdateDisputeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? disputeId = freezed,
    Object? paymentGateway = freezed,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
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
              as DisputeStatus?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      evidence: freezed == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateDisputeInputImplCopyWith<$Res>
    implements $UpdateDisputeInputCopyWith<$Res> {
  factory _$$UpdateDisputeInputImplCopyWith(_$UpdateDisputeInputImpl value,
          $Res Function(_$UpdateDisputeInputImpl) then) =
      __$$UpdateDisputeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      String? currency,
      String? reason,
      DisputeStatus? status,
      String? disputeId,
      PaymentGateway? paymentGateway,
      Map<String, dynamic>? evidence,
      DateTime? dueBy,
      bool? isChargeRefundable,
      String? paymentId});
}

/// @nodoc
class __$$UpdateDisputeInputImplCopyWithImpl<$Res>
    extends _$UpdateDisputeInputCopyWithImpl<$Res, _$UpdateDisputeInputImpl>
    implements _$$UpdateDisputeInputImplCopyWith<$Res> {
  __$$UpdateDisputeInputImplCopyWithImpl(_$UpdateDisputeInputImpl _value,
      $Res Function(_$UpdateDisputeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? disputeId = freezed,
    Object? paymentGateway = freezed,
    Object? evidence = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_$UpdateDisputeInputImpl(
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
              as DisputeStatus?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      evidence: freezed == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDisputeInputImpl implements _UpdateDisputeInput {
  const _$UpdateDisputeInputImpl(
      {this.amount,
      this.currency,
      this.reason,
      this.status,
      this.disputeId,
      this.paymentGateway,
      final Map<String, dynamic>? evidence,
      this.dueBy,
      this.isChargeRefundable,
      this.paymentId})
      : _evidence = evidence;

  factory _$UpdateDisputeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateDisputeInputImplFromJson(json);

  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final String? reason;
  @override
  final DisputeStatus? status;
  @override
  final String? disputeId;
  @override
  final PaymentGateway? paymentGateway;
  final Map<String, dynamic>? _evidence;
  @override
  Map<String, dynamic>? get evidence {
    final value = _evidence;
    if (value == null) return null;
    if (_evidence is EqualUnmodifiableMapView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? dueBy;
  @override
  final bool? isChargeRefundable;
  @override
  final String? paymentId;

  @override
  String toString() {
    return 'UpdateDisputeInput(amount: $amount, currency: $currency, reason: $reason, status: $status, disputeId: $disputeId, paymentGateway: $paymentGateway, evidence: $evidence, dueBy: $dueBy, isChargeRefundable: $isChargeRefundable, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDisputeInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.dueBy, dueBy) || other.dueBy == dueBy) &&
            (identical(other.isChargeRefundable, isChargeRefundable) ||
                other.isChargeRefundable == isChargeRefundable) &&
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
      disputeId,
      paymentGateway,
      const DeepCollectionEquality().hash(_evidence),
      dueBy,
      isChargeRefundable,
      paymentId);

  /// Create a copy of UpdateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDisputeInputImplCopyWith<_$UpdateDisputeInputImpl> get copyWith =>
      __$$UpdateDisputeInputImplCopyWithImpl<_$UpdateDisputeInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDisputeInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateDisputeInput implements UpdateDisputeInput {
  const factory _UpdateDisputeInput(
      {final int? amount,
      final String? currency,
      final String? reason,
      final DisputeStatus? status,
      final String? disputeId,
      final PaymentGateway? paymentGateway,
      final Map<String, dynamic>? evidence,
      final DateTime? dueBy,
      final bool? isChargeRefundable,
      final String? paymentId}) = _$UpdateDisputeInputImpl;

  factory _UpdateDisputeInput.fromJson(Map<String, dynamic> json) =
      _$UpdateDisputeInputImpl.fromJson;

  @override
  int? get amount;
  @override
  String? get currency;
  @override
  String? get reason;
  @override
  DisputeStatus? get status;
  @override
  String? get disputeId;
  @override
  PaymentGateway? get paymentGateway;
  @override
  Map<String, dynamic>? get evidence;
  @override
  DateTime? get dueBy;
  @override
  bool? get isChargeRefundable;
  @override
  String? get paymentId;

  /// Create a copy of UpdateDisputeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDisputeInputImplCopyWith<_$UpdateDisputeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisputeWhereUniqueInput _$DisputeWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _DisputeWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$DisputeWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get disputeId => throw _privateConstructorUsedError;

  /// Serializes this DisputeWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeWhereUniqueInputCopyWith<DisputeWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeWhereUniqueInputCopyWith<$Res> {
  factory $DisputeWhereUniqueInputCopyWith(DisputeWhereUniqueInput value,
          $Res Function(DisputeWhereUniqueInput) then) =
      _$DisputeWhereUniqueInputCopyWithImpl<$Res, DisputeWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? disputeId});
}

/// @nodoc
class _$DisputeWhereUniqueInputCopyWithImpl<$Res,
        $Val extends DisputeWhereUniqueInput>
    implements $DisputeWhereUniqueInputCopyWith<$Res> {
  _$DisputeWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? disputeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisputeWhereUniqueInputImplCopyWith<$Res>
    implements $DisputeWhereUniqueInputCopyWith<$Res> {
  factory _$$DisputeWhereUniqueInputImplCopyWith(
          _$DisputeWhereUniqueInputImpl value,
          $Res Function(_$DisputeWhereUniqueInputImpl) then) =
      __$$DisputeWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? disputeId});
}

/// @nodoc
class __$$DisputeWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$DisputeWhereUniqueInputCopyWithImpl<$Res,
        _$DisputeWhereUniqueInputImpl>
    implements _$$DisputeWhereUniqueInputImplCopyWith<$Res> {
  __$$DisputeWhereUniqueInputImplCopyWithImpl(
      _$DisputeWhereUniqueInputImpl _value,
      $Res Function(_$DisputeWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? disputeId = freezed,
  }) {
    return _then(_$DisputeWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeWhereUniqueInputImpl implements _DisputeWhereUniqueInput {
  const _$DisputeWhereUniqueInputImpl({this.id, this.disputeId});

  factory _$DisputeWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? disputeId;

  @override
  String toString() {
    return 'DisputeWhereUniqueInput(id: $id, disputeId: $disputeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, disputeId);

  /// Create a copy of DisputeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeWhereUniqueInputImplCopyWith<_$DisputeWhereUniqueInputImpl>
      get copyWith => __$$DisputeWhereUniqueInputImplCopyWithImpl<
          _$DisputeWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _DisputeWhereUniqueInput implements DisputeWhereUniqueInput {
  const factory _DisputeWhereUniqueInput(
      {final String? id,
      final String? disputeId}) = _$DisputeWhereUniqueInputImpl;

  factory _DisputeWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$DisputeWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get disputeId;

  /// Create a copy of DisputeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeWhereUniqueInputImplCopyWith<_$DisputeWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisputeWhereInput _$DisputeWhereInputFromJson(Map<String, dynamic> json) {
  return _DisputeWhereInput.fromJson(json);
}

/// @nodoc
mixin _$DisputeWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  StringFilter? get reason => throw _privateConstructorUsedError;
  DisputeStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get disputeId => throw _privateConstructorUsedError;
  PaymentGatewayFilter? get paymentGateway =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get dueBy => throw _privateConstructorUsedError;
  BooleanFilter? get isChargeRefundable => throw _privateConstructorUsedError;

  /// Filter by payment relation
  PaymentRelationFilter? get payment => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<DisputeWhereInput>? get AND => throw _privateConstructorUsedError;
  List<DisputeWhereInput>? get OR => throw _privateConstructorUsedError;
  DisputeWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this DisputeWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeWhereInputCopyWith<DisputeWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeWhereInputCopyWith<$Res> {
  factory $DisputeWhereInputCopyWith(
          DisputeWhereInput value, $Res Function(DisputeWhereInput) then) =
      _$DisputeWhereInputCopyWithImpl<$Res, DisputeWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      StringFilter? currency,
      StringFilter? reason,
      DisputeStatusFilter? status,
      StringFilter? disputeId,
      PaymentGatewayFilter? paymentGateway,
      DateTimeFilter? dueBy,
      BooleanFilter? isChargeRefundable,
      PaymentRelationFilter? payment,
      StringFilter? paymentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DisputeWhereInput>? AND,
      List<DisputeWhereInput>? OR,
      DisputeWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $IntFilterCopyWith<$Res>? get amount;
  $StringFilterCopyWith<$Res>? get currency;
  $StringFilterCopyWith<$Res>? get reason;
  $DisputeStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get disputeId;
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  $DateTimeFilterCopyWith<$Res>? get dueBy;
  $BooleanFilterCopyWith<$Res>? get isChargeRefundable;
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  $StringFilterCopyWith<$Res>? get paymentId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $DisputeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$DisputeWhereInputCopyWithImpl<$Res, $Val extends DisputeWhereInput>
    implements $DisputeWhereInputCopyWith<$Res> {
  _$DisputeWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? disputeId = freezed,
    Object? paymentGateway = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
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
              as DisputeStatusFilter?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
              as List<DisputeWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DisputeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $DisputeStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get disputeId {
    if (_value.disputeId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.disputeId!, (value) {
      return _then(_value.copyWith(disputeId: value) as $Val);
    });
  }

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get dueBy {
    if (_value.dueBy == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.dueBy!, (value) {
      return _then(_value.copyWith(dueBy: value) as $Val);
    });
  }

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isChargeRefundable {
    if (_value.isChargeRefundable == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isChargeRefundable!, (value) {
      return _then(_value.copyWith(isChargeRefundable: value) as $Val);
    });
  }

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
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

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DisputeWhereInputImplCopyWith<$Res>
    implements $DisputeWhereInputCopyWith<$Res> {
  factory _$$DisputeWhereInputImplCopyWith(_$DisputeWhereInputImpl value,
          $Res Function(_$DisputeWhereInputImpl) then) =
      __$$DisputeWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      StringFilter? currency,
      StringFilter? reason,
      DisputeStatusFilter? status,
      StringFilter? disputeId,
      PaymentGatewayFilter? paymentGateway,
      DateTimeFilter? dueBy,
      BooleanFilter? isChargeRefundable,
      PaymentRelationFilter? payment,
      StringFilter? paymentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DisputeWhereInput>? AND,
      List<DisputeWhereInput>? OR,
      DisputeWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $StringFilterCopyWith<$Res>? get reason;
  @override
  $DisputeStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get disputeId;
  @override
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  @override
  $DateTimeFilterCopyWith<$Res>? get dueBy;
  @override
  $BooleanFilterCopyWith<$Res>? get isChargeRefundable;
  @override
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $DisputeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$DisputeWhereInputImplCopyWithImpl<$Res>
    extends _$DisputeWhereInputCopyWithImpl<$Res, _$DisputeWhereInputImpl>
    implements _$$DisputeWhereInputImplCopyWith<$Res> {
  __$$DisputeWhereInputImplCopyWithImpl(_$DisputeWhereInputImpl _value,
      $Res Function(_$DisputeWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? disputeId = freezed,
    Object? paymentGateway = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
    Object? payment = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$DisputeWhereInputImpl(
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
              as DisputeStatusFilter?,
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
              as List<DisputeWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DisputeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DisputeWhereInputImpl implements _DisputeWhereInput {
  const _$DisputeWhereInputImpl(
      {this.id,
      this.amount,
      this.currency,
      this.reason,
      this.status,
      this.disputeId,
      this.paymentGateway,
      this.dueBy,
      this.isChargeRefundable,
      this.payment,
      this.paymentId,
      this.createdAt,
      this.updatedAt,
      final List<DisputeWhereInput>? AND,
      final List<DisputeWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$DisputeWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final IntFilter? amount;
  @override
  final StringFilter? currency;
  @override
  final StringFilter? reason;
  @override
  final DisputeStatusFilter? status;
  @override
  final StringFilter? disputeId;
  @override
  final PaymentGatewayFilter? paymentGateway;
  @override
  final DateTimeFilter? dueBy;
  @override
  final BooleanFilter? isChargeRefundable;

  /// Filter by payment relation
  @override
  final PaymentRelationFilter? payment;
  @override
  final StringFilter? paymentId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<DisputeWhereInput>? _AND;
  @override
  List<DisputeWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DisputeWhereInput>? _OR;
  @override
  List<DisputeWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DisputeWhereInput? NOT;

  @override
  String toString() {
    return 'DisputeWhereInput(id: $id, amount: $amount, currency: $currency, reason: $reason, status: $status, disputeId: $disputeId, paymentGateway: $paymentGateway, dueBy: $dueBy, isChargeRefundable: $isChargeRefundable, payment: $payment, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.dueBy, dueBy) || other.dueBy == dueBy) &&
            (identical(other.isChargeRefundable, isChargeRefundable) ||
                other.isChargeRefundable == isChargeRefundable) &&
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
      disputeId,
      paymentGateway,
      dueBy,
      isChargeRefundable,
      payment,
      paymentId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeWhereInputImplCopyWith<_$DisputeWhereInputImpl> get copyWith =>
      __$$DisputeWhereInputImplCopyWithImpl<_$DisputeWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeWhereInputImplToJson(
      this,
    );
  }
}

abstract class _DisputeWhereInput implements DisputeWhereInput {
  const factory _DisputeWhereInput(
      {final StringFilter? id,
      final IntFilter? amount,
      final StringFilter? currency,
      final StringFilter? reason,
      final DisputeStatusFilter? status,
      final StringFilter? disputeId,
      final PaymentGatewayFilter? paymentGateway,
      final DateTimeFilter? dueBy,
      final BooleanFilter? isChargeRefundable,
      final PaymentRelationFilter? payment,
      final StringFilter? paymentId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<DisputeWhereInput>? AND,
      final List<DisputeWhereInput>? OR,
      final DisputeWhereInput? NOT}) = _$DisputeWhereInputImpl;

  factory _DisputeWhereInput.fromJson(Map<String, dynamic> json) =
      _$DisputeWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  IntFilter? get amount;
  @override
  StringFilter? get currency;
  @override
  StringFilter? get reason;
  @override
  DisputeStatusFilter? get status;
  @override
  StringFilter? get disputeId;
  @override
  PaymentGatewayFilter? get paymentGateway;
  @override
  DateTimeFilter? get dueBy;
  @override
  BooleanFilter? get isChargeRefundable;

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
  List<DisputeWhereInput>? get AND;
  @override
  List<DisputeWhereInput>? get OR;
  @override
  DisputeWhereInput? get NOT;

  /// Create a copy of DisputeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeWhereInputImplCopyWith<_$DisputeWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisputeListRelationFilter _$DisputeListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _DisputeListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DisputeListRelationFilter {
  /// At least one related record matches
  DisputeWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  DisputeWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  DisputeWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this DisputeListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeListRelationFilterCopyWith<DisputeListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeListRelationFilterCopyWith<$Res> {
  factory $DisputeListRelationFilterCopyWith(DisputeListRelationFilter value,
          $Res Function(DisputeListRelationFilter) then) =
      _$DisputeListRelationFilterCopyWithImpl<$Res, DisputeListRelationFilter>;
  @useResult
  $Res call(
      {DisputeWhereInput? some,
      DisputeWhereInput? every,
      DisputeWhereInput? none});

  $DisputeWhereInputCopyWith<$Res>? get some;
  $DisputeWhereInputCopyWith<$Res>? get every;
  $DisputeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$DisputeListRelationFilterCopyWithImpl<$Res,
        $Val extends DisputeListRelationFilter>
    implements $DisputeListRelationFilterCopyWith<$Res> {
  _$DisputeListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeListRelationFilter
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
              as DisputeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DisputeListRelationFilterImplCopyWith<$Res>
    implements $DisputeListRelationFilterCopyWith<$Res> {
  factory _$$DisputeListRelationFilterImplCopyWith(
          _$DisputeListRelationFilterImpl value,
          $Res Function(_$DisputeListRelationFilterImpl) then) =
      __$$DisputeListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DisputeWhereInput? some,
      DisputeWhereInput? every,
      DisputeWhereInput? none});

  @override
  $DisputeWhereInputCopyWith<$Res>? get some;
  @override
  $DisputeWhereInputCopyWith<$Res>? get every;
  @override
  $DisputeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$DisputeListRelationFilterImplCopyWithImpl<$Res>
    extends _$DisputeListRelationFilterCopyWithImpl<$Res,
        _$DisputeListRelationFilterImpl>
    implements _$$DisputeListRelationFilterImplCopyWith<$Res> {
  __$$DisputeListRelationFilterImplCopyWithImpl(
      _$DisputeListRelationFilterImpl _value,
      $Res Function(_$DisputeListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$DisputeListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeListRelationFilterImpl implements _DisputeListRelationFilter {
  const _$DisputeListRelationFilterImpl({this.some, this.every, this.none});

  factory _$DisputeListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final DisputeWhereInput? some;

  /// All related records match
  @override
  final DisputeWhereInput? every;

  /// No related records match
  @override
  final DisputeWhereInput? none;

  @override
  String toString() {
    return 'DisputeListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeListRelationFilterImplCopyWith<_$DisputeListRelationFilterImpl>
      get copyWith => __$$DisputeListRelationFilterImplCopyWithImpl<
          _$DisputeListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DisputeListRelationFilter implements DisputeListRelationFilter {
  const factory _DisputeListRelationFilter(
      {final DisputeWhereInput? some,
      final DisputeWhereInput? every,
      final DisputeWhereInput? none}) = _$DisputeListRelationFilterImpl;

  factory _DisputeListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DisputeListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  DisputeWhereInput? get some;

  /// All related records match
  @override
  DisputeWhereInput? get every;

  /// No related records match
  @override
  DisputeWhereInput? get none;

  /// Create a copy of DisputeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeListRelationFilterImplCopyWith<_$DisputeListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisputeRelationFilter _$DisputeRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _DisputeRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DisputeRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  DisputeWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  DisputeWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this DisputeRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeRelationFilterCopyWith<DisputeRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeRelationFilterCopyWith<$Res> {
  factory $DisputeRelationFilterCopyWith(DisputeRelationFilter value,
          $Res Function(DisputeRelationFilter) then) =
      _$DisputeRelationFilterCopyWithImpl<$Res, DisputeRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DisputeWhereInput? is_, DisputeWhereInput? isNot});

  $DisputeWhereInputCopyWith<$Res>? get is_;
  $DisputeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$DisputeRelationFilterCopyWithImpl<$Res,
        $Val extends DisputeRelationFilter>
    implements $DisputeRelationFilterCopyWith<$Res> {
  _$DisputeRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeRelationFilter
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
              as DisputeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisputeWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $DisputeWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DisputeRelationFilterImplCopyWith<$Res>
    implements $DisputeRelationFilterCopyWith<$Res> {
  factory _$$DisputeRelationFilterImplCopyWith(
          _$DisputeRelationFilterImpl value,
          $Res Function(_$DisputeRelationFilterImpl) then) =
      __$$DisputeRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DisputeWhereInput? is_, DisputeWhereInput? isNot});

  @override
  $DisputeWhereInputCopyWith<$Res>? get is_;
  @override
  $DisputeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$DisputeRelationFilterImplCopyWithImpl<$Res>
    extends _$DisputeRelationFilterCopyWithImpl<$Res,
        _$DisputeRelationFilterImpl>
    implements _$$DisputeRelationFilterImplCopyWith<$Res> {
  __$$DisputeRelationFilterImplCopyWithImpl(_$DisputeRelationFilterImpl _value,
      $Res Function(_$DisputeRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$DisputeRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DisputeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeRelationFilterImpl implements _DisputeRelationFilter {
  const _$DisputeRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$DisputeRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final DisputeWhereInput? is_;

  /// Related record does not match
  @override
  final DisputeWhereInput? isNot;

  @override
  String toString() {
    return 'DisputeRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeRelationFilterImplCopyWith<_$DisputeRelationFilterImpl>
      get copyWith => __$$DisputeRelationFilterImplCopyWithImpl<
          _$DisputeRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DisputeRelationFilter implements DisputeRelationFilter {
  const factory _DisputeRelationFilter(
      {@JsonKey(name: 'is') final DisputeWhereInput? is_,
      final DisputeWhereInput? isNot}) = _$DisputeRelationFilterImpl;

  factory _DisputeRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DisputeRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  DisputeWhereInput? get is_;

  /// Related record does not match
  @override
  DisputeWhereInput? get isNot;

  /// Create a copy of DisputeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeRelationFilterImplCopyWith<_$DisputeRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisputeOrderByInput _$DisputeOrderByInputFromJson(Map<String, dynamic> json) {
  return _DisputeOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$DisputeOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get reason => throw _privateConstructorUsedError;
  SortOrder? get disputeId => throw _privateConstructorUsedError;
  SortOrder? get dueBy => throw _privateConstructorUsedError;
  SortOrder? get isChargeRefundable => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DisputeOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeOrderByInputCopyWith<DisputeOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeOrderByInputCopyWith<$Res> {
  factory $DisputeOrderByInputCopyWith(
          DisputeOrderByInput value, $Res Function(DisputeOrderByInput) then) =
      _$DisputeOrderByInputCopyWithImpl<$Res, DisputeOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? reason,
      SortOrder? disputeId,
      SortOrder? dueBy,
      SortOrder? isChargeRefundable,
      SortOrder? paymentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$DisputeOrderByInputCopyWithImpl<$Res, $Val extends DisputeOrderByInput>
    implements $DisputeOrderByInputCopyWith<$Res> {
  _$DisputeOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? disputeId = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
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
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DisputeOrderByInputImplCopyWith<$Res>
    implements $DisputeOrderByInputCopyWith<$Res> {
  factory _$$DisputeOrderByInputImplCopyWith(_$DisputeOrderByInputImpl value,
          $Res Function(_$DisputeOrderByInputImpl) then) =
      __$$DisputeOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? reason,
      SortOrder? disputeId,
      SortOrder? dueBy,
      SortOrder? isChargeRefundable,
      SortOrder? paymentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$DisputeOrderByInputImplCopyWithImpl<$Res>
    extends _$DisputeOrderByInputCopyWithImpl<$Res, _$DisputeOrderByInputImpl>
    implements _$$DisputeOrderByInputImplCopyWith<$Res> {
  __$$DisputeOrderByInputImplCopyWithImpl(_$DisputeOrderByInputImpl _value,
      $Res Function(_$DisputeOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? reason = freezed,
    Object? disputeId = freezed,
    Object? dueBy = freezed,
    Object? isChargeRefundable = freezed,
    Object? paymentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DisputeOrderByInputImpl(
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
      disputeId: freezed == disputeId
          ? _value.disputeId
          : disputeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dueBy: freezed == dueBy
          ? _value.dueBy
          : dueBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isChargeRefundable: freezed == isChargeRefundable
          ? _value.isChargeRefundable
          : isChargeRefundable // ignore: cast_nullable_to_non_nullable
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
class _$DisputeOrderByInputImpl implements _DisputeOrderByInput {
  const _$DisputeOrderByInputImpl(
      {this.id,
      this.amount,
      this.currency,
      this.reason,
      this.disputeId,
      this.dueBy,
      this.isChargeRefundable,
      this.paymentId,
      this.createdAt,
      this.updatedAt});

  factory _$DisputeOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? reason;
  @override
  final SortOrder? disputeId;
  @override
  final SortOrder? dueBy;
  @override
  final SortOrder? isChargeRefundable;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'DisputeOrderByInput(id: $id, amount: $amount, currency: $currency, reason: $reason, disputeId: $disputeId, dueBy: $dueBy, isChargeRefundable: $isChargeRefundable, paymentId: $paymentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.disputeId, disputeId) ||
                other.disputeId == disputeId) &&
            (identical(other.dueBy, dueBy) || other.dueBy == dueBy) &&
            (identical(other.isChargeRefundable, isChargeRefundable) ||
                other.isChargeRefundable == isChargeRefundable) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, currency, reason,
      disputeId, dueBy, isChargeRefundable, paymentId, createdAt, updatedAt);

  /// Create a copy of DisputeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeOrderByInputImplCopyWith<_$DisputeOrderByInputImpl> get copyWith =>
      __$$DisputeOrderByInputImplCopyWithImpl<_$DisputeOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _DisputeOrderByInput implements DisputeOrderByInput {
  const factory _DisputeOrderByInput(
      {final SortOrder? id,
      final SortOrder? amount,
      final SortOrder? currency,
      final SortOrder? reason,
      final SortOrder? disputeId,
      final SortOrder? dueBy,
      final SortOrder? isChargeRefundable,
      final SortOrder? paymentId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$DisputeOrderByInputImpl;

  factory _DisputeOrderByInput.fromJson(Map<String, dynamic> json) =
      _$DisputeOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get reason;
  @override
  SortOrder? get disputeId;
  @override
  SortOrder? get dueBy;
  @override
  SortOrder? get isChargeRefundable;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of DisputeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeOrderByInputImplCopyWith<_$DisputeOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
