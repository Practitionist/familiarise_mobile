// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultant_earnings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultantEarnings _$ConsultantEarningsFromJson(Map<String, dynamic> json) {
  return _ConsultantEarnings.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarnings {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  int get grossAmount => throw _privateConstructorUsedError;
  int get platformFee => throw _privateConstructorUsedError;
  int get consultantShare => throw _privateConstructorUsedError;
  EarningRole get role => throw _privateConstructorUsedError;
  double get sharePercentage => throw _privateConstructorUsedError;
  EarningStatus get status => throw _privateConstructorUsedError;
  DateTime get holdUntil => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payout? get payout => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarnings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsCopyWith<ConsultantEarnings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsCopyWith<$Res> {
  factory $ConsultantEarningsCopyWith(
          ConsultantEarnings value, $Res Function(ConsultantEarnings) then) =
      _$ConsultantEarningsCopyWithImpl<$Res, ConsultantEarnings>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String paymentId,
      String? payoutId,
      int grossAmount,
      int platformFee,
      int consultantShare,
      EarningRole role,
      double sharePercentage,
      EarningStatus status,
      DateTime holdUntil,
      DateTime? paidAt,
      String currency,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      @JsonKey(includeFromJson: false, includeToJson: false) Payout? payout});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $PaymentCopyWith<$Res>? get payment;
  $PayoutCopyWith<$Res>? get payout;
}

/// @nodoc
class _$ConsultantEarningsCopyWithImpl<$Res, $Val extends ConsultantEarnings>
    implements $ConsultantEarningsCopyWith<$Res> {
  _$ConsultantEarningsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? paymentId = null,
    Object? payoutId = freezed,
    Object? grossAmount = null,
    Object? platformFee = null,
    Object? consultantShare = null,
    Object? role = null,
    Object? sharePercentage = null,
    Object? status = null,
    Object? holdUntil = null,
    Object? paidAt = freezed,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? payment = freezed,
    Object? payout = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int,
      consultantShare: null == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole,
      sharePercentage: null == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus,
      holdUntil: null == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as Payout?,
    ) as $Val);
  }

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileCopyWith<$Res>(_value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarnings
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

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutCopyWith<$Res>? get payout {
    if (_value.payout == null) {
      return null;
    }

    return $PayoutCopyWith<$Res>(_value.payout!, (value) {
      return _then(_value.copyWith(payout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantEarningsImplCopyWith<$Res>
    implements $ConsultantEarningsCopyWith<$Res> {
  factory _$$ConsultantEarningsImplCopyWith(_$ConsultantEarningsImpl value,
          $Res Function(_$ConsultantEarningsImpl) then) =
      __$$ConsultantEarningsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String paymentId,
      String? payoutId,
      int grossAmount,
      int platformFee,
      int consultantShare,
      EarningRole role,
      double sharePercentage,
      EarningStatus status,
      DateTime holdUntil,
      DateTime? paidAt,
      String currency,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) Payment? payment,
      @JsonKey(includeFromJson: false, includeToJson: false) Payout? payout});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $PaymentCopyWith<$Res>? get payment;
  @override
  $PayoutCopyWith<$Res>? get payout;
}

/// @nodoc
class __$$ConsultantEarningsImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsCopyWithImpl<$Res, _$ConsultantEarningsImpl>
    implements _$$ConsultantEarningsImplCopyWith<$Res> {
  __$$ConsultantEarningsImplCopyWithImpl(_$ConsultantEarningsImpl _value,
      $Res Function(_$ConsultantEarningsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? paymentId = null,
    Object? payoutId = freezed,
    Object? grossAmount = null,
    Object? platformFee = null,
    Object? consultantShare = null,
    Object? role = null,
    Object? sharePercentage = null,
    Object? status = null,
    Object? holdUntil = null,
    Object? paidAt = freezed,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? payment = freezed,
    Object? payout = freezed,
  }) {
    return _then(_$ConsultantEarningsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int,
      consultantShare: null == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole,
      sharePercentage: null == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus,
      holdUntil: null == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as Payout?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantEarningsImpl implements _ConsultantEarnings {
  const _$ConsultantEarningsImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.paymentId,
      this.payoutId,
      required this.grossAmount,
      required this.platformFee,
      required this.consultantShare,
      this.role = EarningRole.owner,
      this.sharePercentage = 100,
      this.status = EarningStatus.pending,
      required this.holdUntil,
      this.paidAt,
      this.currency = "INR",
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payment,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payout});

  factory _$ConsultantEarningsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultantEarningsImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final String paymentId;
  @override
  final String? payoutId;
  @override
  final int grossAmount;
  @override
  final int platformFee;
  @override
  final int consultantShare;
  @override
  @JsonKey()
  final EarningRole role;
  @override
  @JsonKey()
  final double sharePercentage;
  @override
  @JsonKey()
  final EarningStatus status;
  @override
  final DateTime holdUntil;
  @override
  final DateTime? paidAt;
  @override
  @JsonKey()
  final String currency;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payment? payment;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payout? payout;

  @override
  String toString() {
    return 'ConsultantEarnings(id: $id, consultantProfileId: $consultantProfileId, paymentId: $paymentId, payoutId: $payoutId, grossAmount: $grossAmount, platformFee: $platformFee, consultantShare: $consultantShare, role: $role, sharePercentage: $sharePercentage, status: $status, holdUntil: $holdUntil, paidAt: $paidAt, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, payment: $payment, payout: $payout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.consultantShare, consultantShare) ||
                other.consultantShare == consultantShare) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sharePercentage, sharePercentage) ||
                other.sharePercentage == sharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.holdUntil, holdUntil) ||
                other.holdUntil == holdUntil) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.payout, payout) || other.payout == payout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultantProfileId,
      paymentId,
      payoutId,
      grossAmount,
      platformFee,
      consultantShare,
      role,
      sharePercentage,
      status,
      holdUntil,
      paidAt,
      currency,
      createdAt,
      updatedAt,
      consultantProfile,
      payment,
      payout);

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsImplCopyWith<_$ConsultantEarningsImpl> get copyWith =>
      __$$ConsultantEarningsImplCopyWithImpl<_$ConsultantEarningsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarnings implements ConsultantEarnings {
  const factory _ConsultantEarnings(
      {required final String id,
      required final String consultantProfileId,
      required final String paymentId,
      final String? payoutId,
      required final int grossAmount,
      required final int platformFee,
      required final int consultantShare,
      final EarningRole role,
      final double sharePercentage,
      final EarningStatus status,
      required final DateTime holdUntil,
      final DateTime? paidAt,
      final String currency,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payment? payment,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payout? payout}) = _$ConsultantEarningsImpl;

  factory _ConsultantEarnings.fromJson(Map<String, dynamic> json) =
      _$ConsultantEarningsImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  String get paymentId;
  @override
  String? get payoutId;
  @override
  int get grossAmount;
  @override
  int get platformFee;
  @override
  int get consultantShare;
  @override
  EarningRole get role;
  @override
  double get sharePercentage;
  @override
  EarningStatus get status;
  @override
  DateTime get holdUntil;
  @override
  DateTime? get paidAt;
  @override
  String get currency;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payment? get payment;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payout? get payout;

  /// Create a copy of ConsultantEarnings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsImplCopyWith<_$ConsultantEarningsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultantEarningsInput _$CreateConsultantEarningsInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultantEarningsInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultantEarningsInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  int get grossAmount => throw _privateConstructorUsedError;
  int get platformFee => throw _privateConstructorUsedError;
  int get consultantShare => throw _privateConstructorUsedError;
  EarningRole get role => throw _privateConstructorUsedError;
  double? get sharePercentage => throw _privateConstructorUsedError;
  EarningStatus get status => throw _privateConstructorUsedError;
  DateTime get holdUntil => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultantEarningsInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultantEarningsInputCopyWith<CreateConsultantEarningsInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultantEarningsInputCopyWith<$Res> {
  factory $CreateConsultantEarningsInputCopyWith(
          CreateConsultantEarningsInput value,
          $Res Function(CreateConsultantEarningsInput) then) =
      _$CreateConsultantEarningsInputCopyWithImpl<$Res,
          CreateConsultantEarningsInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      String paymentId,
      String? payoutId,
      int grossAmount,
      int platformFee,
      int consultantShare,
      EarningRole role,
      double? sharePercentage,
      EarningStatus status,
      DateTime holdUntil,
      DateTime? paidAt,
      String? currency});
}

