// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_credit_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferralCreditUsage _$ReferralCreditUsageFromJson(Map<String, dynamic> json) {
  return _ReferralCreditUsage.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsage {
  String get id => throw _privateConstructorUsedError;
  String get creditId => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get originalAmount => throw _privateConstructorUsedError;
  int get restoredAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReferralCredit? get credit => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageCopyWith<ReferralCreditUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageCopyWith<$Res> {
  factory $ReferralCreditUsageCopyWith(
          ReferralCreditUsage value, $Res Function(ReferralCreditUsage) then) =
      _$ReferralCreditUsageCopyWithImpl<$Res, ReferralCreditUsage>;
  @useResult
  $Res call(
      {String id,
      String creditId,
      String paymentId,
      int amount,
      int originalAmount,
      int restoredAmount,
      DateTime createdAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReferralCredit? credit,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment});

  $ReferralCreditCopyWith<$Res>? get credit;
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$ReferralCreditUsageCopyWithImpl<$Res, $Val extends ReferralCreditUsage>
    implements $ReferralCreditUsageCopyWith<$Res> {
  _$ReferralCreditUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? restoredAmount = null,
    Object? createdAt = null,
    Object? credit = freezed,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      restoredAmount: null == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReferralCredit?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditCopyWith<$Res>? get credit {
    if (_value.credit == null) {
      return null;
    }

    return $ReferralCreditCopyWith<$Res>(_value.credit!, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsage
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
abstract class _$$ReferralCreditUsageImplCopyWith<$Res>
    implements $ReferralCreditUsageCopyWith<$Res> {
  factory _$$ReferralCreditUsageImplCopyWith(_$ReferralCreditUsageImpl value,
          $Res Function(_$ReferralCreditUsageImpl) then) =
      __$$ReferralCreditUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creditId,
      String paymentId,
      int amount,
      int originalAmount,
      int restoredAmount,
      DateTime createdAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReferralCredit? credit,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment});

  @override
  $ReferralCreditCopyWith<$Res>? get credit;
  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$ReferralCreditUsageImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageCopyWithImpl<$Res, _$ReferralCreditUsageImpl>
    implements _$$ReferralCreditUsageImplCopyWith<$Res> {
  __$$ReferralCreditUsageImplCopyWithImpl(_$ReferralCreditUsageImpl _value,
      $Res Function(_$ReferralCreditUsageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? restoredAmount = null,
    Object? createdAt = null,
    Object? credit = freezed,
    Object? payment = freezed,
  }) {
    return _then(_$ReferralCreditUsageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      restoredAmount: null == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReferralCredit?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditUsageImpl implements _ReferralCreditUsage {
  const _$ReferralCreditUsageImpl(
      {required this.id,
      required this.creditId,
      required this.paymentId,
      required this.amount,
      required this.originalAmount,
      this.restoredAmount = 0,
      required this.createdAt,
      @JsonKey(includeFromJson: false, includeToJson: false) this.credit,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payment});

  factory _$ReferralCreditUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCreditUsageImplFromJson(json);

  @override
  final String id;
  @override
  final String creditId;
  @override
  final String paymentId;
  @override
  final int amount;
  @override
  final int originalAmount;
  @override
  @JsonKey()
  final int restoredAmount;
  @override
  final DateTime createdAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ReferralCredit? credit;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payment? payment;

  @override
  String toString() {
    return 'ReferralCreditUsage(id: $id, creditId: $creditId, paymentId: $paymentId, amount: $amount, originalAmount: $originalAmount, restoredAmount: $restoredAmount, createdAt: $createdAt, credit: $credit, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.restoredAmount, restoredAmount) ||
                other.restoredAmount == restoredAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, creditId, paymentId, amount,
      originalAmount, restoredAmount, createdAt, credit, payment);

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageImplCopyWith<_$ReferralCreditUsageImpl> get copyWith =>
      __$$ReferralCreditUsageImplCopyWithImpl<_$ReferralCreditUsageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsage implements ReferralCreditUsage {
  const factory _ReferralCreditUsage(
      {required final String id,
      required final String creditId,
      required final String paymentId,
      required final int amount,
      required final int originalAmount,
      final int restoredAmount,
      required final DateTime createdAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ReferralCredit? credit,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payment? payment}) = _$ReferralCreditUsageImpl;

  factory _ReferralCreditUsage.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditUsageImpl.fromJson;

  @override
  String get id;
  @override
  String get creditId;
  @override
  String get paymentId;
  @override
  int get amount;
  @override
  int get originalAmount;
  @override
  int get restoredAmount;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReferralCredit? get credit;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment;

  /// Create a copy of ReferralCreditUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageImplCopyWith<_$ReferralCreditUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReferralCreditUsageInput _$CreateReferralCreditUsageInputFromJson(
    Map<String, dynamic> json) {
  return _CreateReferralCreditUsageInput.fromJson(json);
}

/// @nodoc
mixin _$CreateReferralCreditUsageInput {
  String get creditId => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get originalAmount => throw _privateConstructorUsedError;
  int? get restoredAmount => throw _privateConstructorUsedError;

  /// Serializes this CreateReferralCreditUsageInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReferralCreditUsageInputCopyWith<CreateReferralCreditUsageInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReferralCreditUsageInputCopyWith<$Res> {
  factory $CreateReferralCreditUsageInputCopyWith(
          CreateReferralCreditUsageInput value,
          $Res Function(CreateReferralCreditUsageInput) then) =
      _$CreateReferralCreditUsageInputCopyWithImpl<$Res,
          CreateReferralCreditUsageInput>;
  @useResult
  $Res call(
      {String creditId,
      String paymentId,
      int amount,
      int originalAmount,
      int? restoredAmount});
}

/// @nodoc
class _$CreateReferralCreditUsageInputCopyWithImpl<$Res,
        $Val extends CreateReferralCreditUsageInput>
    implements $CreateReferralCreditUsageInputCopyWith<$Res> {
  _$CreateReferralCreditUsageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? restoredAmount = freezed,
  }) {
    return _then(_value.copyWith(
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReferralCreditUsageInputImplCopyWith<$Res>
    implements $CreateReferralCreditUsageInputCopyWith<$Res> {
  factory _$$CreateReferralCreditUsageInputImplCopyWith(
          _$CreateReferralCreditUsageInputImpl value,
          $Res Function(_$CreateReferralCreditUsageInputImpl) then) =
      __$$CreateReferralCreditUsageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String creditId,
      String paymentId,
      int amount,
      int originalAmount,
      int? restoredAmount});
}

/// @nodoc
class __$$CreateReferralCreditUsageInputImplCopyWithImpl<$Res>
    extends _$CreateReferralCreditUsageInputCopyWithImpl<$Res,
        _$CreateReferralCreditUsageInputImpl>
    implements _$$CreateReferralCreditUsageInputImplCopyWith<$Res> {
  __$$CreateReferralCreditUsageInputImplCopyWithImpl(
      _$CreateReferralCreditUsageInputImpl _value,
      $Res Function(_$CreateReferralCreditUsageInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? restoredAmount = freezed,
  }) {
    return _then(_$CreateReferralCreditUsageInputImpl(
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReferralCreditUsageInputImpl
    implements _CreateReferralCreditUsageInput {
  const _$CreateReferralCreditUsageInputImpl(
      {required this.creditId,
      required this.paymentId,
      required this.amount,
      required this.originalAmount,
      this.restoredAmount = 0});

  factory _$CreateReferralCreditUsageInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateReferralCreditUsageInputImplFromJson(json);

  @override
  final String creditId;
  @override
  final String paymentId;
  @override
  final int amount;
  @override
  final int originalAmount;
  @override
  @JsonKey()
  final int? restoredAmount;

  @override
  String toString() {
    return 'CreateReferralCreditUsageInput(creditId: $creditId, paymentId: $paymentId, amount: $amount, originalAmount: $originalAmount, restoredAmount: $restoredAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReferralCreditUsageInputImpl &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.restoredAmount, restoredAmount) ||
                other.restoredAmount == restoredAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, creditId, paymentId, amount, originalAmount, restoredAmount);

  /// Create a copy of CreateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReferralCreditUsageInputImplCopyWith<
          _$CreateReferralCreditUsageInputImpl>
      get copyWith => __$$CreateReferralCreditUsageInputImplCopyWithImpl<
          _$CreateReferralCreditUsageInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReferralCreditUsageInputImplToJson(
      this,
    );
  }
}

abstract class _CreateReferralCreditUsageInput
    implements CreateReferralCreditUsageInput {
  const factory _CreateReferralCreditUsageInput(
      {required final String creditId,
      required final String paymentId,
      required final int amount,
      required final int originalAmount,
      final int? restoredAmount}) = _$CreateReferralCreditUsageInputImpl;

  factory _CreateReferralCreditUsageInput.fromJson(Map<String, dynamic> json) =
      _$CreateReferralCreditUsageInputImpl.fromJson;

  @override
  String get creditId;
  @override
  String get paymentId;
  @override
  int get amount;
  @override
  int get originalAmount;
  @override
  int? get restoredAmount;

  /// Create a copy of CreateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReferralCreditUsageInputImplCopyWith<
          _$CreateReferralCreditUsageInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateReferralCreditUsageInput _$UpdateReferralCreditUsageInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateReferralCreditUsageInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateReferralCreditUsageInput {
  String? get creditId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get originalAmount => throw _privateConstructorUsedError;
  int? get restoredAmount => throw _privateConstructorUsedError;

  /// Serializes this UpdateReferralCreditUsageInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReferralCreditUsageInputCopyWith<UpdateReferralCreditUsageInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReferralCreditUsageInputCopyWith<$Res> {
  factory $UpdateReferralCreditUsageInputCopyWith(
          UpdateReferralCreditUsageInput value,
          $Res Function(UpdateReferralCreditUsageInput) then) =
      _$UpdateReferralCreditUsageInputCopyWithImpl<$Res,
          UpdateReferralCreditUsageInput>;
  @useResult
  $Res call(
      {String? creditId,
      String? paymentId,
      int? amount,
      int? originalAmount,
      int? restoredAmount});
}

/// @nodoc
class _$UpdateReferralCreditUsageInputCopyWithImpl<$Res,
        $Val extends UpdateReferralCreditUsageInput>
    implements $UpdateReferralCreditUsageInputCopyWith<$Res> {
  _$UpdateReferralCreditUsageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
  }) {
    return _then(_value.copyWith(
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateReferralCreditUsageInputImplCopyWith<$Res>
    implements $UpdateReferralCreditUsageInputCopyWith<$Res> {
  factory _$$UpdateReferralCreditUsageInputImplCopyWith(
          _$UpdateReferralCreditUsageInputImpl value,
          $Res Function(_$UpdateReferralCreditUsageInputImpl) then) =
      __$$UpdateReferralCreditUsageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? creditId,
      String? paymentId,
      int? amount,
      int? originalAmount,
      int? restoredAmount});
}

/// @nodoc
class __$$UpdateReferralCreditUsageInputImplCopyWithImpl<$Res>
    extends _$UpdateReferralCreditUsageInputCopyWithImpl<$Res,
        _$UpdateReferralCreditUsageInputImpl>
    implements _$$UpdateReferralCreditUsageInputImplCopyWith<$Res> {
  __$$UpdateReferralCreditUsageInputImplCopyWithImpl(
      _$UpdateReferralCreditUsageInputImpl _value,
      $Res Function(_$UpdateReferralCreditUsageInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
  }) {
    return _then(_$UpdateReferralCreditUsageInputImpl(
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateReferralCreditUsageInputImpl
    implements _UpdateReferralCreditUsageInput {
  const _$UpdateReferralCreditUsageInputImpl(
      {this.creditId,
      this.paymentId,
      this.amount,
      this.originalAmount,
      this.restoredAmount});

  factory _$UpdateReferralCreditUsageInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateReferralCreditUsageInputImplFromJson(json);

  @override
  final String? creditId;
  @override
  final String? paymentId;
  @override
  final int? amount;
  @override
  final int? originalAmount;
  @override
  final int? restoredAmount;

  @override
  String toString() {
    return 'UpdateReferralCreditUsageInput(creditId: $creditId, paymentId: $paymentId, amount: $amount, originalAmount: $originalAmount, restoredAmount: $restoredAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReferralCreditUsageInputImpl &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.restoredAmount, restoredAmount) ||
                other.restoredAmount == restoredAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, creditId, paymentId, amount, originalAmount, restoredAmount);

  /// Create a copy of UpdateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReferralCreditUsageInputImplCopyWith<
          _$UpdateReferralCreditUsageInputImpl>
      get copyWith => __$$UpdateReferralCreditUsageInputImplCopyWithImpl<
          _$UpdateReferralCreditUsageInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateReferralCreditUsageInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateReferralCreditUsageInput
    implements UpdateReferralCreditUsageInput {
  const factory _UpdateReferralCreditUsageInput(
      {final String? creditId,
      final String? paymentId,
      final int? amount,
      final int? originalAmount,
      final int? restoredAmount}) = _$UpdateReferralCreditUsageInputImpl;

  factory _UpdateReferralCreditUsageInput.fromJson(Map<String, dynamic> json) =
      _$UpdateReferralCreditUsageInputImpl.fromJson;

  @override
  String? get creditId;
  @override
  String? get paymentId;
  @override
  int? get amount;
  @override
  int? get originalAmount;
  @override
  int? get restoredAmount;

  /// Create a copy of UpdateReferralCreditUsageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReferralCreditUsageInputImplCopyWith<
          _$UpdateReferralCreditUsageInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditUsageWhereUniqueInput
    _$ReferralCreditUsageWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _ReferralCreditUsageWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsageWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsageWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageWhereUniqueInputCopyWith<
          ReferralCreditUsageWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageWhereUniqueInputCopyWith<$Res> {
  factory $ReferralCreditUsageWhereUniqueInputCopyWith(
          ReferralCreditUsageWhereUniqueInput value,
          $Res Function(ReferralCreditUsageWhereUniqueInput) then) =
      _$ReferralCreditUsageWhereUniqueInputCopyWithImpl<$Res,
          ReferralCreditUsageWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ReferralCreditUsageWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ReferralCreditUsageWhereUniqueInput>
    implements $ReferralCreditUsageWhereUniqueInputCopyWith<$Res> {
  _$ReferralCreditUsageWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralCreditUsageWhereUniqueInputImplCopyWith<$Res>
    implements $ReferralCreditUsageWhereUniqueInputCopyWith<$Res> {
  factory _$$ReferralCreditUsageWhereUniqueInputImplCopyWith(
          _$ReferralCreditUsageWhereUniqueInputImpl value,
          $Res Function(_$ReferralCreditUsageWhereUniqueInputImpl) then) =
      __$$ReferralCreditUsageWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ReferralCreditUsageWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageWhereUniqueInputCopyWithImpl<$Res,
        _$ReferralCreditUsageWhereUniqueInputImpl>
    implements _$$ReferralCreditUsageWhereUniqueInputImplCopyWith<$Res> {
  __$$ReferralCreditUsageWhereUniqueInputImplCopyWithImpl(
      _$ReferralCreditUsageWhereUniqueInputImpl _value,
      $Res Function(_$ReferralCreditUsageWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ReferralCreditUsageWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditUsageWhereUniqueInputImpl
    implements _ReferralCreditUsageWhereUniqueInput {
  const _$ReferralCreditUsageWhereUniqueInputImpl({this.id});

  factory _$ReferralCreditUsageWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditUsageWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ReferralCreditUsageWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ReferralCreditUsageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageWhereUniqueInputImplCopyWith<
          _$ReferralCreditUsageWhereUniqueInputImpl>
      get copyWith => __$$ReferralCreditUsageWhereUniqueInputImplCopyWithImpl<
          _$ReferralCreditUsageWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsageWhereUniqueInput
    implements ReferralCreditUsageWhereUniqueInput {
  const factory _ReferralCreditUsageWhereUniqueInput({final String? id}) =
      _$ReferralCreditUsageWhereUniqueInputImpl;

  factory _ReferralCreditUsageWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ReferralCreditUsageWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ReferralCreditUsageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageWhereUniqueInputImplCopyWith<
          _$ReferralCreditUsageWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditUsageWhereInput _$ReferralCreditUsageWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditUsageWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsageWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get creditId => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  IntFilter? get originalAmount => throw _privateConstructorUsedError;
  IntFilter? get restoredAmount => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;

  /// Filter by credit relation
  ReferralCreditRelationFilter? get credit =>
      throw _privateConstructorUsedError;

  /// Filter by payment relation
  PaymentRelationFilter? get payment => throw _privateConstructorUsedError;
  List<ReferralCreditUsageWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ReferralCreditUsageWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ReferralCreditUsageWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsageWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageWhereInputCopyWith<ReferralCreditUsageWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageWhereInputCopyWith<$Res> {
  factory $ReferralCreditUsageWhereInputCopyWith(
          ReferralCreditUsageWhereInput value,
          $Res Function(ReferralCreditUsageWhereInput) then) =
      _$ReferralCreditUsageWhereInputCopyWithImpl<$Res,
          ReferralCreditUsageWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? creditId,
      StringFilter? paymentId,
      IntFilter? amount,
      IntFilter? originalAmount,
      IntFilter? restoredAmount,
      DateTimeFilter? createdAt,
      ReferralCreditRelationFilter? credit,
      PaymentRelationFilter? payment,
      List<ReferralCreditUsageWhereInput>? AND,
      List<ReferralCreditUsageWhereInput>? OR,
      ReferralCreditUsageWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get creditId;
  $StringFilterCopyWith<$Res>? get paymentId;
  $IntFilterCopyWith<$Res>? get amount;
  $IntFilterCopyWith<$Res>? get originalAmount;
  $IntFilterCopyWith<$Res>? get restoredAmount;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $ReferralCreditRelationFilterCopyWith<$Res>? get credit;
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ReferralCreditUsageWhereInputCopyWithImpl<$Res,
        $Val extends ReferralCreditUsageWhereInput>
    implements $ReferralCreditUsageWhereInputCopyWith<$Res> {
  _$ReferralCreditUsageWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
    Object? createdAt = freezed,
    Object? credit = freezed,
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
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReferralCreditRelationFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsageWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsageWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditUsageWhereInput
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

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get creditId {
    if (_value.creditId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.creditId!, (value) {
      return _then(_value.copyWith(creditId: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageWhereInput
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

  /// Create a copy of ReferralCreditUsageWhereInput
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

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get originalAmount {
    if (_value.originalAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.originalAmount!, (value) {
      return _then(_value.copyWith(originalAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get restoredAmount {
    if (_value.restoredAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.restoredAmount!, (value) {
      return _then(_value.copyWith(restoredAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageWhereInput
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

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditRelationFilterCopyWith<$Res>? get credit {
    if (_value.credit == null) {
      return null;
    }

    return $ReferralCreditRelationFilterCopyWith<$Res>(_value.credit!, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageWhereInput
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

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditUsageWhereInputImplCopyWith<$Res>
    implements $ReferralCreditUsageWhereInputCopyWith<$Res> {
  factory _$$ReferralCreditUsageWhereInputImplCopyWith(
          _$ReferralCreditUsageWhereInputImpl value,
          $Res Function(_$ReferralCreditUsageWhereInputImpl) then) =
      __$$ReferralCreditUsageWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? creditId,
      StringFilter? paymentId,
      IntFilter? amount,
      IntFilter? originalAmount,
      IntFilter? restoredAmount,
      DateTimeFilter? createdAt,
      ReferralCreditRelationFilter? credit,
      PaymentRelationFilter? payment,
      List<ReferralCreditUsageWhereInput>? AND,
      List<ReferralCreditUsageWhereInput>? OR,
      ReferralCreditUsageWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get creditId;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $IntFilterCopyWith<$Res>? get originalAmount;
  @override
  $IntFilterCopyWith<$Res>? get restoredAmount;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $ReferralCreditRelationFilterCopyWith<$Res>? get credit;
  @override
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ReferralCreditUsageWhereInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageWhereInputCopyWithImpl<$Res,
        _$ReferralCreditUsageWhereInputImpl>
    implements _$$ReferralCreditUsageWhereInputImplCopyWith<$Res> {
  __$$ReferralCreditUsageWhereInputImplCopyWithImpl(
      _$ReferralCreditUsageWhereInputImpl _value,
      $Res Function(_$ReferralCreditUsageWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
    Object? createdAt = freezed,
    Object? credit = freezed,
    Object? payment = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ReferralCreditUsageWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReferralCreditRelationFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsageWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsageWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ReferralCreditUsageWhereInputImpl
    implements _ReferralCreditUsageWhereInput {
  const _$ReferralCreditUsageWhereInputImpl(
      {this.id,
      this.creditId,
      this.paymentId,
      this.amount,
      this.originalAmount,
      this.restoredAmount,
      this.createdAt,
      this.credit,
      this.payment,
      final List<ReferralCreditUsageWhereInput>? AND,
      final List<ReferralCreditUsageWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ReferralCreditUsageWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditUsageWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? creditId;
  @override
  final StringFilter? paymentId;
  @override
  final IntFilter? amount;
  @override
  final IntFilter? originalAmount;
  @override
  final IntFilter? restoredAmount;
  @override
  final DateTimeFilter? createdAt;

  /// Filter by credit relation
  @override
  final ReferralCreditRelationFilter? credit;

  /// Filter by payment relation
  @override
  final PaymentRelationFilter? payment;
  final List<ReferralCreditUsageWhereInput>? _AND;
  @override
  List<ReferralCreditUsageWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReferralCreditUsageWhereInput>? _OR;
  @override
  List<ReferralCreditUsageWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReferralCreditUsageWhereInput? NOT;

  @override
  String toString() {
    return 'ReferralCreditUsageWhereInput(id: $id, creditId: $creditId, paymentId: $paymentId, amount: $amount, originalAmount: $originalAmount, restoredAmount: $restoredAmount, createdAt: $createdAt, credit: $credit, payment: $payment, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.restoredAmount, restoredAmount) ||
                other.restoredAmount == restoredAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.credit, credit) || other.credit == credit) &&
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
      creditId,
      paymentId,
      amount,
      originalAmount,
      restoredAmount,
      createdAt,
      credit,
      payment,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageWhereInputImplCopyWith<
          _$ReferralCreditUsageWhereInputImpl>
      get copyWith => __$$ReferralCreditUsageWhereInputImplCopyWithImpl<
          _$ReferralCreditUsageWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsageWhereInput
    implements ReferralCreditUsageWhereInput {
  const factory _ReferralCreditUsageWhereInput(
          {final StringFilter? id,
          final StringFilter? creditId,
          final StringFilter? paymentId,
          final IntFilter? amount,
          final IntFilter? originalAmount,
          final IntFilter? restoredAmount,
          final DateTimeFilter? createdAt,
          final ReferralCreditRelationFilter? credit,
          final PaymentRelationFilter? payment,
          final List<ReferralCreditUsageWhereInput>? AND,
          final List<ReferralCreditUsageWhereInput>? OR,
          final ReferralCreditUsageWhereInput? NOT}) =
      _$ReferralCreditUsageWhereInputImpl;

  factory _ReferralCreditUsageWhereInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditUsageWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get creditId;
  @override
  StringFilter? get paymentId;
  @override
  IntFilter? get amount;
  @override
  IntFilter? get originalAmount;
  @override
  IntFilter? get restoredAmount;
  @override
  DateTimeFilter? get createdAt;

  /// Filter by credit relation
  @override
  ReferralCreditRelationFilter? get credit;

  /// Filter by payment relation
  @override
  PaymentRelationFilter? get payment;
  @override
  List<ReferralCreditUsageWhereInput>? get AND;
  @override
  List<ReferralCreditUsageWhereInput>? get OR;
  @override
  ReferralCreditUsageWhereInput? get NOT;

  /// Create a copy of ReferralCreditUsageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageWhereInputImplCopyWith<
          _$ReferralCreditUsageWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditUsageListRelationFilter
    _$ReferralCreditUsageListRelationFilterFromJson(Map<String, dynamic> json) {
  return _ReferralCreditUsageListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsageListRelationFilter {
  /// At least one related record matches
  ReferralCreditUsageWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ReferralCreditUsageWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  ReferralCreditUsageWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsageListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageListRelationFilterCopyWith<
          ReferralCreditUsageListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageListRelationFilterCopyWith<$Res> {
  factory $ReferralCreditUsageListRelationFilterCopyWith(
          ReferralCreditUsageListRelationFilter value,
          $Res Function(ReferralCreditUsageListRelationFilter) then) =
      _$ReferralCreditUsageListRelationFilterCopyWithImpl<$Res,
          ReferralCreditUsageListRelationFilter>;
  @useResult
  $Res call(
      {ReferralCreditUsageWhereInput? some,
      ReferralCreditUsageWhereInput? every,
      ReferralCreditUsageWhereInput? none});

  $ReferralCreditUsageWhereInputCopyWith<$Res>? get some;
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get every;
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ReferralCreditUsageListRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCreditUsageListRelationFilter>
    implements $ReferralCreditUsageListRelationFilterCopyWith<$Res> {
  _$ReferralCreditUsageListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsageListRelationFilter
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
              as ReferralCreditUsageWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditUsageListRelationFilterImplCopyWith<$Res>
    implements $ReferralCreditUsageListRelationFilterCopyWith<$Res> {
  factory _$$ReferralCreditUsageListRelationFilterImplCopyWith(
          _$ReferralCreditUsageListRelationFilterImpl value,
          $Res Function(_$ReferralCreditUsageListRelationFilterImpl) then) =
      __$$ReferralCreditUsageListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReferralCreditUsageWhereInput? some,
      ReferralCreditUsageWhereInput? every,
      ReferralCreditUsageWhereInput? none});

  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get some;
  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get every;
  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ReferralCreditUsageListRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageListRelationFilterCopyWithImpl<$Res,
        _$ReferralCreditUsageListRelationFilterImpl>
    implements _$$ReferralCreditUsageListRelationFilterImplCopyWith<$Res> {
  __$$ReferralCreditUsageListRelationFilterImplCopyWithImpl(
      _$ReferralCreditUsageListRelationFilterImpl _value,
      $Res Function(_$ReferralCreditUsageListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ReferralCreditUsageListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditUsageListRelationFilterImpl
    implements _ReferralCreditUsageListRelationFilter {
  const _$ReferralCreditUsageListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ReferralCreditUsageListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditUsageListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ReferralCreditUsageWhereInput? some;

  /// All related records match
  @override
  final ReferralCreditUsageWhereInput? every;

  /// No related records match
  @override
  final ReferralCreditUsageWhereInput? none;

  @override
  String toString() {
    return 'ReferralCreditUsageListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageListRelationFilterImplCopyWith<
          _$ReferralCreditUsageListRelationFilterImpl>
      get copyWith => __$$ReferralCreditUsageListRelationFilterImplCopyWithImpl<
          _$ReferralCreditUsageListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsageListRelationFilter
    implements ReferralCreditUsageListRelationFilter {
  const factory _ReferralCreditUsageListRelationFilter(
          {final ReferralCreditUsageWhereInput? some,
          final ReferralCreditUsageWhereInput? every,
          final ReferralCreditUsageWhereInput? none}) =
      _$ReferralCreditUsageListRelationFilterImpl;

  factory _ReferralCreditUsageListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ReferralCreditUsageListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ReferralCreditUsageWhereInput? get some;

  /// All related records match
  @override
  ReferralCreditUsageWhereInput? get every;

  /// No related records match
  @override
  ReferralCreditUsageWhereInput? get none;

  /// Create a copy of ReferralCreditUsageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageListRelationFilterImplCopyWith<
          _$ReferralCreditUsageListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditUsageRelationFilter _$ReferralCreditUsageRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditUsageRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsageRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ReferralCreditUsageWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ReferralCreditUsageWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsageRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageRelationFilterCopyWith<ReferralCreditUsageRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageRelationFilterCopyWith<$Res> {
  factory $ReferralCreditUsageRelationFilterCopyWith(
          ReferralCreditUsageRelationFilter value,
          $Res Function(ReferralCreditUsageRelationFilter) then) =
      _$ReferralCreditUsageRelationFilterCopyWithImpl<$Res,
          ReferralCreditUsageRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCreditUsageWhereInput? is_,
      ReferralCreditUsageWhereInput? isNot});

  $ReferralCreditUsageWhereInputCopyWith<$Res>? get is_;
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ReferralCreditUsageRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCreditUsageRelationFilter>
    implements $ReferralCreditUsageRelationFilterCopyWith<$Res> {
  _$ReferralCreditUsageRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsageRelationFilter
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
              as ReferralCreditUsageWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ReferralCreditUsageWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditUsageRelationFilterImplCopyWith<$Res>
    implements $ReferralCreditUsageRelationFilterCopyWith<$Res> {
  factory _$$ReferralCreditUsageRelationFilterImplCopyWith(
          _$ReferralCreditUsageRelationFilterImpl value,
          $Res Function(_$ReferralCreditUsageRelationFilterImpl) then) =
      __$$ReferralCreditUsageRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCreditUsageWhereInput? is_,
      ReferralCreditUsageWhereInput? isNot});

  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get is_;
  @override
  $ReferralCreditUsageWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ReferralCreditUsageRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageRelationFilterCopyWithImpl<$Res,
        _$ReferralCreditUsageRelationFilterImpl>
    implements _$$ReferralCreditUsageRelationFilterImplCopyWith<$Res> {
  __$$ReferralCreditUsageRelationFilterImplCopyWithImpl(
      _$ReferralCreditUsageRelationFilterImpl _value,
      $Res Function(_$ReferralCreditUsageRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ReferralCreditUsageRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCreditUsageWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditUsageRelationFilterImpl
    implements _ReferralCreditUsageRelationFilter {
  const _$ReferralCreditUsageRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ReferralCreditUsageRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditUsageRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ReferralCreditUsageWhereInput? is_;

  /// Related record does not match
  @override
  final ReferralCreditUsageWhereInput? isNot;

  @override
  String toString() {
    return 'ReferralCreditUsageRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageRelationFilterImplCopyWith<
          _$ReferralCreditUsageRelationFilterImpl>
      get copyWith => __$$ReferralCreditUsageRelationFilterImplCopyWithImpl<
          _$ReferralCreditUsageRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsageRelationFilter
    implements ReferralCreditUsageRelationFilter {
  const factory _ReferralCreditUsageRelationFilter(
          {@JsonKey(name: 'is') final ReferralCreditUsageWhereInput? is_,
          final ReferralCreditUsageWhereInput? isNot}) =
      _$ReferralCreditUsageRelationFilterImpl;

  factory _ReferralCreditUsageRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ReferralCreditUsageRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ReferralCreditUsageWhereInput? get is_;

  /// Related record does not match
  @override
  ReferralCreditUsageWhereInput? get isNot;

  /// Create a copy of ReferralCreditUsageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageRelationFilterImplCopyWith<
          _$ReferralCreditUsageRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditUsageOrderByInput _$ReferralCreditUsageOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditUsageOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditUsageOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get creditId => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get originalAmount => throw _privateConstructorUsedError;
  SortOrder? get restoredAmount => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditUsageOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditUsageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditUsageOrderByInputCopyWith<ReferralCreditUsageOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditUsageOrderByInputCopyWith<$Res> {
  factory $ReferralCreditUsageOrderByInputCopyWith(
          ReferralCreditUsageOrderByInput value,
          $Res Function(ReferralCreditUsageOrderByInput) then) =
      _$ReferralCreditUsageOrderByInputCopyWithImpl<$Res,
          ReferralCreditUsageOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? creditId,
      SortOrder? paymentId,
      SortOrder? amount,
      SortOrder? originalAmount,
      SortOrder? restoredAmount,
      SortOrder? createdAt});
}

/// @nodoc
class _$ReferralCreditUsageOrderByInputCopyWithImpl<$Res,
        $Val extends ReferralCreditUsageOrderByInput>
    implements $ReferralCreditUsageOrderByInputCopyWith<$Res> {
  _$ReferralCreditUsageOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditUsageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralCreditUsageOrderByInputImplCopyWith<$Res>
    implements $ReferralCreditUsageOrderByInputCopyWith<$Res> {
  factory _$$ReferralCreditUsageOrderByInputImplCopyWith(
          _$ReferralCreditUsageOrderByInputImpl value,
          $Res Function(_$ReferralCreditUsageOrderByInputImpl) then) =
      __$$ReferralCreditUsageOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? creditId,
      SortOrder? paymentId,
      SortOrder? amount,
      SortOrder? originalAmount,
      SortOrder? restoredAmount,
      SortOrder? createdAt});
}

/// @nodoc
class __$$ReferralCreditUsageOrderByInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditUsageOrderByInputCopyWithImpl<$Res,
        _$ReferralCreditUsageOrderByInputImpl>
    implements _$$ReferralCreditUsageOrderByInputImplCopyWith<$Res> {
  __$$ReferralCreditUsageOrderByInputImplCopyWithImpl(
      _$ReferralCreditUsageOrderByInputImpl _value,
      $Res Function(_$ReferralCreditUsageOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditUsageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? restoredAmount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ReferralCreditUsageOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      restoredAmount: freezed == restoredAmount
          ? _value.restoredAmount
          : restoredAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditUsageOrderByInputImpl
    implements _ReferralCreditUsageOrderByInput {
  const _$ReferralCreditUsageOrderByInputImpl(
      {this.id,
      this.creditId,
      this.paymentId,
      this.amount,
      this.originalAmount,
      this.restoredAmount,
      this.createdAt});

  factory _$ReferralCreditUsageOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditUsageOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? creditId;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? originalAmount;
  @override
  final SortOrder? restoredAmount;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'ReferralCreditUsageOrderByInput(id: $id, creditId: $creditId, paymentId: $paymentId, amount: $amount, originalAmount: $originalAmount, restoredAmount: $restoredAmount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditUsageOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.restoredAmount, restoredAmount) ||
                other.restoredAmount == restoredAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, creditId, paymentId, amount,
      originalAmount, restoredAmount, createdAt);

  /// Create a copy of ReferralCreditUsageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditUsageOrderByInputImplCopyWith<
          _$ReferralCreditUsageOrderByInputImpl>
      get copyWith => __$$ReferralCreditUsageOrderByInputImplCopyWithImpl<
          _$ReferralCreditUsageOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditUsageOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditUsageOrderByInput
    implements ReferralCreditUsageOrderByInput {
  const factory _ReferralCreditUsageOrderByInput(
      {final SortOrder? id,
      final SortOrder? creditId,
      final SortOrder? paymentId,
      final SortOrder? amount,
      final SortOrder? originalAmount,
      final SortOrder? restoredAmount,
      final SortOrder? createdAt}) = _$ReferralCreditUsageOrderByInputImpl;

  factory _ReferralCreditUsageOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditUsageOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get creditId;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get originalAmount;
  @override
  SortOrder? get restoredAmount;
  @override
  SortOrder? get createdAt;

  /// Create a copy of ReferralCreditUsageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditUsageOrderByInputImplCopyWith<
          _$ReferralCreditUsageOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
