// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Referral _$ReferralFromJson(Map<String, dynamic> json) {
  return _Referral.fromJson(json);
}

/// @nodoc
mixin _$Referral {
  String get id => throw _privateConstructorUsedError;
  String get referralCodeId => throw _privateConstructorUsedError;
  String get referredUserId => throw _privateConstructorUsedError;
  ReferralStatus get status => throw _privateConstructorUsedError;
  int? get referrerRewardAmount => throw _privateConstructorUsedError;
  int? get refereeRewardAmount => throw _privateConstructorUsedError;
  DateTime? get referrerRewardPaidAt => throw _privateConstructorUsedError;
  DateTime? get refereeRewardPaidAt => throw _privateConstructorUsedError;
  DateTime get signedUpAt => throw _privateConstructorUsedError;
  DateTime? get qualifiedAt => throw _privateConstructorUsedError;
  String? get qualifyingAction => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReferralCode? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get referredUser => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Referral to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCopyWith<Referral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCopyWith<$Res> {
  factory $ReferralCopyWith(Referral value, $Res Function(Referral) then) =
      _$ReferralCopyWithImpl<$Res, Referral>;
  @useResult
  $Res call(
      {String id,
      String referralCodeId,
      String referredUserId,
      ReferralStatus status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime signedUpAt,
      DateTime? qualifiedAt,
      String? qualifyingAction,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) User? referredUser,
      DateTime createdAt,
      DateTime updatedAt});

  $ReferralCodeCopyWith<$Res>? get referralCode;
  $UserCopyWith<$Res>? get referredUser;
}

/// @nodoc
class _$ReferralCopyWithImpl<$Res, $Val extends Referral>
    implements $ReferralCopyWith<$Res> {
  _$ReferralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referralCodeId = null,
    Object? referredUserId = null,
    Object? status = null,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = null,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? referralCode = freezed,
    Object? referredUser = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referralCodeId: null == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signedUpAt: null == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCode?,
      referredUser: freezed == referredUser
          ? _value.referredUser
          : referredUser // ignore: cast_nullable_to_non_nullable
              as User?,
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

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeCopyWith<$Res>? get referralCode {
    if (_value.referralCode == null) {
      return null;
    }

    return $ReferralCodeCopyWith<$Res>(_value.referralCode!, (value) {
      return _then(_value.copyWith(referralCode: value) as $Val);
    });
  }

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get referredUser {
    if (_value.referredUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.referredUser!, (value) {
      return _then(_value.copyWith(referredUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralImplCopyWith<$Res>
    implements $ReferralCopyWith<$Res> {
  factory _$$ReferralImplCopyWith(
          _$ReferralImpl value, $Res Function(_$ReferralImpl) then) =
      __$$ReferralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String referralCodeId,
      String referredUserId,
      ReferralStatus status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime signedUpAt,
      DateTime? qualifiedAt,
      String? qualifyingAction,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) User? referredUser,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ReferralCodeCopyWith<$Res>? get referralCode;
  @override
  $UserCopyWith<$Res>? get referredUser;
}

/// @nodoc
class __$$ReferralImplCopyWithImpl<$Res>
    extends _$ReferralCopyWithImpl<$Res, _$ReferralImpl>
    implements _$$ReferralImplCopyWith<$Res> {
  __$$ReferralImplCopyWithImpl(
      _$ReferralImpl _value, $Res Function(_$ReferralImpl) _then)
      : super(_value, _then);

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referralCodeId = null,
    Object? referredUserId = null,
    Object? status = null,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = null,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? referralCode = freezed,
    Object? referredUser = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReferralImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referralCodeId: null == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signedUpAt: null == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCode?,
      referredUser: freezed == referredUser
          ? _value.referredUser
          : referredUser // ignore: cast_nullable_to_non_nullable
              as User?,
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
class _$ReferralImpl implements _Referral {
  const _$ReferralImpl(
      {required this.id,
      required this.referralCodeId,
      required this.referredUserId,
      this.status = ReferralStatus.signedUp,
      this.referrerRewardAmount,
      this.refereeRewardAmount,
      this.referrerRewardPaidAt,
      this.refereeRewardPaidAt,
      required this.signedUpAt,
      this.qualifiedAt,
      this.qualifyingAction,
      @JsonKey(includeFromJson: false, includeToJson: false) this.referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) this.referredUser,
      required this.createdAt,
      required this.updatedAt});

  factory _$ReferralImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralImplFromJson(json);

  @override
  final String id;
  @override
  final String referralCodeId;
  @override
  final String referredUserId;
  @override
  @JsonKey()
  final ReferralStatus status;
  @override
  final int? referrerRewardAmount;
  @override
  final int? refereeRewardAmount;
  @override
  final DateTime? referrerRewardPaidAt;
  @override
  final DateTime? refereeRewardPaidAt;
  @override
  final DateTime signedUpAt;
  @override
  final DateTime? qualifiedAt;
  @override
  final String? qualifyingAction;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ReferralCode? referralCode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? referredUser;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Referral(id: $id, referralCodeId: $referralCodeId, referredUserId: $referredUserId, status: $status, referrerRewardAmount: $referrerRewardAmount, refereeRewardAmount: $refereeRewardAmount, referrerRewardPaidAt: $referrerRewardPaidAt, refereeRewardPaidAt: $refereeRewardPaidAt, signedUpAt: $signedUpAt, qualifiedAt: $qualifiedAt, qualifyingAction: $qualifyingAction, referralCode: $referralCode, referredUser: $referredUser, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referralCodeId, referralCodeId) ||
                other.referralCodeId == referralCodeId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referrerRewardAmount, referrerRewardAmount) ||
                other.referrerRewardAmount == referrerRewardAmount) &&
            (identical(other.refereeRewardAmount, refereeRewardAmount) ||
                other.refereeRewardAmount == refereeRewardAmount) &&
            (identical(other.referrerRewardPaidAt, referrerRewardPaidAt) ||
                other.referrerRewardPaidAt == referrerRewardPaidAt) &&
            (identical(other.refereeRewardPaidAt, refereeRewardPaidAt) ||
                other.refereeRewardPaidAt == refereeRewardPaidAt) &&
            (identical(other.signedUpAt, signedUpAt) ||
                other.signedUpAt == signedUpAt) &&
            (identical(other.qualifiedAt, qualifiedAt) ||
                other.qualifiedAt == qualifiedAt) &&
            (identical(other.qualifyingAction, qualifyingAction) ||
                other.qualifyingAction == qualifyingAction) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referredUser, referredUser) ||
                other.referredUser == referredUser) &&
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
      referralCodeId,
      referredUserId,
      status,
      referrerRewardAmount,
      refereeRewardAmount,
      referrerRewardPaidAt,
      refereeRewardPaidAt,
      signedUpAt,
      qualifiedAt,
      qualifyingAction,
      referralCode,
      referredUser,
      createdAt,
      updatedAt);

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralImplCopyWith<_$ReferralImpl> get copyWith =>
      __$$ReferralImplCopyWithImpl<_$ReferralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralImplToJson(
      this,
    );
  }
}

