// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Payout _$PayoutFromJson(Map<String, dynamic> json) {
  return _Payout.fromJson(json);
}

/// @nodoc
mixin _$Payout {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway get provider => throw _privateConstructorUsedError;
  String? get providerPayoutId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  PayoutStatus get status => throw _privateConstructorUsedError;
  PayoutMethod get method => throw _privateConstructorUsedError;
  String? get batchId => throw _privateConstructorUsedError;
  int get tdsDeducted => throw _privateConstructorUsedError;
  int? get netAmount => throw _privateConstructorUsedError;
  double? get tdsRateApplied => throw _privateConstructorUsedError;
  String? get tdsFinancialYear => throw _privateConstructorUsedError;
  String? get failureReason => throw _privateConstructorUsedError;
  int get retryCount => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  List<ConsultantEarnings> get earnings => throw _privateConstructorUsedError;
  List<TDSRecord> get tdsRecords => throw _privateConstructorUsedError;

  /// Serializes this Payout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutCopyWith<Payout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutCopyWith<$Res> {
  factory $PayoutCopyWith(Payout value, $Res Function(Payout) then) =
      _$PayoutCopyWithImpl<$Res, Payout>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      PaymentGateway provider,
      String? providerPayoutId,
      int amount,
      String currency,
      PayoutStatus status,
      PayoutMethod method,
      String? batchId,
      int tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      List<ConsultantEarnings> earnings,
      List<TDSRecord> tdsRecords});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$PayoutCopyWithImpl<$Res, $Val extends Payout>
    implements $PayoutCopyWith<$Res> {
  _$PayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? providerPayoutId = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? method = null,
    Object? batchId = freezed,
    Object? tdsDeducted = null,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = null,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? earnings = null,
    Object? tdsRecords = null,
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PayoutStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
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
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      tdsRecords: null == tdsRecords
          ? _value.tdsRecords
          : tdsRecords // ignore: cast_nullable_to_non_nullable
              as List<TDSRecord>,
    ) as $Val);
  }

  /// Create a copy of Payout
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
abstract class _$$PayoutImplCopyWith<$Res> implements $PayoutCopyWith<$Res> {
  factory _$$PayoutImplCopyWith(
          _$PayoutImpl value, $Res Function(_$PayoutImpl) then) =
      __$$PayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      PaymentGateway provider,
      String? providerPayoutId,
      int amount,
      String currency,
      PayoutStatus status,
      PayoutMethod method,
      String? batchId,
      int tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      List<ConsultantEarnings> earnings,
      List<TDSRecord> tdsRecords});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$PayoutImplCopyWithImpl<$Res>
    extends _$PayoutCopyWithImpl<$Res, _$PayoutImpl>
    implements _$$PayoutImplCopyWith<$Res> {
  __$$PayoutImplCopyWithImpl(
      _$PayoutImpl _value, $Res Function(_$PayoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? providerPayoutId = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? method = null,
    Object? batchId = freezed,
    Object? tdsDeducted = null,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = null,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? earnings = null,
    Object? tdsRecords = null,
  }) {
    return _then(_$PayoutImpl(
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PayoutStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
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
      earnings: null == earnings
          ? _value._earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      tdsRecords: null == tdsRecords
          ? _value._tdsRecords
          : tdsRecords // ignore: cast_nullable_to_non_nullable
              as List<TDSRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutImpl implements _Payout {
  const _$PayoutImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.provider,
      this.providerPayoutId,
      required this.amount,
      this.currency = "INR",
      this.status = PayoutStatus.pending,
      required this.method,
      this.batchId,
      this.tdsDeducted = 0,
      this.netAmount,
      this.tdsRateApplied,
      this.tdsFinancialYear,
      this.failureReason,
      this.retryCount = 0,
      this.processedAt,
      this.approvedAt,
      this.approvedBy,
      this.idempotencyKey,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required final List<ConsultantEarnings> earnings,
      required final List<TDSRecord> tdsRecords})
      : _earnings = earnings,
        _tdsRecords = tdsRecords;

  factory _$PayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final PaymentGateway provider;
  @override
  final String? providerPayoutId;
  @override
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final PayoutStatus status;
  @override
  final PayoutMethod method;
  @override
  final String? batchId;
  @override
  @JsonKey()
  final int tdsDeducted;
  @override
  final int? netAmount;
  @override
  final double? tdsRateApplied;
  @override
  final String? tdsFinancialYear;
  @override
  final String? failureReason;
  @override
  @JsonKey()
  final int retryCount;
  @override
  final DateTime? processedAt;
  @override
  final DateTime? approvedAt;
  @override
  final String? approvedBy;
  @override
  final String? idempotencyKey;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  final List<ConsultantEarnings> _earnings;
  @override
  List<ConsultantEarnings> get earnings {
    if (_earnings is EqualUnmodifiableListView) return _earnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earnings);
  }

  final List<TDSRecord> _tdsRecords;
  @override
  List<TDSRecord> get tdsRecords {
    if (_tdsRecords is EqualUnmodifiableListView) return _tdsRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tdsRecords);
  }

  @override
  String toString() {
    return 'Payout(id: $id, consultantProfileId: $consultantProfileId, provider: $provider, providerPayoutId: $providerPayoutId, amount: $amount, currency: $currency, status: $status, method: $method, batchId: $batchId, tdsDeducted: $tdsDeducted, netAmount: $netAmount, tdsRateApplied: $tdsRateApplied, tdsFinancialYear: $tdsFinancialYear, failureReason: $failureReason, retryCount: $retryCount, processedAt: $processedAt, approvedAt: $approvedAt, approvedBy: $approvedBy, idempotencyKey: $idempotencyKey, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, earnings: $earnings, tdsRecords: $tdsRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.tdsRateApplied, tdsRateApplied) ||
                other.tdsRateApplied == tdsRateApplied) &&
            (identical(other.tdsFinancialYear, tdsFinancialYear) ||
                other.tdsFinancialYear == tdsFinancialYear) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            const DeepCollectionEquality().equals(other._earnings, _earnings) &&
            const DeepCollectionEquality()
                .equals(other._tdsRecords, _tdsRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consultantProfileId,
        provider,
        providerPayoutId,
        amount,
        currency,
        status,
        method,
        batchId,
        tdsDeducted,
        netAmount,
        tdsRateApplied,
        tdsFinancialYear,
        failureReason,
        retryCount,
        processedAt,
        approvedAt,
        approvedBy,
        idempotencyKey,
        createdAt,
        updatedAt,
        consultantProfile,
        const DeepCollectionEquality().hash(_earnings),
        const DeepCollectionEquality().hash(_tdsRecords)
      ]);

  /// Create a copy of Payout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutImplCopyWith<_$PayoutImpl> get copyWith =>
      __$$PayoutImplCopyWithImpl<_$PayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutImplToJson(
      this,
    );
  }
}

