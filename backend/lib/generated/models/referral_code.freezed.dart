// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferralCode _$ReferralCodeFromJson(Map<String, dynamic> json) {
  return _ReferralCode.fromJson(json);
}

/// @nodoc
mixin _$ReferralCode {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get customCode => throw _privateConstructorUsedError;
  int? get referrerReward => throw _privateConstructorUsedError;
  int? get refereeReward => throw _privateConstructorUsedError;
  int get totalReferrals => throw _privateConstructorUsedError;
  int get successfulReferrals => throw _privateConstructorUsedError;
  int get totalEarned => throw _privateConstructorUsedError;
  int get maxReferrals => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  List<Referral> get referrals => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeCopyWith<ReferralCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeCopyWith<$Res> {
  factory $ReferralCodeCopyWith(
          ReferralCode value, $Res Function(ReferralCode) then) =
      _$ReferralCodeCopyWithImpl<$Res, ReferralCode>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int totalReferrals,
      int successfulReferrals,
      int totalEarned,
      int maxReferrals,
      bool isActive,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      List<Referral> referrals,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReferralCodeCopyWithImpl<$Res, $Val extends ReferralCode>
    implements $ReferralCodeCopyWith<$Res> {
  _$ReferralCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? code = null,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = null,
    Object? successfulReferrals = null,
    Object? totalEarned = null,
    Object? maxReferrals = null,
    Object? isActive = null,
    Object? user = freezed,
    Object? referrals = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: null == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      successfulReferrals: null == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarned: null == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int,
      maxReferrals: null == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      referrals: null == referrals
          ? _value.referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
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

  /// Create a copy of ReferralCode
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
abstract class _$$ReferralCodeImplCopyWith<$Res>
    implements $ReferralCodeCopyWith<$Res> {
  factory _$$ReferralCodeImplCopyWith(
          _$ReferralCodeImpl value, $Res Function(_$ReferralCodeImpl) then) =
      __$$ReferralCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int totalReferrals,
      int successfulReferrals,
      int totalEarned,
      int maxReferrals,
      bool isActive,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      List<Referral> referrals,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ReferralCodeImplCopyWithImpl<$Res>
    extends _$ReferralCodeCopyWithImpl<$Res, _$ReferralCodeImpl>
    implements _$$ReferralCodeImplCopyWith<$Res> {
  __$$ReferralCodeImplCopyWithImpl(
      _$ReferralCodeImpl _value, $Res Function(_$ReferralCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? code = null,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = null,
    Object? successfulReferrals = null,
    Object? totalEarned = null,
    Object? maxReferrals = null,
    Object? isActive = null,
    Object? user = freezed,
    Object? referrals = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReferralCodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: null == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      successfulReferrals: null == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarned: null == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int,
      maxReferrals: null == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      referrals: null == referrals
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
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
class _$ReferralCodeImpl implements _ReferralCode {
  const _$ReferralCodeImpl(
      {required this.id,
      required this.userId,
      required this.code,
      this.customCode,
      this.referrerReward,
      this.refereeReward,
      this.totalReferrals = 0,
      this.successfulReferrals = 0,
      this.totalEarned = 0,
      this.maxReferrals = 50,
      this.isActive = true,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required final List<Referral> referrals,
      required this.createdAt,
      required this.updatedAt})
      : _referrals = referrals;

  factory _$ReferralCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCodeImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String code;
  @override
  final String? customCode;
  @override
  final int? referrerReward;
  @override
  final int? refereeReward;
  @override
  @JsonKey()
  final int totalReferrals;
  @override
  @JsonKey()
  final int successfulReferrals;
  @override
  @JsonKey()
  final int totalEarned;
  @override
  @JsonKey()
  final int maxReferrals;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  final List<Referral> _referrals;
  @override
  List<Referral> get referrals {
    if (_referrals is EqualUnmodifiableListView) return _referrals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referrals);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ReferralCode(id: $id, userId: $userId, code: $code, customCode: $customCode, referrerReward: $referrerReward, refereeReward: $refereeReward, totalReferrals: $totalReferrals, successfulReferrals: $successfulReferrals, totalEarned: $totalEarned, maxReferrals: $maxReferrals, isActive: $isActive, user: $user, referrals: $referrals, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.totalReferrals, totalReferrals) ||
                other.totalReferrals == totalReferrals) &&
            (identical(other.successfulReferrals, successfulReferrals) ||
                other.successfulReferrals == successfulReferrals) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.maxReferrals, maxReferrals) ||
                other.maxReferrals == maxReferrals) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals) &&
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
      userId,
      code,
      customCode,
      referrerReward,
      refereeReward,
      totalReferrals,
      successfulReferrals,
      totalEarned,
      maxReferrals,
      isActive,
      user,
      const DeepCollectionEquality().hash(_referrals),
      createdAt,
      updatedAt);

  /// Create a copy of ReferralCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeImplCopyWith<_$ReferralCodeImpl> get copyWith =>
      __$$ReferralCodeImplCopyWithImpl<_$ReferralCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeImplToJson(
      this,
    );
  }
}

abstract class _ReferralCode implements ReferralCode {
  const factory _ReferralCode(
      {required final String id,
      required final String userId,
      required final String code,
      final String? customCode,
      final int? referrerReward,
      final int? refereeReward,
      final int totalReferrals,
      final int successfulReferrals,
      final int totalEarned,
      final int maxReferrals,
      final bool isActive,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final List<Referral> referrals,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ReferralCodeImpl;

  factory _ReferralCode.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get code;
  @override
  String? get customCode;
  @override
  int? get referrerReward;
  @override
  int? get refereeReward;
  @override
  int get totalReferrals;
  @override
  int get successfulReferrals;
  @override
  int get totalEarned;
  @override
  int get maxReferrals;
  @override
  bool get isActive;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  List<Referral> get referrals;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ReferralCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeImplCopyWith<_$ReferralCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReferralCodeInput _$CreateReferralCodeInputFromJson(
    Map<String, dynamic> json) {
  return _CreateReferralCodeInput.fromJson(json);
}

/// @nodoc
mixin _$CreateReferralCodeInput {
  String get userId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get customCode => throw _privateConstructorUsedError;
  int? get referrerReward => throw _privateConstructorUsedError;
  int? get refereeReward => throw _privateConstructorUsedError;
  int? get totalReferrals => throw _privateConstructorUsedError;
  int? get successfulReferrals => throw _privateConstructorUsedError;
  int? get totalEarned => throw _privateConstructorUsedError;
  int? get maxReferrals => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this CreateReferralCodeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReferralCodeInputCopyWith<CreateReferralCodeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReferralCodeInputCopyWith<$Res> {
  factory $CreateReferralCodeInputCopyWith(CreateReferralCodeInput value,
          $Res Function(CreateReferralCodeInput) then) =
      _$CreateReferralCodeInputCopyWithImpl<$Res, CreateReferralCodeInput>;
  @useResult
  $Res call(
      {String userId,
      String code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int? totalReferrals,
      int? successfulReferrals,
      int? totalEarned,
      int? maxReferrals,
      bool? isActive});
}

/// @nodoc
class _$CreateReferralCodeInputCopyWithImpl<$Res,
        $Val extends CreateReferralCodeInput>
    implements $CreateReferralCodeInputCopyWith<$Res> {
  _$CreateReferralCodeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? code = null,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReferralCodeInputImplCopyWith<$Res>
    implements $CreateReferralCodeInputCopyWith<$Res> {
  factory _$$CreateReferralCodeInputImplCopyWith(
          _$CreateReferralCodeInputImpl value,
          $Res Function(_$CreateReferralCodeInputImpl) then) =
      __$$CreateReferralCodeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int? totalReferrals,
      int? successfulReferrals,
      int? totalEarned,
      int? maxReferrals,
      bool? isActive});
}

/// @nodoc
class __$$CreateReferralCodeInputImplCopyWithImpl<$Res>
    extends _$CreateReferralCodeInputCopyWithImpl<$Res,
        _$CreateReferralCodeInputImpl>
    implements _$$CreateReferralCodeInputImplCopyWith<$Res> {
  __$$CreateReferralCodeInputImplCopyWithImpl(
      _$CreateReferralCodeInputImpl _value,
      $Res Function(_$CreateReferralCodeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? code = null,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$CreateReferralCodeInputImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReferralCodeInputImpl implements _CreateReferralCodeInput {
  const _$CreateReferralCodeInputImpl(
      {required this.userId,
      required this.code,
      this.customCode,
      this.referrerReward,
      this.refereeReward,
      this.totalReferrals = 0,
      this.successfulReferrals = 0,
      this.totalEarned = 0,
      this.maxReferrals = 50,
      this.isActive = true});

  factory _$CreateReferralCodeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReferralCodeInputImplFromJson(json);

  @override
  final String userId;
  @override
  final String code;
  @override
  final String? customCode;
  @override
  final int? referrerReward;
  @override
  final int? refereeReward;
  @override
  @JsonKey()
  final int? totalReferrals;
  @override
  @JsonKey()
  final int? successfulReferrals;
  @override
  @JsonKey()
  final int? totalEarned;
  @override
  @JsonKey()
  final int? maxReferrals;
  @override
  @JsonKey()
  final bool? isActive;

  @override
  String toString() {
    return 'CreateReferralCodeInput(userId: $userId, code: $code, customCode: $customCode, referrerReward: $referrerReward, refereeReward: $refereeReward, totalReferrals: $totalReferrals, successfulReferrals: $successfulReferrals, totalEarned: $totalEarned, maxReferrals: $maxReferrals, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReferralCodeInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.totalReferrals, totalReferrals) ||
                other.totalReferrals == totalReferrals) &&
            (identical(other.successfulReferrals, successfulReferrals) ||
                other.successfulReferrals == successfulReferrals) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.maxReferrals, maxReferrals) ||
                other.maxReferrals == maxReferrals) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      code,
      customCode,
      referrerReward,
      refereeReward,
      totalReferrals,
      successfulReferrals,
      totalEarned,
      maxReferrals,
      isActive);

  /// Create a copy of CreateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReferralCodeInputImplCopyWith<_$CreateReferralCodeInputImpl>
      get copyWith => __$$CreateReferralCodeInputImplCopyWithImpl<
          _$CreateReferralCodeInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReferralCodeInputImplToJson(
      this,
    );
  }
}

abstract class _CreateReferralCodeInput implements CreateReferralCodeInput {
  const factory _CreateReferralCodeInput(
      {required final String userId,
      required final String code,
      final String? customCode,
      final int? referrerReward,
      final int? refereeReward,
      final int? totalReferrals,
      final int? successfulReferrals,
      final int? totalEarned,
      final int? maxReferrals,
      final bool? isActive}) = _$CreateReferralCodeInputImpl;

  factory _CreateReferralCodeInput.fromJson(Map<String, dynamic> json) =
      _$CreateReferralCodeInputImpl.fromJson;

  @override
  String get userId;
  @override
  String get code;
  @override
  String? get customCode;
  @override
  int? get referrerReward;
  @override
  int? get refereeReward;
  @override
  int? get totalReferrals;
  @override
  int? get successfulReferrals;
  @override
  int? get totalEarned;
  @override
  int? get maxReferrals;
  @override
  bool? get isActive;

  /// Create a copy of CreateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReferralCodeInputImplCopyWith<_$CreateReferralCodeInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateReferralCodeInput _$UpdateReferralCodeInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateReferralCodeInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateReferralCodeInput {
  String? get userId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get customCode => throw _privateConstructorUsedError;
  int? get referrerReward => throw _privateConstructorUsedError;
  int? get refereeReward => throw _privateConstructorUsedError;
  int? get totalReferrals => throw _privateConstructorUsedError;
  int? get successfulReferrals => throw _privateConstructorUsedError;
  int? get totalEarned => throw _privateConstructorUsedError;
  int? get maxReferrals => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this UpdateReferralCodeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReferralCodeInputCopyWith<UpdateReferralCodeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReferralCodeInputCopyWith<$Res> {
  factory $UpdateReferralCodeInputCopyWith(UpdateReferralCodeInput value,
          $Res Function(UpdateReferralCodeInput) then) =
      _$UpdateReferralCodeInputCopyWithImpl<$Res, UpdateReferralCodeInput>;
  @useResult
  $Res call(
      {String? userId,
      String? code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int? totalReferrals,
      int? successfulReferrals,
      int? totalEarned,
      int? maxReferrals,
      bool? isActive});
}

/// @nodoc
class _$UpdateReferralCodeInputCopyWithImpl<$Res,
        $Val extends UpdateReferralCodeInput>
    implements $UpdateReferralCodeInputCopyWith<$Res> {
  _$UpdateReferralCodeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateReferralCodeInputImplCopyWith<$Res>
    implements $UpdateReferralCodeInputCopyWith<$Res> {
  factory _$$UpdateReferralCodeInputImplCopyWith(
          _$UpdateReferralCodeInputImpl value,
          $Res Function(_$UpdateReferralCodeInputImpl) then) =
      __$$UpdateReferralCodeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? code,
      String? customCode,
      int? referrerReward,
      int? refereeReward,
      int? totalReferrals,
      int? successfulReferrals,
      int? totalEarned,
      int? maxReferrals,
      bool? isActive});
}

/// @nodoc
class __$$UpdateReferralCodeInputImplCopyWithImpl<$Res>
    extends _$UpdateReferralCodeInputCopyWithImpl<$Res,
        _$UpdateReferralCodeInputImpl>
    implements _$$UpdateReferralCodeInputImplCopyWith<$Res> {
  __$$UpdateReferralCodeInputImplCopyWithImpl(
      _$UpdateReferralCodeInputImpl _value,
      $Res Function(_$UpdateReferralCodeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$UpdateReferralCodeInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as int?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateReferralCodeInputImpl implements _UpdateReferralCodeInput {
  const _$UpdateReferralCodeInputImpl(
      {this.userId,
      this.code,
      this.customCode,
      this.referrerReward,
      this.refereeReward,
      this.totalReferrals,
      this.successfulReferrals,
      this.totalEarned,
      this.maxReferrals,
      this.isActive});

  factory _$UpdateReferralCodeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateReferralCodeInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? code;
  @override
  final String? customCode;
  @override
  final int? referrerReward;
  @override
  final int? refereeReward;
  @override
  final int? totalReferrals;
  @override
  final int? successfulReferrals;
  @override
  final int? totalEarned;
  @override
  final int? maxReferrals;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'UpdateReferralCodeInput(userId: $userId, code: $code, customCode: $customCode, referrerReward: $referrerReward, refereeReward: $refereeReward, totalReferrals: $totalReferrals, successfulReferrals: $successfulReferrals, totalEarned: $totalEarned, maxReferrals: $maxReferrals, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReferralCodeInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.totalReferrals, totalReferrals) ||
                other.totalReferrals == totalReferrals) &&
            (identical(other.successfulReferrals, successfulReferrals) ||
                other.successfulReferrals == successfulReferrals) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.maxReferrals, maxReferrals) ||
                other.maxReferrals == maxReferrals) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      code,
      customCode,
      referrerReward,
      refereeReward,
      totalReferrals,
      successfulReferrals,
      totalEarned,
      maxReferrals,
      isActive);

  /// Create a copy of UpdateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReferralCodeInputImplCopyWith<_$UpdateReferralCodeInputImpl>
      get copyWith => __$$UpdateReferralCodeInputImplCopyWithImpl<
          _$UpdateReferralCodeInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateReferralCodeInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateReferralCodeInput implements UpdateReferralCodeInput {
  const factory _UpdateReferralCodeInput(
      {final String? userId,
      final String? code,
      final String? customCode,
      final int? referrerReward,
      final int? refereeReward,
      final int? totalReferrals,
      final int? successfulReferrals,
      final int? totalEarned,
      final int? maxReferrals,
      final bool? isActive}) = _$UpdateReferralCodeInputImpl;

  factory _UpdateReferralCodeInput.fromJson(Map<String, dynamic> json) =
      _$UpdateReferralCodeInputImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get code;
  @override
  String? get customCode;
  @override
  int? get referrerReward;
  @override
  int? get refereeReward;
  @override
  int? get totalReferrals;
  @override
  int? get successfulReferrals;
  @override
  int? get totalEarned;
  @override
  int? get maxReferrals;
  @override
  bool? get isActive;

  /// Create a copy of UpdateReferralCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReferralCodeInputImplCopyWith<_$UpdateReferralCodeInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeWhereUniqueInput _$ReferralCodeWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCodeWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get customCode => throw _privateConstructorUsedError;

  /// Serializes this ReferralCodeWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeWhereUniqueInputCopyWith<ReferralCodeWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeWhereUniqueInputCopyWith<$Res> {
  factory $ReferralCodeWhereUniqueInputCopyWith(
          ReferralCodeWhereUniqueInput value,
          $Res Function(ReferralCodeWhereUniqueInput) then) =
      _$ReferralCodeWhereUniqueInputCopyWithImpl<$Res,
          ReferralCodeWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId, String? code, String? customCode});
}

/// @nodoc
class _$ReferralCodeWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ReferralCodeWhereUniqueInput>
    implements $ReferralCodeWhereUniqueInputCopyWith<$Res> {
  _$ReferralCodeWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralCodeWhereUniqueInputImplCopyWith<$Res>
    implements $ReferralCodeWhereUniqueInputCopyWith<$Res> {
  factory _$$ReferralCodeWhereUniqueInputImplCopyWith(
          _$ReferralCodeWhereUniqueInputImpl value,
          $Res Function(_$ReferralCodeWhereUniqueInputImpl) then) =
      __$$ReferralCodeWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId, String? code, String? customCode});
}

