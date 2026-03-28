// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayoutAccount _$PayoutAccountFromJson(Map<String, dynamic> json) {
  return _PayoutAccount.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccount {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway get provider => throw _privateConstructorUsedError;
  PayoutAccountType get accountType => throw _privateConstructorUsedError;
  String? get accountHolderName => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get accountNumberLast4 => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get upiId => throw _privateConstructorUsedError;
  String? get stripeAccountId => throw _privateConstructorUsedError;
  String? get stripeAccountStatus => throw _privateConstructorUsedError;
  String? get razorpayContactId => throw _privateConstructorUsedError;
  String? get razorpayFundAccId => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this PayoutAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountCopyWith<PayoutAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountCopyWith<$Res> {
  factory $PayoutAccountCopyWith(
          PayoutAccount value, $Res Function(PayoutAccount) then) =
      _$PayoutAccountCopyWithImpl<$Res, PayoutAccount>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      PaymentGateway provider,
      PayoutAccountType accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool isVerified,
      bool isDefault,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$PayoutAccountCopyWithImpl<$Res, $Val extends PayoutAccount>
    implements $PayoutAccountCopyWith<$Res> {
  _$PayoutAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? accountType = null,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
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
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ) as $Val);
  }

  /// Create a copy of PayoutAccount
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
}

/// @nodoc
abstract class _$$PayoutAccountImplCopyWith<$Res>
    implements $PayoutAccountCopyWith<$Res> {
  factory _$$PayoutAccountImplCopyWith(
          _$PayoutAccountImpl value, $Res Function(_$PayoutAccountImpl) then) =
      __$$PayoutAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      PaymentGateway provider,
      PayoutAccountType accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool isVerified,
      bool isDefault,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$PayoutAccountImplCopyWithImpl<$Res>
    extends _$PayoutAccountCopyWithImpl<$Res, _$PayoutAccountImpl>
    implements _$$PayoutAccountImplCopyWith<$Res> {
  __$$PayoutAccountImplCopyWithImpl(
      _$PayoutAccountImpl _value, $Res Function(_$PayoutAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? accountType = null,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
  }) {
    return _then(_$PayoutAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountImpl implements _PayoutAccount {
  const _$PayoutAccountImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.provider,
      this.accountType = PayoutAccountType.bankAccount,
      this.accountHolderName,
      this.bankName,
      this.accountNumberLast4,
      this.ifscCode,
      this.upiId,
      this.stripeAccountId,
      this.stripeAccountStatus,
      this.razorpayContactId,
      this.razorpayFundAccId,
      this.isVerified = false,
      this.isDefault = false,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile});

  factory _$PayoutAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutAccountImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final PaymentGateway provider;
  @override
  @JsonKey()
  final PayoutAccountType accountType;
  @override
  final String? accountHolderName;
  @override
  final String? bankName;
  @override
  final String? accountNumberLast4;
  @override
  final String? ifscCode;
  @override
  final String? upiId;
  @override
  final String? stripeAccountId;
  @override
  final String? stripeAccountStatus;
  @override
  final String? razorpayContactId;
  @override
  final String? razorpayFundAccId;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;

  @override
  String toString() {
    return 'PayoutAccount(id: $id, consultantProfileId: $consultantProfileId, provider: $provider, accountType: $accountType, accountHolderName: $accountHolderName, bankName: $bankName, accountNumberLast4: $accountNumberLast4, ifscCode: $ifscCode, upiId: $upiId, stripeAccountId: $stripeAccountId, stripeAccountStatus: $stripeAccountStatus, razorpayContactId: $razorpayContactId, razorpayFundAccId: $razorpayFundAccId, isVerified: $isVerified, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumberLast4, accountNumberLast4) ||
                other.accountNumberLast4 == accountNumberLast4) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.stripeAccountStatus, stripeAccountStatus) ||
                other.stripeAccountStatus == stripeAccountStatus) &&
            (identical(other.razorpayContactId, razorpayContactId) ||
                other.razorpayContactId == razorpayContactId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultantProfileId,
      provider,
      accountType,
      accountHolderName,
      bankName,
      accountNumberLast4,
      ifscCode,
      upiId,
      stripeAccountId,
      stripeAccountStatus,
      razorpayContactId,
      razorpayFundAccId,
      isVerified,
      isDefault,
      createdAt,
      updatedAt,
      consultantProfile);

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountImplCopyWith<_$PayoutAccountImpl> get copyWith =>
      __$$PayoutAccountImplCopyWithImpl<_$PayoutAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccount implements PayoutAccount {
  const factory _PayoutAccount(
      {required final String id,
      required final String consultantProfileId,
      required final PaymentGateway provider,
      final PayoutAccountType accountType,
      final String? accountHolderName,
      final String? bankName,
      final String? accountNumberLast4,
      final String? ifscCode,
      final String? upiId,
      final String? stripeAccountId,
      final String? stripeAccountStatus,
      final String? razorpayContactId,
      final String? razorpayFundAccId,
      final bool isVerified,
      final bool isDefault,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile}) = _$PayoutAccountImpl;

  factory _PayoutAccount.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  PaymentGateway get provider;
  @override
  PayoutAccountType get accountType;
  @override
  String? get accountHolderName;
  @override
  String? get bankName;
  @override
  String? get accountNumberLast4;
  @override
  String? get ifscCode;
  @override
  String? get upiId;
  @override
  String? get stripeAccountId;
  @override
  String? get stripeAccountStatus;
  @override
  String? get razorpayContactId;
  @override
  String? get razorpayFundAccId;
  @override
  bool get isVerified;
  @override
  bool get isDefault;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountImplCopyWith<_$PayoutAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePayoutAccountInput _$CreatePayoutAccountInputFromJson(
    Map<String, dynamic> json) {
  return _CreatePayoutAccountInput.fromJson(json);
}

/// @nodoc
mixin _$CreatePayoutAccountInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway get provider => throw _privateConstructorUsedError;
  PayoutAccountType get accountType => throw _privateConstructorUsedError;
  String? get accountHolderName => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get accountNumberLast4 => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get upiId => throw _privateConstructorUsedError;
  String? get stripeAccountId => throw _privateConstructorUsedError;
  String? get stripeAccountStatus => throw _privateConstructorUsedError;
  String? get razorpayContactId => throw _privateConstructorUsedError;
  String? get razorpayFundAccId => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;

  /// Serializes this CreatePayoutAccountInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePayoutAccountInputCopyWith<CreatePayoutAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePayoutAccountInputCopyWith<$Res> {
  factory $CreatePayoutAccountInputCopyWith(CreatePayoutAccountInput value,
          $Res Function(CreatePayoutAccountInput) then) =
      _$CreatePayoutAccountInputCopyWithImpl<$Res, CreatePayoutAccountInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      PaymentGateway provider,
      PayoutAccountType accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool? isVerified,
      bool? isDefault});
}