abstract class _Payout implements Payout {
  const factory _Payout(
      {required final String id,
      required final String consultantProfileId,
      required final PaymentGateway provider,
      final String? providerPayoutId,
      required final int amount,
      final String currency,
      final PayoutStatus status,
      required final PayoutMethod method,
      final String? batchId,
      final int tdsDeducted,
      final int? netAmount,
      final double? tdsRateApplied,
      final String? tdsFinancialYear,
      final String? failureReason,
      final int retryCount,
      final DateTime? processedAt,
      final DateTime? approvedAt,
      final String? approvedBy,
      final String? idempotencyKey,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final List<ConsultantEarnings> earnings,
      required final List<TDSRecord> tdsRecords}) = _$PayoutImpl;

  factory _Payout.fromJson(Map<String, dynamic> json) = _$PayoutImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  PaymentGateway get provider;
  @override
  String? get providerPayoutId;
  @override
  int get amount;
  @override
  String get currency;
  @override
  PayoutStatus get status;
  @override
  PayoutMethod get method;
  @override
  String? get batchId;
  @override
  int get tdsDeducted;
  @override
  int? get netAmount;
  @override
  double? get tdsRateApplied;
  @override
  String? get tdsFinancialYear;
  @override
  String? get failureReason;
  @override
  int get retryCount;
  @override
  DateTime? get processedAt;
  @override
  DateTime? get approvedAt;
  @override
  String? get approvedBy;
  @override
  String? get idempotencyKey;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  List<ConsultantEarnings> get earnings;
  @override
  List<TDSRecord> get tdsRecords;

  /// Create a copy of Payout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutImplCopyWith<_$PayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePayoutInput _$CreatePayoutInputFromJson(Map<String, dynamic> json) {
  return _CreatePayoutInput.fromJson(json);
}

/// @nodoc
mixin _$CreatePayoutInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway get provider => throw _privateConstructorUsedError;
  String? get providerPayoutId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  PayoutStatus get status => throw _privateConstructorUsedError;
  PayoutMethod get method => throw _privateConstructorUsedError;
  String? get batchId => throw _privateConstructorUsedError;
  int? get tdsDeducted => throw _privateConstructorUsedError;
  int? get netAmount => throw _privateConstructorUsedError;
  double? get tdsRateApplied => throw _privateConstructorUsedError;
  String? get tdsFinancialYear => throw _privateConstructorUsedError;
  String? get failureReason => throw _privateConstructorUsedError;
  int? get retryCount => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this CreatePayoutInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePayoutInputCopyWith<CreatePayoutInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePayoutInputCopyWith<$Res> {
  factory $CreatePayoutInputCopyWith(
          CreatePayoutInput value, $Res Function(CreatePayoutInput) then) =
      _$CreatePayoutInputCopyWithImpl<$Res, CreatePayoutInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      PaymentGateway provider,
      String? providerPayoutId,
      int amount,
      String? currency,
      PayoutStatus status,
      PayoutMethod method,
      String? batchId,
      int? tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int? retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey});
}

/// @nodoc
class _$CreatePayoutInputCopyWithImpl<$Res, $Val extends CreatePayoutInput>
    implements $CreatePayoutInputCopyWith<$Res> {
  _$CreatePayoutInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? providerPayoutId = freezed,
    Object? amount = null,
    Object? currency = freezed,
    Object? status = null,
    Object? method = null,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PayoutStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePayoutInputImplCopyWith<$Res>
    implements $CreatePayoutInputCopyWith<$Res> {
  factory _$$CreatePayoutInputImplCopyWith(_$CreatePayoutInputImpl value,
          $Res Function(_$CreatePayoutInputImpl) then) =
      __$$CreatePayoutInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      PaymentGateway provider,
      String? providerPayoutId,
      int amount,
      String? currency,
      PayoutStatus status,
      PayoutMethod method,
      String? batchId,
      int? tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int? retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey});
}