/// @nodoc
class __$$ReferralCodeWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ReferralCodeWhereUniqueInputCopyWithImpl<$Res,
        _$ReferralCodeWhereUniqueInputImpl>
    implements _$$ReferralCodeWhereUniqueInputImplCopyWith<$Res> {
  __$$ReferralCodeWhereUniqueInputImplCopyWithImpl(
      _$ReferralCodeWhereUniqueInputImpl _value,
      $Res Function(_$ReferralCodeWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
  }) {
    return _then(_$ReferralCodeWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCodeWhereUniqueInputImpl
    implements _ReferralCodeWhereUniqueInput {
  const _$ReferralCodeWhereUniqueInputImpl(
      {this.id, this.userId, this.code, this.customCode});

  factory _$ReferralCodeWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCodeWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? code;
  @override
  final String? customCode;

  @override
  String toString() {
    return 'ReferralCodeWhereUniqueInput(id: $id, userId: $userId, code: $code, customCode: $customCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, code, customCode);

  /// Create a copy of ReferralCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeWhereUniqueInputImplCopyWith<
          _$ReferralCodeWhereUniqueInputImpl>
      get copyWith => __$$ReferralCodeWhereUniqueInputImplCopyWithImpl<
          _$ReferralCodeWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeWhereUniqueInput
    implements ReferralCodeWhereUniqueInput {
  const factory _ReferralCodeWhereUniqueInput(
      {final String? id,
      final String? userId,
      final String? code,
      final String? customCode}) = _$ReferralCodeWhereUniqueInputImpl;

  factory _ReferralCodeWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get code;
  @override
  String? get customCode;

  /// Create a copy of ReferralCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeWhereUniqueInputImplCopyWith<
          _$ReferralCodeWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeWhereInput _$ReferralCodeWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCodeWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  StringFilter? get code => throw _privateConstructorUsedError;
  StringFilter? get customCode => throw _privateConstructorUsedError;
  IntFilter? get referrerReward => throw _privateConstructorUsedError;
  IntFilter? get refereeReward => throw _privateConstructorUsedError;
  IntFilter? get totalReferrals => throw _privateConstructorUsedError;
  IntFilter? get successfulReferrals => throw _privateConstructorUsedError;
  IntFilter? get totalEarned => throw _privateConstructorUsedError;
  IntFilter? get maxReferrals => throw _privateConstructorUsedError;
  BooleanFilter? get isActive => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ReferralCodeWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ReferralCodeWhereInput>? get OR => throw _privateConstructorUsedError;
  ReferralCodeWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ReferralCodeWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeWhereInputCopyWith<ReferralCodeWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeWhereInputCopyWith<$Res> {
  factory $ReferralCodeWhereInputCopyWith(ReferralCodeWhereInput value,
          $Res Function(ReferralCodeWhereInput) then) =
      _$ReferralCodeWhereInputCopyWithImpl<$Res, ReferralCodeWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      StringFilter? code,
      StringFilter? customCode,
      IntFilter? referrerReward,
      IntFilter? refereeReward,
      IntFilter? totalReferrals,
      IntFilter? successfulReferrals,
      IntFilter? totalEarned,
      IntFilter? maxReferrals,
      BooleanFilter? isActive,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ReferralCodeWhereInput>? AND,
      List<ReferralCodeWhereInput>? OR,
      ReferralCodeWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get userId;
  $StringFilterCopyWith<$Res>? get code;
  $StringFilterCopyWith<$Res>? get customCode;
  $IntFilterCopyWith<$Res>? get referrerReward;
  $IntFilterCopyWith<$Res>? get refereeReward;
  $IntFilterCopyWith<$Res>? get totalReferrals;
  $IntFilterCopyWith<$Res>? get successfulReferrals;
  $IntFilterCopyWith<$Res>? get totalEarned;
  $IntFilterCopyWith<$Res>? get maxReferrals;
  $BooleanFilterCopyWith<$Res>? get isActive;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ReferralCodeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ReferralCodeWhereInputCopyWithImpl<$Res,
        $Val extends ReferralCodeWhereInput>
    implements $ReferralCodeWhereInputCopyWith<$Res> {
  _$ReferralCodeWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
              as List<ReferralCodeWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCodeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCodeWhereInput
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

  /// Create a copy of ReferralCodeWhereInput
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

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get customCode {
    if (_value.customCode == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.customCode!, (value) {
      return _then(_value.copyWith(customCode: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get referrerReward {
    if (_value.referrerReward == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.referrerReward!, (value) {
      return _then(_value.copyWith(referrerReward: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get refereeReward {
    if (_value.refereeReward == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.refereeReward!, (value) {
      return _then(_value.copyWith(refereeReward: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalReferrals {
    if (_value.totalReferrals == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalReferrals!, (value) {
      return _then(_value.copyWith(totalReferrals: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get successfulReferrals {
    if (_value.successfulReferrals == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.successfulReferrals!, (value) {
      return _then(_value.copyWith(successfulReferrals: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalEarned {
    if (_value.totalEarned == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalEarned!, (value) {
      return _then(_value.copyWith(totalEarned: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get maxReferrals {
    if (_value.maxReferrals == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.maxReferrals!, (value) {
      return _then(_value.copyWith(maxReferrals: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isActive {
    if (_value.isActive == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isActive!, (value) {
      return _then(_value.copyWith(isActive: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeWhereInput
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

  /// Create a copy of ReferralCodeWhereInput
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

  /// Create a copy of ReferralCodeWhereInput
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

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCodeWhereInputImplCopyWith<$Res>
    implements $ReferralCodeWhereInputCopyWith<$Res> {
  factory _$$ReferralCodeWhereInputImplCopyWith(
          _$ReferralCodeWhereInputImpl value,
          $Res Function(_$ReferralCodeWhereInputImpl) then) =
      __$$ReferralCodeWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      StringFilter? code,
      StringFilter? customCode,
      IntFilter? referrerReward,
      IntFilter? refereeReward,
      IntFilter? totalReferrals,
      IntFilter? successfulReferrals,
      IntFilter? totalEarned,
      IntFilter? maxReferrals,
      BooleanFilter? isActive,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ReferralCodeWhereInput>? AND,
      List<ReferralCodeWhereInput>? OR,
      ReferralCodeWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $StringFilterCopyWith<$Res>? get code;
  @override
  $StringFilterCopyWith<$Res>? get customCode;
  @override
  $IntFilterCopyWith<$Res>? get referrerReward;
  @override
  $IntFilterCopyWith<$Res>? get refereeReward;
  @override
  $IntFilterCopyWith<$Res>? get totalReferrals;
  @override
  $IntFilterCopyWith<$Res>? get successfulReferrals;
  @override
  $IntFilterCopyWith<$Res>? get totalEarned;
  @override
  $IntFilterCopyWith<$Res>? get maxReferrals;
  @override
  $BooleanFilterCopyWith<$Res>? get isActive;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ReferralCodeWhereInputImplCopyWithImpl<$Res>
    extends _$ReferralCodeWhereInputCopyWithImpl<$Res,
        _$ReferralCodeWhereInputImpl>
    implements _$$ReferralCodeWhereInputImplCopyWith<$Res> {
  __$$ReferralCodeWhereInputImplCopyWithImpl(
      _$ReferralCodeWhereInputImpl _value,
      $Res Function(_$ReferralCodeWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ReferralCodeWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
              as List<ReferralCodeWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ReferralCodeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ReferralCodeWhereInputImpl implements _ReferralCodeWhereInput {
  const _$ReferralCodeWhereInputImpl(
      {this.id,
      this.userId,
      this.code,
      this.customCode,
      this.referrerReward,
      this.refereeReward,
      this.totalReferrals,
      this.successfulReferrals,
      this.totalEarned,
      this.maxReferrals,
      this.isActive,
      this.user,
      this.createdAt,
      this.updatedAt,
      final List<ReferralCodeWhereInput>? AND,
      final List<ReferralCodeWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ReferralCodeWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCodeWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? userId;
  @override
  final StringFilter? code;
  @override
  final StringFilter? customCode;
  @override
  final IntFilter? referrerReward;
  @override
  final IntFilter? refereeReward;
  @override
  final IntFilter? totalReferrals;
  @override
  final IntFilter? successfulReferrals;
  @override
  final IntFilter? totalEarned;
  @override
  final IntFilter? maxReferrals;
  @override
  final BooleanFilter? isActive;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ReferralCodeWhereInput>? _AND;
  @override
  List<ReferralCodeWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReferralCodeWhereInput>? _OR;
  @override
  List<ReferralCodeWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReferralCodeWhereInput? NOT;

  @override
  String toString() {
    return 'ReferralCodeWhereInput(id: $id, userId: $userId, code: $code, customCode: $customCode, referrerReward: $referrerReward, refereeReward: $refereeReward, totalReferrals: $totalReferrals, successfulReferrals: $successfulReferrals, totalEarned: $totalEarned, maxReferrals: $maxReferrals, isActive: $isActive, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.totalReferrals, totalReferrals) ||
                other.totalReferrals == totalReferrals) &&
            (identical(other.successfulReferrals, successfulReferrals) ||
                other.successfulReferrals == successfulReferrals) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.maxReferrals, maxReferrals) ||
                other.maxReferrals == maxReferrals) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.user, user) || other.user == user) &&
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
      userId,
      code,
      customCode,
      referrerReward,
      refereeReward,
      totalReferrals,
      successfulReferrals,
      totalEarned,
      maxReferrals,
      isActive,
      user,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeWhereInputImplCopyWith<_$ReferralCodeWhereInputImpl>
      get copyWith => __$$ReferralCodeWhereInputImplCopyWithImpl<
          _$ReferralCodeWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeWhereInput implements ReferralCodeWhereInput {
  const factory _ReferralCodeWhereInput(
      {final StringFilter? id,
      final StringFilter? userId,
      final StringFilter? code,
      final StringFilter? customCode,
      final IntFilter? referrerReward,
      final IntFilter? refereeReward,
      final IntFilter? totalReferrals,
      final IntFilter? successfulReferrals,
      final IntFilter? totalEarned,
      final IntFilter? maxReferrals,
      final BooleanFilter? isActive,
      final UserRelationFilter? user,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ReferralCodeWhereInput>? AND,
      final List<ReferralCodeWhereInput>? OR,
      final ReferralCodeWhereInput? NOT}) = _$ReferralCodeWhereInputImpl;

  factory _ReferralCodeWhereInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get userId;
  @override
  StringFilter? get code;
  @override
  StringFilter? get customCode;
  @override
  IntFilter? get referrerReward;
  @override
  IntFilter? get refereeReward;
  @override
  IntFilter? get totalReferrals;
  @override
  IntFilter? get successfulReferrals;
  @override
  IntFilter? get totalEarned;
  @override
  IntFilter? get maxReferrals;
  @override
  BooleanFilter? get isActive;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ReferralCodeWhereInput>? get AND;
  @override
  List<ReferralCodeWhereInput>? get OR;
  @override
  ReferralCodeWhereInput? get NOT;

  /// Create a copy of ReferralCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeWhereInputImplCopyWith<_$ReferralCodeWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeListRelationFilter _$ReferralCodeListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralCodeListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeListRelationFilter {
  /// At least one related record matches
  ReferralCodeWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ReferralCodeWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ReferralCodeWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ReferralCodeListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeListRelationFilterCopyWith<ReferralCodeListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeListRelationFilterCopyWith<$Res> {
  factory $ReferralCodeListRelationFilterCopyWith(
          ReferralCodeListRelationFilter value,
          $Res Function(ReferralCodeListRelationFilter) then) =
      _$ReferralCodeListRelationFilterCopyWithImpl<$Res,
          ReferralCodeListRelationFilter>;
  @useResult
  $Res call(
      {ReferralCodeWhereInput? some,
      ReferralCodeWhereInput? every,
      ReferralCodeWhereInput? none});

  $ReferralCodeWhereInputCopyWith<$Res>? get some;
  $ReferralCodeWhereInputCopyWith<$Res>? get every;
  $ReferralCodeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ReferralCodeListRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCodeListRelationFilter>
    implements $ReferralCodeListRelationFilterCopyWith<$Res> {
  _$ReferralCodeListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeListRelationFilter
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
              as ReferralCodeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCodeListRelationFilterImplCopyWith<$Res>
    implements $ReferralCodeListRelationFilterCopyWith<$Res> {
  factory _$$ReferralCodeListRelationFilterImplCopyWith(
          _$ReferralCodeListRelationFilterImpl value,
          $Res Function(_$ReferralCodeListRelationFilterImpl) then) =
      __$$ReferralCodeListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReferralCodeWhereInput? some,
      ReferralCodeWhereInput? every,
      ReferralCodeWhereInput? none});

  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get some;
  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get every;
  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ReferralCodeListRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCodeListRelationFilterCopyWithImpl<$Res,
        _$ReferralCodeListRelationFilterImpl>
    implements _$$ReferralCodeListRelationFilterImplCopyWith<$Res> {
  __$$ReferralCodeListRelationFilterImplCopyWithImpl(
      _$ReferralCodeListRelationFilterImpl _value,
      $Res Function(_$ReferralCodeListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ReferralCodeListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCodeListRelationFilterImpl
    implements _ReferralCodeListRelationFilter {
  const _$ReferralCodeListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ReferralCodeListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCodeListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ReferralCodeWhereInput? some;

  /// All related records match
  @override
  final ReferralCodeWhereInput? every;

  /// No related records match
  @override
  final ReferralCodeWhereInput? none;

  @override
  String toString() {
    return 'ReferralCodeListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeListRelationFilterImplCopyWith<
          _$ReferralCodeListRelationFilterImpl>
      get copyWith => __$$ReferralCodeListRelationFilterImplCopyWithImpl<
          _$ReferralCodeListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeListRelationFilter
    implements ReferralCodeListRelationFilter {
  const factory _ReferralCodeListRelationFilter(
          {final ReferralCodeWhereInput? some,
          final ReferralCodeWhereInput? every,
          final ReferralCodeWhereInput? none}) =
      _$ReferralCodeListRelationFilterImpl;

  factory _ReferralCodeListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ReferralCodeWhereInput? get some;

  /// All related records match
  @override
  ReferralCodeWhereInput? get every;

  /// No related records match
  @override
  ReferralCodeWhereInput? get none;

  /// Create a copy of ReferralCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeListRelationFilterImplCopyWith<
          _$ReferralCodeListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeRelationFilter _$ReferralCodeRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ReferralCodeRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ReferralCodeWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ReferralCodeWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ReferralCodeRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeRelationFilterCopyWith<ReferralCodeRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeRelationFilterCopyWith<$Res> {
  factory $ReferralCodeRelationFilterCopyWith(ReferralCodeRelationFilter value,
          $Res Function(ReferralCodeRelationFilter) then) =
      _$ReferralCodeRelationFilterCopyWithImpl<$Res,
          ReferralCodeRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCodeWhereInput? is_,
      ReferralCodeWhereInput? isNot});

  $ReferralCodeWhereInputCopyWith<$Res>? get is_;
  $ReferralCodeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ReferralCodeRelationFilterCopyWithImpl<$Res,
        $Val extends ReferralCodeRelationFilter>
    implements $ReferralCodeRelationFilterCopyWith<$Res> {
  _$ReferralCodeRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeRelationFilter
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
              as ReferralCodeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ReferralCodeWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferralCodeRelationFilterImplCopyWith<$Res>
    implements $ReferralCodeRelationFilterCopyWith<$Res> {
  factory _$$ReferralCodeRelationFilterImplCopyWith(
          _$ReferralCodeRelationFilterImpl value,
          $Res Function(_$ReferralCodeRelationFilterImpl) then) =
      __$$ReferralCodeRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ReferralCodeWhereInput? is_,
      ReferralCodeWhereInput? isNot});

  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get is_;
  @override
  $ReferralCodeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ReferralCodeRelationFilterImplCopyWithImpl<$Res>
    extends _$ReferralCodeRelationFilterCopyWithImpl<$Res,
        _$ReferralCodeRelationFilterImpl>
    implements _$$ReferralCodeRelationFilterImplCopyWith<$Res> {
  __$$ReferralCodeRelationFilterImplCopyWithImpl(
      _$ReferralCodeRelationFilterImpl _value,
      $Res Function(_$ReferralCodeRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ReferralCodeRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ReferralCodeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCodeRelationFilterImpl implements _ReferralCodeRelationFilter {
  const _$ReferralCodeRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ReferralCodeRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferralCodeRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ReferralCodeWhereInput? is_;

  /// Related record does not match
  @override
  final ReferralCodeWhereInput? isNot;

  @override
  String toString() {
    return 'ReferralCodeRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeRelationFilterImplCopyWith<_$ReferralCodeRelationFilterImpl>
      get copyWith => __$$ReferralCodeRelationFilterImplCopyWithImpl<
          _$ReferralCodeRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeRelationFilter
    implements ReferralCodeRelationFilter {
  const factory _ReferralCodeRelationFilter(
      {@JsonKey(name: 'is') final ReferralCodeWhereInput? is_,
      final ReferralCodeWhereInput? isNot}) = _$ReferralCodeRelationFilterImpl;

  factory _ReferralCodeRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ReferralCodeWhereInput? get is_;

  /// Related record does not match
  @override
  ReferralCodeWhereInput? get isNot;

  /// Create a copy of ReferralCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeRelationFilterImplCopyWith<_$ReferralCodeRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeOrderByInput _$ReferralCodeOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ReferralCodeOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get code => throw _privateConstructorUsedError;
  SortOrder? get customCode => throw _privateConstructorUsedError;
  SortOrder? get referrerReward => throw _privateConstructorUsedError;
  SortOrder? get refereeReward => throw _privateConstructorUsedError;
  SortOrder? get totalReferrals => throw _privateConstructorUsedError;
  SortOrder? get successfulReferrals => throw _privateConstructorUsedError;
  SortOrder? get totalEarned => throw _privateConstructorUsedError;
  SortOrder? get maxReferrals => throw _privateConstructorUsedError;
  SortOrder? get isActive => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralCodeOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeOrderByInputCopyWith<ReferralCodeOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeOrderByInputCopyWith<$Res> {
  factory $ReferralCodeOrderByInputCopyWith(ReferralCodeOrderByInput value,
          $Res Function(ReferralCodeOrderByInput) then) =
      _$ReferralCodeOrderByInputCopyWithImpl<$Res, ReferralCodeOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? code,
      SortOrder? customCode,
      SortOrder? referrerReward,
      SortOrder? refereeReward,
      SortOrder? totalReferrals,
      SortOrder? successfulReferrals,
      SortOrder? totalEarned,
      SortOrder? maxReferrals,
      SortOrder? isActive,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ReferralCodeOrderByInputCopyWithImpl<$Res,
        $Val extends ReferralCodeOrderByInput>
    implements $ReferralCodeOrderByInputCopyWith<$Res> {
  _$ReferralCodeOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ReferralCodeOrderByInputImplCopyWith<$Res>
    implements $ReferralCodeOrderByInputCopyWith<$Res> {
  factory _$$ReferralCodeOrderByInputImplCopyWith(
          _$ReferralCodeOrderByInputImpl value,
          $Res Function(_$ReferralCodeOrderByInputImpl) then) =
      __$$ReferralCodeOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? code,
      SortOrder? customCode,
      SortOrder? referrerReward,
      SortOrder? refereeReward,
      SortOrder? totalReferrals,
      SortOrder? successfulReferrals,
      SortOrder? totalEarned,
      SortOrder? maxReferrals,
      SortOrder? isActive,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ReferralCodeOrderByInputImplCopyWithImpl<$Res>
    extends _$ReferralCodeOrderByInputCopyWithImpl<$Res,
        _$ReferralCodeOrderByInputImpl>
    implements _$$ReferralCodeOrderByInputImplCopyWith<$Res> {
  __$$ReferralCodeOrderByInputImplCopyWithImpl(
      _$ReferralCodeOrderByInputImpl _value,
      $Res Function(_$ReferralCodeOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? code = freezed,
    Object? customCode = freezed,
    Object? referrerReward = freezed,
    Object? refereeReward = freezed,
    Object? totalReferrals = freezed,
    Object? successfulReferrals = freezed,
    Object? totalEarned = freezed,
    Object? maxReferrals = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReferralCodeOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      customCode: freezed == customCode
          ? _value.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      referrerReward: freezed == referrerReward
          ? _value.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refereeReward: freezed == refereeReward
          ? _value.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalReferrals: freezed == totalReferrals
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      successfulReferrals: freezed == successfulReferrals
          ? _value.successfulReferrals
          : successfulReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxReferrals: freezed == maxReferrals
          ? _value.maxReferrals
          : maxReferrals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
class _$ReferralCodeOrderByInputImpl implements _ReferralCodeOrderByInput {
  const _$ReferralCodeOrderByInputImpl(
      {this.id,
      this.userId,
      this.code,
      this.customCode,
      this.referrerReward,
      this.refereeReward,
      this.totalReferrals,
      this.successfulReferrals,
      this.totalEarned,
      this.maxReferrals,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  factory _$ReferralCodeOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCodeOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? code;
  @override
  final SortOrder? customCode;
  @override
  final SortOrder? referrerReward;
  @override
  final SortOrder? refereeReward;
  @override
  final SortOrder? totalReferrals;
  @override
  final SortOrder? successfulReferrals;
  @override
  final SortOrder? totalEarned;
  @override
  final SortOrder? maxReferrals;
  @override
  final SortOrder? isActive;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ReferralCodeOrderByInput(id: $id, userId: $userId, code: $code, customCode: $customCode, referrerReward: $referrerReward, refereeReward: $refereeReward, totalReferrals: $totalReferrals, successfulReferrals: $successfulReferrals, totalEarned: $totalEarned, maxReferrals: $maxReferrals, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.totalReferrals, totalReferrals) ||
                other.totalReferrals == totalReferrals) &&
            (identical(other.successfulReferrals, successfulReferrals) ||
                other.successfulReferrals == successfulReferrals) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.maxReferrals, maxReferrals) ||
                other.maxReferrals == maxReferrals) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      userId,
      code,
      customCode,
      referrerReward,
      refereeReward,
      totalReferrals,
      successfulReferrals,
      totalEarned,
      maxReferrals,
      isActive,
      createdAt,
      updatedAt);

  /// Create a copy of ReferralCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeOrderByInputImplCopyWith<_$ReferralCodeOrderByInputImpl>
      get copyWith => __$$ReferralCodeOrderByInputImplCopyWithImpl<
          _$ReferralCodeOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeOrderByInput implements ReferralCodeOrderByInput {
  const factory _ReferralCodeOrderByInput(
      {final SortOrder? id,
      final SortOrder? userId,
      final SortOrder? code,
      final SortOrder? customCode,
      final SortOrder? referrerReward,
      final SortOrder? refereeReward,
      final SortOrder? totalReferrals,
      final SortOrder? successfulReferrals,
      final SortOrder? totalEarned,
      final SortOrder? maxReferrals,
      final SortOrder? isActive,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ReferralCodeOrderByInputImpl;

  factory _ReferralCodeOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get code;
  @override
  SortOrder? get customCode;
  @override
  SortOrder? get referrerReward;
  @override
  SortOrder? get refereeReward;
  @override
  SortOrder? get totalReferrals;
  @override
  SortOrder? get successfulReferrals;
  @override
  SortOrder? get totalEarned;
  @override
  SortOrder? get maxReferrals;
  @override
  SortOrder? get isActive;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ReferralCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralCodeOrderByInputImplCopyWith<_$ReferralCodeOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