/// @nodoc
class _$CreatePayoutAccountInputCopyWithImpl<$Res,
        $Val extends CreatePayoutAccountInput>
    implements $CreatePayoutAccountInputCopyWith<$Res> {
  _$CreatePayoutAccountInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? accountType = null,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePayoutAccountInputImplCopyWith<$Res>
    implements $CreatePayoutAccountInputCopyWith<$Res> {
  factory _$$CreatePayoutAccountInputImplCopyWith(
          _$CreatePayoutAccountInputImpl value,
          $Res Function(_$CreatePayoutAccountInputImpl) then) =
      __$$CreatePayoutAccountInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      PaymentGateway provider,
      PayoutAccountType accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool? isVerified,
      bool? isDefault});
}

/// @nodoc
class __$$CreatePayoutAccountInputImplCopyWithImpl<$Res>
    extends _$CreatePayoutAccountInputCopyWithImpl<$Res,
        _$CreatePayoutAccountInputImpl>
    implements _$$CreatePayoutAccountInputImplCopyWith<$Res> {
  __$$CreatePayoutAccountInputImplCopyWithImpl(
      _$CreatePayoutAccountInputImpl _value,
      $Res Function(_$CreatePayoutAccountInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? accountType = null,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_$CreatePayoutAccountInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePayoutAccountInputImpl implements _CreatePayoutAccountInput {
  const _$CreatePayoutAccountInputImpl(
      {required this.consultantProfileId,
      required this.provider,
      this.accountType = PayoutAccountType.bankAccount,
      this.accountHolderName,
      this.bankName,
      this.accountNumberLast4,
      this.ifscCode,
      this.upiId,
      this.stripeAccountId,
      this.stripeAccountStatus,
      this.razorpayContactId,
      this.razorpayFundAccId,
      this.isVerified = false,
      this.isDefault = false});

  factory _$CreatePayoutAccountInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePayoutAccountInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final PaymentGateway provider;
  @override
  @JsonKey()
  final PayoutAccountType accountType;
  @override
  final String? accountHolderName;
  @override
  final String? bankName;
  @override
  final String? accountNumberLast4;
  @override
  final String? ifscCode;
  @override
  final String? upiId;
  @override
  final String? stripeAccountId;
  @override
  final String? stripeAccountStatus;
  @override
  final String? razorpayContactId;
  @override
  final String? razorpayFundAccId;
  @override
  @JsonKey()
  final bool? isVerified;
  @override
  @JsonKey()
  final bool? isDefault;

  @override
  String toString() {
    return 'CreatePayoutAccountInput(consultantProfileId: $consultantProfileId, provider: $provider, accountType: $accountType, accountHolderName: $accountHolderName, bankName: $bankName, accountNumberLast4: $accountNumberLast4, ifscCode: $ifscCode, upiId: $upiId, stripeAccountId: $stripeAccountId, stripeAccountStatus: $stripeAccountStatus, razorpayContactId: $razorpayContactId, razorpayFundAccId: $razorpayFundAccId, isVerified: $isVerified, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePayoutAccountInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumberLast4, accountNumberLast4) ||
                other.accountNumberLast4 == accountNumberLast4) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.stripeAccountStatus, stripeAccountStatus) ||
                other.stripeAccountStatus == stripeAccountStatus) &&
            (identical(other.razorpayContactId, razorpayContactId) ||
                other.razorpayContactId == razorpayContactId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      provider,
      accountType,
      accountHolderName,
      bankName,
      accountNumberLast4,
      ifscCode,
      upiId,
      stripeAccountId,
      stripeAccountStatus,
      razorpayContactId,
      razorpayFundAccId,
      isVerified,
      isDefault);

  /// Create a copy of CreatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePayoutAccountInputImplCopyWith<_$CreatePayoutAccountInputImpl>
      get copyWith => __$$CreatePayoutAccountInputImplCopyWithImpl<
          _$CreatePayoutAccountInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePayoutAccountInputImplToJson(
      this,
    );
  }
}

abstract class _CreatePayoutAccountInput implements CreatePayoutAccountInput {
  const factory _CreatePayoutAccountInput(
      {required final String consultantProfileId,
      required final PaymentGateway provider,
      final PayoutAccountType accountType,
      final String? accountHolderName,
      final String? bankName,
      final String? accountNumberLast4,
      final String? ifscCode,
      final String? upiId,
      final String? stripeAccountId,
      final String? stripeAccountStatus,
      final String? razorpayContactId,
      final String? razorpayFundAccId,
      final bool? isVerified,
      final bool? isDefault}) = _$CreatePayoutAccountInputImpl;

  factory _CreatePayoutAccountInput.fromJson(Map<String, dynamic> json) =
      _$CreatePayoutAccountInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  PaymentGateway get provider;
  @override
  PayoutAccountType get accountType;
  @override
  String? get accountHolderName;
  @override
  String? get bankName;
  @override
  String? get accountNumberLast4;
  @override
  String? get ifscCode;
  @override
  String? get upiId;
  @override
  String? get stripeAccountId;
  @override
  String? get stripeAccountStatus;
  @override
  String? get razorpayContactId;
  @override
  String? get razorpayFundAccId;
  @override
  bool? get isVerified;
  @override
  bool? get isDefault;

  /// Create a copy of CreatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePayoutAccountInputImplCopyWith<_$CreatePayoutAccountInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePayoutAccountInput _$UpdatePayoutAccountInputFromJson(
    Map<String, dynamic> json) {
  return _UpdatePayoutAccountInput.fromJson(json);
}