/// @nodoc
class _$CreateConsultantEarningsInputCopyWithImpl<$Res,
        $Val extends CreateConsultantEarningsInput>
    implements $CreateConsultantEarningsInputCopyWith<$Res> {
  _$CreateConsultantEarningsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? paymentId = null,
    Object? payoutId = freezed,
    Object? grossAmount = null,
    Object? platformFee = null,
    Object? consultantShare = null,
    Object? role = null,
    Object? sharePercentage = freezed,
    Object? status = null,
    Object? holdUntil = null,
    Object? paidAt = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int,
      consultantShare: null == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus,
      holdUntil: null == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultantEarningsInputImplCopyWith<$Res>
    implements $CreateConsultantEarningsInputCopyWith<$Res> {
  factory _$$CreateConsultantEarningsInputImplCopyWith(
          _$CreateConsultantEarningsInputImpl value,
          $Res Function(_$CreateConsultantEarningsInputImpl) then) =
      __$$CreateConsultantEarningsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      String paymentId,
      String? payoutId,
      int grossAmount,
      int platformFee,
      int consultantShare,
      EarningRole role,
      double? sharePercentage,
      EarningStatus status,
      DateTime holdUntil,
      DateTime? paidAt,
      String? currency});
}

/// @nodoc
class __$$CreateConsultantEarningsInputImplCopyWithImpl<$Res>
    extends _$CreateConsultantEarningsInputCopyWithImpl<$Res,
        _$CreateConsultantEarningsInputImpl>
    implements _$$CreateConsultantEarningsInputImplCopyWith<$Res> {
  __$$CreateConsultantEarningsInputImplCopyWithImpl(
      _$CreateConsultantEarningsInputImpl _value,
      $Res Function(_$CreateConsultantEarningsInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? paymentId = null,
    Object? payoutId = freezed,
    Object? grossAmount = null,
    Object? platformFee = null,
    Object? consultantShare = null,
    Object? role = null,
    Object? sharePercentage = freezed,
    Object? status = null,
    Object? holdUntil = null,
    Object? paidAt = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$CreateConsultantEarningsInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int,
      consultantShare: null == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus,
      holdUntil: null == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultantEarningsInputImpl
    implements _CreateConsultantEarningsInput {
  const _$CreateConsultantEarningsInputImpl(
      {required this.consultantProfileId,
      required this.paymentId,
      this.payoutId,
      required this.grossAmount,
      required this.platformFee,
      required this.consultantShare,
      this.role = EarningRole.owner,
      this.sharePercentage = 100,
      this.status = EarningStatus.pending,
      required this.holdUntil,
      this.paidAt,
      this.currency = "INR"});

  factory _$CreateConsultantEarningsInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultantEarningsInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final String paymentId;
  @override
  final String? payoutId;
  @override
  final int grossAmount;
  @override
  final int platformFee;
  @override
  final int consultantShare;
  @override
  @JsonKey()
  final EarningRole role;
  @override
  @JsonKey()
  final double? sharePercentage;
  @override
  @JsonKey()
  final EarningStatus status;
  @override
  final DateTime holdUntil;
  @override
  final DateTime? paidAt;
  @override
  @JsonKey()
  final String? currency;

  @override
  String toString() {
    return 'CreateConsultantEarningsInput(consultantProfileId: $consultantProfileId, paymentId: $paymentId, payoutId: $payoutId, grossAmount: $grossAmount, platformFee: $platformFee, consultantShare: $consultantShare, role: $role, sharePercentage: $sharePercentage, status: $status, holdUntil: $holdUntil, paidAt: $paidAt, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultantEarningsInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.consultantShare, consultantShare) ||
                other.consultantShare == consultantShare) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sharePercentage, sharePercentage) ||
                other.sharePercentage == sharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.holdUntil, holdUntil) ||
                other.holdUntil == holdUntil) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      paymentId,
      payoutId,
      grossAmount,
      platformFee,
      consultantShare,
      role,
      sharePercentage,
      status,
      holdUntil,
      paidAt,
      currency);

  /// Create a copy of CreateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultantEarningsInputImplCopyWith<
          _$CreateConsultantEarningsInputImpl>
      get copyWith => __$$CreateConsultantEarningsInputImplCopyWithImpl<
          _$CreateConsultantEarningsInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultantEarningsInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultantEarningsInput
    implements CreateConsultantEarningsInput {
  const factory _CreateConsultantEarningsInput(
      {required final String consultantProfileId,
      required final String paymentId,
      final String? payoutId,
      required final int grossAmount,
      required final int platformFee,
      required final int consultantShare,
      final EarningRole role,
      final double? sharePercentage,
      final EarningStatus status,
      required final DateTime holdUntil,
      final DateTime? paidAt,
      final String? currency}) = _$CreateConsultantEarningsInputImpl;

  factory _CreateConsultantEarningsInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultantEarningsInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  String get paymentId;
  @override
  String? get payoutId;
  @override
  int get grossAmount;
  @override
  int get platformFee;
  @override
  int get consultantShare;
  @override
  EarningRole get role;
  @override
  double? get sharePercentage;
  @override
  EarningStatus get status;
  @override
  DateTime get holdUntil;
  @override
  DateTime? get paidAt;
  @override
  String? get currency;

  /// Create a copy of CreateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultantEarningsInputImplCopyWith<
          _$CreateConsultantEarningsInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultantEarningsInput _$UpdateConsultantEarningsInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultantEarningsInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultantEarningsInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  int? get grossAmount => throw _privateConstructorUsedError;
  int? get platformFee => throw _privateConstructorUsedError;
  int? get consultantShare => throw _privateConstructorUsedError;
  EarningRole? get role => throw _privateConstructorUsedError;
  double? get sharePercentage => throw _privateConstructorUsedError;
  EarningStatus? get status => throw _privateConstructorUsedError;
  DateTime? get holdUntil => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultantEarningsInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultantEarningsInputCopyWith<UpdateConsultantEarningsInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultantEarningsInputCopyWith<$Res> {
  factory $UpdateConsultantEarningsInputCopyWith(
          UpdateConsultantEarningsInput value,
          $Res Function(UpdateConsultantEarningsInput) then) =
      _$UpdateConsultantEarningsInputCopyWithImpl<$Res,
          UpdateConsultantEarningsInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? paymentId,
      String? payoutId,
      int? grossAmount,
      int? platformFee,
      int? consultantShare,
      EarningRole? role,
      double? sharePercentage,
      EarningStatus? status,
      DateTime? holdUntil,
      DateTime? paidAt,
      String? currency});
}

