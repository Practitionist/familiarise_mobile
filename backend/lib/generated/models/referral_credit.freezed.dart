// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_credit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferralCredit _$ReferralCreditFromJson(Map<String, dynamic> json) {
  return _ReferralCredit.fromJson(json);
}

/// @nodoc
mixin _$ReferralCredit {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  CreditSource get source => throw _privateConstructorUsedError;
  String? get referralId => throw _privateConstructorUsedError;
  int get usedAmount => throw _privateConstructorUsedError;
  int get remainingAmount => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get usedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  List<ReferralCreditUsage> get usages => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralCredit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditCopyWith<ReferralCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditCopyWith<$Res> {
  factory $ReferralCreditCopyWith(
          ReferralCredit value, $Res Function(ReferralCredit) then) =
      _$ReferralCreditCopyWithImpl<$Res, ReferralCredit>;
  @useResult
  $Res call(
      {String id,
      String userId,
      int amount,
      String currency,
      CreditSource source,
      String? referralId,
      int usedAmount,
      int remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      List<ReferralCreditUsage> usages,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReferralCreditCopyWithImpl<$Res, $Val extends ReferralCredit>
    implements $ReferralCreditCopyWith<$Res> {
  _$ReferralCreditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? currency = null,
    Object? source = null,
    Object? referralId = freezed,
    Object? usedAmount = null,
    Object? remainingAmount = null,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? user = freezed,
    Object? usages = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: null == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      usages: null == usages
          ? _value.usages
          : usages // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditImplCopyWith<$Res>
    implements $ReferralCreditCopyWith<$Res> {
  factory _$$ReferralCreditImplCopyWith(_$ReferralCreditImpl value,
          $Res Function(_$ReferralCreditImpl) then) =
      __$$ReferralCreditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      int amount,
      String currency,
      CreditSource source,
      String? referralId,
      int usedAmount,
      int remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      List<ReferralCreditUsage> usages,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ReferralCreditImplCopyWithImpl<$Res>
    extends _$ReferralCreditCopyWithImpl<$Res, _$ReferralCreditImpl>
    implements _$$ReferralCreditImplCopyWith<$Res> {
  __$$ReferralCreditImplCopyWithImpl(
      _$ReferralCreditImpl _value, $Res Function(_$ReferralCreditImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? currency = null,
    Object? source = null,
    Object? referralId = freezed,
    Object? usedAmount = null,
    Object? remainingAmount = null,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? user = freezed,
    Object? usages = null,
    Object? createdAt = null,
  }) {
    return _then(_$ReferralCreditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: null == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      usages: null == usages
          ? _value._usages
          : usages // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditImpl implements _ReferralCredit {
  const _$ReferralCreditImpl(
      {required this.id,
      required this.userId,
      required this.amount,
      this.currency = "INR",
      required this.source,
      this.referralId,
      this.usedAmount = 0,
      required this.remainingAmount,
      this.expiresAt,
      this.usedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required final List<ReferralCreditUsage> usages,
      required this.createdAt})
      : _usages = usages;

  factory _$ReferralCreditImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCreditImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  final CreditSource source;
  @override
  final String? referralId;
  @override
  @JsonKey()
  final int usedAmount;
  @override
  final int remainingAmount;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? usedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  final List<ReferralCreditUsage> _usages;
  @override
  List<ReferralCreditUsage> get usages {
    if (_usages is EqualUnmodifiableListView) return _usages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usages);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReferralCredit(id: $id, userId: $userId, amount: $amount, currency: $currency, source: $source, referralId: $referralId, usedAmount: $usedAmount, remainingAmount: $remainingAmount, expiresAt: $expiresAt, usedAt: $usedAt, user: $user, usages: $usages, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.usedAmount, usedAmount) ||
                other.usedAmount == usedAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._usages, _usages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      amount,
      currency,
      source,
      referralId,
      usedAmount,
      remainingAmount,
      expiresAt,
      usedAt,
      user,
      const DeepCollectionEquality().hash(_usages),
      createdAt);

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditImplCopyWith<_$ReferralCreditImpl> get copyWith =>
      __$$ReferralCreditImplCopyWithImpl<_$ReferralCreditImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditImplToJson(
      this,
    );
  }
}

abstract class _ReferralCredit implements ReferralCredit {
  const factory _ReferralCredit(
      {required final String id,
      required final String userId,
      required final int amount,
      final String currency,
      required final CreditSource source,
      final String? referralId,
      final int usedAmount,
      required final int remainingAmount,
      final DateTime? expiresAt,
      final DateTime? usedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final List<ReferralCreditUsage> usages,
      required final DateTime createdAt}) = _$ReferralCreditImpl;

  factory _ReferralCredit.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get amount;
  @override
  String get currency;
  @override
  CreditSource get source;
  @override
  String? get referralId;
  @override
  int get usedAmount;
  @override
  int get remainingAmount;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get usedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  List<ReferralCreditUsage> get usages;
  @override
  DateTime get createdAt;

  /// Create a copy of ReferralCredit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditImplCopyWith<_$ReferralCreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReferralCreditInput _$CreateReferralCreditInputFromJson(
    Map<String, dynamic> json) {
  return _CreateReferralCreditInput.fromJson(json);
}

/// @nodoc
mixin _$CreateReferralCreditInput {
  String get userId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  CreditSource get source => throw _privateConstructorUsedError;
  String? get referralId => throw _privateConstructorUsedError;
  int? get usedAmount => throw _privateConstructorUsedError;
  int get remainingAmount => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get usedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateReferralCreditInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReferralCreditInputCopyWith<CreateReferralCreditInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReferralCreditInputCopyWith<$Res> {
  factory $CreateReferralCreditInputCopyWith(CreateReferralCreditInput value,
          $Res Function(CreateReferralCreditInput) then) =
      _$CreateReferralCreditInputCopyWithImpl<$Res, CreateReferralCreditInput>;
  @useResult
  $Res call(
      {String userId,
      int amount,
      String? currency,
      CreditSource source,
      String? referralId,
      int? usedAmount,
      int remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt});
}

/// @nodoc
class _$CreateReferralCreditInputCopyWithImpl<$Res,
        $Val extends CreateReferralCreditInput>
    implements $CreateReferralCreditInputCopyWith<$Res> {
  _$CreateReferralCreditInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? amount = null,
    Object? currency = freezed,
    Object? source = null,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = null,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReferralCreditInputImplCopyWith<$Res>
    implements $CreateReferralCreditInputCopyWith<$Res> {
  factory _$$CreateReferralCreditInputImplCopyWith(
          _$CreateReferralCreditInputImpl value,
          $Res Function(_$CreateReferralCreditInputImpl) then) =
      __$$CreateReferralCreditInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int amount,
      String? currency,
      CreditSource source,
      String? referralId,
      int? usedAmount,
      int remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt});
}

/// @nodoc
class __$$CreateReferralCreditInputImplCopyWithImpl<$Res>
    extends _$CreateReferralCreditInputCopyWithImpl<$Res,
        _$CreateReferralCreditInputImpl>
    implements _$$CreateReferralCreditInputImplCopyWith<$Res> {
  __$$CreateReferralCreditInputImplCopyWithImpl(
      _$CreateReferralCreditInputImpl _value,
      $Res Function(_$CreateReferralCreditInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? amount = null,
    Object? currency = freezed,
    Object? source = null,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = null,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_$CreateReferralCreditInputImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReferralCreditInputImpl implements _CreateReferralCreditInput {
  const _$CreateReferralCreditInputImpl(
      {required this.userId,
      required this.amount,
      this.currency = "INR",
      required this.source,
      this.referralId,
      this.usedAmount = 0,
      required this.remainingAmount,
      this.expiresAt,
      this.usedAt});

  factory _$CreateReferralCreditInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReferralCreditInputImplFromJson(json);

  @override
  final String userId;
  @override
  final int amount;
  @override
  @JsonKey()
  final String? currency;
  @override
  final CreditSource source;
  @override
  final String? referralId;
  @override
  @JsonKey()
  final int? usedAmount;
  @override
  final int remainingAmount;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? usedAt;

  @override
  String toString() {
    return 'CreateReferralCreditInput(userId: $userId, amount: $amount, currency: $currency, source: $source, referralId: $referralId, usedAmount: $usedAmount, remainingAmount: $remainingAmount, expiresAt: $expiresAt, usedAt: $usedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReferralCreditInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.usedAmount, usedAmount) ||
                other.usedAmount == usedAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, amount, currency, source,
      referralId, usedAmount, remainingAmount, expiresAt, usedAt);

  /// Create a copy of CreateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReferralCreditInputImplCopyWith<_$CreateReferralCreditInputImpl>
      get copyWith => __$$CreateReferralCreditInputImplCopyWithImpl<
          _$CreateReferralCreditInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReferralCreditInputImplToJson(
      this,
    );
  }
}

abstract class _CreateReferralCreditInput implements CreateReferralCreditInput {
  const factory _CreateReferralCreditInput(
      {required final String userId,
      required final int amount,
      final String? currency,
      required final CreditSource source,
      final String? referralId,
      final int? usedAmount,
      required final int remainingAmount,
      final DateTime? expiresAt,
      final DateTime? usedAt}) = _$CreateReferralCreditInputImpl;

  factory _CreateReferralCreditInput.fromJson(Map<String, dynamic> json) =
      _$CreateReferralCreditInputImpl.fromJson;

  @override
  String get userId;
  @override
  int get amount;
  @override
  String? get currency;
  @override
  CreditSource get source;
  @override
  String? get referralId;
  @override
  int? get usedAmount;
  @override
  int get remainingAmount;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get usedAt;

  /// Create a copy of CreateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReferralCreditInputImplCopyWith<_$CreateReferralCreditInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateReferralCreditInput _$UpdateReferralCreditInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateReferralCreditInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateReferralCreditInput {
  String? get userId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  CreditSource? get source => throw _privateConstructorUsedError;
  String? get referralId => throw _privateConstructorUsedError;
  int? get usedAmount => throw _privateConstructorUsedError;
  int? get remainingAmount => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get usedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateReferralCreditInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReferralCreditInputCopyWith<UpdateReferralCreditInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReferralCreditInputCopyWith<$Res> {
  factory $UpdateReferralCreditInputCopyWith(UpdateReferralCreditInput value,
          $Res Function(UpdateReferralCreditInput) then) =
      _$UpdateReferralCreditInputCopyWithImpl<$Res, UpdateReferralCreditInput>;
  @useResult
  $Res call(
      {String? userId,
      int? amount,
      String? currency,
      CreditSource? source,
      String? referralId,
      int? usedAmount,
      int? remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt});
}

/// @nodoc
class _$UpdateReferralCreditInputCopyWithImpl<$Res,
        $Val extends UpdateReferralCreditInput>
    implements $UpdateReferralCreditInputCopyWith<$Res> {
  _$UpdateReferralCreditInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? source = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateReferralCreditInputImplCopyWith<$Res>
    implements $UpdateReferralCreditInputCopyWith<$Res> {
  factory _$$UpdateReferralCreditInputImplCopyWith(
          _$UpdateReferralCreditInputImpl value,
          $Res Function(_$UpdateReferralCreditInputImpl) then) =
      __$$UpdateReferralCreditInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      int? amount,
      String? currency,
      CreditSource? source,
      String? referralId,
      int? usedAmount,
      int? remainingAmount,
      DateTime? expiresAt,
      DateTime? usedAt});
}

/// @nodoc
class __$$UpdateReferralCreditInputImplCopyWithImpl<$Res>
    extends _$UpdateReferralCreditInputCopyWithImpl<$Res,
        _$UpdateReferralCreditInputImpl>
    implements _$$UpdateReferralCreditInputImplCopyWith<$Res> {
  __$$UpdateReferralCreditInputImplCopyWithImpl(
      _$UpdateReferralCreditInputImpl _value,
      $Res Function(_$UpdateReferralCreditInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? source = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_$UpdateReferralCreditInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateReferralCreditInputImpl implements _UpdateReferralCreditInput {
  const _$UpdateReferralCreditInputImpl(
      {this.userId,
      this.amount,
      this.currency,
      this.source,
      this.referralId,
      this.usedAmount,
      this.remainingAmount,
      this.expiresAt,
      this.usedAt});

  factory _$UpdateReferralCreditInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateReferralCreditInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final CreditSource? source;
  @override
  final String? referralId;
  @override
  final int? usedAmount;
  @override
  final int? remainingAmount;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? usedAt;

  @override
  String toString() {
    return 'UpdateReferralCreditInput(userId: $userId, amount: $amount, currency: $currency, source: $source, referralId: $referralId, usedAmount: $usedAmount, remainingAmount: $remainingAmount, expiresAt: $expiresAt, usedAt: $usedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReferralCreditInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.usedAmount, usedAmount) ||
                other.usedAmount == usedAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, amount, currency, source,
      referralId, usedAmount, remainingAmount, expiresAt, usedAt);

  /// Create a copy of UpdateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReferralCreditInputImplCopyWith<_$UpdateReferralCreditInputImpl>
      get copyWith => __$$UpdateReferralCreditInputImplCopyWithImpl<
          _$UpdateReferralCreditInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateReferralCreditInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateReferralCreditInput implements UpdateReferralCreditInput {
  const factory _UpdateReferralCreditInput(
      {final String? userId,
      final int? amount,
      final String? currency,
      final CreditSource? source,
      final String? referralId,
      final int? usedAmount,
      final int? remainingAmount,
      final DateTime? expiresAt,
      final DateTime? usedAt}) = _$UpdateReferralCreditInputImpl;

  factory _UpdateReferralCreditInput.fromJson(Map<String, dynamic> json) =
      _$UpdateReferralCreditInputImpl.fromJson;

  @override
  String? get userId;
  @override
  int? get amount;
  @override
  String? get currency;
  @override
  CreditSource? get source;
  @override
  String? get referralId;
  @override
  int? get usedAmount;
  @override
  int? get remainingAmount;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get usedAt;

  /// Create a copy of UpdateReferralCreditInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReferralCreditInputImplCopyWith<_$UpdateReferralCreditInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditWhereUniqueInput _$ReferralCreditWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditWhereUniqueInputCopyWith<ReferralCreditWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditWhereUniqueInputCopyWith<$Res> {
  factory $ReferralCreditWhereUniqueInputCopyWith(
          ReferralCreditWhereUniqueInput value,
          $Res Function(ReferralCreditWhereUniqueInput) then) =
      _$ReferralCreditWhereUniqueInputCopyWithImpl<$Res,
          ReferralCreditWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ReferralCreditWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ReferralCreditWhereUniqueInput>
    implements $ReferralCreditWhereUniqueInputCopyWith<$Res> {
  _$ReferralCreditWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditWhereUniqueInput
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
abstract class _$$ReferralCreditWhereUniqueInputImplCopyWith<$Res>
    implements $ReferralCreditWhereUniqueInputCopyWith<$Res> {
  factory _$$ReferralCreditWhereUniqueInputImplCopyWith(
          _$ReferralCreditWhereUniqueInputImpl value,
          $Res Function(_$ReferralCreditWhereUniqueInputImpl) then) =
      __$$ReferralCreditWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ReferralCreditWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditWhereUniqueInputCopyWithImpl<$Res,
        _$ReferralCreditWhereUniqueInputImpl>
    implements _$$ReferralCreditWhereUniqueInputImplCopyWith<$Res> {
  __$$ReferralCreditWhereUniqueInputImplCopyWithImpl(
      _$ReferralCreditWhereUniqueInputImpl _value,
      $Res Function(_$ReferralCreditWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ReferralCreditWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditWhereUniqueInputImpl
    implements _ReferralCreditWhereUniqueInput {
  const _$ReferralCreditWhereUniqueInputImpl({this.id});

  factory _$ReferralCreditWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ReferralCreditWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ReferralCreditWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditWhereUniqueInputImplCopyWith<
          _$ReferralCreditWhereUniqueInputImpl>
      get copyWith => __$$ReferralCreditWhereUniqueInputImplCopyWithImpl<
          _$ReferralCreditWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditWhereUniqueInput
    implements ReferralCreditWhereUniqueInput {
  const factory _ReferralCreditWhereUniqueInput({final String? id}) =
      _$ReferralCreditWhereUniqueInputImpl;

  factory _ReferralCreditWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ReferralCreditWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditWhereUniqueInputImplCopyWith<
          _$ReferralCreditWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditWhereInput _$ReferralCreditWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  CreditSourceFilter? get source => throw _privateConstructorUsedError;
  StringFilter? get referralId => throw _privateConstructorUsedError;
  IntFilter? get usedAmount => throw _privateConstructorUsedError;
  IntFilter? get remainingAmount => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  DateTimeFilter? get usedAt => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<ReferralCreditWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ReferralCreditWhereInput>? get OR => throw _privateConstructorUsedError;
  ReferralCreditWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditWhereInputCopyWith<ReferralCreditWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditWhereInputCopyWith<$Res> {
  factory $ReferralCreditWhereInputCopyWith(ReferralCreditWhereInput value,
          $Res Function(ReferralCreditWhereInput) then) =
      _$ReferralCreditWhereInputCopyWithImpl<$Res, ReferralCreditWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      IntFilter? amount,
      StringFilter? currency,
      CreditSourceFilter? source,
      StringFilter? referralId,
      IntFilter? usedAmount,
      IntFilter? remainingAmount,
      DateTimeFilter? expiresAt,
      DateTimeFilter? usedAt,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      List<ReferralCreditWhereInput>? AND,
      List<ReferralCreditWhereInput>? OR,
      ReferralCreditWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get userId;
  $IntFilterCopyWith<$Res>? get amount;
  $StringFilterCopyWith<$Res>? get currency;
  $CreditSourceFilterCopyWith<$Res>? get source;
  $StringFilterCopyWith<$Res>? get referralId;
  $IntFilterCopyWith<$Res>? get usedAmount;
  $IntFilterCopyWith<$Res>? get remainingAmount;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $DateTimeFilterCopyWith<$Res>? get usedAt;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $ReferralCreditWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ReferralCreditWhereInputCopyWithImpl<$Res,
        $Val extends ReferralCreditWhereInput>
    implements $ReferralCreditWhereInputCopyWith<$Res> {
  _$ReferralCreditWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? source = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSourceFilter?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditWhereInput
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

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
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

  /// Create a copy of ReferralCreditWhereInput
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

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditSourceFilterCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $CreditSourceFilterCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get referralId {
    if (_value.referralId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.referralId!, (value) {
      return _then(_value.copyWith(referralId: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get usedAmount {
    if (_value.usedAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.usedAmount!, (value) {
      return _then(_value.copyWith(usedAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get remainingAmount {
    if (_value.remainingAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.remainingAmount!, (value) {
      return _then(_value.copyWith(remainingAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get expiresAt {
    if (_value.expiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.expiresAt!, (value) {
      return _then(_value.copyWith(expiresAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get usedAt {
    if (_value.usedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.usedAt!, (value) {
      return _then(_value.copyWith(usedAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditWhereInput
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

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditWhereInputImplCopyWith<$Res>
    implements $ReferralCreditWhereInputCopyWith<$Res> {
  factory _$$ReferralCreditWhereInputImplCopyWith(
          _$ReferralCreditWhereInputImpl value,
          $Res Function(_$ReferralCreditWhereInputImpl) then) =
      __$$ReferralCreditWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      IntFilter? amount,
      StringFilter? currency,
      CreditSourceFilter? source,
      StringFilter? referralId,
      IntFilter? usedAmount,
      IntFilter? remainingAmount,
      DateTimeFilter? expiresAt,
      DateTimeFilter? usedAt,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      List<ReferralCreditWhereInput>? AND,
      List<ReferralCreditWhereInput>? OR,
      ReferralCreditWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $CreditSourceFilterCopyWith<$Res>? get source;
  @override
  $StringFilterCopyWith<$Res>? get referralId;
  @override
  $IntFilterCopyWith<$Res>? get usedAmount;
  @override
  $IntFilterCopyWith<$Res>? get remainingAmount;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get usedAt;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ReferralCreditWhereInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditWhereInputCopyWithImpl<$Res,
        _$ReferralCreditWhereInputImpl>
    implements _$$ReferralCreditWhereInputImplCopyWith<$Res> {
  __$$ReferralCreditWhereInputImplCopyWithImpl(
      _$ReferralCreditWhereInputImpl _value,
      $Res Function(_$ReferralCreditWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? source = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ReferralCreditWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CreditSourceFilter?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ReferralCreditWhereInputImpl implements _ReferralCreditWhereInput {
  const _$ReferralCreditWhereInputImpl(
      {this.id,
      this.userId,
      this.amount,
      this.currency,
      this.source,
      this.referralId,
      this.usedAmount,
      this.remainingAmount,
      this.expiresAt,
      this.usedAt,
      this.user,
      this.createdAt,
      final List<ReferralCreditWhereInput>? AND,
      final List<ReferralCreditWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ReferralCreditWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCreditWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? userId;
  @override
  final IntFilter? amount;
  @override
  final StringFilter? currency;
  @override
  final CreditSourceFilter? source;
  @override
  final StringFilter? referralId;
  @override
  final IntFilter? usedAmount;
  @override
  final IntFilter? remainingAmount;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final DateTimeFilter? usedAt;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? createdAt;
  final List<ReferralCreditWhereInput>? _AND;
  @override
  List<ReferralCreditWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReferralCreditWhereInput>? _OR;
  @override
  List<ReferralCreditWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReferralCreditWhereInput? NOT;

  @override
  String toString() {
    return 'ReferralCreditWhereInput(id: $id, userId: $userId, amount: $amount, currency: $currency, source: $source, referralId: $referralId, usedAmount: $usedAmount, remainingAmount: $remainingAmount, expiresAt: $expiresAt, usedAt: $usedAt, user: $user, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.usedAmount, usedAmount) ||
                other.usedAmount == usedAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      amount,
      currency,
      source,
      referralId,
      usedAmount,
      remainingAmount,
      expiresAt,
      usedAt,
      user,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditWhereInputImplCopyWith<_$ReferralCreditWhereInputImpl>
      get copyWith => __$$ReferralCreditWhereInputImplCopyWithImpl<
          _$ReferralCreditWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditWhereInput implements ReferralCreditWhereInput {
  const factory _ReferralCreditWhereInput(
      {final StringFilter? id,
      final StringFilter? userId,
      final IntFilter? amount,
      final StringFilter? currency,
      final CreditSourceFilter? source,
      final StringFilter? referralId,
      final IntFilter? usedAmount,
      final IntFilter? remainingAmount,
      final DateTimeFilter? expiresAt,
      final DateTimeFilter? usedAt,
      final UserRelationFilter? user,
      final DateTimeFilter? createdAt,
      final List<ReferralCreditWhereInput>? AND,
      final List<ReferralCreditWhereInput>? OR,
      final ReferralCreditWhereInput? NOT}) = _$ReferralCreditWhereInputImpl;

  factory _ReferralCreditWhereInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get userId;
  @override
  IntFilter? get amount;
  @override
  StringFilter? get currency;
  @override
  CreditSourceFilter? get source;
  @override
  StringFilter? get referralId;
  @override
  IntFilter? get usedAmount;
  @override
  IntFilter? get remainingAmount;
  @override
  DateTimeFilter? get expiresAt;
  @override
  DateTimeFilter? get usedAt;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<ReferralCreditWhereInput>? get AND;
  @override
  List<ReferralCreditWhereInput>? get OR;
  @override
  ReferralCreditWhereInput? get NOT;

  /// Create a copy of ReferralCreditWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditWhereInputImplCopyWith<_$ReferralCreditWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditListRelationFilter _$ReferralCreditListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditListRelationFilter {
  /// At least one related record matches
  ReferralCreditWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ReferralCreditWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ReferralCreditWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditListRelationFilterCopyWith<ReferralCreditListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditListRelationFilterCopyWith<$Res> {
  factory $ReferralCreditListRelationFilterCopyWith(
          ReferralCreditListRelationFilter value,
          $Res Function(ReferralCreditListRelationFilter) then) =
      _$ReferralCreditListRelationFilterCopyWithImpl<$Res,
          ReferralCreditListRelationFilter>;
  @useResult
  $Res call(
      {ReferralCreditWhereInput? some,
      ReferralCreditWhereInput? every,
      ReferralCreditWhereInput? none});

  $ReferralCreditWhereInputCopyWith<$Res>? get some;
  $ReferralCreditWhereInputCopyWith<$Res>? get every;
  $ReferralCreditWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ReferralCreditListRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCreditListRelationFilter>
    implements $ReferralCreditListRelationFilterCopyWith<$Res> {
  _$ReferralCreditListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditListRelationFilter
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
              as ReferralCreditWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditListRelationFilterImplCopyWith<$Res>
    implements $ReferralCreditListRelationFilterCopyWith<$Res> {
  factory _$$ReferralCreditListRelationFilterImplCopyWith(
          _$ReferralCreditListRelationFilterImpl value,
          $Res Function(_$ReferralCreditListRelationFilterImpl) then) =
      __$$ReferralCreditListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReferralCreditWhereInput? some,
      ReferralCreditWhereInput? every,
      ReferralCreditWhereInput? none});

  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get some;
  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get every;
  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ReferralCreditListRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCreditListRelationFilterCopyWithImpl<$Res,
        _$ReferralCreditListRelationFilterImpl>
    implements _$$ReferralCreditListRelationFilterImplCopyWith<$Res> {
  __$$ReferralCreditListRelationFilterImplCopyWithImpl(
      _$ReferralCreditListRelationFilterImpl _value,
      $Res Function(_$ReferralCreditListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ReferralCreditListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditListRelationFilterImpl
    implements _ReferralCreditListRelationFilter {
  const _$ReferralCreditListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ReferralCreditListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ReferralCreditWhereInput? some;

  /// All related records match
  @override
  final ReferralCreditWhereInput? every;

  /// No related records match
  @override
  final ReferralCreditWhereInput? none;

  @override
  String toString() {
    return 'ReferralCreditListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditListRelationFilterImplCopyWith<
          _$ReferralCreditListRelationFilterImpl>
      get copyWith => __$$ReferralCreditListRelationFilterImplCopyWithImpl<
          _$ReferralCreditListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditListRelationFilter
    implements ReferralCreditListRelationFilter {
  const factory _ReferralCreditListRelationFilter(
          {final ReferralCreditWhereInput? some,
          final ReferralCreditWhereInput? every,
          final ReferralCreditWhereInput? none}) =
      _$ReferralCreditListRelationFilterImpl;

  factory _ReferralCreditListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ReferralCreditListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ReferralCreditWhereInput? get some;

  /// All related records match
  @override
  ReferralCreditWhereInput? get every;

  /// No related records match
  @override
  ReferralCreditWhereInput? get none;

  /// Create a copy of ReferralCreditListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditListRelationFilterImplCopyWith<
          _$ReferralCreditListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditRelationFilter _$ReferralCreditRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ReferralCreditWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ReferralCreditWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditRelationFilterCopyWith<ReferralCreditRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditRelationFilterCopyWith<$Res> {
  factory $ReferralCreditRelationFilterCopyWith(
          ReferralCreditRelationFilter value,
          $Res Function(ReferralCreditRelationFilter) then) =
      _$ReferralCreditRelationFilterCopyWithImpl<$Res,
          ReferralCreditRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCreditWhereInput? is_,
      ReferralCreditWhereInput? isNot});

  $ReferralCreditWhereInputCopyWith<$Res>? get is_;
  $ReferralCreditWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ReferralCreditRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCreditRelationFilter>
    implements $ReferralCreditRelationFilterCopyWith<$Res> {
  _$ReferralCreditRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditRelationFilter
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
              as ReferralCreditWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCreditWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ReferralCreditWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCreditRelationFilterImplCopyWith<$Res>
    implements $ReferralCreditRelationFilterCopyWith<$Res> {
  factory _$$ReferralCreditRelationFilterImplCopyWith(
          _$ReferralCreditRelationFilterImpl value,
          $Res Function(_$ReferralCreditRelationFilterImpl) then) =
      __$$ReferralCreditRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCreditWhereInput? is_,
      ReferralCreditWhereInput? isNot});

  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get is_;
  @override
  $ReferralCreditWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ReferralCreditRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCreditRelationFilterCopyWithImpl<$Res,
        _$ReferralCreditRelationFilterImpl>
    implements _$$ReferralCreditRelationFilterImplCopyWith<$Res> {
  __$$ReferralCreditRelationFilterImplCopyWithImpl(
      _$ReferralCreditRelationFilterImpl _value,
      $Res Function(_$ReferralCreditRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ReferralCreditRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCreditWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCreditRelationFilterImpl
    implements _ReferralCreditRelationFilter {
  const _$ReferralCreditRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ReferralCreditRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ReferralCreditWhereInput? is_;

  /// Related record does not match
  @override
  final ReferralCreditWhereInput? isNot;

  @override
  String toString() {
    return 'ReferralCreditRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditRelationFilterImplCopyWith<
          _$ReferralCreditRelationFilterImpl>
      get copyWith => __$$ReferralCreditRelationFilterImplCopyWithImpl<
          _$ReferralCreditRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditRelationFilter
    implements ReferralCreditRelationFilter {
  const factory _ReferralCreditRelationFilter(
          {@JsonKey(name: 'is') final ReferralCreditWhereInput? is_,
          final ReferralCreditWhereInput? isNot}) =
      _$ReferralCreditRelationFilterImpl;

  factory _ReferralCreditRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ReferralCreditWhereInput? get is_;

  /// Related record does not match
  @override
  ReferralCreditWhereInput? get isNot;

  /// Create a copy of ReferralCreditRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditRelationFilterImplCopyWith<
          _$ReferralCreditRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCreditOrderByInput _$ReferralCreditOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCreditOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCreditOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get referralId => throw _privateConstructorUsedError;
  SortOrder? get usedAmount => throw _privateConstructorUsedError;
  SortOrder? get remainingAmount => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get usedAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralCreditOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCreditOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCreditOrderByInputCopyWith<ReferralCreditOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCreditOrderByInputCopyWith<$Res> {
  factory $ReferralCreditOrderByInputCopyWith(ReferralCreditOrderByInput value,
          $Res Function(ReferralCreditOrderByInput) then) =
      _$ReferralCreditOrderByInputCopyWithImpl<$Res,
          ReferralCreditOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? referralId,
      SortOrder? usedAmount,
      SortOrder? remainingAmount,
      SortOrder? expiresAt,
      SortOrder? usedAt,
      SortOrder? createdAt});
}

/// @nodoc
class _$ReferralCreditOrderByInputCopyWithImpl<$Res,
        $Val extends ReferralCreditOrderByInput>
    implements $ReferralCreditOrderByInputCopyWith<$Res> {
  _$ReferralCreditOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCreditOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralCreditOrderByInputImplCopyWith<$Res>
    implements $ReferralCreditOrderByInputCopyWith<$Res> {
  factory _$$ReferralCreditOrderByInputImplCopyWith(
          _$ReferralCreditOrderByInputImpl value,
          $Res Function(_$ReferralCreditOrderByInputImpl) then) =
      __$$ReferralCreditOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? referralId,
      SortOrder? usedAmount,
      SortOrder? remainingAmount,
      SortOrder? expiresAt,
      SortOrder? usedAt,
      SortOrder? createdAt});
}

/// @nodoc
class __$$ReferralCreditOrderByInputImplCopyWithImpl<$Res>
    extends _$ReferralCreditOrderByInputCopyWithImpl<$Res,
        _$ReferralCreditOrderByInputImpl>
    implements _$$ReferralCreditOrderByInputImplCopyWith<$Res> {
  __$$ReferralCreditOrderByInputImplCopyWithImpl(
      _$ReferralCreditOrderByInputImpl _value,
      $Res Function(_$ReferralCreditOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCreditOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? referralId = freezed,
    Object? usedAmount = freezed,
    Object? remainingAmount = freezed,
    Object? expiresAt = freezed,
    Object? usedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ReferralCreditOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referralId: freezed == referralId
          ? _value.referralId
          : referralId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      usedAmount: freezed == usedAmount
          ? _value.usedAmount
          : usedAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
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
class _$ReferralCreditOrderByInputImpl implements _ReferralCreditOrderByInput {
  const _$ReferralCreditOrderByInputImpl(
      {this.id,
      this.userId,
      this.amount,
      this.currency,
      this.referralId,
      this.usedAmount,
      this.remainingAmount,
      this.expiresAt,
      this.usedAt,
      this.createdAt});

  factory _$ReferralCreditOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCreditOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? referralId;
  @override
  final SortOrder? usedAmount;
  @override
  final SortOrder? remainingAmount;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? usedAt;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'ReferralCreditOrderByInput(id: $id, userId: $userId, amount: $amount, currency: $currency, referralId: $referralId, usedAmount: $usedAmount, remainingAmount: $remainingAmount, expiresAt: $expiresAt, usedAt: $usedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCreditOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.usedAmount, usedAmount) ||
                other.usedAmount == usedAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, amount, currency,
      referralId, usedAmount, remainingAmount, expiresAt, usedAt, createdAt);

  /// Create a copy of ReferralCreditOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCreditOrderByInputImplCopyWith<_$ReferralCreditOrderByInputImpl>
      get copyWith => __$$ReferralCreditOrderByInputImplCopyWithImpl<
          _$ReferralCreditOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCreditOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCreditOrderByInput
    implements ReferralCreditOrderByInput {
  const factory _ReferralCreditOrderByInput(
      {final SortOrder? id,
      final SortOrder? userId,
      final SortOrder? amount,
      final SortOrder? currency,
      final SortOrder? referralId,
      final SortOrder? usedAmount,
      final SortOrder? remainingAmount,
      final SortOrder? expiresAt,
      final SortOrder? usedAt,
      final SortOrder? createdAt}) = _$ReferralCreditOrderByInputImpl;

  factory _ReferralCreditOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCreditOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get referralId;
  @override
  SortOrder? get usedAmount;
  @override
  SortOrder? get remainingAmount;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get usedAt;
  @override
  SortOrder? get createdAt;

  /// Create a copy of ReferralCreditOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCreditOrderByInputImplCopyWith<_$ReferralCreditOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