/// @nodoc
mixin _$UpdatePayoutAccountInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway? get provider => throw _privateConstructorUsedError;
  PayoutAccountType? get accountType => throw _privateConstructorUsedError;
  String? get accountHolderName => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get accountNumberLast4 => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get upiId => throw _privateConstructorUsedError;
  String? get stripeAccountId => throw _privateConstructorUsedError;
  String? get stripeAccountStatus => throw _privateConstructorUsedError;
  String? get razorpayContactId => throw _privateConstructorUsedError;
  String? get razorpayFundAccId => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;

  /// Serializes this UpdatePayoutAccountInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePayoutAccountInputCopyWith<UpdatePayoutAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePayoutAccountInputCopyWith<$Res> {
  factory $UpdatePayoutAccountInputCopyWith(UpdatePayoutAccountInput value,
          $Res Function(UpdatePayoutAccountInput) then) =
      _$UpdatePayoutAccountInputCopyWithImpl<$Res, UpdatePayoutAccountInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      PaymentGateway? provider,
      PayoutAccountType? accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool? isVerified,
      bool? isDefault});
}

/// @nodoc
class _$UpdatePayoutAccountInputCopyWithImpl<$Res,
        $Val extends UpdatePayoutAccountInput>
    implements $UpdatePayoutAccountInputCopyWith<$Res> {
  _$UpdatePayoutAccountInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? accountType = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePayoutAccountInputImplCopyWith<$Res>
    implements $UpdatePayoutAccountInputCopyWith<$Res> {
  factory _$$UpdatePayoutAccountInputImplCopyWith(
          _$UpdatePayoutAccountInputImpl value,
          $Res Function(_$UpdatePayoutAccountInputImpl) then) =
      __$$UpdatePayoutAccountInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      PaymentGateway? provider,
      PayoutAccountType? accountType,
      String? accountHolderName,
      String? bankName,
      String? accountNumberLast4,
      String? ifscCode,
      String? upiId,
      String? stripeAccountId,
      String? stripeAccountStatus,
      String? razorpayContactId,
      String? razorpayFundAccId,
      bool? isVerified,
      bool? isDefault});
}

/// @nodoc
class __$$UpdatePayoutAccountInputImplCopyWithImpl<$Res>
    extends _$UpdatePayoutAccountInputCopyWithImpl<$Res,
        _$UpdatePayoutAccountInputImpl>
    implements _$$UpdatePayoutAccountInputImplCopyWith<$Res> {
  __$$UpdatePayoutAccountInputImplCopyWithImpl(
      _$UpdatePayoutAccountInputImpl _value,
      $Res Function(_$UpdatePayoutAccountInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? accountType = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_$UpdatePayoutAccountInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePayoutAccountInputImpl implements _UpdatePayoutAccountInput {
  const _$UpdatePayoutAccountInputImpl(
      {this.consultantProfileId,
      this.provider,
      this.accountType,
      this.accountHolderName,
      this.bankName,
      this.accountNumberLast4,
      this.ifscCode,
      this.upiId,
      this.stripeAccountId,
      this.stripeAccountStatus,
      this.razorpayContactId,
      this.razorpayFundAccId,
      this.isVerified,
      this.isDefault});

  factory _$UpdatePayoutAccountInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePayoutAccountInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final PaymentGateway? provider;
  @override
  final PayoutAccountType? accountType;
  @override
  final String? accountHolderName;
  @override
  final String? bankName;
  @override
  final String? accountNumberLast4;
  @override
  final String? ifscCode;
  @override
  final String? upiId;
  @override
  final String? stripeAccountId;
  @override
  final String? stripeAccountStatus;
  @override
  final String? razorpayContactId;
  @override
  final String? razorpayFundAccId;
  @override
  final bool? isVerified;
  @override
  final bool? isDefault;

  @override
  String toString() {
    return 'UpdatePayoutAccountInput(consultantProfileId: $consultantProfileId, provider: $provider, accountType: $accountType, accountHolderName: $accountHolderName, bankName: $bankName, accountNumberLast4: $accountNumberLast4, ifscCode: $ifscCode, upiId: $upiId, stripeAccountId: $stripeAccountId, stripeAccountStatus: $stripeAccountStatus, razorpayContactId: $razorpayContactId, razorpayFundAccId: $razorpayFundAccId, isVerified: $isVerified, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePayoutAccountInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumberLast4, accountNumberLast4) ||
                other.accountNumberLast4 == accountNumberLast4) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.stripeAccountStatus, stripeAccountStatus) ||
                other.stripeAccountStatus == stripeAccountStatus) &&
            (identical(other.razorpayContactId, razorpayContactId) ||
                other.razorpayContactId == razorpayContactId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      provider,
      accountType,
      accountHolderName,
      bankName,
      accountNumberLast4,
      ifscCode,
      upiId,
      stripeAccountId,
      stripeAccountStatus,
      razorpayContactId,
      razorpayFundAccId,
      isVerified,
      isDefault);

  /// Create a copy of UpdatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePayoutAccountInputImplCopyWith<_$UpdatePayoutAccountInputImpl>
      get copyWith => __$$UpdatePayoutAccountInputImplCopyWithImpl<
          _$UpdatePayoutAccountInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePayoutAccountInputImplToJson(
      this,
    );
  }
}

abstract class _UpdatePayoutAccountInput implements UpdatePayoutAccountInput {
  const factory _UpdatePayoutAccountInput(
      {final String? consultantProfileId,
      final PaymentGateway? provider,
      final PayoutAccountType? accountType,
      final String? accountHolderName,
      final String? bankName,
      final String? accountNumberLast4,
      final String? ifscCode,
      final String? upiId,
      final String? stripeAccountId,
      final String? stripeAccountStatus,
      final String? razorpayContactId,
      final String? razorpayFundAccId,
      final bool? isVerified,
      final bool? isDefault}) = _$UpdatePayoutAccountInputImpl;

  factory _UpdatePayoutAccountInput.fromJson(Map<String, dynamic> json) =
      _$UpdatePayoutAccountInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  PaymentGateway? get provider;
  @override
  PayoutAccountType? get accountType;
  @override
  String? get accountHolderName;
  @override
  String? get bankName;
  @override
  String? get accountNumberLast4;
  @override
  String? get ifscCode;
  @override
  String? get upiId;
  @override
  String? get stripeAccountId;
  @override
  String? get stripeAccountStatus;
  @override
  String? get razorpayContactId;
  @override
  String? get razorpayFundAccId;
  @override
  bool? get isVerified;
  @override
  bool? get isDefault;