/// @nodoc
class __$$CreatePayoutInputImplCopyWithImpl<$Res>
    extends _$CreatePayoutInputCopyWithImpl<$Res, _$CreatePayoutInputImpl>
    implements _$$CreatePayoutInputImplCopyWith<$Res> {
  __$$CreatePayoutInputImplCopyWithImpl(_$CreatePayoutInputImpl _value,
      $Res Function(_$CreatePayoutInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? provider = null,
    Object? providerPayoutId = freezed,
    Object? amount = null,
    Object? currency = freezed,
    Object? status = null,
    Object? method = null,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
  }) {
    return _then(_$CreatePayoutInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PayoutStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePayoutInputImpl implements _CreatePayoutInput {
  const _$CreatePayoutInputImpl(
      {required this.consultantProfileId,
      required this.provider,
      this.providerPayoutId,
      required this.amount,
      this.currency = "INR",
      this.status = PayoutStatus.pending,
      required this.method,
      this.batchId,
      this.tdsDeducted = 0,
      this.netAmount,
      this.tdsRateApplied,
      this.tdsFinancialYear,
      this.failureReason,
      this.retryCount = 0,
      this.processedAt,
      this.approvedAt,
      this.approvedBy,
      this.idempotencyKey});

  factory _$CreatePayoutInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePayoutInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final PaymentGateway provider;
  @override
  final String? providerPayoutId;
  @override
  final int amount;
  @override
  @JsonKey()
  final String? currency;
  @override
  @JsonKey()
  final PayoutStatus status;
  @override
  final PayoutMethod method;
  @override
  final String? batchId;
  @override
  @JsonKey()
  final int? tdsDeducted;
  @override
  final int? netAmount;
  @override
  final double? tdsRateApplied;
  @override
  final String? tdsFinancialYear;
  @override
  final String? failureReason;
  @override
  @JsonKey()
  final int? retryCount;
  @override
  final DateTime? processedAt;
  @override
  final DateTime? approvedAt;
  @override
  final String? approvedBy;
  @override
  final String? idempotencyKey;

  @override
  String toString() {
    return 'CreatePayoutInput(consultantProfileId: $consultantProfileId, provider: $provider, providerPayoutId: $providerPayoutId, amount: $amount, currency: $currency, status: $status, method: $method, batchId: $batchId, tdsDeducted: $tdsDeducted, netAmount: $netAmount, tdsRateApplied: $tdsRateApplied, tdsFinancialYear: $tdsFinancialYear, failureReason: $failureReason, retryCount: $retryCount, processedAt: $processedAt, approvedAt: $approvedAt, approvedBy: $approvedBy, idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePayoutInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.tdsRateApplied, tdsRateApplied) ||
                other.tdsRateApplied == tdsRateApplied) &&
            (identical(other.tdsFinancialYear, tdsFinancialYear) ||
                other.tdsFinancialYear == tdsFinancialYear) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      provider,
      providerPayoutId,
      amount,
      currency,
      status,
      method,
      batchId,
      tdsDeducted,
      netAmount,
      tdsRateApplied,
      tdsFinancialYear,
      failureReason,
      retryCount,
      processedAt,
      approvedAt,
      approvedBy,
      idempotencyKey);

  /// Create a copy of CreatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePayoutInputImplCopyWith<_$CreatePayoutInputImpl> get copyWith =>
      __$$CreatePayoutInputImplCopyWithImpl<_$CreatePayoutInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePayoutInputImplToJson(
      this,
    );
  }
}

abstract class _CreatePayoutInput implements CreatePayoutInput {
  const factory _CreatePayoutInput(
      {required final String consultantProfileId,
      required final PaymentGateway provider,
      final String? providerPayoutId,
      required final int amount,
      final String? currency,
      final PayoutStatus status,
      required final PayoutMethod method,
      final String? batchId,
      final int? tdsDeducted,
      final int? netAmount,
      final double? tdsRateApplied,
      final String? tdsFinancialYear,
      final String? failureReason,
      final int? retryCount,
      final DateTime? processedAt,
      final DateTime? approvedAt,
      final String? approvedBy,
      final String? idempotencyKey}) = _$CreatePayoutInputImpl;

  factory _CreatePayoutInput.fromJson(Map<String, dynamic> json) =
      _$CreatePayoutInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  PaymentGateway get provider;
  @override
  String? get providerPayoutId;
  @override
  int get amount;
  @override
  String? get currency;
  @override
  PayoutStatus get status;
  @override
  PayoutMethod get method;
  @override
  String? get batchId;
  @override
  int? get tdsDeducted;
  @override
  int? get netAmount;
  @override
  double? get tdsRateApplied;
  @override
  String? get tdsFinancialYear;
  @override
  String? get failureReason;
  @override
  int? get retryCount;
  @override
  DateTime? get processedAt;
  @override
  DateTime? get approvedAt;
  @override
  String? get approvedBy;
  @override
  String? get idempotencyKey;

  /// Create a copy of CreatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePayoutInputImplCopyWith<_$CreatePayoutInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePayoutInput _$UpdatePayoutInputFromJson(Map<String, dynamic> json) {
  return _UpdatePayoutInput.fromJson(json);
}

/// @nodoc
mixin _$UpdatePayoutInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGateway? get provider => throw _privateConstructorUsedError;
  String? get providerPayoutId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  PayoutStatus? get status => throw _privateConstructorUsedError;
  PayoutMethod? get method => throw _privateConstructorUsedError;
  String? get batchId => throw _privateConstructorUsedError;
  int? get tdsDeducted => throw _privateConstructorUsedError;
  int? get netAmount => throw _privateConstructorUsedError;
  double? get tdsRateApplied => throw _privateConstructorUsedError;
  String? get tdsFinancialYear => throw _privateConstructorUsedError;
  String? get failureReason => throw _privateConstructorUsedError;
  int? get retryCount => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this UpdatePayoutInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePayoutInputCopyWith<UpdatePayoutInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePayoutInputCopyWith<$Res> {
  factory $UpdatePayoutInputCopyWith(
          UpdatePayoutInput value, $Res Function(UpdatePayoutInput) then) =
      _$UpdatePayoutInputCopyWithImpl<$Res, UpdatePayoutInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      PaymentGateway? provider,
      String? providerPayoutId,
      int? amount,
      String? currency,
      PayoutStatus? status,
      PayoutMethod? method,
      String? batchId,
      int? tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int? retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey});
}

/// @nodoc
class _$UpdatePayoutInputCopyWithImpl<$Res, $Val extends UpdatePayoutInput>
    implements $UpdatePayoutInputCopyWith<$Res> {
  _$UpdatePayoutInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? method = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
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
              as PayoutStatus?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePayoutInputImplCopyWith<$Res>
    implements $UpdatePayoutInputCopyWith<$Res> {
  factory _$$UpdatePayoutInputImplCopyWith(_$UpdatePayoutInputImpl value,
          $Res Function(_$UpdatePayoutInputImpl) then) =
      __$$UpdatePayoutInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      PaymentGateway? provider,
      String? providerPayoutId,
      int? amount,
      String? currency,
      PayoutStatus? status,
      PayoutMethod? method,
      String? batchId,
      int? tdsDeducted,
      int? netAmount,
      double? tdsRateApplied,
      String? tdsFinancialYear,
      String? failureReason,
      int? retryCount,
      DateTime? processedAt,
      DateTime? approvedAt,
      String? approvedBy,
      String? idempotencyKey});
}