abstract class _Referral implements Referral {
  const factory _Referral(
      {required final String id,
      required final String referralCodeId,
      required final String referredUserId,
      final ReferralStatus status,
      final int? referrerRewardAmount,
      final int? refereeRewardAmount,
      final DateTime? referrerRewardPaidAt,
      final DateTime? refereeRewardPaidAt,
      required final DateTime signedUpAt,
      final DateTime? qualifiedAt,
      final String? qualifyingAction,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final User? referredUser,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ReferralImpl;

  factory _Referral.fromJson(Map<String, dynamic> json) =
      _$ReferralImpl.fromJson;

  @override
  String get id;
  @override
  String get referralCodeId;
  @override
  String get referredUserId;
  @override
  ReferralStatus get status;
  @override
  int? get referrerRewardAmount;
  @override
  int? get refereeRewardAmount;
  @override
  DateTime? get referrerRewardPaidAt;
  @override
  DateTime? get refereeRewardPaidAt;
  @override
  DateTime get signedUpAt;
  @override
  DateTime? get qualifiedAt;
  @override
  String? get qualifyingAction;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReferralCode? get referralCode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get referredUser;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Referral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralImplCopyWith<_$ReferralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReferralInput _$CreateReferralInputFromJson(Map<String, dynamic> json) {
  return _CreateReferralInput.fromJson(json);
}

/// @nodoc
mixin _$CreateReferralInput {
  String get referralCodeId => throw _privateConstructorUsedError;
  String get referredUserId => throw _privateConstructorUsedError;
  ReferralStatus get status => throw _privateConstructorUsedError;
  int? get referrerRewardAmount => throw _privateConstructorUsedError;
  int? get refereeRewardAmount => throw _privateConstructorUsedError;
  DateTime? get referrerRewardPaidAt => throw _privateConstructorUsedError;
  DateTime? get refereeRewardPaidAt => throw _privateConstructorUsedError;
  DateTime? get qualifiedAt => throw _privateConstructorUsedError;
  String? get qualifyingAction => throw _privateConstructorUsedError;

  /// Serializes this CreateReferralInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReferralInputCopyWith<CreateReferralInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReferralInputCopyWith<$Res> {
  factory $CreateReferralInputCopyWith(
          CreateReferralInput value, $Res Function(CreateReferralInput) then) =
      _$CreateReferralInputCopyWithImpl<$Res, CreateReferralInput>;
  @useResult
  $Res call(
      {String referralCodeId,
      String referredUserId,
      ReferralStatus status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime? qualifiedAt,
      String? qualifyingAction});
}

/// @nodoc
class _$CreateReferralInputCopyWithImpl<$Res, $Val extends CreateReferralInput>
    implements $CreateReferralInputCopyWith<$Res> {
  _$CreateReferralInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCodeId = null,
    Object? referredUserId = null,
    Object? status = null,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
  }) {
    return _then(_value.copyWith(
      referralCodeId: null == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReferralInputImplCopyWith<$Res>
    implements $CreateReferralInputCopyWith<$Res> {
  factory _$$CreateReferralInputImplCopyWith(_$CreateReferralInputImpl value,
          $Res Function(_$CreateReferralInputImpl) then) =
      __$$CreateReferralInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String referralCodeId,
      String referredUserId,
      ReferralStatus status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime? qualifiedAt,
      String? qualifyingAction});
}

/// @nodoc
class __$$CreateReferralInputImplCopyWithImpl<$Res>
    extends _$CreateReferralInputCopyWithImpl<$Res, _$CreateReferralInputImpl>
    implements _$$CreateReferralInputImplCopyWith<$Res> {
  __$$CreateReferralInputImplCopyWithImpl(_$CreateReferralInputImpl _value,
      $Res Function(_$CreateReferralInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCodeId = null,
    Object? referredUserId = null,
    Object? status = null,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
  }) {
    return _then(_$CreateReferralInputImpl(
      referralCodeId: null == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReferralInputImpl implements _CreateReferralInput {
  const _$CreateReferralInputImpl(
      {required this.referralCodeId,
      required this.referredUserId,
      this.status = ReferralStatus.signedUp,
      this.referrerRewardAmount,
      this.refereeRewardAmount,
      this.referrerRewardPaidAt,
      this.refereeRewardPaidAt,
      this.qualifiedAt,
      this.qualifyingAction});

  factory _$CreateReferralInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReferralInputImplFromJson(json);

  @override
  final String referralCodeId;
  @override
  final String referredUserId;
  @override
  @JsonKey()
  final ReferralStatus status;
  @override
  final int? referrerRewardAmount;
  @override
  final int? refereeRewardAmount;
  @override
  final DateTime? referrerRewardPaidAt;
  @override
  final DateTime? refereeRewardPaidAt;
  @override
  final DateTime? qualifiedAt;
  @override
  final String? qualifyingAction;

  @override
  String toString() {
    return 'CreateReferralInput(referralCodeId: $referralCodeId, referredUserId: $referredUserId, status: $status, referrerRewardAmount: $referrerRewardAmount, refereeRewardAmount: $refereeRewardAmount, referrerRewardPaidAt: $referrerRewardPaidAt, refereeRewardPaidAt: $refereeRewardPaidAt, qualifiedAt: $qualifiedAt, qualifyingAction: $qualifyingAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReferralInputImpl &&
            (identical(other.referralCodeId, referralCodeId) ||
                other.referralCodeId == referralCodeId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referrerRewardAmount, referrerRewardAmount) ||
                other.referrerRewardAmount == referrerRewardAmount) &&
            (identical(other.refereeRewardAmount, refereeRewardAmount) ||
                other.refereeRewardAmount == refereeRewardAmount) &&
            (identical(other.referrerRewardPaidAt, referrerRewardPaidAt) ||
                other.referrerRewardPaidAt == referrerRewardPaidAt) &&
            (identical(other.refereeRewardPaidAt, refereeRewardPaidAt) ||
                other.refereeRewardPaidAt == refereeRewardPaidAt) &&
            (identical(other.qualifiedAt, qualifiedAt) ||
                other.qualifiedAt == qualifiedAt) &&
            (identical(other.qualifyingAction, qualifyingAction) ||
                other.qualifyingAction == qualifyingAction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      referralCodeId,
      referredUserId,
      status,
      referrerRewardAmount,
      refereeRewardAmount,
      referrerRewardPaidAt,
      refereeRewardPaidAt,
      qualifiedAt,
      qualifyingAction);

  /// Create a copy of CreateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReferralInputImplCopyWith<_$CreateReferralInputImpl> get copyWith =>
      __$$CreateReferralInputImplCopyWithImpl<_$CreateReferralInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReferralInputImplToJson(
      this,
    );
  }
}

abstract class _CreateReferralInput implements CreateReferralInput {
  const factory _CreateReferralInput(
      {required final String referralCodeId,
      required final String referredUserId,
      final ReferralStatus status,
      final int? referrerRewardAmount,
      final int? refereeRewardAmount,
      final DateTime? referrerRewardPaidAt,
      final DateTime? refereeRewardPaidAt,
      final DateTime? qualifiedAt,
      final String? qualifyingAction}) = _$CreateReferralInputImpl;

  factory _CreateReferralInput.fromJson(Map<String, dynamic> json) =
      _$CreateReferralInputImpl.fromJson;

  @override
  String get referralCodeId;
  @override
  String get referredUserId;
  @override
  ReferralStatus get status;
  @override
  int? get referrerRewardAmount;
  @override
  int? get refereeRewardAmount;
  @override
  DateTime? get referrerRewardPaidAt;
  @override
  DateTime? get refereeRewardPaidAt;
  @override
  DateTime? get qualifiedAt;
  @override
  String? get qualifyingAction;

  /// Create a copy of CreateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReferralInputImplCopyWith<_$CreateReferralInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateReferralInput _$UpdateReferralInputFromJson(Map<String, dynamic> json) {
  return _UpdateReferralInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateReferralInput {
  String? get referralCodeId => throw _privateConstructorUsedError;
  String? get referredUserId => throw _privateConstructorUsedError;
  ReferralStatus? get status => throw _privateConstructorUsedError;
  int? get referrerRewardAmount => throw _privateConstructorUsedError;
  int? get refereeRewardAmount => throw _privateConstructorUsedError;
  DateTime? get referrerRewardPaidAt => throw _privateConstructorUsedError;
  DateTime? get refereeRewardPaidAt => throw _privateConstructorUsedError;
  DateTime? get qualifiedAt => throw _privateConstructorUsedError;
  String? get qualifyingAction => throw _privateConstructorUsedError;

  /// Serializes this UpdateReferralInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReferralInputCopyWith<UpdateReferralInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReferralInputCopyWith<$Res> {
  factory $UpdateReferralInputCopyWith(
          UpdateReferralInput value, $Res Function(UpdateReferralInput) then) =
      _$UpdateReferralInputCopyWithImpl<$Res, UpdateReferralInput>;
  @useResult
  $Res call(
      {String? referralCodeId,
      String? referredUserId,
      ReferralStatus? status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime? qualifiedAt,
      String? qualifyingAction});
}

/// @nodoc
class _$UpdateReferralInputCopyWithImpl<$Res, $Val extends UpdateReferralInput>
    implements $UpdateReferralInputCopyWith<$Res> {
  _$UpdateReferralInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? status = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
  }) {
    return _then(_value.copyWith(
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateReferralInputImplCopyWith<$Res>
    implements $UpdateReferralInputCopyWith<$Res> {
  factory _$$UpdateReferralInputImplCopyWith(_$UpdateReferralInputImpl value,
          $Res Function(_$UpdateReferralInputImpl) then) =
      __$$UpdateReferralInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? referralCodeId,
      String? referredUserId,
      ReferralStatus? status,
      int? referrerRewardAmount,
      int? refereeRewardAmount,
      DateTime? referrerRewardPaidAt,
      DateTime? refereeRewardPaidAt,
      DateTime? qualifiedAt,
      String? qualifyingAction});
}

/// @nodoc
class __$$UpdateReferralInputImplCopyWithImpl<$Res>
    extends _$UpdateReferralInputCopyWithImpl<$Res, _$UpdateReferralInputImpl>
    implements _$$UpdateReferralInputImplCopyWith<$Res> {
  __$$UpdateReferralInputImplCopyWithImpl(_$UpdateReferralInputImpl _value,
      $Res Function(_$UpdateReferralInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? status = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
  }) {
    return _then(_$UpdateReferralInputImpl(
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateReferralInputImpl implements _UpdateReferralInput {
  const _$UpdateReferralInputImpl(
      {this.referralCodeId,
      this.referredUserId,
      this.status,
      this.referrerRewardAmount,
      this.refereeRewardAmount,
      this.referrerRewardPaidAt,
      this.refereeRewardPaidAt,
      this.qualifiedAt,
      this.qualifyingAction});

  factory _$UpdateReferralInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateReferralInputImplFromJson(json);

  @override
  final String? referralCodeId;
  @override
  final String? referredUserId;
  @override
  final ReferralStatus? status;
  @override
  final int? referrerRewardAmount;
  @override
  final int? refereeRewardAmount;
  @override
  final DateTime? referrerRewardPaidAt;
  @override
  final DateTime? refereeRewardPaidAt;
  @override
  final DateTime? qualifiedAt;
  @override
  final String? qualifyingAction;

  @override
  String toString() {
    return 'UpdateReferralInput(referralCodeId: $referralCodeId, referredUserId: $referredUserId, status: $status, referrerRewardAmount: $referrerRewardAmount, refereeRewardAmount: $refereeRewardAmount, referrerRewardPaidAt: $referrerRewardPaidAt, refereeRewardPaidAt: $refereeRewardPaidAt, qualifiedAt: $qualifiedAt, qualifyingAction: $qualifyingAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReferralInputImpl &&
            (identical(other.referralCodeId, referralCodeId) ||
                other.referralCodeId == referralCodeId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referrerRewardAmount, referrerRewardAmount) ||
                other.referrerRewardAmount == referrerRewardAmount) &&
            (identical(other.refereeRewardAmount, refereeRewardAmount) ||
                other.refereeRewardAmount == refereeRewardAmount) &&
            (identical(other.referrerRewardPaidAt, referrerRewardPaidAt) ||
                other.referrerRewardPaidAt == referrerRewardPaidAt) &&
            (identical(other.refereeRewardPaidAt, refereeRewardPaidAt) ||
                other.refereeRewardPaidAt == refereeRewardPaidAt) &&
            (identical(other.qualifiedAt, qualifiedAt) ||
                other.qualifiedAt == qualifiedAt) &&
            (identical(other.qualifyingAction, qualifyingAction) ||
                other.qualifyingAction == qualifyingAction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      referralCodeId,
      referredUserId,
      status,
      referrerRewardAmount,
      refereeRewardAmount,
      referrerRewardPaidAt,
      refereeRewardPaidAt,
      qualifiedAt,
      qualifyingAction);

  /// Create a copy of UpdateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReferralInputImplCopyWith<_$UpdateReferralInputImpl> get copyWith =>
      __$$UpdateReferralInputImplCopyWithImpl<_$UpdateReferralInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateReferralInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateReferralInput implements UpdateReferralInput {
  const factory _UpdateReferralInput(
      {final String? referralCodeId,
      final String? referredUserId,
      final ReferralStatus? status,
      final int? referrerRewardAmount,
      final int? refereeRewardAmount,
      final DateTime? referrerRewardPaidAt,
      final DateTime? refereeRewardPaidAt,
      final DateTime? qualifiedAt,
      final String? qualifyingAction}) = _$UpdateReferralInputImpl;

  factory _UpdateReferralInput.fromJson(Map<String, dynamic> json) =
      _$UpdateReferralInputImpl.fromJson;

  @override
  String? get referralCodeId;
  @override
  String? get referredUserId;
  @override
  ReferralStatus? get status;
  @override
  int? get referrerRewardAmount;
  @override
  int? get refereeRewardAmount;
  @override
  DateTime? get referrerRewardPaidAt;
  @override
  DateTime? get refereeRewardPaidAt;
  @override
  DateTime? get qualifiedAt;
  @override
  String? get qualifyingAction;

  /// Create a copy of UpdateReferralInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReferralInputImplCopyWith<_$UpdateReferralInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralWhereUniqueInput _$ReferralWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get referredUserId => throw _privateConstructorUsedError;

  /// Serializes this ReferralWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralWhereUniqueInputCopyWith<ReferralWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralWhereUniqueInputCopyWith<$Res> {
  factory $ReferralWhereUniqueInputCopyWith(ReferralWhereUniqueInput value,
          $Res Function(ReferralWhereUniqueInput) then) =
      _$ReferralWhereUniqueInputCopyWithImpl<$Res, ReferralWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? referredUserId});
}

/// @nodoc
class _$ReferralWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ReferralWhereUniqueInput>
    implements $ReferralWhereUniqueInputCopyWith<$Res> {
  _$ReferralWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referredUserId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralWhereUniqueInputImplCopyWith<$Res>
    implements $ReferralWhereUniqueInputCopyWith<$Res> {
  factory _$$ReferralWhereUniqueInputImplCopyWith(
          _$ReferralWhereUniqueInputImpl value,
          $Res Function(_$ReferralWhereUniqueInputImpl) then) =
      __$$ReferralWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? referredUserId});
}

/// @nodoc
class __$$ReferralWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ReferralWhereUniqueInputCopyWithImpl<$Res,
        _$ReferralWhereUniqueInputImpl>
    implements _$$ReferralWhereUniqueInputImplCopyWith<$Res> {
  __$$ReferralWhereUniqueInputImplCopyWithImpl(
      _$ReferralWhereUniqueInputImpl _value,
      $Res Function(_$ReferralWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referredUserId = freezed,
  }) {
    return _then(_$ReferralWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralWhereUniqueInputImpl implements _ReferralWhereUniqueInput {
  const _$ReferralWhereUniqueInputImpl({this.id, this.referredUserId});

  factory _$ReferralWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? referredUserId;

  @override
  String toString() {
    return 'ReferralWhereUniqueInput(id: $id, referredUserId: $referredUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, referredUserId);

  /// Create a copy of ReferralWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralWhereUniqueInputImplCopyWith<_$ReferralWhereUniqueInputImpl>
      get copyWith => __$$ReferralWhereUniqueInputImplCopyWithImpl<
          _$ReferralWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralWhereUniqueInput implements ReferralWhereUniqueInput {
  const factory _ReferralWhereUniqueInput(
      {final String? id,
      final String? referredUserId}) = _$ReferralWhereUniqueInputImpl;

  factory _ReferralWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ReferralWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get referredUserId;

  /// Create a copy of ReferralWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralWhereUniqueInputImplCopyWith<_$ReferralWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralWhereInput _$ReferralWhereInputFromJson(Map<String, dynamic> json) {
  return _ReferralWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get referralCodeId => throw _privateConstructorUsedError;
  StringFilter? get referredUserId => throw _privateConstructorUsedError;
  ReferralStatusFilter? get status => throw _privateConstructorUsedError;
  IntFilter? get referrerRewardAmount => throw _privateConstructorUsedError;
  IntFilter? get refereeRewardAmount => throw _privateConstructorUsedError;
  DateTimeFilter? get referrerRewardPaidAt =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get refereeRewardPaidAt => throw _privateConstructorUsedError;
  DateTimeFilter? get signedUpAt => throw _privateConstructorUsedError;
  DateTimeFilter? get qualifiedAt => throw _privateConstructorUsedError;
  StringFilter? get qualifyingAction => throw _privateConstructorUsedError;

  /// Filter by referralCode relation
  ReferralCodeRelationFilter? get referralCode =>
      throw _privateConstructorUsedError;

  /// Filter by referredUser relation
  UserRelationFilter? get referredUser => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ReferralWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ReferralWhereInput>? get OR => throw _privateConstructorUsedError;
  ReferralWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ReferralWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralWhereInputCopyWith<ReferralWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralWhereInputCopyWith<$Res> {
  factory $ReferralWhereInputCopyWith(
          ReferralWhereInput value, $Res Function(ReferralWhereInput) then) =
      _$ReferralWhereInputCopyWithImpl<$Res, ReferralWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? referralCodeId,
      StringFilter? referredUserId,
      ReferralStatusFilter? status,
      IntFilter? referrerRewardAmount,
      IntFilter? refereeRewardAmount,
      DateTimeFilter? referrerRewardPaidAt,
      DateTimeFilter? refereeRewardPaidAt,
      DateTimeFilter? signedUpAt,
      DateTimeFilter? qualifiedAt,
      StringFilter? qualifyingAction,
      ReferralCodeRelationFilter? referralCode,
      UserRelationFilter? referredUser,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ReferralWhereInput>? AND,
      List<ReferralWhereInput>? OR,
      ReferralWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get referralCodeId;
  $StringFilterCopyWith<$Res>? get referredUserId;
  $ReferralStatusFilterCopyWith<$Res>? get status;
  $IntFilterCopyWith<$Res>? get referrerRewardAmount;
  $IntFilterCopyWith<$Res>? get refereeRewardAmount;
  $DateTimeFilterCopyWith<$Res>? get referrerRewardPaidAt;
  $DateTimeFilterCopyWith<$Res>? get refereeRewardPaidAt;
  $DateTimeFilterCopyWith<$Res>? get signedUpAt;
  $DateTimeFilterCopyWith<$Res>? get qualifiedAt;
  $StringFilterCopyWith<$Res>? get qualifyingAction;
  $ReferralCodeRelationFilterCopyWith<$Res>? get referralCode;
  $UserRelationFilterCopyWith<$Res>? get referredUser;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ReferralWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ReferralWhereInputCopyWithImpl<$Res, $Val extends ReferralWhereInput>
    implements $ReferralWhereInputCopyWith<$Res> {
  _$ReferralWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? status = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? referralCode = freezed,
    Object? referredUser = freezed,
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
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatusFilter?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      signedUpAt: freezed == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCodeRelationFilter?,
      referredUser: freezed == referredUser
          ? _value.referredUser
          : referredUser // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
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
              as List<ReferralWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralWhereInput
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

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get referralCodeId {
    if (_value.referralCodeId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.referralCodeId!, (value) {
      return _then(_value.copyWith(referralCodeId: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get referredUserId {
    if (_value.referredUserId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.referredUserId!, (value) {
      return _then(_value.copyWith(referredUserId: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ReferralStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get referrerRewardAmount {
    if (_value.referrerRewardAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.referrerRewardAmount!, (value) {
      return _then(_value.copyWith(referrerRewardAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get refereeRewardAmount {
    if (_value.refereeRewardAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.refereeRewardAmount!, (value) {
      return _then(_value.copyWith(refereeRewardAmount: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get referrerRewardPaidAt {
    if (_value.referrerRewardPaidAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.referrerRewardPaidAt!, (value) {
      return _then(_value.copyWith(referrerRewardPaidAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get refereeRewardPaidAt {
    if (_value.refereeRewardPaidAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.refereeRewardPaidAt!, (value) {
      return _then(_value.copyWith(refereeRewardPaidAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get signedUpAt {
    if (_value.signedUpAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.signedUpAt!, (value) {
      return _then(_value.copyWith(signedUpAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get qualifiedAt {
    if (_value.qualifiedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.qualifiedAt!, (value) {
      return _then(_value.copyWith(qualifiedAt: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get qualifyingAction {
    if (_value.qualifyingAction == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.qualifyingAction!, (value) {
      return _then(_value.copyWith(qualifyingAction: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeRelationFilterCopyWith<$Res>? get referralCode {
    if (_value.referralCode == null) {
      return null;
    }

    return $ReferralCodeRelationFilterCopyWith<$Res>(_value.referralCode!,
        (value) {
      return _then(_value.copyWith(referralCode: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get referredUser {
    if (_value.referredUser == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.referredUser!, (value) {
      return _then(_value.copyWith(referredUser: value) as $Val);
    });
  }

  /// Create a copy of ReferralWhereInput
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

  /// Create a copy of ReferralWhereInput
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

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralWhereInputImplCopyWith<$Res>
    implements $ReferralWhereInputCopyWith<$Res> {
  factory _$$ReferralWhereInputImplCopyWith(_$ReferralWhereInputImpl value,
          $Res Function(_$ReferralWhereInputImpl) then) =
      __$$ReferralWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? referralCodeId,
      StringFilter? referredUserId,
      ReferralStatusFilter? status,
      IntFilter? referrerRewardAmount,
      IntFilter? refereeRewardAmount,
      DateTimeFilter? referrerRewardPaidAt,
      DateTimeFilter? refereeRewardPaidAt,
      DateTimeFilter? signedUpAt,
      DateTimeFilter? qualifiedAt,
      StringFilter? qualifyingAction,
      ReferralCodeRelationFilter? referralCode,
      UserRelationFilter? referredUser,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ReferralWhereInput>? AND,
      List<ReferralWhereInput>? OR,
      ReferralWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get referralCodeId;
  @override
  $StringFilterCopyWith<$Res>? get referredUserId;
  @override
  $ReferralStatusFilterCopyWith<$Res>? get status;
  @override
  $IntFilterCopyWith<$Res>? get referrerRewardAmount;
  @override
  $IntFilterCopyWith<$Res>? get refereeRewardAmount;
  @override
  $DateTimeFilterCopyWith<$Res>? get referrerRewardPaidAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get refereeRewardPaidAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get signedUpAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get qualifiedAt;
  @override
  $StringFilterCopyWith<$Res>? get qualifyingAction;
  @override
  $ReferralCodeRelationFilterCopyWith<$Res>? get referralCode;
  @override
  $UserRelationFilterCopyWith<$Res>? get referredUser;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ReferralWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ReferralWhereInputImplCopyWithImpl<$Res>
    extends _$ReferralWhereInputCopyWithImpl<$Res, _$ReferralWhereInputImpl>
    implements _$$ReferralWhereInputImplCopyWith<$Res> {
  __$$ReferralWhereInputImplCopyWithImpl(_$ReferralWhereInputImpl _value,
      $Res Function(_$ReferralWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? status = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? referralCode = freezed,
    Object? referredUser = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ReferralWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatusFilter?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      signedUpAt: freezed == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCodeRelationFilter?,
      referredUser: freezed == referredUser
          ? _value.referredUser
          : referredUser // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
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
              as List<ReferralWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ReferralWhereInputImpl implements _ReferralWhereInput {
  const _$ReferralWhereInputImpl(
      {this.id,
      this.referralCodeId,
      this.referredUserId,
      this.status,
      this.referrerRewardAmount,
      this.refereeRewardAmount,
      this.referrerRewardPaidAt,
      this.refereeRewardPaidAt,
      this.signedUpAt,
      this.qualifiedAt,
      this.qualifyingAction,
      this.referralCode,
      this.referredUser,
      this.createdAt,
      this.updatedAt,
      final List<ReferralWhereInput>? AND,
      final List<ReferralWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ReferralWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? referralCodeId;
  @override
  final StringFilter? referredUserId;
  @override
  final ReferralStatusFilter? status;
  @override
  final IntFilter? referrerRewardAmount;
  @override
  final IntFilter? refereeRewardAmount;
  @override
  final DateTimeFilter? referrerRewardPaidAt;
  @override
  final DateTimeFilter? refereeRewardPaidAt;
  @override
  final DateTimeFilter? signedUpAt;
  @override
  final DateTimeFilter? qualifiedAt;
  @override
  final StringFilter? qualifyingAction;

  /// Filter by referralCode relation
  @override
  final ReferralCodeRelationFilter? referralCode;

  /// Filter by referredUser relation
  @override
  final UserRelationFilter? referredUser;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ReferralWhereInput>? _AND;
  @override
  List<ReferralWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReferralWhereInput>? _OR;
  @override
  List<ReferralWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReferralWhereInput? NOT;

  @override
  String toString() {
    return 'ReferralWhereInput(id: $id, referralCodeId: $referralCodeId, referredUserId: $referredUserId, status: $status, referrerRewardAmount: $referrerRewardAmount, refereeRewardAmount: $refereeRewardAmount, referrerRewardPaidAt: $referrerRewardPaidAt, refereeRewardPaidAt: $refereeRewardPaidAt, signedUpAt: $signedUpAt, qualifiedAt: $qualifiedAt, qualifyingAction: $qualifyingAction, referralCode: $referralCode, referredUser: $referredUser, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referralCodeId, referralCodeId) ||
                other.referralCodeId == referralCodeId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referrerRewardAmount, referrerRewardAmount) ||
                other.referrerRewardAmount == referrerRewardAmount) &&
            (identical(other.refereeRewardAmount, refereeRewardAmount) ||
                other.refereeRewardAmount == refereeRewardAmount) &&
            (identical(other.referrerRewardPaidAt, referrerRewardPaidAt) ||
                other.referrerRewardPaidAt == referrerRewardPaidAt) &&
            (identical(other.refereeRewardPaidAt, refereeRewardPaidAt) ||
                other.refereeRewardPaidAt == refereeRewardPaidAt) &&
            (identical(other.signedUpAt, signedUpAt) ||
                other.signedUpAt == signedUpAt) &&
            (identical(other.qualifiedAt, qualifiedAt) ||
                other.qualifiedAt == qualifiedAt) &&
            (identical(other.qualifyingAction, qualifyingAction) ||
                other.qualifyingAction == qualifyingAction) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referredUser, referredUser) ||
                other.referredUser == referredUser) &&
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
      referralCodeId,
      referredUserId,
      status,
      referrerRewardAmount,
      refereeRewardAmount,
      referrerRewardPaidAt,
      refereeRewardPaidAt,
      signedUpAt,
      qualifiedAt,
      qualifyingAction,
      referralCode,
      referredUser,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralWhereInputImplCopyWith<_$ReferralWhereInputImpl> get copyWith =>
      __$$ReferralWhereInputImplCopyWithImpl<_$ReferralWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralWhereInput implements ReferralWhereInput {
  const factory _ReferralWhereInput(
      {final StringFilter? id,
      final StringFilter? referralCodeId,
      final StringFilter? referredUserId,
      final ReferralStatusFilter? status,
      final IntFilter? referrerRewardAmount,
      final IntFilter? refereeRewardAmount,
      final DateTimeFilter? referrerRewardPaidAt,
      final DateTimeFilter? refereeRewardPaidAt,
      final DateTimeFilter? signedUpAt,
      final DateTimeFilter? qualifiedAt,
      final StringFilter? qualifyingAction,
      final ReferralCodeRelationFilter? referralCode,
      final UserRelationFilter? referredUser,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ReferralWhereInput>? AND,
      final List<ReferralWhereInput>? OR,
      final ReferralWhereInput? NOT}) = _$ReferralWhereInputImpl;

  factory _ReferralWhereInput.fromJson(Map<String, dynamic> json) =
      _$ReferralWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get referralCodeId;
  @override
  StringFilter? get referredUserId;
  @override
  ReferralStatusFilter? get status;
  @override
  IntFilter? get referrerRewardAmount;
  @override
  IntFilter? get refereeRewardAmount;
  @override
  DateTimeFilter? get referrerRewardPaidAt;
  @override
  DateTimeFilter? get refereeRewardPaidAt;
  @override
  DateTimeFilter? get signedUpAt;
  @override
  DateTimeFilter? get qualifiedAt;
  @override
  StringFilter? get qualifyingAction;

  /// Filter by referralCode relation
  @override
  ReferralCodeRelationFilter? get referralCode;

  /// Filter by referredUser relation
  @override
  UserRelationFilter? get referredUser;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ReferralWhereInput>? get AND;
  @override
  List<ReferralWhereInput>? get OR;
  @override
  ReferralWhereInput? get NOT;

  /// Create a copy of ReferralWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralWhereInputImplCopyWith<_$ReferralWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralListRelationFilter _$ReferralListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralListRelationFilter {
  /// At least one related record matches
  ReferralWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ReferralWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ReferralWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ReferralListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralListRelationFilterCopyWith<ReferralListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralListRelationFilterCopyWith<$Res> {
  factory $ReferralListRelationFilterCopyWith(ReferralListRelationFilter value,
          $Res Function(ReferralListRelationFilter) then) =
      _$ReferralListRelationFilterCopyWithImpl<$Res,
          ReferralListRelationFilter>;
  @useResult
  $Res call(
      {ReferralWhereInput? some,
      ReferralWhereInput? every,
      ReferralWhereInput? none});

  $ReferralWhereInputCopyWith<$Res>? get some;
  $ReferralWhereInputCopyWith<$Res>? get every;
  $ReferralWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ReferralListRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralListRelationFilter>
    implements $ReferralListRelationFilterCopyWith<$Res> {
  _$ReferralListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralListRelationFilter
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
              as ReferralWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralListRelationFilterImplCopyWith<$Res>
    implements $ReferralListRelationFilterCopyWith<$Res> {
  factory _$$ReferralListRelationFilterImplCopyWith(
          _$ReferralListRelationFilterImpl value,
          $Res Function(_$ReferralListRelationFilterImpl) then) =
      __$$ReferralListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReferralWhereInput? some,
      ReferralWhereInput? every,
      ReferralWhereInput? none});

  @override
  $ReferralWhereInputCopyWith<$Res>? get some;
  @override
  $ReferralWhereInputCopyWith<$Res>? get every;
  @override
  $ReferralWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ReferralListRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralListRelationFilterCopyWithImpl<$Res,
        _$ReferralListRelationFilterImpl>
    implements _$$ReferralListRelationFilterImplCopyWith<$Res> {
  __$$ReferralListRelationFilterImplCopyWithImpl(
      _$ReferralListRelationFilterImpl _value,
      $Res Function(_$ReferralListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ReferralListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralListRelationFilterImpl implements _ReferralListRelationFilter {
  const _$ReferralListRelationFilterImpl({this.some, this.every, this.none});

  factory _$ReferralListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ReferralWhereInput? some;

  /// All related records match
  @override
  final ReferralWhereInput? every;

  /// No related records match
  @override
  final ReferralWhereInput? none;

  @override
  String toString() {
    return 'ReferralListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralListRelationFilterImplCopyWith<_$ReferralListRelationFilterImpl>
      get copyWith => __$$ReferralListRelationFilterImplCopyWithImpl<
          _$ReferralListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralListRelationFilter
    implements ReferralListRelationFilter {
  const factory _ReferralListRelationFilter(
      {final ReferralWhereInput? some,
      final ReferralWhereInput? every,
      final ReferralWhereInput? none}) = _$ReferralListRelationFilterImpl;

  factory _ReferralListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ReferralWhereInput? get some;

  /// All related records match
  @override
  ReferralWhereInput? get every;

  /// No related records match
  @override
  ReferralWhereInput? get none;

  /// Create a copy of ReferralListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralListRelationFilterImplCopyWith<_$ReferralListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralRelationFilter _$ReferralRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ReferralWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ReferralWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ReferralRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralRelationFilterCopyWith<ReferralRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralRelationFilterCopyWith<$Res> {
  factory $ReferralRelationFilterCopyWith(ReferralRelationFilter value,
          $Res Function(ReferralRelationFilter) then) =
      _$ReferralRelationFilterCopyWithImpl<$Res, ReferralRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralWhereInput? is_,
      ReferralWhereInput? isNot});

  $ReferralWhereInputCopyWith<$Res>? get is_;
  $ReferralWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ReferralRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralRelationFilter>
    implements $ReferralRelationFilterCopyWith<$Res> {
  _$ReferralRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralRelationFilter
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
              as ReferralWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ReferralWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralRelationFilterImplCopyWith<$Res>
    implements $ReferralRelationFilterCopyWith<$Res> {
  factory _$$ReferralRelationFilterImplCopyWith(
          _$ReferralRelationFilterImpl value,
          $Res Function(_$ReferralRelationFilterImpl) then) =
      __$$ReferralRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralWhereInput? is_,
      ReferralWhereInput? isNot});

  @override
  $ReferralWhereInputCopyWith<$Res>? get is_;
  @override
  $ReferralWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ReferralRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralRelationFilterCopyWithImpl<$Res,
        _$ReferralRelationFilterImpl>
    implements _$$ReferralRelationFilterImplCopyWith<$Res> {
  __$$ReferralRelationFilterImplCopyWithImpl(
      _$ReferralRelationFilterImpl _value,
      $Res Function(_$ReferralRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ReferralRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralRelationFilterImpl implements _ReferralRelationFilter {
  const _$ReferralRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ReferralRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ReferralWhereInput? is_;

  /// Related record does not match
  @override
  final ReferralWhereInput? isNot;

  @override
  String toString() {
    return 'ReferralRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralRelationFilterImplCopyWith<_$ReferralRelationFilterImpl>
      get copyWith => __$$ReferralRelationFilterImplCopyWithImpl<
          _$ReferralRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralRelationFilter implements ReferralRelationFilter {
  const factory _ReferralRelationFilter(
      {@JsonKey(name: 'is') final ReferralWhereInput? is_,
      final ReferralWhereInput? isNot}) = _$ReferralRelationFilterImpl;

  factory _ReferralRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ReferralWhereInput? get is_;

  /// Related record does not match
  @override
  ReferralWhereInput? get isNot;

  /// Create a copy of ReferralRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralRelationFilterImplCopyWith<_$ReferralRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralOrderByInput _$ReferralOrderByInputFromJson(Map<String, dynamic> json) {
  return _ReferralOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get referralCodeId => throw _privateConstructorUsedError;
  SortOrder? get referredUserId => throw _privateConstructorUsedError;
  SortOrder? get referrerRewardAmount => throw _privateConstructorUsedError;
  SortOrder? get refereeRewardAmount => throw _privateConstructorUsedError;
  SortOrder? get referrerRewardPaidAt => throw _privateConstructorUsedError;
  SortOrder? get refereeRewardPaidAt => throw _privateConstructorUsedError;
  SortOrder? get signedUpAt => throw _privateConstructorUsedError;
  SortOrder? get qualifiedAt => throw _privateConstructorUsedError;
  SortOrder? get qualifyingAction => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralOrderByInputCopyWith<ReferralOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralOrderByInputCopyWith<$Res> {
  factory $ReferralOrderByInputCopyWith(ReferralOrderByInput value,
          $Res Function(ReferralOrderByInput) then) =
      _$ReferralOrderByInputCopyWithImpl<$Res, ReferralOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? referralCodeId,
      SortOrder? referredUserId,
      SortOrder? referrerRewardAmount,
      SortOrder? refereeRewardAmount,
      SortOrder? referrerRewardPaidAt,
      SortOrder? refereeRewardPaidAt,
      SortOrder? signedUpAt,
      SortOrder? qualifiedAt,
      SortOrder? qualifyingAction,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ReferralOrderByInputCopyWithImpl<$Res,
        $Val extends ReferralOrderByInput>
    implements $ReferralOrderByInputCopyWith<$Res> {
  _$ReferralOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      signedUpAt: freezed == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ReferralOrderByInputImplCopyWith<$Res>
    implements $ReferralOrderByInputCopyWith<$Res> {
  factory _$$ReferralOrderByInputImplCopyWith(_$ReferralOrderByInputImpl value,
          $Res Function(_$ReferralOrderByInputImpl) then) =
      __$$ReferralOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? referralCodeId,
      SortOrder? referredUserId,
      SortOrder? referrerRewardAmount,
      SortOrder? refereeRewardAmount,
      SortOrder? referrerRewardPaidAt,
      SortOrder? refereeRewardPaidAt,
      SortOrder? signedUpAt,
      SortOrder? qualifiedAt,
      SortOrder? qualifyingAction,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ReferralOrderByInputImplCopyWithImpl<$Res>
    extends _$ReferralOrderByInputCopyWithImpl<$Res, _$ReferralOrderByInputImpl>
    implements _$$ReferralOrderByInputImplCopyWith<$Res> {
  __$$ReferralOrderByInputImplCopyWithImpl(_$ReferralOrderByInputImpl _value,
      $Res Function(_$ReferralOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referralCodeId = freezed,
    Object? referredUserId = freezed,
    Object? referrerRewardAmount = freezed,
    Object? refereeRewardAmount = freezed,
    Object? referrerRewardPaidAt = freezed,
    Object? refereeRewardPaidAt = freezed,
    Object? signedUpAt = freezed,
    Object? qualifiedAt = freezed,
    Object? qualifyingAction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReferralOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referralCodeId: freezed == referralCodeId
          ? _value.referralCodeId
          : referralCodeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerRewardAmount: freezed == referrerRewardAmount
          ? _value.referrerRewardAmount
          : referrerRewardAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeRewardAmount: freezed == refereeRewardAmount
          ? _value.refereeRewardAmount
          : refereeRewardAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerRewardPaidAt: freezed == referrerRewardPaidAt
          ? _value.referrerRewardPaidAt
          : referrerRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeRewardPaidAt: freezed == refereeRewardPaidAt
          ? _value.refereeRewardPaidAt
          : refereeRewardPaidAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      signedUpAt: freezed == signedUpAt
          ? _value.signedUpAt
          : signedUpAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      qualifiedAt: freezed == qualifiedAt
          ? _value.qualifiedAt
          : qualifiedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      qualifyingAction: freezed == qualifyingAction
          ? _value.qualifyingAction
          : qualifyingAction // ignore: cast_nullable_to_non_nullable
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
class _$ReferralOrderByInputImpl implements _ReferralOrderByInput {
  const _$ReferralOrderByInputImpl(
      {this.id,
      this.referralCodeId,
      this.referredUserId,
      this.referrerRewardAmount,
      this.refereeRewardAmount,
      this.referrerRewardPaidAt,
      this.refereeRewardPaidAt,
      this.signedUpAt,
      this.qualifiedAt,
      this.qualifyingAction,
      this.createdAt,
      this.updatedAt});

  factory _$ReferralOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? referralCodeId;
  @override
  final SortOrder? referredUserId;
  @override
  final SortOrder? referrerRewardAmount;
  @override
  final SortOrder? refereeRewardAmount;
  @override
  final SortOrder? referrerRewardPaidAt;
  @override
  final SortOrder? refereeRewardPaidAt;
  @override
  final SortOrder? signedUpAt;
  @override
  final SortOrder? qualifiedAt;
  @override
  final SortOrder? qualifyingAction;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ReferralOrderByInput(id: $id, referralCodeId: $referralCodeId, referredUserId: $referredUserId, referrerRewardAmount: $referrerRewardAmount, refereeRewardAmount: $refereeRewardAmount, referrerRewardPaidAt: $referrerRewardPaidAt, refereeRewardPaidAt: $refereeRewardPaidAt, signedUpAt: $signedUpAt, qualifiedAt: $qualifiedAt, qualifyingAction: $qualifyingAction, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referralCodeId, referralCodeId) ||
                other.referralCodeId == referralCodeId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.referrerRewardAmount, referrerRewardAmount) ||
                other.referrerRewardAmount == referrerRewardAmount) &&
            (identical(other.refereeRewardAmount, refereeRewardAmount) ||
                other.refereeRewardAmount == refereeRewardAmount) &&
            (identical(other.referrerRewardPaidAt, referrerRewardPaidAt) ||
                other.referrerRewardPaidAt == referrerRewardPaidAt) &&
            (identical(other.refereeRewardPaidAt, refereeRewardPaidAt) ||
                other.refereeRewardPaidAt == refereeRewardPaidAt) &&
            (identical(other.signedUpAt, signedUpAt) ||
                other.signedUpAt == signedUpAt) &&
            (identical(other.qualifiedAt, qualifiedAt) ||
                other.qualifiedAt == qualifiedAt) &&
            (identical(other.qualifyingAction, qualifyingAction) ||
                other.qualifyingAction == qualifyingAction) &&
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
      referralCodeId,
      referredUserId,
      referrerRewardAmount,
      refereeRewardAmount,
      referrerRewardPaidAt,
      refereeRewardPaidAt,
      signedUpAt,
      qualifiedAt,
      qualifyingAction,
      createdAt,
      updatedAt);

  /// Create a copy of ReferralOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralOrderByInputImplCopyWith<_$ReferralOrderByInputImpl>
      get copyWith =>
          __$$ReferralOrderByInputImplCopyWithImpl<_$ReferralOrderByInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralOrderByInput implements ReferralOrderByInput {
  const factory _ReferralOrderByInput(
      {final SortOrder? id,
      final SortOrder? referralCodeId,
      final SortOrder? referredUserId,
      final SortOrder? referrerRewardAmount,
      final SortOrder? refereeRewardAmount,
      final SortOrder? referrerRewardPaidAt,
      final SortOrder? refereeRewardPaidAt,
      final SortOrder? signedUpAt,
      final SortOrder? qualifiedAt,
      final SortOrder? qualifyingAction,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ReferralOrderByInputImpl;

  factory _ReferralOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ReferralOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get referralCodeId;
  @override
  SortOrder? get referredUserId;
  @override
  SortOrder? get referrerRewardAmount;
  @override
  SortOrder? get refereeRewardAmount;
  @override
  SortOrder? get referrerRewardPaidAt;
  @override
  SortOrder? get refereeRewardPaidAt;
  @override
  SortOrder? get signedUpAt;
  @override
  SortOrder? get qualifiedAt;
  @override
  SortOrder? get qualifyingAction;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ReferralOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralOrderByInputImplCopyWith<_$ReferralOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