  /// Create a copy of UpdatePayoutAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePayoutAccountInputImplCopyWith<_$UpdatePayoutAccountInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutAccountWhereUniqueInput _$PayoutAccountWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get stripeAccountId => throw _privateConstructorUsedError;
  String? get razorpayFundAccId => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountWhereUniqueInputCopyWith<PayoutAccountWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountWhereUniqueInputCopyWith<$Res> {
  factory $PayoutAccountWhereUniqueInputCopyWith(
          PayoutAccountWhereUniqueInput value,
          $Res Function(PayoutAccountWhereUniqueInput) then) =
      _$PayoutAccountWhereUniqueInputCopyWithImpl<$Res,
          PayoutAccountWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? stripeAccountId, String? razorpayFundAccId});
}

/// @nodoc
class _$PayoutAccountWhereUniqueInputCopyWithImpl<$Res,
        $Val extends PayoutAccountWhereUniqueInput>
    implements $PayoutAccountWhereUniqueInputCopyWith<$Res> {
  _$PayoutAccountWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stripeAccountId = freezed,
    Object? razorpayFundAccId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutAccountWhereUniqueInputImplCopyWith<$Res>
    implements $PayoutAccountWhereUniqueInputCopyWith<$Res> {
  factory _$$PayoutAccountWhereUniqueInputImplCopyWith(
          _$PayoutAccountWhereUniqueInputImpl value,
          $Res Function(_$PayoutAccountWhereUniqueInputImpl) then) =
      __$$PayoutAccountWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? stripeAccountId, String? razorpayFundAccId});
}