/// @nodoc
class __$$UpdatePayoutInputImplCopyWithImpl<$Res>
    extends _$UpdatePayoutInputCopyWithImpl<$Res, _$UpdatePayoutInputImpl>
    implements _$$UpdatePayoutInputImplCopyWith<$Res> {
  __$$UpdatePayoutInputImplCopyWithImpl(_$UpdatePayoutInputImpl _value,
      $Res Function(_$UpdatePayoutInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? method = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
  }) {
    return _then(_$UpdatePayoutInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
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
              as PayoutStatus?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as double?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePayoutInputImpl implements _UpdatePayoutInput {
  const _$UpdatePayoutInputImpl(
      {this.consultantProfileId,
      this.provider,
      this.providerPayoutId,
      this.amount,
      this.currency,
      this.status,
      this.method,
      this.batchId,
      this.tdsDeducted,
      this.netAmount,
      this.tdsRateApplied,
      this.tdsFinancialYear,
      this.failureReason,
      this.retryCount,
      this.processedAt,
      this.approvedAt,
      this.approvedBy,
      this.idempotencyKey});

  factory _$UpdatePayoutInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePayoutInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final PaymentGateway? provider;
  @override
  final String? providerPayoutId;
  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final PayoutStatus? status;
  @override
  final PayoutMethod? method;
  @override
  final String? batchId;
  @override
  final int? tdsDeducted;
  @override
  final int? netAmount;
  @override
  final double? tdsRateApplied;
  @override
  final String? tdsFinancialYear;
  @override
  final String? failureReason;
  @override
  final int? retryCount;
  @override
  final DateTime? processedAt;
  @override
  final DateTime? approvedAt;
  @override
  final String? approvedBy;
  @override
  final String? idempotencyKey;

  @override
  String toString() {
    return 'UpdatePayoutInput(consultantProfileId: $consultantProfileId, provider: $provider, providerPayoutId: $providerPayoutId, amount: $amount, currency: $currency, status: $status, method: $method, batchId: $batchId, tdsDeducted: $tdsDeducted, netAmount: $netAmount, tdsRateApplied: $tdsRateApplied, tdsFinancialYear: $tdsFinancialYear, failureReason: $failureReason, retryCount: $retryCount, processedAt: $processedAt, approvedAt: $approvedAt, approvedBy: $approvedBy, idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePayoutInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.tdsRateApplied, tdsRateApplied) ||
                other.tdsRateApplied == tdsRateApplied) &&
            (identical(other.tdsFinancialYear, tdsFinancialYear) ||
                other.tdsFinancialYear == tdsFinancialYear) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      provider,
      providerPayoutId,
      amount,
      currency,
      status,
      method,
      batchId,
      tdsDeducted,
      netAmount,
      tdsRateApplied,
      tdsFinancialYear,
      failureReason,
      retryCount,
      processedAt,
      approvedAt,
      approvedBy,
      idempotencyKey);

  /// Create a copy of UpdatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePayoutInputImplCopyWith<_$UpdatePayoutInputImpl> get copyWith =>
      __$$UpdatePayoutInputImplCopyWithImpl<_$UpdatePayoutInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePayoutInputImplToJson(
      this,
    );
  }
}

abstract class _UpdatePayoutInput implements UpdatePayoutInput {
  const factory _UpdatePayoutInput(
      {final String? consultantProfileId,
      final PaymentGateway? provider,
      final String? providerPayoutId,
      final int? amount,
      final String? currency,
      final PayoutStatus? status,
      final PayoutMethod? method,
      final String? batchId,
      final int? tdsDeducted,
      final int? netAmount,
      final double? tdsRateApplied,
      final String? tdsFinancialYear,
      final String? failureReason,
      final int? retryCount,
      final DateTime? processedAt,
      final DateTime? approvedAt,
      final String? approvedBy,
      final String? idempotencyKey}) = _$UpdatePayoutInputImpl;

  factory _UpdatePayoutInput.fromJson(Map<String, dynamic> json) =
      _$UpdatePayoutInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  PaymentGateway? get provider;
  @override
  String? get providerPayoutId;
  @override
  int? get amount;
  @override
  String? get currency;
  @override
  PayoutStatus? get status;
  @override
  PayoutMethod? get method;
  @override
  String? get batchId;
  @override
  int? get tdsDeducted;
  @override
  int? get netAmount;
  @override
  double? get tdsRateApplied;
  @override
  String? get tdsFinancialYear;
  @override
  String? get failureReason;
  @override
  int? get retryCount;
  @override
  DateTime? get processedAt;
  @override
  DateTime? get approvedAt;
  @override
  String? get approvedBy;
  @override
  String? get idempotencyKey;

  /// Create a copy of UpdatePayoutInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePayoutInputImplCopyWith<_$UpdatePayoutInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutWhereUniqueInput _$PayoutWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _PayoutWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get providerPayoutId => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this PayoutWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutWhereUniqueInputCopyWith<PayoutWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutWhereUniqueInputCopyWith<$Res> {
  factory $PayoutWhereUniqueInputCopyWith(PayoutWhereUniqueInput value,
          $Res Function(PayoutWhereUniqueInput) then) =
      _$PayoutWhereUniqueInputCopyWithImpl<$Res, PayoutWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? providerPayoutId, String? idempotencyKey});
}

/// @nodoc
class _$PayoutWhereUniqueInputCopyWithImpl<$Res,
        $Val extends PayoutWhereUniqueInput>
    implements $PayoutWhereUniqueInputCopyWith<$Res> {
  _$PayoutWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? providerPayoutId = freezed,
    Object? idempotencyKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutWhereUniqueInputImplCopyWith<$Res>
    implements $PayoutWhereUniqueInputCopyWith<$Res> {
  factory _$$PayoutWhereUniqueInputImplCopyWith(
          _$PayoutWhereUniqueInputImpl value,
          $Res Function(_$PayoutWhereUniqueInputImpl) then) =
      __$$PayoutWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? providerPayoutId, String? idempotencyKey});
}