/// @nodoc
class _$UpdateConsultantEarningsInputCopyWithImpl<$Res,
        $Val extends UpdateConsultantEarningsInput>
    implements $UpdateConsultantEarningsInputCopyWith<$Res> {
  _$UpdateConsultantEarningsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? role = freezed,
    Object? sharePercentage = freezed,
    Object? status = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultantEarningsInputImplCopyWith<$Res>
    implements $UpdateConsultantEarningsInputCopyWith<$Res> {
  factory _$$UpdateConsultantEarningsInputImplCopyWith(
          _$UpdateConsultantEarningsInputImpl value,
          $Res Function(_$UpdateConsultantEarningsInputImpl) then) =
      __$$UpdateConsultantEarningsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? paymentId,
      String? payoutId,
      int? grossAmount,
      int? platformFee,
      int? consultantShare,
      EarningRole? role,
      double? sharePercentage,
      EarningStatus? status,
      DateTime? holdUntil,
      DateTime? paidAt,
      String? currency});
}

/// @nodoc
class __$$UpdateConsultantEarningsInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultantEarningsInputCopyWithImpl<$Res,
        _$UpdateConsultantEarningsInputImpl>
    implements _$$UpdateConsultantEarningsInputImplCopyWith<$Res> {
  __$$UpdateConsultantEarningsInputImplCopyWithImpl(
      _$UpdateConsultantEarningsInputImpl _value,
      $Res Function(_$UpdateConsultantEarningsInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? role = freezed,
    Object? sharePercentage = freezed,
    Object? status = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$UpdateConsultantEarningsInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultantEarningsInputImpl
    implements _UpdateConsultantEarningsInput {
  const _$UpdateConsultantEarningsInputImpl(
      {this.consultantProfileId,
      this.paymentId,
      this.payoutId,
      this.grossAmount,
      this.platformFee,
      this.consultantShare,
      this.role,
      this.sharePercentage,
      this.status,
      this.holdUntil,
      this.paidAt,
      this.currency});

  factory _$UpdateConsultantEarningsInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultantEarningsInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final String? paymentId;
  @override
  final String? payoutId;
  @override
  final int? grossAmount;
  @override
  final int? platformFee;
  @override
  final int? consultantShare;
  @override
  final EarningRole? role;
  @override
  final double? sharePercentage;
  @override
  final EarningStatus? status;
  @override
  final DateTime? holdUntil;
  @override
  final DateTime? paidAt;
  @override
  final String? currency;

  @override
  String toString() {
    return 'UpdateConsultantEarningsInput(consultantProfileId: $consultantProfileId, paymentId: $paymentId, payoutId: $payoutId, grossAmount: $grossAmount, platformFee: $platformFee, consultantShare: $consultantShare, role: $role, sharePercentage: $sharePercentage, status: $status, holdUntil: $holdUntil, paidAt: $paidAt, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultantEarningsInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.consultantShare, consultantShare) ||
                other.consultantShare == consultantShare) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sharePercentage, sharePercentage) ||
                other.sharePercentage == sharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.holdUntil, holdUntil) ||
                other.holdUntil == holdUntil) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      paymentId,
      payoutId,
      grossAmount,
      platformFee,
      consultantShare,
      role,
      sharePercentage,
      status,
      holdUntil,
      paidAt,
      currency);

  /// Create a copy of UpdateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultantEarningsInputImplCopyWith<
          _$UpdateConsultantEarningsInputImpl>
      get copyWith => __$$UpdateConsultantEarningsInputImplCopyWithImpl<
          _$UpdateConsultantEarningsInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultantEarningsInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultantEarningsInput
    implements UpdateConsultantEarningsInput {
  const factory _UpdateConsultantEarningsInput(
      {final String? consultantProfileId,
      final String? paymentId,
      final String? payoutId,
      final int? grossAmount,
      final int? platformFee,
      final int? consultantShare,
      final EarningRole? role,
      final double? sharePercentage,
      final EarningStatus? status,
      final DateTime? holdUntil,
      final DateTime? paidAt,
      final String? currency}) = _$UpdateConsultantEarningsInputImpl;

  factory _UpdateConsultantEarningsInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultantEarningsInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  String? get paymentId;
  @override
  String? get payoutId;
  @override
  int? get grossAmount;
  @override
  int? get platformFee;
  @override
  int? get consultantShare;
  @override
  EarningRole? get role;
  @override
  double? get sharePercentage;
  @override
  EarningStatus? get status;
  @override
  DateTime? get holdUntil;
  @override
  DateTime? get paidAt;
  @override
  String? get currency;

  /// Create a copy of UpdateConsultantEarningsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultantEarningsInputImplCopyWith<
          _$UpdateConsultantEarningsInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantEarningsWhereUniqueInput _$ConsultantEarningsWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantEarningsWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarningsWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarningsWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarningsWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsWhereUniqueInputCopyWith<
          ConsultantEarningsWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsWhereUniqueInputCopyWith<$Res> {
  factory $ConsultantEarningsWhereUniqueInputCopyWith(
          ConsultantEarningsWhereUniqueInput value,
          $Res Function(ConsultantEarningsWhereUniqueInput) then) =
      _$ConsultantEarningsWhereUniqueInputCopyWithImpl<$Res,
          ConsultantEarningsWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ConsultantEarningsWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultantEarningsWhereUniqueInput>
    implements $ConsultantEarningsWhereUniqueInputCopyWith<$Res> {
  _$ConsultantEarningsWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarningsWhereUniqueInput
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
abstract class _$$ConsultantEarningsWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultantEarningsWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultantEarningsWhereUniqueInputImplCopyWith(
          _$ConsultantEarningsWhereUniqueInputImpl value,
          $Res Function(_$ConsultantEarningsWhereUniqueInputImpl) then) =
      __$$ConsultantEarningsWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ConsultantEarningsWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultantEarningsWhereUniqueInputImpl>
    implements _$$ConsultantEarningsWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultantEarningsWhereUniqueInputImplCopyWithImpl(
      _$ConsultantEarningsWhereUniqueInputImpl _value,
      $Res Function(_$ConsultantEarningsWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarningsWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ConsultantEarningsWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantEarningsWhereUniqueInputImpl
    implements _ConsultantEarningsWhereUniqueInput {
  const _$ConsultantEarningsWhereUniqueInputImpl({this.id});

  factory _$ConsultantEarningsWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantEarningsWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ConsultantEarningsWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ConsultantEarningsWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsWhereUniqueInputImplCopyWith<
          _$ConsultantEarningsWhereUniqueInputImpl>
      get copyWith => __$$ConsultantEarningsWhereUniqueInputImplCopyWithImpl<
          _$ConsultantEarningsWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarningsWhereUniqueInput
    implements ConsultantEarningsWhereUniqueInput {
  const factory _ConsultantEarningsWhereUniqueInput({final String? id}) =
      _$ConsultantEarningsWhereUniqueInputImpl;

  factory _ConsultantEarningsWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantEarningsWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ConsultantEarningsWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsWhereUniqueInputImplCopyWith<
          _$ConsultantEarningsWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantEarningsWhereInput _$ConsultantEarningsWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantEarningsWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarningsWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  StringFilter? get payoutId => throw _privateConstructorUsedError;
  IntFilter? get grossAmount => throw _privateConstructorUsedError;
  IntFilter? get platformFee => throw _privateConstructorUsedError;
  IntFilter? get consultantShare => throw _privateConstructorUsedError;
  EarningRoleFilter? get role => throw _privateConstructorUsedError;
  FloatFilter? get sharePercentage => throw _privateConstructorUsedError;
  EarningStatusFilter? get status => throw _privateConstructorUsedError;
  DateTimeFilter? get holdUntil => throw _privateConstructorUsedError;
  DateTimeFilter? get paidAt => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;

  /// Filter by payment relation
  PaymentRelationFilter? get payment => throw _privateConstructorUsedError;

  /// Filter by payout relation
  PayoutRelationFilter? get payout => throw _privateConstructorUsedError;
  List<ConsultantEarningsWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultantEarningsWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultantEarningsWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarningsWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsWhereInputCopyWith<ConsultantEarningsWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsWhereInputCopyWith<$Res> {
  factory $ConsultantEarningsWhereInputCopyWith(
          ConsultantEarningsWhereInput value,
          $Res Function(ConsultantEarningsWhereInput) then) =
      _$ConsultantEarningsWhereInputCopyWithImpl<$Res,
          ConsultantEarningsWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? paymentId,
      StringFilter? payoutId,
      IntFilter? grossAmount,
      IntFilter? platformFee,
      IntFilter? consultantShare,
      EarningRoleFilter? role,
      FloatFilter? sharePercentage,
      EarningStatusFilter? status,
      DateTimeFilter? holdUntil,
      DateTimeFilter? paidAt,
      StringFilter? currency,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      PaymentRelationFilter? payment,
      PayoutRelationFilter? payout,
      List<ConsultantEarningsWhereInput>? AND,
      List<ConsultantEarningsWhereInput>? OR,
      ConsultantEarningsWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get paymentId;
  $StringFilterCopyWith<$Res>? get payoutId;
  $IntFilterCopyWith<$Res>? get grossAmount;
  $IntFilterCopyWith<$Res>? get platformFee;
  $IntFilterCopyWith<$Res>? get consultantShare;
  $EarningRoleFilterCopyWith<$Res>? get role;
  $FloatFilterCopyWith<$Res>? get sharePercentage;
  $EarningStatusFilterCopyWith<$Res>? get status;
  $DateTimeFilterCopyWith<$Res>? get holdUntil;
  $DateTimeFilterCopyWith<$Res>? get paidAt;
  $StringFilterCopyWith<$Res>? get currency;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  $PayoutRelationFilterCopyWith<$Res>? get payout;
  $ConsultantEarningsWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultantEarningsWhereInputCopyWithImpl<$Res,
        $Val extends ConsultantEarningsWhereInput>
    implements $ConsultantEarningsWhereInputCopyWith<$Res> {
  _$ConsultantEarningsWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? role = freezed,
    Object? sharePercentage = freezed,
    Object? status = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? payment = freezed,
    Object? payout = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRoleFilter?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatusFilter?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutRelationFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarningsWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarningsWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultantProfileId {
    if (_value.consultantProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultantProfileId!, (value) {
      return _then(_value.copyWith(consultantProfileId: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get payoutId {
    if (_value.payoutId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.payoutId!, (value) {
      return _then(_value.copyWith(payoutId: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get grossAmount {
    if (_value.grossAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.grossAmount!, (value) {
      return _then(_value.copyWith(grossAmount: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get platformFee {
    if (_value.platformFee == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.platformFee!, (value) {
      return _then(_value.copyWith(platformFee: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get consultantShare {
    if (_value.consultantShare == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.consultantShare!, (value) {
      return _then(_value.copyWith(consultantShare: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningRoleFilterCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $EarningRoleFilterCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get sharePercentage {
    if (_value.sharePercentage == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.sharePercentage!, (value) {
      return _then(_value.copyWith(sharePercentage: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $EarningStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get holdUntil {
    if (_value.holdUntil == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.holdUntil!, (value) {
      return _then(_value.copyWith(holdUntil: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileRelationFilterCopyWith<$Res>(
        _value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
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

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutRelationFilterCopyWith<$Res>? get payout {
    if (_value.payout == null) {
      return null;
    }

    return $PayoutRelationFilterCopyWith<$Res>(_value.payout!, (value) {
      return _then(_value.copyWith(payout: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantEarningsWhereInputImplCopyWith<$Res>
    implements $ConsultantEarningsWhereInputCopyWith<$Res> {
  factory _$$ConsultantEarningsWhereInputImplCopyWith(
          _$ConsultantEarningsWhereInputImpl value,
          $Res Function(_$ConsultantEarningsWhereInputImpl) then) =
      __$$ConsultantEarningsWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? paymentId,
      StringFilter? payoutId,
      IntFilter? grossAmount,
      IntFilter? platformFee,
      IntFilter? consultantShare,
      EarningRoleFilter? role,
      FloatFilter? sharePercentage,
      EarningStatusFilter? status,
      DateTimeFilter? holdUntil,
      DateTimeFilter? paidAt,
      StringFilter? currency,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      PaymentRelationFilter? payment,
      PayoutRelationFilter? payout,
      List<ConsultantEarningsWhereInput>? AND,
      List<ConsultantEarningsWhereInput>? OR,
      ConsultantEarningsWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $StringFilterCopyWith<$Res>? get payoutId;
  @override
  $IntFilterCopyWith<$Res>? get grossAmount;
  @override
  $IntFilterCopyWith<$Res>? get platformFee;
  @override
  $IntFilterCopyWith<$Res>? get consultantShare;
  @override
  $EarningRoleFilterCopyWith<$Res>? get role;
  @override
  $FloatFilterCopyWith<$Res>? get sharePercentage;
  @override
  $EarningStatusFilterCopyWith<$Res>? get status;
  @override
  $DateTimeFilterCopyWith<$Res>? get holdUntil;
  @override
  $DateTimeFilterCopyWith<$Res>? get paidAt;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $PaymentRelationFilterCopyWith<$Res>? get payment;
  @override
  $PayoutRelationFilterCopyWith<$Res>? get payout;
  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultantEarningsWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsWhereInputCopyWithImpl<$Res,
        _$ConsultantEarningsWhereInputImpl>
    implements _$$ConsultantEarningsWhereInputImplCopyWith<$Res> {
  __$$ConsultantEarningsWhereInputImplCopyWithImpl(
      _$ConsultantEarningsWhereInputImpl _value,
      $Res Function(_$ConsultantEarningsWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? role = freezed,
    Object? sharePercentage = freezed,
    Object? status = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? payment = freezed,
    Object? payout = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultantEarningsWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as EarningRoleFilter?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EarningStatusFilter?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentRelationFilter?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutRelationFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarningsWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarningsWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultantEarningsWhereInputImpl
    implements _ConsultantEarningsWhereInput {
  const _$ConsultantEarningsWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.paymentId,
      this.payoutId,
      this.grossAmount,
      this.platformFee,
      this.consultantShare,
      this.role,
      this.sharePercentage,
      this.status,
      this.holdUntil,
      this.paidAt,
      this.currency,
      this.createdAt,
      this.updatedAt,
      this.consultantProfile,
      this.payment,
      this.payout,
      final List<ConsultantEarningsWhereInput>? AND,
      final List<ConsultantEarningsWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultantEarningsWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantEarningsWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? paymentId;
  @override
  final StringFilter? payoutId;
  @override
  final IntFilter? grossAmount;
  @override
  final IntFilter? platformFee;
  @override
  final IntFilter? consultantShare;
  @override
  final EarningRoleFilter? role;
  @override
  final FloatFilter? sharePercentage;
  @override
  final EarningStatusFilter? status;
  @override
  final DateTimeFilter? holdUntil;
  @override
  final DateTimeFilter? paidAt;
  @override
  final StringFilter? currency;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;

  /// Filter by payment relation
  @override
  final PaymentRelationFilter? payment;

  /// Filter by payout relation
  @override
  final PayoutRelationFilter? payout;
  final List<ConsultantEarningsWhereInput>? _AND;
  @override
  List<ConsultantEarningsWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantEarningsWhereInput>? _OR;
  @override
  List<ConsultantEarningsWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultantEarningsWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultantEarningsWhereInput(id: $id, consultantProfileId: $consultantProfileId, paymentId: $paymentId, payoutId: $payoutId, grossAmount: $grossAmount, platformFee: $platformFee, consultantShare: $consultantShare, role: $role, sharePercentage: $sharePercentage, status: $status, holdUntil: $holdUntil, paidAt: $paidAt, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, payment: $payment, payout: $payout, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.consultantShare, consultantShare) ||
                other.consultantShare == consultantShare) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sharePercentage, sharePercentage) ||
                other.sharePercentage == sharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.holdUntil, holdUntil) ||
                other.holdUntil == holdUntil) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.payout, payout) || other.payout == payout) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consultantProfileId,
        paymentId,
        payoutId,
        grossAmount,
        platformFee,
        consultantShare,
        role,
        sharePercentage,
        status,
        holdUntil,
        paidAt,
        currency,
        createdAt,
        updatedAt,
        consultantProfile,
        payment,
        payout,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsWhereInputImplCopyWith<
          _$ConsultantEarningsWhereInputImpl>
      get copyWith => __$$ConsultantEarningsWhereInputImplCopyWithImpl<
          _$ConsultantEarningsWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarningsWhereInput
    implements ConsultantEarningsWhereInput {
  const factory _ConsultantEarningsWhereInput(
          {final StringFilter? id,
          final StringFilter? consultantProfileId,
          final StringFilter? paymentId,
          final StringFilter? payoutId,
          final IntFilter? grossAmount,
          final IntFilter? platformFee,
          final IntFilter? consultantShare,
          final EarningRoleFilter? role,
          final FloatFilter? sharePercentage,
          final EarningStatusFilter? status,
          final DateTimeFilter? holdUntil,
          final DateTimeFilter? paidAt,
          final StringFilter? currency,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final ConsultantProfileRelationFilter? consultantProfile,
          final PaymentRelationFilter? payment,
          final PayoutRelationFilter? payout,
          final List<ConsultantEarningsWhereInput>? AND,
          final List<ConsultantEarningsWhereInput>? OR,
          final ConsultantEarningsWhereInput? NOT}) =
      _$ConsultantEarningsWhereInputImpl;

  factory _ConsultantEarningsWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantEarningsWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get paymentId;
  @override
  StringFilter? get payoutId;
  @override
  IntFilter? get grossAmount;
  @override
  IntFilter? get platformFee;
  @override
  IntFilter? get consultantShare;
  @override
  EarningRoleFilter? get role;
  @override
  FloatFilter? get sharePercentage;
  @override
  EarningStatusFilter? get status;
  @override
  DateTimeFilter? get holdUntil;
  @override
  DateTimeFilter? get paidAt;
  @override
  StringFilter? get currency;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;

  /// Filter by payment relation
  @override
  PaymentRelationFilter? get payment;

  /// Filter by payout relation
  @override
  PayoutRelationFilter? get payout;
  @override
  List<ConsultantEarningsWhereInput>? get AND;
  @override
  List<ConsultantEarningsWhereInput>? get OR;
  @override
  ConsultantEarningsWhereInput? get NOT;

  /// Create a copy of ConsultantEarningsWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsWhereInputImplCopyWith<
          _$ConsultantEarningsWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantEarningsListRelationFilter
    _$ConsultantEarningsListRelationFilterFromJson(Map<String, dynamic> json) {
  return _ConsultantEarningsListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarningsListRelationFilter {
  /// At least one related record matches
  ConsultantEarningsWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultantEarningsWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultantEarningsWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarningsListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsListRelationFilterCopyWith<
          ConsultantEarningsListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsListRelationFilterCopyWith<$Res> {
  factory $ConsultantEarningsListRelationFilterCopyWith(
          ConsultantEarningsListRelationFilter value,
          $Res Function(ConsultantEarningsListRelationFilter) then) =
      _$ConsultantEarningsListRelationFilterCopyWithImpl<$Res,
          ConsultantEarningsListRelationFilter>;
  @useResult
  $Res call(
      {ConsultantEarningsWhereInput? some,
      ConsultantEarningsWhereInput? every,
      ConsultantEarningsWhereInput? none});

  $ConsultantEarningsWhereInputCopyWith<$Res>? get some;
  $ConsultantEarningsWhereInputCopyWith<$Res>? get every;
  $ConsultantEarningsWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultantEarningsListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantEarningsListRelationFilter>
    implements $ConsultantEarningsListRelationFilterCopyWith<$Res> {
  _$ConsultantEarningsListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarningsListRelationFilter
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
              as ConsultantEarningsWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantEarningsListRelationFilterImplCopyWith<$Res>
    implements $ConsultantEarningsListRelationFilterCopyWith<$Res> {
  factory _$$ConsultantEarningsListRelationFilterImplCopyWith(
          _$ConsultantEarningsListRelationFilterImpl value,
          $Res Function(_$ConsultantEarningsListRelationFilterImpl) then) =
      __$$ConsultantEarningsListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantEarningsWhereInput? some,
      ConsultantEarningsWhereInput? every,
      ConsultantEarningsWhereInput? none});

  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultantEarningsListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsListRelationFilterCopyWithImpl<$Res,
        _$ConsultantEarningsListRelationFilterImpl>
    implements _$$ConsultantEarningsListRelationFilterImplCopyWith<$Res> {
  __$$ConsultantEarningsListRelationFilterImplCopyWithImpl(
      _$ConsultantEarningsListRelationFilterImpl _value,
      $Res Function(_$ConsultantEarningsListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultantEarningsListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantEarningsListRelationFilterImpl
    implements _ConsultantEarningsListRelationFilter {
  const _$ConsultantEarningsListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultantEarningsListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantEarningsListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultantEarningsWhereInput? some;

  /// All related records match
  @override
  final ConsultantEarningsWhereInput? every;

  /// No related records match
  @override
  final ConsultantEarningsWhereInput? none;

  @override
  String toString() {
    return 'ConsultantEarningsListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsListRelationFilterImplCopyWith<
          _$ConsultantEarningsListRelationFilterImpl>
      get copyWith => __$$ConsultantEarningsListRelationFilterImplCopyWithImpl<
          _$ConsultantEarningsListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarningsListRelationFilter
    implements ConsultantEarningsListRelationFilter {
  const factory _ConsultantEarningsListRelationFilter(
          {final ConsultantEarningsWhereInput? some,
          final ConsultantEarningsWhereInput? every,
          final ConsultantEarningsWhereInput? none}) =
      _$ConsultantEarningsListRelationFilterImpl;

  factory _ConsultantEarningsListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantEarningsListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultantEarningsWhereInput? get some;

  /// All related records match
  @override
  ConsultantEarningsWhereInput? get every;

  /// No related records match
  @override
  ConsultantEarningsWhereInput? get none;

  /// Create a copy of ConsultantEarningsListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsListRelationFilterImplCopyWith<
          _$ConsultantEarningsListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantEarningsRelationFilter _$ConsultantEarningsRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantEarningsRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarningsRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultantEarningsWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultantEarningsWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarningsRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsRelationFilterCopyWith<ConsultantEarningsRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsRelationFilterCopyWith<$Res> {
  factory $ConsultantEarningsRelationFilterCopyWith(
          ConsultantEarningsRelationFilter value,
          $Res Function(ConsultantEarningsRelationFilter) then) =
      _$ConsultantEarningsRelationFilterCopyWithImpl<$Res,
          ConsultantEarningsRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantEarningsWhereInput? is_,
      ConsultantEarningsWhereInput? isNot});

  $ConsultantEarningsWhereInputCopyWith<$Res>? get is_;
  $ConsultantEarningsWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultantEarningsRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantEarningsRelationFilter>
    implements $ConsultantEarningsRelationFilterCopyWith<$Res> {
  _$ConsultantEarningsRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarningsRelationFilter
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
              as ConsultantEarningsWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantEarningsWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultantEarningsWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantEarningsRelationFilterImplCopyWith<$Res>
    implements $ConsultantEarningsRelationFilterCopyWith<$Res> {
  factory _$$ConsultantEarningsRelationFilterImplCopyWith(
          _$ConsultantEarningsRelationFilterImpl value,
          $Res Function(_$ConsultantEarningsRelationFilterImpl) then) =
      __$$ConsultantEarningsRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantEarningsWhereInput? is_,
      ConsultantEarningsWhereInput? isNot});

  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultantEarningsWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultantEarningsRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsRelationFilterCopyWithImpl<$Res,
        _$ConsultantEarningsRelationFilterImpl>
    implements _$$ConsultantEarningsRelationFilterImplCopyWith<$Res> {
  __$$ConsultantEarningsRelationFilterImplCopyWithImpl(
      _$ConsultantEarningsRelationFilterImpl _value,
      $Res Function(_$ConsultantEarningsRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultantEarningsRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantEarningsWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantEarningsRelationFilterImpl
    implements _ConsultantEarningsRelationFilter {
  const _$ConsultantEarningsRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultantEarningsRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantEarningsRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultantEarningsWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultantEarningsWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultantEarningsRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsRelationFilterImplCopyWith<
          _$ConsultantEarningsRelationFilterImpl>
      get copyWith => __$$ConsultantEarningsRelationFilterImplCopyWithImpl<
          _$ConsultantEarningsRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarningsRelationFilter
    implements ConsultantEarningsRelationFilter {
  const factory _ConsultantEarningsRelationFilter(
          {@JsonKey(name: 'is') final ConsultantEarningsWhereInput? is_,
          final ConsultantEarningsWhereInput? isNot}) =
      _$ConsultantEarningsRelationFilterImpl;

  factory _ConsultantEarningsRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantEarningsRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultantEarningsWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultantEarningsWhereInput? get isNot;

  /// Create a copy of ConsultantEarningsRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsRelationFilterImplCopyWith<
          _$ConsultantEarningsRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantEarningsOrderByInput _$ConsultantEarningsOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantEarningsOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantEarningsOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get payoutId => throw _privateConstructorUsedError;
  SortOrder? get grossAmount => throw _privateConstructorUsedError;
  SortOrder? get platformFee => throw _privateConstructorUsedError;
  SortOrder? get consultantShare => throw _privateConstructorUsedError;
  SortOrder? get sharePercentage => throw _privateConstructorUsedError;
  SortOrder? get holdUntil => throw _privateConstructorUsedError;
  SortOrder? get paidAt => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantEarningsOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantEarningsOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantEarningsOrderByInputCopyWith<ConsultantEarningsOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantEarningsOrderByInputCopyWith<$Res> {
  factory $ConsultantEarningsOrderByInputCopyWith(
          ConsultantEarningsOrderByInput value,
          $Res Function(ConsultantEarningsOrderByInput) then) =
      _$ConsultantEarningsOrderByInputCopyWithImpl<$Res,
          ConsultantEarningsOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? paymentId,
      SortOrder? payoutId,
      SortOrder? grossAmount,
      SortOrder? platformFee,
      SortOrder? consultantShare,
      SortOrder? sharePercentage,
      SortOrder? holdUntil,
      SortOrder? paidAt,
      SortOrder? currency,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultantEarningsOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultantEarningsOrderByInput>
    implements $ConsultantEarningsOrderByInputCopyWith<$Res> {
  _$ConsultantEarningsOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantEarningsOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? sharePercentage = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultantEarningsOrderByInputImplCopyWith<$Res>
    implements $ConsultantEarningsOrderByInputCopyWith<$Res> {
  factory _$$ConsultantEarningsOrderByInputImplCopyWith(
          _$ConsultantEarningsOrderByInputImpl value,
          $Res Function(_$ConsultantEarningsOrderByInputImpl) then) =
      __$$ConsultantEarningsOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? paymentId,
      SortOrder? payoutId,
      SortOrder? grossAmount,
      SortOrder? platformFee,
      SortOrder? consultantShare,
      SortOrder? sharePercentage,
      SortOrder? holdUntil,
      SortOrder? paidAt,
      SortOrder? currency,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultantEarningsOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultantEarningsOrderByInputCopyWithImpl<$Res,
        _$ConsultantEarningsOrderByInputImpl>
    implements _$$ConsultantEarningsOrderByInputImplCopyWith<$Res> {
  __$$ConsultantEarningsOrderByInputImplCopyWithImpl(
      _$ConsultantEarningsOrderByInputImpl _value,
      $Res Function(_$ConsultantEarningsOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantEarningsOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? paymentId = freezed,
    Object? payoutId = freezed,
    Object? grossAmount = freezed,
    Object? platformFee = freezed,
    Object? consultantShare = freezed,
    Object? sharePercentage = freezed,
    Object? holdUntil = freezed,
    Object? paidAt = freezed,
    Object? currency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultantEarningsOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantShare: freezed == consultantShare
          ? _value.consultantShare
          : consultantShare // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sharePercentage: freezed == sharePercentage
          ? _value.sharePercentage
          : sharePercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      holdUntil: freezed == holdUntil
          ? _value.holdUntil
          : holdUntil // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantEarningsOrderByInputImpl
    implements _ConsultantEarningsOrderByInput {
  const _$ConsultantEarningsOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.paymentId,
      this.payoutId,
      this.grossAmount,
      this.platformFee,
      this.consultantShare,
      this.sharePercentage,
      this.holdUntil,
      this.paidAt,
      this.currency,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultantEarningsOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantEarningsOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? payoutId;
  @override
  final SortOrder? grossAmount;
  @override
  final SortOrder? platformFee;
  @override
  final SortOrder? consultantShare;
  @override
  final SortOrder? sharePercentage;
  @override
  final SortOrder? holdUntil;
  @override
  final SortOrder? paidAt;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultantEarningsOrderByInput(id: $id, consultantProfileId: $consultantProfileId, paymentId: $paymentId, payoutId: $payoutId, grossAmount: $grossAmount, platformFee: $platformFee, consultantShare: $consultantShare, sharePercentage: $sharePercentage, holdUntil: $holdUntil, paidAt: $paidAt, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantEarningsOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.consultantShare, consultantShare) ||
                other.consultantShare == consultantShare) &&
            (identical(other.sharePercentage, sharePercentage) ||
                other.sharePercentage == sharePercentage) &&
            (identical(other.holdUntil, holdUntil) ||
                other.holdUntil == holdUntil) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
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
      consultantProfileId,
      paymentId,
      payoutId,
      grossAmount,
      platformFee,
      consultantShare,
      sharePercentage,
      holdUntil,
      paidAt,
      currency,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantEarningsOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantEarningsOrderByInputImplCopyWith<
          _$ConsultantEarningsOrderByInputImpl>
      get copyWith => __$$ConsultantEarningsOrderByInputImplCopyWithImpl<
          _$ConsultantEarningsOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantEarningsOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantEarningsOrderByInput
    implements ConsultantEarningsOrderByInput {
  const factory _ConsultantEarningsOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? paymentId,
      final SortOrder? payoutId,
      final SortOrder? grossAmount,
      final SortOrder? platformFee,
      final SortOrder? consultantShare,
      final SortOrder? sharePercentage,
      final SortOrder? holdUntil,
      final SortOrder? paidAt,
      final SortOrder? currency,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultantEarningsOrderByInputImpl;

  factory _ConsultantEarningsOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantEarningsOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get payoutId;
  @override
  SortOrder? get grossAmount;
  @override
  SortOrder? get platformFee;
  @override
  SortOrder? get consultantShare;
  @override
  SortOrder? get sharePercentage;
  @override
  SortOrder? get holdUntil;
  @override
  SortOrder? get paidAt;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultantEarningsOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantEarningsOrderByInputImplCopyWith<
          _$ConsultantEarningsOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