/// @nodoc
class __$$PayoutAccountWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$PayoutAccountWhereUniqueInputCopyWithImpl<$Res,
        _$PayoutAccountWhereUniqueInputImpl>
    implements _$$PayoutAccountWhereUniqueInputImplCopyWith<$Res> {
  __$$PayoutAccountWhereUniqueInputImplCopyWithImpl(
      _$PayoutAccountWhereUniqueInputImpl _value,
      $Res Function(_$PayoutAccountWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stripeAccountId = freezed,
    Object? razorpayFundAccId = freezed,
  }) {
    return _then(_$PayoutAccountWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountWhereUniqueInputImpl
    implements _PayoutAccountWhereUniqueInput {
  const _$PayoutAccountWhereUniqueInputImpl(
      {this.id, this.stripeAccountId, this.razorpayFundAccId});

  factory _$PayoutAccountWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayoutAccountWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? stripeAccountId;
  @override
  final String? razorpayFundAccId;

  @override
  String toString() {
    return 'PayoutAccountWhereUniqueInput(id: $id, stripeAccountId: $stripeAccountId, razorpayFundAccId: $razorpayFundAccId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, stripeAccountId, razorpayFundAccId);

  /// Create a copy of PayoutAccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountWhereUniqueInputImplCopyWith<
          _$PayoutAccountWhereUniqueInputImpl>
      get copyWith => __$$PayoutAccountWhereUniqueInputImplCopyWithImpl<
          _$PayoutAccountWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountWhereUniqueInput
    implements PayoutAccountWhereUniqueInput {
  const factory _PayoutAccountWhereUniqueInput(
      {final String? id,
      final String? stripeAccountId,
      final String? razorpayFundAccId}) = _$PayoutAccountWhereUniqueInputImpl;

  factory _PayoutAccountWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get stripeAccountId;
  @override
  String? get razorpayFundAccId;

  /// Create a copy of PayoutAccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountWhereUniqueInputImplCopyWith<
          _$PayoutAccountWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutAccountWhereInput _$PayoutAccountWhereInputFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountWhereInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGatewayFilter? get provider => throw _privateConstructorUsedError;
  PayoutAccountTypeFilter? get accountType =>
      throw _privateConstructorUsedError;
  StringFilter? get accountHolderName => throw _privateConstructorUsedError;
  StringFilter? get bankName => throw _privateConstructorUsedError;
  StringFilter? get accountNumberLast4 => throw _privateConstructorUsedError;
  StringFilter? get ifscCode => throw _privateConstructorUsedError;
  StringFilter? get upiId => throw _privateConstructorUsedError;
  StringFilter? get stripeAccountId => throw _privateConstructorUsedError;
  StringFilter? get stripeAccountStatus => throw _privateConstructorUsedError;
  StringFilter? get razorpayContactId => throw _privateConstructorUsedError;
  StringFilter? get razorpayFundAccId => throw _privateConstructorUsedError;
  BooleanFilter? get isVerified => throw _privateConstructorUsedError;
  BooleanFilter? get isDefault => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  List<PayoutAccountWhereInput>? get AND => throw _privateConstructorUsedError;
  List<PayoutAccountWhereInput>? get OR => throw _privateConstructorUsedError;
  PayoutAccountWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountWhereInputCopyWith<PayoutAccountWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountWhereInputCopyWith<$Res> {
  factory $PayoutAccountWhereInputCopyWith(PayoutAccountWhereInput value,
          $Res Function(PayoutAccountWhereInput) then) =
      _$PayoutAccountWhereInputCopyWithImpl<$Res, PayoutAccountWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      PaymentGatewayFilter? provider,
      PayoutAccountTypeFilter? accountType,
      StringFilter? accountHolderName,
      StringFilter? bankName,
      StringFilter? accountNumberLast4,
      StringFilter? ifscCode,
      StringFilter? upiId,
      StringFilter? stripeAccountId,
      StringFilter? stripeAccountStatus,
      StringFilter? razorpayContactId,
      StringFilter? razorpayFundAccId,
      BooleanFilter? isVerified,
      BooleanFilter? isDefault,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      List<PayoutAccountWhereInput>? AND,
      List<PayoutAccountWhereInput>? OR,
      PayoutAccountWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $PaymentGatewayFilterCopyWith<$Res>? get provider;
  $PayoutAccountTypeFilterCopyWith<$Res>? get accountType;
  $StringFilterCopyWith<$Res>? get accountHolderName;
  $StringFilterCopyWith<$Res>? get bankName;
  $StringFilterCopyWith<$Res>? get accountNumberLast4;
  $StringFilterCopyWith<$Res>? get ifscCode;
  $StringFilterCopyWith<$Res>? get upiId;
  $StringFilterCopyWith<$Res>? get stripeAccountId;
  $StringFilterCopyWith<$Res>? get stripeAccountStatus;
  $StringFilterCopyWith<$Res>? get razorpayContactId;
  $StringFilterCopyWith<$Res>? get razorpayFundAccId;
  $BooleanFilterCopyWith<$Res>? get isVerified;
  $BooleanFilterCopyWith<$Res>? get isDefault;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $PayoutAccountWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$PayoutAccountWhereInputCopyWithImpl<$Res,
        $Val extends PayoutAccountWhereInput>
    implements $PayoutAccountWhereInputCopyWith<$Res> {
  _$PayoutAccountWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? accountType = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
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
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountTypeFilter?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutAccountWhereInput
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

  /// Create a copy of PayoutAccountWhereInput
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

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentGatewayFilterCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $PaymentGatewayFilterCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountTypeFilterCopyWith<$Res>? get accountType {
    if (_value.accountType == null) {
      return null;
    }

    return $PayoutAccountTypeFilterCopyWith<$Res>(_value.accountType!, (value) {
      return _then(_value.copyWith(accountType: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get accountHolderName {
    if (_value.accountHolderName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.accountHolderName!, (value) {
      return _then(_value.copyWith(accountHolderName: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get bankName {
    if (_value.bankName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.bankName!, (value) {
      return _then(_value.copyWith(bankName: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get accountNumberLast4 {
    if (_value.accountNumberLast4 == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.accountNumberLast4!, (value) {
      return _then(_value.copyWith(accountNumberLast4: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get ifscCode {
    if (_value.ifscCode == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.ifscCode!, (value) {
      return _then(_value.copyWith(ifscCode: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get upiId {
    if (_value.upiId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.upiId!, (value) {
      return _then(_value.copyWith(upiId: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get stripeAccountId {
    if (_value.stripeAccountId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.stripeAccountId!, (value) {
      return _then(_value.copyWith(stripeAccountId: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get stripeAccountStatus {
    if (_value.stripeAccountStatus == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.stripeAccountStatus!, (value) {
      return _then(_value.copyWith(stripeAccountStatus: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get razorpayContactId {
    if (_value.razorpayContactId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.razorpayContactId!, (value) {
      return _then(_value.copyWith(razorpayContactId: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get razorpayFundAccId {
    if (_value.razorpayFundAccId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.razorpayFundAccId!, (value) {
      return _then(_value.copyWith(razorpayFundAccId: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isVerified {
    if (_value.isVerified == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isVerified!, (value) {
      return _then(_value.copyWith(isVerified: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isDefault {
    if (_value.isDefault == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isDefault!, (value) {
      return _then(_value.copyWith(isDefault: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountWhereInput
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

  /// Create a copy of PayoutAccountWhereInput
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

  /// Create a copy of PayoutAccountWhereInput
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

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutAccountWhereInputImplCopyWith<$Res>
    implements $PayoutAccountWhereInputCopyWith<$Res> {
  factory _$$PayoutAccountWhereInputImplCopyWith(
          _$PayoutAccountWhereInputImpl value,
          $Res Function(_$PayoutAccountWhereInputImpl) then) =
      __$$PayoutAccountWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      PaymentGatewayFilter? provider,
      PayoutAccountTypeFilter? accountType,
      StringFilter? accountHolderName,
      StringFilter? bankName,
      StringFilter? accountNumberLast4,
      StringFilter? ifscCode,
      StringFilter? upiId,
      StringFilter? stripeAccountId,
      StringFilter? stripeAccountStatus,
      StringFilter? razorpayContactId,
      StringFilter? razorpayFundAccId,
      BooleanFilter? isVerified,
      BooleanFilter? isDefault,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      List<PayoutAccountWhereInput>? AND,
      List<PayoutAccountWhereInput>? OR,
      PayoutAccountWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $PaymentGatewayFilterCopyWith<$Res>? get provider;
  @override
  $PayoutAccountTypeFilterCopyWith<$Res>? get accountType;
  @override
  $StringFilterCopyWith<$Res>? get accountHolderName;
  @override
  $StringFilterCopyWith<$Res>? get bankName;
  @override
  $StringFilterCopyWith<$Res>? get accountNumberLast4;
  @override
  $StringFilterCopyWith<$Res>? get ifscCode;
  @override
  $StringFilterCopyWith<$Res>? get upiId;
  @override
  $StringFilterCopyWith<$Res>? get stripeAccountId;
  @override
  $StringFilterCopyWith<$Res>? get stripeAccountStatus;
  @override
  $StringFilterCopyWith<$Res>? get razorpayContactId;
  @override
  $StringFilterCopyWith<$Res>? get razorpayFundAccId;
  @override
  $BooleanFilterCopyWith<$Res>? get isVerified;
  @override
  $BooleanFilterCopyWith<$Res>? get isDefault;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$PayoutAccountWhereInputImplCopyWithImpl<$Res>
    extends _$PayoutAccountWhereInputCopyWithImpl<$Res,
        _$PayoutAccountWhereInputImpl>
    implements _$$PayoutAccountWhereInputImplCopyWith<$Res> {
  __$$PayoutAccountWhereInputImplCopyWithImpl(
      _$PayoutAccountWhereInputImpl _value,
      $Res Function(_$PayoutAccountWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? accountType = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$PayoutAccountWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as PayoutAccountTypeFilter?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PayoutAccountWhereInputImpl implements _PayoutAccountWhereInput {
  const _$PayoutAccountWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.provider,
      this.accountType,
      this.accountHolderName,
      this.bankName,
      this.accountNumberLast4,
      this.ifscCode,
      this.upiId,
      this.stripeAccountId,
      this.stripeAccountStatus,
      this.razorpayContactId,
      this.razorpayFundAccId,
      this.isVerified,
      this.isDefault,
      this.createdAt,
      this.updatedAt,
      this.consultantProfile,
      final List<PayoutAccountWhereInput>? AND,
      final List<PayoutAccountWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$PayoutAccountWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutAccountWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final PaymentGatewayFilter? provider;
  @override
  final PayoutAccountTypeFilter? accountType;
  @override
  final StringFilter? accountHolderName;
  @override
  final StringFilter? bankName;
  @override
  final StringFilter? accountNumberLast4;
  @override
  final StringFilter? ifscCode;
  @override
  final StringFilter? upiId;
  @override
  final StringFilter? stripeAccountId;
  @override
  final StringFilter? stripeAccountStatus;
  @override
  final StringFilter? razorpayContactId;
  @override
  final StringFilter? razorpayFundAccId;
  @override
  final BooleanFilter? isVerified;
  @override
  final BooleanFilter? isDefault;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  final List<PayoutAccountWhereInput>? _AND;
  @override
  List<PayoutAccountWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PayoutAccountWhereInput>? _OR;
  @override
  List<PayoutAccountWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PayoutAccountWhereInput? NOT;

  @override
  String toString() {
    return 'PayoutAccountWhereInput(id: $id, consultantProfileId: $consultantProfileId, provider: $provider, accountType: $accountType, accountHolderName: $accountHolderName, bankName: $bankName, accountNumberLast4: $accountNumberLast4, ifscCode: $ifscCode, upiId: $upiId, stripeAccountId: $stripeAccountId, stripeAccountStatus: $stripeAccountStatus, razorpayContactId: $razorpayContactId, razorpayFundAccId: $razorpayFundAccId, isVerified: $isVerified, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumberLast4, accountNumberLast4) ||
                other.accountNumberLast4 == accountNumberLast4) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.stripeAccountStatus, stripeAccountStatus) ||
                other.stripeAccountStatus == stripeAccountStatus) &&
            (identical(other.razorpayContactId, razorpayContactId) ||
                other.razorpayContactId == razorpayContactId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
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
        provider,
        accountType,
        accountHolderName,
        bankName,
        accountNumberLast4,
        ifscCode,
        upiId,
        stripeAccountId,
        stripeAccountStatus,
        razorpayContactId,
        razorpayFundAccId,
        isVerified,
        isDefault,
        createdAt,
        updatedAt,
        consultantProfile,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountWhereInputImplCopyWith<_$PayoutAccountWhereInputImpl>
      get copyWith => __$$PayoutAccountWhereInputImplCopyWithImpl<
          _$PayoutAccountWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountWhereInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountWhereInput implements PayoutAccountWhereInput {
  const factory _PayoutAccountWhereInput(
      {final StringFilter? id,
      final StringFilter? consultantProfileId,
      final PaymentGatewayFilter? provider,
      final PayoutAccountTypeFilter? accountType,
      final StringFilter? accountHolderName,
      final StringFilter? bankName,
      final StringFilter? accountNumberLast4,
      final StringFilter? ifscCode,
      final StringFilter? upiId,
      final StringFilter? stripeAccountId,
      final StringFilter? stripeAccountStatus,
      final StringFilter? razorpayContactId,
      final StringFilter? razorpayFundAccId,
      final BooleanFilter? isVerified,
      final BooleanFilter? isDefault,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final ConsultantProfileRelationFilter? consultantProfile,
      final List<PayoutAccountWhereInput>? AND,
      final List<PayoutAccountWhereInput>? OR,
      final PayoutAccountWhereInput? NOT}) = _$PayoutAccountWhereInputImpl;

  factory _PayoutAccountWhereInput.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  PaymentGatewayFilter? get provider;
  @override
  PayoutAccountTypeFilter? get accountType;
  @override
  StringFilter? get accountHolderName;
  @override
  StringFilter? get bankName;
  @override
  StringFilter? get accountNumberLast4;
  @override
  StringFilter? get ifscCode;
  @override
  StringFilter? get upiId;
  @override
  StringFilter? get stripeAccountId;
  @override
  StringFilter? get stripeAccountStatus;
  @override
  StringFilter? get razorpayContactId;
  @override
  StringFilter? get razorpayFundAccId;
  @override
  BooleanFilter? get isVerified;
  @override
  BooleanFilter? get isDefault;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  List<PayoutAccountWhereInput>? get AND;
  @override
  List<PayoutAccountWhereInput>? get OR;
  @override
  PayoutAccountWhereInput? get NOT;

  /// Create a copy of PayoutAccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountWhereInputImplCopyWith<_$PayoutAccountWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutAccountListRelationFilter _$PayoutAccountListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountListRelationFilter {
  /// At least one related record matches
  PayoutAccountWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  PayoutAccountWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  PayoutAccountWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountListRelationFilterCopyWith<PayoutAccountListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountListRelationFilterCopyWith<$Res> {
  factory $PayoutAccountListRelationFilterCopyWith(
          PayoutAccountListRelationFilter value,
          $Res Function(PayoutAccountListRelationFilter) then) =
      _$PayoutAccountListRelationFilterCopyWithImpl<$Res,
          PayoutAccountListRelationFilter>;
  @useResult
  $Res call(
      {PayoutAccountWhereInput? some,
      PayoutAccountWhereInput? every,
      PayoutAccountWhereInput? none});

  $PayoutAccountWhereInputCopyWith<$Res>? get some;
  $PayoutAccountWhereInputCopyWith<$Res>? get every;
  $PayoutAccountWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$PayoutAccountListRelationFilterCopyWithImpl<$Res,
        $Val extends PayoutAccountListRelationFilter>
    implements $PayoutAccountListRelationFilterCopyWith<$Res> {
  _$PayoutAccountListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountListRelationFilter
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
              as PayoutAccountWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutAccountListRelationFilterImplCopyWith<$Res>
    implements $PayoutAccountListRelationFilterCopyWith<$Res> {
  factory _$$PayoutAccountListRelationFilterImplCopyWith(
          _$PayoutAccountListRelationFilterImpl value,
          $Res Function(_$PayoutAccountListRelationFilterImpl) then) =
      __$$PayoutAccountListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutAccountWhereInput? some,
      PayoutAccountWhereInput? every,
      PayoutAccountWhereInput? none});

  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get some;
  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get every;
  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$PayoutAccountListRelationFilterImplCopyWithImpl<$Res>
    extends _$PayoutAccountListRelationFilterCopyWithImpl<$Res,
        _$PayoutAccountListRelationFilterImpl>
    implements _$$PayoutAccountListRelationFilterImplCopyWith<$Res> {
  __$$PayoutAccountListRelationFilterImplCopyWithImpl(
      _$PayoutAccountListRelationFilterImpl _value,
      $Res Function(_$PayoutAccountListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$PayoutAccountListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountListRelationFilterImpl
    implements _PayoutAccountListRelationFilter {
  const _$PayoutAccountListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$PayoutAccountListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayoutAccountListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final PayoutAccountWhereInput? some;

  /// All related records match
  @override
  final PayoutAccountWhereInput? every;

  /// No related records match
  @override
  final PayoutAccountWhereInput? none;

  @override
  String toString() {
    return 'PayoutAccountListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountListRelationFilterImplCopyWith<
          _$PayoutAccountListRelationFilterImpl>
      get copyWith => __$$PayoutAccountListRelationFilterImplCopyWithImpl<
          _$PayoutAccountListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountListRelationFilter
    implements PayoutAccountListRelationFilter {
  const factory _PayoutAccountListRelationFilter(
          {final PayoutAccountWhereInput? some,
          final PayoutAccountWhereInput? every,
          final PayoutAccountWhereInput? none}) =
      _$PayoutAccountListRelationFilterImpl;

  factory _PayoutAccountListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  PayoutAccountWhereInput? get some;

  /// All related records match
  @override
  PayoutAccountWhereInput? get every;

  /// No related records match
  @override
  PayoutAccountWhereInput? get none;

  /// Create a copy of PayoutAccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountListRelationFilterImplCopyWith<
          _$PayoutAccountListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutAccountRelationFilter _$PayoutAccountRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  PayoutAccountWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  PayoutAccountWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountRelationFilterCopyWith<PayoutAccountRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountRelationFilterCopyWith<$Res> {
  factory $PayoutAccountRelationFilterCopyWith(
          PayoutAccountRelationFilter value,
          $Res Function(PayoutAccountRelationFilter) then) =
      _$PayoutAccountRelationFilterCopyWithImpl<$Res,
          PayoutAccountRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PayoutAccountWhereInput? is_,
      PayoutAccountWhereInput? isNot});

  $PayoutAccountWhereInputCopyWith<$Res>? get is_;
  $PayoutAccountWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$PayoutAccountRelationFilterCopyWithImpl<$Res,
        $Val extends PayoutAccountRelationFilter>
    implements $PayoutAccountRelationFilterCopyWith<$Res> {
  _$PayoutAccountRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountRelationFilter
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
              as PayoutAccountWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutAccountWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $PayoutAccountWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutAccountRelationFilterImplCopyWith<$Res>
    implements $PayoutAccountRelationFilterCopyWith<$Res> {
  factory _$$PayoutAccountRelationFilterImplCopyWith(
          _$PayoutAccountRelationFilterImpl value,
          $Res Function(_$PayoutAccountRelationFilterImpl) then) =
      __$$PayoutAccountRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PayoutAccountWhereInput? is_,
      PayoutAccountWhereInput? isNot});

  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get is_;
  @override
  $PayoutAccountWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$PayoutAccountRelationFilterImplCopyWithImpl<$Res>
    extends _$PayoutAccountRelationFilterCopyWithImpl<$Res,
        _$PayoutAccountRelationFilterImpl>
    implements _$$PayoutAccountRelationFilterImplCopyWith<$Res> {
  __$$PayoutAccountRelationFilterImplCopyWithImpl(
      _$PayoutAccountRelationFilterImpl _value,
      $Res Function(_$PayoutAccountRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$PayoutAccountRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PayoutAccountWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountRelationFilterImpl
    implements _PayoutAccountRelationFilter {
  const _$PayoutAccountRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$PayoutAccountRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayoutAccountRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final PayoutAccountWhereInput? is_;

  /// Related record does not match
  @override
  final PayoutAccountWhereInput? isNot;

  @override
  String toString() {
    return 'PayoutAccountRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountRelationFilterImplCopyWith<_$PayoutAccountRelationFilterImpl>
      get copyWith => __$$PayoutAccountRelationFilterImplCopyWithImpl<
          _$PayoutAccountRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountRelationFilter
    implements PayoutAccountRelationFilter {
  const factory _PayoutAccountRelationFilter(
          {@JsonKey(name: 'is') final PayoutAccountWhereInput? is_,
          final PayoutAccountWhereInput? isNot}) =
      _$PayoutAccountRelationFilterImpl;

  factory _PayoutAccountRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  PayoutAccountWhereInput? get is_;

  /// Related record does not match
  @override
  PayoutAccountWhereInput? get isNot;

  /// Create a copy of PayoutAccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountRelationFilterImplCopyWith<_$PayoutAccountRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutAccountOrderByInput _$PayoutAccountOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get accountHolderName => throw _privateConstructorUsedError;
  SortOrder? get bankName => throw _privateConstructorUsedError;
  SortOrder? get accountNumberLast4 => throw _privateConstructorUsedError;
  SortOrder? get ifscCode => throw _privateConstructorUsedError;
  SortOrder? get upiId => throw _privateConstructorUsedError;
  SortOrder? get stripeAccountId => throw _privateConstructorUsedError;
  SortOrder? get stripeAccountStatus => throw _privateConstructorUsedError;
  SortOrder? get razorpayContactId => throw _privateConstructorUsedError;
  SortOrder? get razorpayFundAccId => throw _privateConstructorUsedError;
  SortOrder? get isVerified => throw _privateConstructorUsedError;
  SortOrder? get isDefault => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountOrderByInputCopyWith<PayoutAccountOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountOrderByInputCopyWith<$Res> {
  factory $PayoutAccountOrderByInputCopyWith(PayoutAccountOrderByInput value,
          $Res Function(PayoutAccountOrderByInput) then) =
      _$PayoutAccountOrderByInputCopyWithImpl<$Res, PayoutAccountOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? accountHolderName,
      SortOrder? bankName,
      SortOrder? accountNumberLast4,
      SortOrder? ifscCode,
      SortOrder? upiId,
      SortOrder? stripeAccountId,
      SortOrder? stripeAccountStatus,
      SortOrder? razorpayContactId,
      SortOrder? razorpayFundAccId,
      SortOrder? isVerified,
      SortOrder? isDefault,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$PayoutAccountOrderByInputCopyWithImpl<$Res,
        $Val extends PayoutAccountOrderByInput>
    implements $PayoutAccountOrderByInputCopyWith<$Res> {
  _$PayoutAccountOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
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
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PayoutAccountOrderByInputImplCopyWith<$Res>
    implements $PayoutAccountOrderByInputCopyWith<$Res> {
  factory _$$PayoutAccountOrderByInputImplCopyWith(
          _$PayoutAccountOrderByInputImpl value,
          $Res Function(_$PayoutAccountOrderByInputImpl) then) =
      __$$PayoutAccountOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? accountHolderName,
      SortOrder? bankName,
      SortOrder? accountNumberLast4,
      SortOrder? ifscCode,
      SortOrder? upiId,
      SortOrder? stripeAccountId,
      SortOrder? stripeAccountStatus,
      SortOrder? razorpayContactId,
      SortOrder? razorpayFundAccId,
      SortOrder? isVerified,
      SortOrder? isDefault,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$PayoutAccountOrderByInputImplCopyWithImpl<$Res>
    extends _$PayoutAccountOrderByInputCopyWithImpl<$Res,
        _$PayoutAccountOrderByInputImpl>
    implements _$$PayoutAccountOrderByInputImplCopyWith<$Res> {
  __$$PayoutAccountOrderByInputImplCopyWithImpl(
      _$PayoutAccountOrderByInputImpl _value,
      $Res Function(_$PayoutAccountOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? accountHolderName = freezed,
    Object? bankName = freezed,
    Object? accountNumberLast4 = freezed,
    Object? ifscCode = freezed,
    Object? upiId = freezed,
    Object? stripeAccountId = freezed,
    Object? stripeAccountStatus = freezed,
    Object? razorpayContactId = freezed,
    Object? razorpayFundAccId = freezed,
    Object? isVerified = freezed,
    Object? isDefault = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PayoutAccountOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accountNumberLast4: freezed == accountNumberLast4
          ? _value.accountNumberLast4
          : accountNumberLast4 // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      upiId: freezed == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      stripeAccountId: freezed == stripeAccountId
          ? _value.stripeAccountId
          : stripeAccountId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      stripeAccountStatus: freezed == stripeAccountStatus
          ? _value.stripeAccountStatus
          : stripeAccountStatus // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      razorpayContactId: freezed == razorpayContactId
          ? _value.razorpayContactId
          : razorpayContactId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      razorpayFundAccId: freezed == razorpayFundAccId
          ? _value.razorpayFundAccId
          : razorpayFundAccId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
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
class _$PayoutAccountOrderByInputImpl implements _PayoutAccountOrderByInput {
  const _$PayoutAccountOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.accountHolderName,
      this.bankName,
      this.accountNumberLast4,
      this.ifscCode,
      this.upiId,
      this.stripeAccountId,
      this.stripeAccountStatus,
      this.razorpayContactId,
      this.razorpayFundAccId,
      this.isVerified,
      this.isDefault,
      this.createdAt,
      this.updatedAt});

  factory _$PayoutAccountOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutAccountOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? accountHolderName;
  @override
  final SortOrder? bankName;
  @override
  final SortOrder? accountNumberLast4;
  @override
  final SortOrder? ifscCode;
  @override
  final SortOrder? upiId;
  @override
  final SortOrder? stripeAccountId;
  @override
  final SortOrder? stripeAccountStatus;
  @override
  final SortOrder? razorpayContactId;
  @override
  final SortOrder? razorpayFundAccId;
  @override
  final SortOrder? isVerified;
  @override
  final SortOrder? isDefault;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'PayoutAccountOrderByInput(id: $id, consultantProfileId: $consultantProfileId, accountHolderName: $accountHolderName, bankName: $bankName, accountNumberLast4: $accountNumberLast4, ifscCode: $ifscCode, upiId: $upiId, stripeAccountId: $stripeAccountId, stripeAccountStatus: $stripeAccountStatus, razorpayContactId: $razorpayContactId, razorpayFundAccId: $razorpayFundAccId, isVerified: $isVerified, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumberLast4, accountNumberLast4) ||
                other.accountNumberLast4 == accountNumberLast4) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.stripeAccountId, stripeAccountId) ||
                other.stripeAccountId == stripeAccountId) &&
            (identical(other.stripeAccountStatus, stripeAccountStatus) ||
                other.stripeAccountStatus == stripeAccountStatus) &&
            (identical(other.razorpayContactId, razorpayContactId) ||
                other.razorpayContactId == razorpayContactId) &&
            (identical(other.razorpayFundAccId, razorpayFundAccId) ||
                other.razorpayFundAccId == razorpayFundAccId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
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
      accountHolderName,
      bankName,
      accountNumberLast4,
      ifscCode,
      upiId,
      stripeAccountId,
      stripeAccountStatus,
      razorpayContactId,
      razorpayFundAccId,
      isVerified,
      isDefault,
      createdAt,
      updatedAt);

  /// Create a copy of PayoutAccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountOrderByInputImplCopyWith<_$PayoutAccountOrderByInputImpl>
      get copyWith => __$$PayoutAccountOrderByInputImplCopyWithImpl<
          _$PayoutAccountOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountOrderByInput implements PayoutAccountOrderByInput {
  const factory _PayoutAccountOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? accountHolderName,
      final SortOrder? bankName,
      final SortOrder? accountNumberLast4,
      final SortOrder? ifscCode,
      final SortOrder? upiId,
      final SortOrder? stripeAccountId,
      final SortOrder? stripeAccountStatus,
      final SortOrder? razorpayContactId,
      final SortOrder? razorpayFundAccId,
      final SortOrder? isVerified,
      final SortOrder? isDefault,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$PayoutAccountOrderByInputImpl;

  factory _PayoutAccountOrderByInput.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get accountHolderName;
  @override
  SortOrder? get bankName;
  @override
  SortOrder? get accountNumberLast4;
  @override
  SortOrder? get ifscCode;
  @override
  SortOrder? get upiId;
  @override
  SortOrder? get stripeAccountId;
  @override
  SortOrder? get stripeAccountStatus;
  @override
  SortOrder? get razorpayContactId;
  @override
  SortOrder? get razorpayFundAccId;
  @override
  SortOrder? get isVerified;
  @override
  SortOrder? get isDefault;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of PayoutAccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountOrderByInputImplCopyWith<_$PayoutAccountOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