/// @nodoc
class __$$PayoutWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$PayoutWhereUniqueInputCopyWithImpl<$Res,
        _$PayoutWhereUniqueInputImpl>
    implements _$$PayoutWhereUniqueInputImplCopyWith<$Res> {
  __$$PayoutWhereUniqueInputImplCopyWithImpl(
      _$PayoutWhereUniqueInputImpl _value,
      $Res Function(_$PayoutWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? providerPayoutId = freezed,
    Object? idempotencyKey = freezed,
  }) {
    return _then(_$PayoutWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutWhereUniqueInputImpl implements _PayoutWhereUniqueInput {
  const _$PayoutWhereUniqueInputImpl(
      {this.id, this.providerPayoutId, this.idempotencyKey});

  factory _$PayoutWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? providerPayoutId;
  @override
  final String? idempotencyKey;

  @override
  String toString() {
    return 'PayoutWhereUniqueInput(id: $id, providerPayoutId: $providerPayoutId, idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, providerPayoutId, idempotencyKey);

  /// Create a copy of PayoutWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutWhereUniqueInputImplCopyWith<_$PayoutWhereUniqueInputImpl>
      get copyWith => __$$PayoutWhereUniqueInputImplCopyWithImpl<
          _$PayoutWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutWhereUniqueInput implements PayoutWhereUniqueInput {
  const factory _PayoutWhereUniqueInput(
      {final String? id,
      final String? providerPayoutId,
      final String? idempotencyKey}) = _$PayoutWhereUniqueInputImpl;

  factory _PayoutWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$PayoutWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get providerPayoutId;
  @override
  String? get idempotencyKey;

  /// Create a copy of PayoutWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutWhereUniqueInputImplCopyWith<_$PayoutWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutWhereInput _$PayoutWhereInputFromJson(Map<String, dynamic> json) {
  return _PayoutWhereInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  PaymentGatewayFilter? get provider => throw _privateConstructorUsedError;
  StringFilter? get providerPayoutId => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  PayoutStatusFilter? get status => throw _privateConstructorUsedError;
  PayoutMethodFilter? get method => throw _privateConstructorUsedError;
  StringFilter? get batchId => throw _privateConstructorUsedError;
  IntFilter? get tdsDeducted => throw _privateConstructorUsedError;
  IntFilter? get netAmount => throw _privateConstructorUsedError;
  FloatFilter? get tdsRateApplied => throw _privateConstructorUsedError;
  StringFilter? get tdsFinancialYear => throw _privateConstructorUsedError;
  StringFilter? get failureReason => throw _privateConstructorUsedError;
  IntFilter? get retryCount => throw _privateConstructorUsedError;
  DateTimeFilter? get processedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get approvedAt => throw _privateConstructorUsedError;
  StringFilter? get approvedBy => throw _privateConstructorUsedError;
  StringFilter? get idempotencyKey => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  List<PayoutWhereInput>? get AND => throw _privateConstructorUsedError;
  List<PayoutWhereInput>? get OR => throw _privateConstructorUsedError;
  PayoutWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this PayoutWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutWhereInputCopyWith<PayoutWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutWhereInputCopyWith<$Res> {
  factory $PayoutWhereInputCopyWith(
          PayoutWhereInput value, $Res Function(PayoutWhereInput) then) =
      _$PayoutWhereInputCopyWithImpl<$Res, PayoutWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      PaymentGatewayFilter? provider,
      StringFilter? providerPayoutId,
      IntFilter? amount,
      StringFilter? currency,
      PayoutStatusFilter? status,
      PayoutMethodFilter? method,
      StringFilter? batchId,
      IntFilter? tdsDeducted,
      IntFilter? netAmount,
      FloatFilter? tdsRateApplied,
      StringFilter? tdsFinancialYear,
      StringFilter? failureReason,
      IntFilter? retryCount,
      DateTimeFilter? processedAt,
      DateTimeFilter? approvedAt,
      StringFilter? approvedBy,
      StringFilter? idempotencyKey,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      List<PayoutWhereInput>? AND,
      List<PayoutWhereInput>? OR,
      PayoutWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $PaymentGatewayFilterCopyWith<$Res>? get provider;
  $StringFilterCopyWith<$Res>? get providerPayoutId;
  $IntFilterCopyWith<$Res>? get amount;
  $StringFilterCopyWith<$Res>? get currency;
  $PayoutStatusFilterCopyWith<$Res>? get status;
  $PayoutMethodFilterCopyWith<$Res>? get method;
  $StringFilterCopyWith<$Res>? get batchId;
  $IntFilterCopyWith<$Res>? get tdsDeducted;
  $IntFilterCopyWith<$Res>? get netAmount;
  $FloatFilterCopyWith<$Res>? get tdsRateApplied;
  $StringFilterCopyWith<$Res>? get tdsFinancialYear;
  $StringFilterCopyWith<$Res>? get failureReason;
  $IntFilterCopyWith<$Res>? get retryCount;
  $DateTimeFilterCopyWith<$Res>? get processedAt;
  $DateTimeFilterCopyWith<$Res>? get approvedAt;
  $StringFilterCopyWith<$Res>? get approvedBy;
  $StringFilterCopyWith<$Res>? get idempotencyKey;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $PayoutWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$PayoutWhereInputCopyWithImpl<$Res, $Val extends PayoutWhereInput>
    implements $PayoutWhereInputCopyWith<$Res> {
  _$PayoutWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? method = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
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
              as PayoutStatusFilter?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethodFilter?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
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
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PayoutWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PayoutWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get providerPayoutId {
    if (_value.providerPayoutId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.providerPayoutId!, (value) {
      return _then(_value.copyWith(providerPayoutId: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $PayoutStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutMethodFilterCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $PayoutMethodFilterCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get batchId {
    if (_value.batchId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.batchId!, (value) {
      return _then(_value.copyWith(batchId: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get tdsDeducted {
    if (_value.tdsDeducted == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.tdsDeducted!, (value) {
      return _then(_value.copyWith(tdsDeducted: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get netAmount {
    if (_value.netAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.netAmount!, (value) {
      return _then(_value.copyWith(netAmount: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get tdsRateApplied {
    if (_value.tdsRateApplied == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.tdsRateApplied!, (value) {
      return _then(_value.copyWith(tdsRateApplied: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get tdsFinancialYear {
    if (_value.tdsFinancialYear == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.tdsFinancialYear!, (value) {
      return _then(_value.copyWith(tdsFinancialYear: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get failureReason {
    if (_value.failureReason == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.failureReason!, (value) {
      return _then(_value.copyWith(failureReason: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get retryCount {
    if (_value.retryCount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.retryCount!, (value) {
      return _then(_value.copyWith(retryCount: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get processedAt {
    if (_value.processedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.processedAt!, (value) {
      return _then(_value.copyWith(processedAt: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get approvedAt {
    if (_value.approvedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.approvedAt!, (value) {
      return _then(_value.copyWith(approvedAt: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get idempotencyKey {
    if (_value.idempotencyKey == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.idempotencyKey!, (value) {
      return _then(_value.copyWith(idempotencyKey: value) as $Val);
    });
  }

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
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

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutWhereInputImplCopyWith<$Res>
    implements $PayoutWhereInputCopyWith<$Res> {
  factory _$$PayoutWhereInputImplCopyWith(_$PayoutWhereInputImpl value,
          $Res Function(_$PayoutWhereInputImpl) then) =
      __$$PayoutWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      PaymentGatewayFilter? provider,
      StringFilter? providerPayoutId,
      IntFilter? amount,
      StringFilter? currency,
      PayoutStatusFilter? status,
      PayoutMethodFilter? method,
      StringFilter? batchId,
      IntFilter? tdsDeducted,
      IntFilter? netAmount,
      FloatFilter? tdsRateApplied,
      StringFilter? tdsFinancialYear,
      StringFilter? failureReason,
      IntFilter? retryCount,
      DateTimeFilter? processedAt,
      DateTimeFilter? approvedAt,
      StringFilter? approvedBy,
      StringFilter? idempotencyKey,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      List<PayoutWhereInput>? AND,
      List<PayoutWhereInput>? OR,
      PayoutWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $PaymentGatewayFilterCopyWith<$Res>? get provider;
  @override
  $StringFilterCopyWith<$Res>? get providerPayoutId;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $PayoutStatusFilterCopyWith<$Res>? get status;
  @override
  $PayoutMethodFilterCopyWith<$Res>? get method;
  @override
  $StringFilterCopyWith<$Res>? get batchId;
  @override
  $IntFilterCopyWith<$Res>? get tdsDeducted;
  @override
  $IntFilterCopyWith<$Res>? get netAmount;
  @override
  $FloatFilterCopyWith<$Res>? get tdsRateApplied;
  @override
  $StringFilterCopyWith<$Res>? get tdsFinancialYear;
  @override
  $StringFilterCopyWith<$Res>? get failureReason;
  @override
  $IntFilterCopyWith<$Res>? get retryCount;
  @override
  $DateTimeFilterCopyWith<$Res>? get processedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get approvedAt;
  @override
  $StringFilterCopyWith<$Res>? get approvedBy;
  @override
  $StringFilterCopyWith<$Res>? get idempotencyKey;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $PayoutWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$PayoutWhereInputImplCopyWithImpl<$Res>
    extends _$PayoutWhereInputCopyWithImpl<$Res, _$PayoutWhereInputImpl>
    implements _$$PayoutWhereInputImplCopyWith<$Res> {
  __$$PayoutWhereInputImplCopyWithImpl(_$PayoutWhereInputImpl _value,
      $Res Function(_$PayoutWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? provider = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? method = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$PayoutWhereInputImpl(
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
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
              as PayoutStatusFilter?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PayoutMethodFilter?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
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
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PayoutWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PayoutWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PayoutWhereInputImpl implements _PayoutWhereInput {
  const _$PayoutWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.provider,
      this.providerPayoutId,
      this.amount,
      this.currency,
      this.status,
      this.method,
      this.batchId,
      this.tdsDeducted,
      this.netAmount,
      this.tdsRateApplied,
      this.tdsFinancialYear,
      this.failureReason,
      this.retryCount,
      this.processedAt,
      this.approvedAt,
      this.approvedBy,
      this.idempotencyKey,
      this.createdAt,
      this.updatedAt,
      this.consultantProfile,
      final List<PayoutWhereInput>? AND,
      final List<PayoutWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$PayoutWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final PaymentGatewayFilter? provider;
  @override
  final StringFilter? providerPayoutId;
  @override
  final IntFilter? amount;
  @override
  final StringFilter? currency;
  @override
  final PayoutStatusFilter? status;
  @override
  final PayoutMethodFilter? method;
  @override
  final StringFilter? batchId;
  @override
  final IntFilter? tdsDeducted;
  @override
  final IntFilter? netAmount;
  @override
  final FloatFilter? tdsRateApplied;
  @override
  final StringFilter? tdsFinancialYear;
  @override
  final StringFilter? failureReason;
  @override
  final IntFilter? retryCount;
  @override
  final DateTimeFilter? processedAt;
  @override
  final DateTimeFilter? approvedAt;
  @override
  final StringFilter? approvedBy;
  @override
  final StringFilter? idempotencyKey;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  final List<PayoutWhereInput>? _AND;
  @override
  List<PayoutWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PayoutWhereInput>? _OR;
  @override
  List<PayoutWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PayoutWhereInput? NOT;

  @override
  String toString() {
    return 'PayoutWhereInput(id: $id, consultantProfileId: $consultantProfileId, provider: $provider, providerPayoutId: $providerPayoutId, amount: $amount, currency: $currency, status: $status, method: $method, batchId: $batchId, tdsDeducted: $tdsDeducted, netAmount: $netAmount, tdsRateApplied: $tdsRateApplied, tdsFinancialYear: $tdsFinancialYear, failureReason: $failureReason, retryCount: $retryCount, processedAt: $processedAt, approvedAt: $approvedAt, approvedBy: $approvedBy, idempotencyKey: $idempotencyKey, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.tdsRateApplied, tdsRateApplied) ||
                other.tdsRateApplied == tdsRateApplied) &&
            (identical(other.tdsFinancialYear, tdsFinancialYear) ||
                other.tdsFinancialYear == tdsFinancialYear) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
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
        providerPayoutId,
        amount,
        currency,
        status,
        method,
        batchId,
        tdsDeducted,
        netAmount,
        tdsRateApplied,
        tdsFinancialYear,
        failureReason,
        retryCount,
        processedAt,
        approvedAt,
        approvedBy,
        idempotencyKey,
        createdAt,
        updatedAt,
        consultantProfile,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutWhereInputImplCopyWith<_$PayoutWhereInputImpl> get copyWith =>
      __$$PayoutWhereInputImplCopyWithImpl<_$PayoutWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutWhereInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutWhereInput implements PayoutWhereInput {
  const factory _PayoutWhereInput(
      {final StringFilter? id,
      final StringFilter? consultantProfileId,
      final PaymentGatewayFilter? provider,
      final StringFilter? providerPayoutId,
      final IntFilter? amount,
      final StringFilter? currency,
      final PayoutStatusFilter? status,
      final PayoutMethodFilter? method,
      final StringFilter? batchId,
      final IntFilter? tdsDeducted,
      final IntFilter? netAmount,
      final FloatFilter? tdsRateApplied,
      final StringFilter? tdsFinancialYear,
      final StringFilter? failureReason,
      final IntFilter? retryCount,
      final DateTimeFilter? processedAt,
      final DateTimeFilter? approvedAt,
      final StringFilter? approvedBy,
      final StringFilter? idempotencyKey,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final ConsultantProfileRelationFilter? consultantProfile,
      final List<PayoutWhereInput>? AND,
      final List<PayoutWhereInput>? OR,
      final PayoutWhereInput? NOT}) = _$PayoutWhereInputImpl;

  factory _PayoutWhereInput.fromJson(Map<String, dynamic> json) =
      _$PayoutWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  PaymentGatewayFilter? get provider;
  @override
  StringFilter? get providerPayoutId;
  @override
  IntFilter? get amount;
  @override
  StringFilter? get currency;
  @override
  PayoutStatusFilter? get status;
  @override
  PayoutMethodFilter? get method;
  @override
  StringFilter? get batchId;
  @override
  IntFilter? get tdsDeducted;
  @override
  IntFilter? get netAmount;
  @override
  FloatFilter? get tdsRateApplied;
  @override
  StringFilter? get tdsFinancialYear;
  @override
  StringFilter? get failureReason;
  @override
  IntFilter? get retryCount;
  @override
  DateTimeFilter? get processedAt;
  @override
  DateTimeFilter? get approvedAt;
  @override
  StringFilter? get approvedBy;
  @override
  StringFilter? get idempotencyKey;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  List<PayoutWhereInput>? get AND;
  @override
  List<PayoutWhereInput>? get OR;
  @override
  PayoutWhereInput? get NOT;

  /// Create a copy of PayoutWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutWhereInputImplCopyWith<_$PayoutWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutListRelationFilter _$PayoutListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PayoutListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutListRelationFilter {
  /// At least one related record matches
  PayoutWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  PayoutWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  PayoutWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this PayoutListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutListRelationFilterCopyWith<PayoutListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutListRelationFilterCopyWith<$Res> {
  factory $PayoutListRelationFilterCopyWith(PayoutListRelationFilter value,
          $Res Function(PayoutListRelationFilter) then) =
      _$PayoutListRelationFilterCopyWithImpl<$Res, PayoutListRelationFilter>;
  @useResult
  $Res call(
      {PayoutWhereInput? some,
      PayoutWhereInput? every,
      PayoutWhereInput? none});

  $PayoutWhereInputCopyWith<$Res>? get some;
  $PayoutWhereInputCopyWith<$Res>? get every;
  $PayoutWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$PayoutListRelationFilterCopyWithImpl<$Res,
        $Val extends PayoutListRelationFilter>
    implements $PayoutListRelationFilterCopyWith<$Res> {
  _$PayoutListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutListRelationFilter
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
              as PayoutWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutListRelationFilterImplCopyWith<$Res>
    implements $PayoutListRelationFilterCopyWith<$Res> {
  factory _$$PayoutListRelationFilterImplCopyWith(
          _$PayoutListRelationFilterImpl value,
          $Res Function(_$PayoutListRelationFilterImpl) then) =
      __$$PayoutListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutWhereInput? some,
      PayoutWhereInput? every,
      PayoutWhereInput? none});

  @override
  $PayoutWhereInputCopyWith<$Res>? get some;
  @override
  $PayoutWhereInputCopyWith<$Res>? get every;
  @override
  $PayoutWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$PayoutListRelationFilterImplCopyWithImpl<$Res>
    extends _$PayoutListRelationFilterCopyWithImpl<$Res,
        _$PayoutListRelationFilterImpl>
    implements _$$PayoutListRelationFilterImplCopyWith<$Res> {
  __$$PayoutListRelationFilterImplCopyWithImpl(
      _$PayoutListRelationFilterImpl _value,
      $Res Function(_$PayoutListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$PayoutListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutListRelationFilterImpl implements _PayoutListRelationFilter {
  const _$PayoutListRelationFilterImpl({this.some, this.every, this.none});

  factory _$PayoutListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final PayoutWhereInput? some;

  /// All related records match
  @override
  final PayoutWhereInput? every;

  /// No related records match
  @override
  final PayoutWhereInput? none;

  @override
  String toString() {
    return 'PayoutListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutListRelationFilterImplCopyWith<_$PayoutListRelationFilterImpl>
      get copyWith => __$$PayoutListRelationFilterImplCopyWithImpl<
          _$PayoutListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutListRelationFilter implements PayoutListRelationFilter {
  const factory _PayoutListRelationFilter(
      {final PayoutWhereInput? some,
      final PayoutWhereInput? every,
      final PayoutWhereInput? none}) = _$PayoutListRelationFilterImpl;

  factory _PayoutListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  PayoutWhereInput? get some;

  /// All related records match
  @override
  PayoutWhereInput? get every;

  /// No related records match
  @override
  PayoutWhereInput? get none;

  /// Create a copy of PayoutListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutListRelationFilterImplCopyWith<_$PayoutListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutRelationFilter _$PayoutRelationFilterFromJson(Map<String, dynamic> json) {
  return _PayoutRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  PayoutWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  PayoutWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this PayoutRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutRelationFilterCopyWith<PayoutRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutRelationFilterCopyWith<$Res> {
  factory $PayoutRelationFilterCopyWith(PayoutRelationFilter value,
          $Res Function(PayoutRelationFilter) then) =
      _$PayoutRelationFilterCopyWithImpl<$Res, PayoutRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PayoutWhereInput? is_, PayoutWhereInput? isNot});

  $PayoutWhereInputCopyWith<$Res>? get is_;
  $PayoutWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$PayoutRelationFilterCopyWithImpl<$Res,
        $Val extends PayoutRelationFilter>
    implements $PayoutRelationFilterCopyWith<$Res> {
  _$PayoutRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutRelationFilter
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
              as PayoutWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayoutWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $PayoutWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutRelationFilterImplCopyWith<$Res>
    implements $PayoutRelationFilterCopyWith<$Res> {
  factory _$$PayoutRelationFilterImplCopyWith(_$PayoutRelationFilterImpl value,
          $Res Function(_$PayoutRelationFilterImpl) then) =
      __$$PayoutRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PayoutWhereInput? is_, PayoutWhereInput? isNot});

  @override
  $PayoutWhereInputCopyWith<$Res>? get is_;
  @override
  $PayoutWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$PayoutRelationFilterImplCopyWithImpl<$Res>
    extends _$PayoutRelationFilterCopyWithImpl<$Res, _$PayoutRelationFilterImpl>
    implements _$$PayoutRelationFilterImplCopyWith<$Res> {
  __$$PayoutRelationFilterImplCopyWithImpl(_$PayoutRelationFilterImpl _value,
      $Res Function(_$PayoutRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$PayoutRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PayoutWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutRelationFilterImpl implements _PayoutRelationFilter {
  const _$PayoutRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$PayoutRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final PayoutWhereInput? is_;

  /// Related record does not match
  @override
  final PayoutWhereInput? isNot;

  @override
  String toString() {
    return 'PayoutRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutRelationFilterImplCopyWith<_$PayoutRelationFilterImpl>
      get copyWith =>
          __$$PayoutRelationFilterImplCopyWithImpl<_$PayoutRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutRelationFilter implements PayoutRelationFilter {
  const factory _PayoutRelationFilter(
      {@JsonKey(name: 'is') final PayoutWhereInput? is_,
      final PayoutWhereInput? isNot}) = _$PayoutRelationFilterImpl;

  factory _PayoutRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  PayoutWhereInput? get is_;

  /// Related record does not match
  @override
  PayoutWhereInput? get isNot;

  /// Create a copy of PayoutRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutRelationFilterImplCopyWith<_$PayoutRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayoutOrderByInput _$PayoutOrderByInputFromJson(Map<String, dynamic> json) {
  return _PayoutOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$PayoutOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get providerPayoutId => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get batchId => throw _privateConstructorUsedError;
  SortOrder? get tdsDeducted => throw _privateConstructorUsedError;
  SortOrder? get netAmount => throw _privateConstructorUsedError;
  SortOrder? get tdsRateApplied => throw _privateConstructorUsedError;
  SortOrder? get tdsFinancialYear => throw _privateConstructorUsedError;
  SortOrder? get failureReason => throw _privateConstructorUsedError;
  SortOrder? get retryCount => throw _privateConstructorUsedError;
  SortOrder? get processedAt => throw _privateConstructorUsedError;
  SortOrder? get approvedAt => throw _privateConstructorUsedError;
  SortOrder? get approvedBy => throw _privateConstructorUsedError;
  SortOrder? get idempotencyKey => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PayoutOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutOrderByInputCopyWith<PayoutOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutOrderByInputCopyWith<$Res> {
  factory $PayoutOrderByInputCopyWith(
          PayoutOrderByInput value, $Res Function(PayoutOrderByInput) then) =
      _$PayoutOrderByInputCopyWithImpl<$Res, PayoutOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? providerPayoutId,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? batchId,
      SortOrder? tdsDeducted,
      SortOrder? netAmount,
      SortOrder? tdsRateApplied,
      SortOrder? tdsFinancialYear,
      SortOrder? failureReason,
      SortOrder? retryCount,
      SortOrder? processedAt,
      SortOrder? approvedAt,
      SortOrder? approvedBy,
      SortOrder? idempotencyKey,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$PayoutOrderByInputCopyWithImpl<$Res, $Val extends PayoutOrderByInput>
    implements $PayoutOrderByInputCopyWith<$Res> {
  _$PayoutOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
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
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PayoutOrderByInputImplCopyWith<$Res>
    implements $PayoutOrderByInputCopyWith<$Res> {
  factory _$$PayoutOrderByInputImplCopyWith(_$PayoutOrderByInputImpl value,
          $Res Function(_$PayoutOrderByInputImpl) then) =
      __$$PayoutOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? providerPayoutId,
      SortOrder? amount,
      SortOrder? currency,
      SortOrder? batchId,
      SortOrder? tdsDeducted,
      SortOrder? netAmount,
      SortOrder? tdsRateApplied,
      SortOrder? tdsFinancialYear,
      SortOrder? failureReason,
      SortOrder? retryCount,
      SortOrder? processedAt,
      SortOrder? approvedAt,
      SortOrder? approvedBy,
      SortOrder? idempotencyKey,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$PayoutOrderByInputImplCopyWithImpl<$Res>
    extends _$PayoutOrderByInputCopyWithImpl<$Res, _$PayoutOrderByInputImpl>
    implements _$$PayoutOrderByInputImplCopyWith<$Res> {
  __$$PayoutOrderByInputImplCopyWithImpl(_$PayoutOrderByInputImpl _value,
      $Res Function(_$PayoutOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? providerPayoutId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? batchId = freezed,
    Object? tdsDeducted = freezed,
    Object? netAmount = freezed,
    Object? tdsRateApplied = freezed,
    Object? tdsFinancialYear = freezed,
    Object? failureReason = freezed,
    Object? retryCount = freezed,
    Object? processedAt = freezed,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? idempotencyKey = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PayoutOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      providerPayoutId: freezed == providerPayoutId
          ? _value.providerPayoutId
          : providerPayoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsRateApplied: freezed == tdsRateApplied
          ? _value.tdsRateApplied
          : tdsRateApplied // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsFinancialYear: freezed == tdsFinancialYear
          ? _value.tdsFinancialYear
          : tdsFinancialYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      retryCount: freezed == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      idempotencyKey: freezed == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
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
class _$PayoutOrderByInputImpl implements _PayoutOrderByInput {
  const _$PayoutOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.providerPayoutId,
      this.amount,
      this.currency,
      this.batchId,
      this.tdsDeducted,
      this.netAmount,
      this.tdsRateApplied,
      this.tdsFinancialYear,
      this.failureReason,
      this.retryCount,
      this.processedAt,
      this.approvedAt,
      this.approvedBy,
      this.idempotencyKey,
      this.createdAt,
      this.updatedAt});

  factory _$PayoutOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? providerPayoutId;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? batchId;
  @override
  final SortOrder? tdsDeducted;
  @override
  final SortOrder? netAmount;
  @override
  final SortOrder? tdsRateApplied;
  @override
  final SortOrder? tdsFinancialYear;
  @override
  final SortOrder? failureReason;
  @override
  final SortOrder? retryCount;
  @override
  final SortOrder? processedAt;
  @override
  final SortOrder? approvedAt;
  @override
  final SortOrder? approvedBy;
  @override
  final SortOrder? idempotencyKey;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'PayoutOrderByInput(id: $id, consultantProfileId: $consultantProfileId, providerPayoutId: $providerPayoutId, amount: $amount, currency: $currency, batchId: $batchId, tdsDeducted: $tdsDeducted, netAmount: $netAmount, tdsRateApplied: $tdsRateApplied, tdsFinancialYear: $tdsFinancialYear, failureReason: $failureReason, retryCount: $retryCount, processedAt: $processedAt, approvedAt: $approvedAt, approvedBy: $approvedBy, idempotencyKey: $idempotencyKey, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.providerPayoutId, providerPayoutId) ||
                other.providerPayoutId == providerPayoutId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.tdsRateApplied, tdsRateApplied) ||
                other.tdsRateApplied == tdsRateApplied) &&
            (identical(other.tdsFinancialYear, tdsFinancialYear) ||
                other.tdsFinancialYear == tdsFinancialYear) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
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
      providerPayoutId,
      amount,
      currency,
      batchId,
      tdsDeducted,
      netAmount,
      tdsRateApplied,
      tdsFinancialYear,
      failureReason,
      retryCount,
      processedAt,
      approvedAt,
      approvedBy,
      idempotencyKey,
      createdAt,
      updatedAt);

  /// Create a copy of PayoutOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutOrderByInputImplCopyWith<_$PayoutOrderByInputImpl> get copyWith =>
      __$$PayoutOrderByInputImplCopyWithImpl<_$PayoutOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _PayoutOrderByInput implements PayoutOrderByInput {
  const factory _PayoutOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? providerPayoutId,
      final SortOrder? amount,
      final SortOrder? currency,
      final SortOrder? batchId,
      final SortOrder? tdsDeducted,
      final SortOrder? netAmount,
      final SortOrder? tdsRateApplied,
      final SortOrder? tdsFinancialYear,
      final SortOrder? failureReason,
      final SortOrder? retryCount,
      final SortOrder? processedAt,
      final SortOrder? approvedAt,
      final SortOrder? approvedBy,
      final SortOrder? idempotencyKey,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$PayoutOrderByInputImpl;

  factory _PayoutOrderByInput.fromJson(Map<String, dynamic> json) =
      _$PayoutOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get providerPayoutId;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get batchId;
  @override
  SortOrder? get tdsDeducted;
  @override
  SortOrder? get netAmount;
  @override
  SortOrder? get tdsRateApplied;
  @override
  SortOrder? get tdsFinancialYear;
  @override
  SortOrder? get failureReason;
  @override
  SortOrder? get retryCount;
  @override
  SortOrder? get processedAt;
  @override
  SortOrder? get approvedAt;
  @override
  SortOrder? get approvedBy;
  @override
  SortOrder? get idempotencyKey;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of PayoutOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutOrderByInputImplCopyWith<_$PayoutOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
