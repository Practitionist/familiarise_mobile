// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 't_d_s_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TDSRecord _$TDSRecordFromJson(Map<String, dynamic> json) {
  return _TDSRecord.fromJson(json);
}

/// @nodoc
mixin _$TDSRecord {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get financialYear => throw _privateConstructorUsedError;
  int get quarter => throw _privateConstructorUsedError;
  int get cumulativeAmountCredited => throw _privateConstructorUsedError;
  int get tdsDeducted => throw _privateConstructorUsedError;
  double get tdsRate => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  String? get earningsId => throw _privateConstructorUsedError;
  bool get isReversal => throw _privateConstructorUsedError;
  bool get reportedInForm26Q => throw _privateConstructorUsedError;
  DateTime? get form26QFilingDate => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payout? get payout => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TDSRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordCopyWith<TDSRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordCopyWith<$Res> {
  factory $TDSRecordCopyWith(TDSRecord value, $Res Function(TDSRecord) then) =
      _$TDSRecordCopyWithImpl<$Res, TDSRecord>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String financialYear,
      int quarter,
      int cumulativeAmountCredited,
      int tdsDeducted,
      double tdsRate,
      String? payoutId,
      String? earningsId,
      bool isReversal,
      bool reportedInForm26Q,
      DateTime? form26QFilingDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) Payout? payout,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $PayoutCopyWith<$Res>? get payout;
}

/// @nodoc
class _$TDSRecordCopyWithImpl<$Res, $Val extends TDSRecord>
    implements $TDSRecordCopyWith<$Res> {
  _$TDSRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? financialYear = null,
    Object? quarter = null,
    Object? cumulativeAmountCredited = null,
    Object? tdsDeducted = null,
    Object? tdsRate = null,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = null,
    Object? reportedInForm26Q = null,
    Object? form26QFilingDate = freezed,
    Object? consultantProfile = freezed,
    Object? payout = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      financialYear: null == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeAmountCredited: null == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      tdsRate: null == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: null == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool,
      reportedInForm26Q: null == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as Payout?,
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

  /// Create a copy of TDSRecord
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

  /// Create a copy of TDSRecord
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
abstract class _$$TDSRecordImplCopyWith<$Res>
    implements $TDSRecordCopyWith<$Res> {
  factory _$$TDSRecordImplCopyWith(
          _$TDSRecordImpl value, $Res Function(_$TDSRecordImpl) then) =
      __$$TDSRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String financialYear,
      int quarter,
      int cumulativeAmountCredited,
      int tdsDeducted,
      double tdsRate,
      String? payoutId,
      String? earningsId,
      bool isReversal,
      bool reportedInForm26Q,
      DateTime? form26QFilingDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) Payout? payout,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $PayoutCopyWith<$Res>? get payout;
}

/// @nodoc
class __$$TDSRecordImplCopyWithImpl<$Res>
    extends _$TDSRecordCopyWithImpl<$Res, _$TDSRecordImpl>
    implements _$$TDSRecordImplCopyWith<$Res> {
  __$$TDSRecordImplCopyWithImpl(
      _$TDSRecordImpl _value, $Res Function(_$TDSRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? financialYear = null,
    Object? quarter = null,
    Object? cumulativeAmountCredited = null,
    Object? tdsDeducted = null,
    Object? tdsRate = null,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = null,
    Object? reportedInForm26Q = null,
    Object? form26QFilingDate = freezed,
    Object? consultantProfile = freezed,
    Object? payout = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TDSRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      financialYear: null == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeAmountCredited: null == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      tdsRate: null == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: null == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool,
      reportedInForm26Q: null == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as Payout?,
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
class _$TDSRecordImpl implements _TDSRecord {
  const _$TDSRecordImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.financialYear,
      required this.quarter,
      required this.cumulativeAmountCredited,
      required this.tdsDeducted,
      required this.tdsRate,
      this.payoutId,
      this.earningsId,
      this.isReversal = false,
      this.reportedInForm26Q = false,
      this.form26QFilingDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payout,
      required this.createdAt,
      required this.updatedAt});

  factory _$TDSRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$TDSRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final String financialYear;
  @override
  final int quarter;
  @override
  final int cumulativeAmountCredited;
  @override
  final int tdsDeducted;
  @override
  final double tdsRate;
  @override
  final String? payoutId;
  @override
  final String? earningsId;
  @override
  @JsonKey()
  final bool isReversal;
  @override
  @JsonKey()
  final bool reportedInForm26Q;
  @override
  final DateTime? form26QFilingDate;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Payout? payout;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TDSRecord(id: $id, consultantProfileId: $consultantProfileId, financialYear: $financialYear, quarter: $quarter, cumulativeAmountCredited: $cumulativeAmountCredited, tdsDeducted: $tdsDeducted, tdsRate: $tdsRate, payoutId: $payoutId, earningsId: $earningsId, isReversal: $isReversal, reportedInForm26Q: $reportedInForm26Q, form26QFilingDate: $form26QFilingDate, consultantProfile: $consultantProfile, payout: $payout, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.financialYear, financialYear) ||
                other.financialYear == financialYear) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(
                    other.cumulativeAmountCredited, cumulativeAmountCredited) ||
                other.cumulativeAmountCredited == cumulativeAmountCredited) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.tdsRate, tdsRate) || other.tdsRate == tdsRate) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.earningsId, earningsId) ||
                other.earningsId == earningsId) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.reportedInForm26Q, reportedInForm26Q) ||
                other.reportedInForm26Q == reportedInForm26Q) &&
            (identical(other.form26QFilingDate, form26QFilingDate) ||
                other.form26QFilingDate == form26QFilingDate) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.payout, payout) || other.payout == payout) &&
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
      financialYear,
      quarter,
      cumulativeAmountCredited,
      tdsDeducted,
      tdsRate,
      payoutId,
      earningsId,
      isReversal,
      reportedInForm26Q,
      form26QFilingDate,
      consultantProfile,
      payout,
      createdAt,
      updatedAt);

  /// Create a copy of TDSRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordImplCopyWith<_$TDSRecordImpl> get copyWith =>
      __$$TDSRecordImplCopyWithImpl<_$TDSRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordImplToJson(
      this,
    );
  }
}

abstract class _TDSRecord implements TDSRecord {
  const factory _TDSRecord(
      {required final String id,
      required final String consultantProfileId,
      required final String financialYear,
      required final int quarter,
      required final int cumulativeAmountCredited,
      required final int tdsDeducted,
      required final double tdsRate,
      final String? payoutId,
      final String? earningsId,
      final bool isReversal,
      final bool reportedInForm26Q,
      final DateTime? form26QFilingDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Payout? payout,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TDSRecordImpl;

  factory _TDSRecord.fromJson(Map<String, dynamic> json) =
      _$TDSRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  String get financialYear;
  @override
  int get quarter;
  @override
  int get cumulativeAmountCredited;
  @override
  int get tdsDeducted;
  @override
  double get tdsRate;
  @override
  String? get payoutId;
  @override
  String? get earningsId;
  @override
  bool get isReversal;
  @override
  bool get reportedInForm26Q;
  @override
  DateTime? get form26QFilingDate;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Payout? get payout;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TDSRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordImplCopyWith<_$TDSRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTDSRecordInput _$CreateTDSRecordInputFromJson(Map<String, dynamic> json) {
  return _CreateTDSRecordInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTDSRecordInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get financialYear => throw _privateConstructorUsedError;
  int get quarter => throw _privateConstructorUsedError;
  int get cumulativeAmountCredited => throw _privateConstructorUsedError;
  int get tdsDeducted => throw _privateConstructorUsedError;
  double get tdsRate => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  String? get earningsId => throw _privateConstructorUsedError;
  bool? get isReversal => throw _privateConstructorUsedError;
  bool? get reportedInForm26Q => throw _privateConstructorUsedError;
  DateTime? get form26QFilingDate => throw _privateConstructorUsedError;

  /// Serializes this CreateTDSRecordInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTDSRecordInputCopyWith<CreateTDSRecordInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTDSRecordInputCopyWith<$Res> {
  factory $CreateTDSRecordInputCopyWith(CreateTDSRecordInput value,
          $Res Function(CreateTDSRecordInput) then) =
      _$CreateTDSRecordInputCopyWithImpl<$Res, CreateTDSRecordInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      String financialYear,
      int quarter,
      int cumulativeAmountCredited,
      int tdsDeducted,
      double tdsRate,
      String? payoutId,
      String? earningsId,
      bool? isReversal,
      bool? reportedInForm26Q,
      DateTime? form26QFilingDate});
}

/// @nodoc
class _$CreateTDSRecordInputCopyWithImpl<$Res,
        $Val extends CreateTDSRecordInput>
    implements $CreateTDSRecordInputCopyWith<$Res> {
  _$CreateTDSRecordInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? financialYear = null,
    Object? quarter = null,
    Object? cumulativeAmountCredited = null,
    Object? tdsDeducted = null,
    Object? tdsRate = null,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      financialYear: null == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeAmountCredited: null == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      tdsRate: null == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTDSRecordInputImplCopyWith<$Res>
    implements $CreateTDSRecordInputCopyWith<$Res> {
  factory _$$CreateTDSRecordInputImplCopyWith(_$CreateTDSRecordInputImpl value,
          $Res Function(_$CreateTDSRecordInputImpl) then) =
      __$$CreateTDSRecordInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      String financialYear,
      int quarter,
      int cumulativeAmountCredited,
      int tdsDeducted,
      double tdsRate,
      String? payoutId,
      String? earningsId,
      bool? isReversal,
      bool? reportedInForm26Q,
      DateTime? form26QFilingDate});
}

/// @nodoc
class __$$CreateTDSRecordInputImplCopyWithImpl<$Res>
    extends _$CreateTDSRecordInputCopyWithImpl<$Res, _$CreateTDSRecordInputImpl>
    implements _$$CreateTDSRecordInputImplCopyWith<$Res> {
  __$$CreateTDSRecordInputImplCopyWithImpl(_$CreateTDSRecordInputImpl _value,
      $Res Function(_$CreateTDSRecordInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? financialYear = null,
    Object? quarter = null,
    Object? cumulativeAmountCredited = null,
    Object? tdsDeducted = null,
    Object? tdsRate = null,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
  }) {
    return _then(_$CreateTDSRecordInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      financialYear: null == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeAmountCredited: null == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int,
      tdsDeducted: null == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int,
      tdsRate: null == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTDSRecordInputImpl implements _CreateTDSRecordInput {
  const _$CreateTDSRecordInputImpl(
      {required this.consultantProfileId,
      required this.financialYear,
      required this.quarter,
      required this.cumulativeAmountCredited,
      required this.tdsDeducted,
      required this.tdsRate,
      this.payoutId,
      this.earningsId,
      this.isReversal = false,
      this.reportedInForm26Q = false,
      this.form26QFilingDate});

  factory _$CreateTDSRecordInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTDSRecordInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final String financialYear;
  @override
  final int quarter;
  @override
  final int cumulativeAmountCredited;
  @override
  final int tdsDeducted;
  @override
  final double tdsRate;
  @override
  final String? payoutId;
  @override
  final String? earningsId;
  @override
  @JsonKey()
  final bool? isReversal;
  @override
  @JsonKey()
  final bool? reportedInForm26Q;
  @override
  final DateTime? form26QFilingDate;

  @override
  String toString() {
    return 'CreateTDSRecordInput(consultantProfileId: $consultantProfileId, financialYear: $financialYear, quarter: $quarter, cumulativeAmountCredited: $cumulativeAmountCredited, tdsDeducted: $tdsDeducted, tdsRate: $tdsRate, payoutId: $payoutId, earningsId: $earningsId, isReversal: $isReversal, reportedInForm26Q: $reportedInForm26Q, form26QFilingDate: $form26QFilingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTDSRecordInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.financialYear, financialYear) ||
                other.financialYear == financialYear) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(
                    other.cumulativeAmountCredited, cumulativeAmountCredited) ||
                other.cumulativeAmountCredited == cumulativeAmountCredited) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.tdsRate, tdsRate) || other.tdsRate == tdsRate) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.earningsId, earningsId) ||
                other.earningsId == earningsId) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.reportedInForm26Q, reportedInForm26Q) ||
                other.reportedInForm26Q == reportedInForm26Q) &&
            (identical(other.form26QFilingDate, form26QFilingDate) ||
                other.form26QFilingDate == form26QFilingDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      financialYear,
      quarter,
      cumulativeAmountCredited,
      tdsDeducted,
      tdsRate,
      payoutId,
      earningsId,
      isReversal,
      reportedInForm26Q,
      form26QFilingDate);

  /// Create a copy of CreateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTDSRecordInputImplCopyWith<_$CreateTDSRecordInputImpl>
      get copyWith =>
          __$$CreateTDSRecordInputImplCopyWithImpl<_$CreateTDSRecordInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTDSRecordInputImplToJson(
      this,
    );
  }
}

abstract class _CreateTDSRecordInput implements CreateTDSRecordInput {
  const factory _CreateTDSRecordInput(
      {required final String consultantProfileId,
      required final String financialYear,
      required final int quarter,
      required final int cumulativeAmountCredited,
      required final int tdsDeducted,
      required final double tdsRate,
      final String? payoutId,
      final String? earningsId,
      final bool? isReversal,
      final bool? reportedInForm26Q,
      final DateTime? form26QFilingDate}) = _$CreateTDSRecordInputImpl;

  factory _CreateTDSRecordInput.fromJson(Map<String, dynamic> json) =
      _$CreateTDSRecordInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  String get financialYear;
  @override
  int get quarter;
  @override
  int get cumulativeAmountCredited;
  @override
  int get tdsDeducted;
  @override
  double get tdsRate;
  @override
  String? get payoutId;
  @override
  String? get earningsId;
  @override
  bool? get isReversal;
  @override
  bool? get reportedInForm26Q;
  @override
  DateTime? get form26QFilingDate;

  /// Create a copy of CreateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTDSRecordInputImplCopyWith<_$CreateTDSRecordInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateTDSRecordInput _$UpdateTDSRecordInputFromJson(Map<String, dynamic> json) {
  return _UpdateTDSRecordInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTDSRecordInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get financialYear => throw _privateConstructorUsedError;
  int? get quarter => throw _privateConstructorUsedError;
  int? get cumulativeAmountCredited => throw _privateConstructorUsedError;
  int? get tdsDeducted => throw _privateConstructorUsedError;
  double? get tdsRate => throw _privateConstructorUsedError;
  String? get payoutId => throw _privateConstructorUsedError;
  String? get earningsId => throw _privateConstructorUsedError;
  bool? get isReversal => throw _privateConstructorUsedError;
  bool? get reportedInForm26Q => throw _privateConstructorUsedError;
  DateTime? get form26QFilingDate => throw _privateConstructorUsedError;

  /// Serializes this UpdateTDSRecordInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTDSRecordInputCopyWith<UpdateTDSRecordInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTDSRecordInputCopyWith<$Res> {
  factory $UpdateTDSRecordInputCopyWith(UpdateTDSRecordInput value,
          $Res Function(UpdateTDSRecordInput) then) =
      _$UpdateTDSRecordInputCopyWithImpl<$Res, UpdateTDSRecordInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? financialYear,
      int? quarter,
      int? cumulativeAmountCredited,
      int? tdsDeducted,
      double? tdsRate,
      String? payoutId,
      String? earningsId,
      bool? isReversal,
      bool? reportedInForm26Q,
      DateTime? form26QFilingDate});
}

/// @nodoc
class _$UpdateTDSRecordInputCopyWithImpl<$Res,
        $Val extends UpdateTDSRecordInput>
    implements $UpdateTDSRecordInputCopyWith<$Res> {
  _$UpdateTDSRecordInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTDSRecordInputImplCopyWith<$Res>
    implements $UpdateTDSRecordInputCopyWith<$Res> {
  factory _$$UpdateTDSRecordInputImplCopyWith(_$UpdateTDSRecordInputImpl value,
          $Res Function(_$UpdateTDSRecordInputImpl) then) =
      __$$UpdateTDSRecordInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? financialYear,
      int? quarter,
      int? cumulativeAmountCredited,
      int? tdsDeducted,
      double? tdsRate,
      String? payoutId,
      String? earningsId,
      bool? isReversal,
      bool? reportedInForm26Q,
      DateTime? form26QFilingDate});
}

/// @nodoc
class __$$UpdateTDSRecordInputImplCopyWithImpl<$Res>
    extends _$UpdateTDSRecordInputCopyWithImpl<$Res, _$UpdateTDSRecordInputImpl>
    implements _$$UpdateTDSRecordInputImplCopyWith<$Res> {
  __$$UpdateTDSRecordInputImplCopyWithImpl(_$UpdateTDSRecordInputImpl _value,
      $Res Function(_$UpdateTDSRecordInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
  }) {
    return _then(_$UpdateTDSRecordInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as String?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as int?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as int?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as double?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as bool?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTDSRecordInputImpl implements _UpdateTDSRecordInput {
  const _$UpdateTDSRecordInputImpl(
      {this.consultantProfileId,
      this.financialYear,
      this.quarter,
      this.cumulativeAmountCredited,
      this.tdsDeducted,
      this.tdsRate,
      this.payoutId,
      this.earningsId,
      this.isReversal,
      this.reportedInForm26Q,
      this.form26QFilingDate});

  factory _$UpdateTDSRecordInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTDSRecordInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final String? financialYear;
  @override
  final int? quarter;
  @override
  final int? cumulativeAmountCredited;
  @override
  final int? tdsDeducted;
  @override
  final double? tdsRate;
  @override
  final String? payoutId;
  @override
  final String? earningsId;
  @override
  final bool? isReversal;
  @override
  final bool? reportedInForm26Q;
  @override
  final DateTime? form26QFilingDate;

  @override
  String toString() {
    return 'UpdateTDSRecordInput(consultantProfileId: $consultantProfileId, financialYear: $financialYear, quarter: $quarter, cumulativeAmountCredited: $cumulativeAmountCredited, tdsDeducted: $tdsDeducted, tdsRate: $tdsRate, payoutId: $payoutId, earningsId: $earningsId, isReversal: $isReversal, reportedInForm26Q: $reportedInForm26Q, form26QFilingDate: $form26QFilingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTDSRecordInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.financialYear, financialYear) ||
                other.financialYear == financialYear) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(
                    other.cumulativeAmountCredited, cumulativeAmountCredited) ||
                other.cumulativeAmountCredited == cumulativeAmountCredited) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.tdsRate, tdsRate) || other.tdsRate == tdsRate) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.earningsId, earningsId) ||
                other.earningsId == earningsId) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.reportedInForm26Q, reportedInForm26Q) ||
                other.reportedInForm26Q == reportedInForm26Q) &&
            (identical(other.form26QFilingDate, form26QFilingDate) ||
                other.form26QFilingDate == form26QFilingDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      financialYear,
      quarter,
      cumulativeAmountCredited,
      tdsDeducted,
      tdsRate,
      payoutId,
      earningsId,
      isReversal,
      reportedInForm26Q,
      form26QFilingDate);

  /// Create a copy of UpdateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTDSRecordInputImplCopyWith<_$UpdateTDSRecordInputImpl>
      get copyWith =>
          __$$UpdateTDSRecordInputImplCopyWithImpl<_$UpdateTDSRecordInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTDSRecordInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateTDSRecordInput implements UpdateTDSRecordInput {
  const factory _UpdateTDSRecordInput(
      {final String? consultantProfileId,
      final String? financialYear,
      final int? quarter,
      final int? cumulativeAmountCredited,
      final int? tdsDeducted,
      final double? tdsRate,
      final String? payoutId,
      final String? earningsId,
      final bool? isReversal,
      final bool? reportedInForm26Q,
      final DateTime? form26QFilingDate}) = _$UpdateTDSRecordInputImpl;

  factory _UpdateTDSRecordInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTDSRecordInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  String? get financialYear;
  @override
  int? get quarter;
  @override
  int? get cumulativeAmountCredited;
  @override
  int? get tdsDeducted;
  @override
  double? get tdsRate;
  @override
  String? get payoutId;
  @override
  String? get earningsId;
  @override
  bool? get isReversal;
  @override
  bool? get reportedInForm26Q;
  @override
  DateTime? get form26QFilingDate;

  /// Create a copy of UpdateTDSRecordInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTDSRecordInputImplCopyWith<_$UpdateTDSRecordInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TDSRecordWhereUniqueInput _$TDSRecordWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _TDSRecordWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$TDSRecordWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this TDSRecordWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecordWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordWhereUniqueInputCopyWith<TDSRecordWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordWhereUniqueInputCopyWith<$Res> {
  factory $TDSRecordWhereUniqueInputCopyWith(TDSRecordWhereUniqueInput value,
          $Res Function(TDSRecordWhereUniqueInput) then) =
      _$TDSRecordWhereUniqueInputCopyWithImpl<$Res, TDSRecordWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$TDSRecordWhereUniqueInputCopyWithImpl<$Res,
        $Val extends TDSRecordWhereUniqueInput>
    implements $TDSRecordWhereUniqueInputCopyWith<$Res> {
  _$TDSRecordWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecordWhereUniqueInput
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
abstract class _$$TDSRecordWhereUniqueInputImplCopyWith<$Res>
    implements $TDSRecordWhereUniqueInputCopyWith<$Res> {
  factory _$$TDSRecordWhereUniqueInputImplCopyWith(
          _$TDSRecordWhereUniqueInputImpl value,
          $Res Function(_$TDSRecordWhereUniqueInputImpl) then) =
      __$$TDSRecordWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$TDSRecordWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$TDSRecordWhereUniqueInputCopyWithImpl<$Res,
        _$TDSRecordWhereUniqueInputImpl>
    implements _$$TDSRecordWhereUniqueInputImplCopyWith<$Res> {
  __$$TDSRecordWhereUniqueInputImplCopyWithImpl(
      _$TDSRecordWhereUniqueInputImpl _value,
      $Res Function(_$TDSRecordWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecordWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TDSRecordWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TDSRecordWhereUniqueInputImpl implements _TDSRecordWhereUniqueInput {
  const _$TDSRecordWhereUniqueInputImpl({this.id});

  factory _$TDSRecordWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TDSRecordWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'TDSRecordWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TDSRecordWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordWhereUniqueInputImplCopyWith<_$TDSRecordWhereUniqueInputImpl>
      get copyWith => __$$TDSRecordWhereUniqueInputImplCopyWithImpl<
          _$TDSRecordWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _TDSRecordWhereUniqueInput implements TDSRecordWhereUniqueInput {
  const factory _TDSRecordWhereUniqueInput({final String? id}) =
      _$TDSRecordWhereUniqueInputImpl;

  factory _TDSRecordWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$TDSRecordWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of TDSRecordWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordWhereUniqueInputImplCopyWith<_$TDSRecordWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TDSRecordWhereInput _$TDSRecordWhereInputFromJson(Map<String, dynamic> json) {
  return _TDSRecordWhereInput.fromJson(json);
}

/// @nodoc
mixin _$TDSRecordWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get financialYear => throw _privateConstructorUsedError;
  IntFilter? get quarter => throw _privateConstructorUsedError;
  IntFilter? get cumulativeAmountCredited => throw _privateConstructorUsedError;
  IntFilter? get tdsDeducted => throw _privateConstructorUsedError;
  FloatFilter? get tdsRate => throw _privateConstructorUsedError;
  StringFilter? get payoutId => throw _privateConstructorUsedError;
  StringFilter? get earningsId => throw _privateConstructorUsedError;
  BooleanFilter? get isReversal => throw _privateConstructorUsedError;
  BooleanFilter? get reportedInForm26Q => throw _privateConstructorUsedError;
  DateTimeFilter? get form26QFilingDate => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;

  /// Filter by payout relation
  PayoutRelationFilter? get payout => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<TDSRecordWhereInput>? get AND => throw _privateConstructorUsedError;
  List<TDSRecordWhereInput>? get OR => throw _privateConstructorUsedError;
  TDSRecordWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this TDSRecordWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordWhereInputCopyWith<TDSRecordWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordWhereInputCopyWith<$Res> {
  factory $TDSRecordWhereInputCopyWith(
          TDSRecordWhereInput value, $Res Function(TDSRecordWhereInput) then) =
      _$TDSRecordWhereInputCopyWithImpl<$Res, TDSRecordWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? financialYear,
      IntFilter? quarter,
      IntFilter? cumulativeAmountCredited,
      IntFilter? tdsDeducted,
      FloatFilter? tdsRate,
      StringFilter? payoutId,
      StringFilter? earningsId,
      BooleanFilter? isReversal,
      BooleanFilter? reportedInForm26Q,
      DateTimeFilter? form26QFilingDate,
      ConsultantProfileRelationFilter? consultantProfile,
      PayoutRelationFilter? payout,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TDSRecordWhereInput>? AND,
      List<TDSRecordWhereInput>? OR,
      TDSRecordWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get financialYear;
  $IntFilterCopyWith<$Res>? get quarter;
  $IntFilterCopyWith<$Res>? get cumulativeAmountCredited;
  $IntFilterCopyWith<$Res>? get tdsDeducted;
  $FloatFilterCopyWith<$Res>? get tdsRate;
  $StringFilterCopyWith<$Res>? get payoutId;
  $StringFilterCopyWith<$Res>? get earningsId;
  $BooleanFilterCopyWith<$Res>? get isReversal;
  $BooleanFilterCopyWith<$Res>? get reportedInForm26Q;
  $DateTimeFilterCopyWith<$Res>? get form26QFilingDate;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $PayoutRelationFilterCopyWith<$Res>? get payout;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $TDSRecordWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$TDSRecordWhereInputCopyWithImpl<$Res, $Val extends TDSRecordWhereInput>
    implements $TDSRecordWhereInputCopyWith<$Res> {
  _$TDSRecordWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
    Object? consultantProfile = freezed,
    Object? payout = freezed,
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
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutRelationFilter?,
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
              as List<TDSRecordWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TDSRecordWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get financialYear {
    if (_value.financialYear == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.financialYear!, (value) {
      return _then(_value.copyWith(financialYear: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get quarter {
    if (_value.quarter == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.quarter!, (value) {
      return _then(_value.copyWith(quarter: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get cumulativeAmountCredited {
    if (_value.cumulativeAmountCredited == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.cumulativeAmountCredited!, (value) {
      return _then(_value.copyWith(cumulativeAmountCredited: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get tdsRate {
    if (_value.tdsRate == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.tdsRate!, (value) {
      return _then(_value.copyWith(tdsRate: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get earningsId {
    if (_value.earningsId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.earningsId!, (value) {
      return _then(_value.copyWith(earningsId: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isReversal {
    if (_value.isReversal == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isReversal!, (value) {
      return _then(_value.copyWith(isReversal: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get reportedInForm26Q {
    if (_value.reportedInForm26Q == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.reportedInForm26Q!, (value) {
      return _then(_value.copyWith(reportedInForm26Q: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get form26QFilingDate {
    if (_value.form26QFilingDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.form26QFilingDate!, (value) {
      return _then(_value.copyWith(form26QFilingDate: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
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

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TDSRecordWhereInputImplCopyWith<$Res>
    implements $TDSRecordWhereInputCopyWith<$Res> {
  factory _$$TDSRecordWhereInputImplCopyWith(_$TDSRecordWhereInputImpl value,
          $Res Function(_$TDSRecordWhereInputImpl) then) =
      __$$TDSRecordWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? financialYear,
      IntFilter? quarter,
      IntFilter? cumulativeAmountCredited,
      IntFilter? tdsDeducted,
      FloatFilter? tdsRate,
      StringFilter? payoutId,
      StringFilter? earningsId,
      BooleanFilter? isReversal,
      BooleanFilter? reportedInForm26Q,
      DateTimeFilter? form26QFilingDate,
      ConsultantProfileRelationFilter? consultantProfile,
      PayoutRelationFilter? payout,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TDSRecordWhereInput>? AND,
      List<TDSRecordWhereInput>? OR,
      TDSRecordWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get financialYear;
  @override
  $IntFilterCopyWith<$Res>? get quarter;
  @override
  $IntFilterCopyWith<$Res>? get cumulativeAmountCredited;
  @override
  $IntFilterCopyWith<$Res>? get tdsDeducted;
  @override
  $FloatFilterCopyWith<$Res>? get tdsRate;
  @override
  $StringFilterCopyWith<$Res>? get payoutId;
  @override
  $StringFilterCopyWith<$Res>? get earningsId;
  @override
  $BooleanFilterCopyWith<$Res>? get isReversal;
  @override
  $BooleanFilterCopyWith<$Res>? get reportedInForm26Q;
  @override
  $DateTimeFilterCopyWith<$Res>? get form26QFilingDate;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $PayoutRelationFilterCopyWith<$Res>? get payout;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $TDSRecordWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$TDSRecordWhereInputImplCopyWithImpl<$Res>
    extends _$TDSRecordWhereInputCopyWithImpl<$Res, _$TDSRecordWhereInputImpl>
    implements _$$TDSRecordWhereInputImplCopyWith<$Res> {
  __$$TDSRecordWhereInputImplCopyWithImpl(_$TDSRecordWhereInputImpl _value,
      $Res Function(_$TDSRecordWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
    Object? consultantProfile = freezed,
    Object? payout = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$TDSRecordWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutRelationFilter?,
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
              as List<TDSRecordWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TDSRecordWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TDSRecordWhereInputImpl implements _TDSRecordWhereInput {
  const _$TDSRecordWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.financialYear,
      this.quarter,
      this.cumulativeAmountCredited,
      this.tdsDeducted,
      this.tdsRate,
      this.payoutId,
      this.earningsId,
      this.isReversal,
      this.reportedInForm26Q,
      this.form26QFilingDate,
      this.consultantProfile,
      this.payout,
      this.createdAt,
      this.updatedAt,
      final List<TDSRecordWhereInput>? AND,
      final List<TDSRecordWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$TDSRecordWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TDSRecordWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? financialYear;
  @override
  final IntFilter? quarter;
  @override
  final IntFilter? cumulativeAmountCredited;
  @override
  final IntFilter? tdsDeducted;
  @override
  final FloatFilter? tdsRate;
  @override
  final StringFilter? payoutId;
  @override
  final StringFilter? earningsId;
  @override
  final BooleanFilter? isReversal;
  @override
  final BooleanFilter? reportedInForm26Q;
  @override
  final DateTimeFilter? form26QFilingDate;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;

  /// Filter by payout relation
  @override
  final PayoutRelationFilter? payout;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<TDSRecordWhereInput>? _AND;
  @override
  List<TDSRecordWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TDSRecordWhereInput>? _OR;
  @override
  List<TDSRecordWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TDSRecordWhereInput? NOT;

  @override
  String toString() {
    return 'TDSRecordWhereInput(id: $id, consultantProfileId: $consultantProfileId, financialYear: $financialYear, quarter: $quarter, cumulativeAmountCredited: $cumulativeAmountCredited, tdsDeducted: $tdsDeducted, tdsRate: $tdsRate, payoutId: $payoutId, earningsId: $earningsId, isReversal: $isReversal, reportedInForm26Q: $reportedInForm26Q, form26QFilingDate: $form26QFilingDate, consultantProfile: $consultantProfile, payout: $payout, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.financialYear, financialYear) ||
                other.financialYear == financialYear) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(
                    other.cumulativeAmountCredited, cumulativeAmountCredited) ||
                other.cumulativeAmountCredited == cumulativeAmountCredited) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.tdsRate, tdsRate) || other.tdsRate == tdsRate) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.earningsId, earningsId) ||
                other.earningsId == earningsId) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.reportedInForm26Q, reportedInForm26Q) ||
                other.reportedInForm26Q == reportedInForm26Q) &&
            (identical(other.form26QFilingDate, form26QFilingDate) ||
                other.form26QFilingDate == form26QFilingDate) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.payout, payout) || other.payout == payout) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consultantProfileId,
        financialYear,
        quarter,
        cumulativeAmountCredited,
        tdsDeducted,
        tdsRate,
        payoutId,
        earningsId,
        isReversal,
        reportedInForm26Q,
        form26QFilingDate,
        consultantProfile,
        payout,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordWhereInputImplCopyWith<_$TDSRecordWhereInputImpl> get copyWith =>
      __$$TDSRecordWhereInputImplCopyWithImpl<_$TDSRecordWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordWhereInputImplToJson(
      this,
    );
  }
}

abstract class _TDSRecordWhereInput implements TDSRecordWhereInput {
  const factory _TDSRecordWhereInput(
      {final StringFilter? id,
      final StringFilter? consultantProfileId,
      final StringFilter? financialYear,
      final IntFilter? quarter,
      final IntFilter? cumulativeAmountCredited,
      final IntFilter? tdsDeducted,
      final FloatFilter? tdsRate,
      final StringFilter? payoutId,
      final StringFilter? earningsId,
      final BooleanFilter? isReversal,
      final BooleanFilter? reportedInForm26Q,
      final DateTimeFilter? form26QFilingDate,
      final ConsultantProfileRelationFilter? consultantProfile,
      final PayoutRelationFilter? payout,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<TDSRecordWhereInput>? AND,
      final List<TDSRecordWhereInput>? OR,
      final TDSRecordWhereInput? NOT}) = _$TDSRecordWhereInputImpl;

  factory _TDSRecordWhereInput.fromJson(Map<String, dynamic> json) =
      _$TDSRecordWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get financialYear;
  @override
  IntFilter? get quarter;
  @override
  IntFilter? get cumulativeAmountCredited;
  @override
  IntFilter? get tdsDeducted;
  @override
  FloatFilter? get tdsRate;
  @override
  StringFilter? get payoutId;
  @override
  StringFilter? get earningsId;
  @override
  BooleanFilter? get isReversal;
  @override
  BooleanFilter? get reportedInForm26Q;
  @override
  DateTimeFilter? get form26QFilingDate;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;

  /// Filter by payout relation
  @override
  PayoutRelationFilter? get payout;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<TDSRecordWhereInput>? get AND;
  @override
  List<TDSRecordWhereInput>? get OR;
  @override
  TDSRecordWhereInput? get NOT;

  /// Create a copy of TDSRecordWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordWhereInputImplCopyWith<_$TDSRecordWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TDSRecordListRelationFilter _$TDSRecordListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TDSRecordListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TDSRecordListRelationFilter {
  /// At least one related record matches
  TDSRecordWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  TDSRecordWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  TDSRecordWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this TDSRecordListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordListRelationFilterCopyWith<TDSRecordListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordListRelationFilterCopyWith<$Res> {
  factory $TDSRecordListRelationFilterCopyWith(
          TDSRecordListRelationFilter value,
          $Res Function(TDSRecordListRelationFilter) then) =
      _$TDSRecordListRelationFilterCopyWithImpl<$Res,
          TDSRecordListRelationFilter>;
  @useResult
  $Res call(
      {TDSRecordWhereInput? some,
      TDSRecordWhereInput? every,
      TDSRecordWhereInput? none});

  $TDSRecordWhereInputCopyWith<$Res>? get some;
  $TDSRecordWhereInputCopyWith<$Res>? get every;
  $TDSRecordWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$TDSRecordListRelationFilterCopyWithImpl<$Res,
        $Val extends TDSRecordListRelationFilter>
    implements $TDSRecordListRelationFilterCopyWith<$Res> {
  _$TDSRecordListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecordListRelationFilter
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
              as TDSRecordWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TDSRecordListRelationFilterImplCopyWith<$Res>
    implements $TDSRecordListRelationFilterCopyWith<$Res> {
  factory _$$TDSRecordListRelationFilterImplCopyWith(
          _$TDSRecordListRelationFilterImpl value,
          $Res Function(_$TDSRecordListRelationFilterImpl) then) =
      __$$TDSRecordListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TDSRecordWhereInput? some,
      TDSRecordWhereInput? every,
      TDSRecordWhereInput? none});

  @override
  $TDSRecordWhereInputCopyWith<$Res>? get some;
  @override
  $TDSRecordWhereInputCopyWith<$Res>? get every;
  @override
  $TDSRecordWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$TDSRecordListRelationFilterImplCopyWithImpl<$Res>
    extends _$TDSRecordListRelationFilterCopyWithImpl<$Res,
        _$TDSRecordListRelationFilterImpl>
    implements _$$TDSRecordListRelationFilterImplCopyWith<$Res> {
  __$$TDSRecordListRelationFilterImplCopyWithImpl(
      _$TDSRecordListRelationFilterImpl _value,
      $Res Function(_$TDSRecordListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$TDSRecordListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TDSRecordListRelationFilterImpl
    implements _TDSRecordListRelationFilter {
  const _$TDSRecordListRelationFilterImpl({this.some, this.every, this.none});

  factory _$TDSRecordListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TDSRecordListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final TDSRecordWhereInput? some;

  /// All related records match
  @override
  final TDSRecordWhereInput? every;

  /// No related records match
  @override
  final TDSRecordWhereInput? none;

  @override
  String toString() {
    return 'TDSRecordListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordListRelationFilterImplCopyWith<_$TDSRecordListRelationFilterImpl>
      get copyWith => __$$TDSRecordListRelationFilterImplCopyWithImpl<
          _$TDSRecordListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TDSRecordListRelationFilter
    implements TDSRecordListRelationFilter {
  const factory _TDSRecordListRelationFilter(
      {final TDSRecordWhereInput? some,
      final TDSRecordWhereInput? every,
      final TDSRecordWhereInput? none}) = _$TDSRecordListRelationFilterImpl;

  factory _TDSRecordListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TDSRecordListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  TDSRecordWhereInput? get some;

  /// All related records match
  @override
  TDSRecordWhereInput? get every;

  /// No related records match
  @override
  TDSRecordWhereInput? get none;

  /// Create a copy of TDSRecordListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordListRelationFilterImplCopyWith<_$TDSRecordListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TDSRecordRelationFilter _$TDSRecordRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TDSRecordRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TDSRecordRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  TDSRecordWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  TDSRecordWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this TDSRecordRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordRelationFilterCopyWith<TDSRecordRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordRelationFilterCopyWith<$Res> {
  factory $TDSRecordRelationFilterCopyWith(TDSRecordRelationFilter value,
          $Res Function(TDSRecordRelationFilter) then) =
      _$TDSRecordRelationFilterCopyWithImpl<$Res, TDSRecordRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TDSRecordWhereInput? is_,
      TDSRecordWhereInput? isNot});

  $TDSRecordWhereInputCopyWith<$Res>? get is_;
  $TDSRecordWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$TDSRecordRelationFilterCopyWithImpl<$Res,
        $Val extends TDSRecordRelationFilter>
    implements $TDSRecordRelationFilterCopyWith<$Res> {
  _$TDSRecordRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecordRelationFilter
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
              as TDSRecordWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TDSRecordWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $TDSRecordWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TDSRecordRelationFilterImplCopyWith<$Res>
    implements $TDSRecordRelationFilterCopyWith<$Res> {
  factory _$$TDSRecordRelationFilterImplCopyWith(
          _$TDSRecordRelationFilterImpl value,
          $Res Function(_$TDSRecordRelationFilterImpl) then) =
      __$$TDSRecordRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TDSRecordWhereInput? is_,
      TDSRecordWhereInput? isNot});

  @override
  $TDSRecordWhereInputCopyWith<$Res>? get is_;
  @override
  $TDSRecordWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$TDSRecordRelationFilterImplCopyWithImpl<$Res>
    extends _$TDSRecordRelationFilterCopyWithImpl<$Res,
        _$TDSRecordRelationFilterImpl>
    implements _$$TDSRecordRelationFilterImplCopyWith<$Res> {
  __$$TDSRecordRelationFilterImplCopyWithImpl(
      _$TDSRecordRelationFilterImpl _value,
      $Res Function(_$TDSRecordRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$TDSRecordRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TDSRecordWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TDSRecordRelationFilterImpl implements _TDSRecordRelationFilter {
  const _$TDSRecordRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$TDSRecordRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TDSRecordRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final TDSRecordWhereInput? is_;

  /// Related record does not match
  @override
  final TDSRecordWhereInput? isNot;

  @override
  String toString() {
    return 'TDSRecordRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordRelationFilterImplCopyWith<_$TDSRecordRelationFilterImpl>
      get copyWith => __$$TDSRecordRelationFilterImplCopyWithImpl<
          _$TDSRecordRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TDSRecordRelationFilter implements TDSRecordRelationFilter {
  const factory _TDSRecordRelationFilter(
      {@JsonKey(name: 'is') final TDSRecordWhereInput? is_,
      final TDSRecordWhereInput? isNot}) = _$TDSRecordRelationFilterImpl;

  factory _TDSRecordRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TDSRecordRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  TDSRecordWhereInput? get is_;

  /// Related record does not match
  @override
  TDSRecordWhereInput? get isNot;

  /// Create a copy of TDSRecordRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordRelationFilterImplCopyWith<_$TDSRecordRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TDSRecordOrderByInput _$TDSRecordOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _TDSRecordOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$TDSRecordOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get financialYear => throw _privateConstructorUsedError;
  SortOrder? get quarter => throw _privateConstructorUsedError;
  SortOrder? get cumulativeAmountCredited => throw _privateConstructorUsedError;
  SortOrder? get tdsDeducted => throw _privateConstructorUsedError;
  SortOrder? get tdsRate => throw _privateConstructorUsedError;
  SortOrder? get payoutId => throw _privateConstructorUsedError;
  SortOrder? get earningsId => throw _privateConstructorUsedError;
  SortOrder? get isReversal => throw _privateConstructorUsedError;
  SortOrder? get reportedInForm26Q => throw _privateConstructorUsedError;
  SortOrder? get form26QFilingDate => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TDSRecordOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TDSRecordOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TDSRecordOrderByInputCopyWith<TDSRecordOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TDSRecordOrderByInputCopyWith<$Res> {
  factory $TDSRecordOrderByInputCopyWith(TDSRecordOrderByInput value,
          $Res Function(TDSRecordOrderByInput) then) =
      _$TDSRecordOrderByInputCopyWithImpl<$Res, TDSRecordOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? financialYear,
      SortOrder? quarter,
      SortOrder? cumulativeAmountCredited,
      SortOrder? tdsDeducted,
      SortOrder? tdsRate,
      SortOrder? payoutId,
      SortOrder? earningsId,
      SortOrder? isReversal,
      SortOrder? reportedInForm26Q,
      SortOrder? form26QFilingDate,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$TDSRecordOrderByInputCopyWithImpl<$Res,
        $Val extends TDSRecordOrderByInput>
    implements $TDSRecordOrderByInputCopyWith<$Res> {
  _$TDSRecordOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TDSRecordOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
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
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TDSRecordOrderByInputImplCopyWith<$Res>
    implements $TDSRecordOrderByInputCopyWith<$Res> {
  factory _$$TDSRecordOrderByInputImplCopyWith(
          _$TDSRecordOrderByInputImpl value,
          $Res Function(_$TDSRecordOrderByInputImpl) then) =
      __$$TDSRecordOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? financialYear,
      SortOrder? quarter,
      SortOrder? cumulativeAmountCredited,
      SortOrder? tdsDeducted,
      SortOrder? tdsRate,
      SortOrder? payoutId,
      SortOrder? earningsId,
      SortOrder? isReversal,
      SortOrder? reportedInForm26Q,
      SortOrder? form26QFilingDate,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$TDSRecordOrderByInputImplCopyWithImpl<$Res>
    extends _$TDSRecordOrderByInputCopyWithImpl<$Res,
        _$TDSRecordOrderByInputImpl>
    implements _$$TDSRecordOrderByInputImplCopyWith<$Res> {
  __$$TDSRecordOrderByInputImplCopyWithImpl(_$TDSRecordOrderByInputImpl _value,
      $Res Function(_$TDSRecordOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TDSRecordOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? financialYear = freezed,
    Object? quarter = freezed,
    Object? cumulativeAmountCredited = freezed,
    Object? tdsDeducted = freezed,
    Object? tdsRate = freezed,
    Object? payoutId = freezed,
    Object? earningsId = freezed,
    Object? isReversal = freezed,
    Object? reportedInForm26Q = freezed,
    Object? form26QFilingDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TDSRecordOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      financialYear: freezed == financialYear
          ? _value.financialYear
          : financialYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cumulativeAmountCredited: freezed == cumulativeAmountCredited
          ? _value.cumulativeAmountCredited
          : cumulativeAmountCredited // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsDeducted: freezed == tdsDeducted
          ? _value.tdsDeducted
          : tdsDeducted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      tdsRate: freezed == tdsRate
          ? _value.tdsRate
          : tdsRate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      payoutId: freezed == payoutId
          ? _value.payoutId
          : payoutId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      earningsId: freezed == earningsId
          ? _value.earningsId
          : earningsId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isReversal: freezed == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportedInForm26Q: freezed == reportedInForm26Q
          ? _value.reportedInForm26Q
          : reportedInForm26Q // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      form26QFilingDate: freezed == form26QFilingDate
          ? _value.form26QFilingDate
          : form26QFilingDate // ignore: cast_nullable_to_non_nullable
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
class _$TDSRecordOrderByInputImpl implements _TDSRecordOrderByInput {
  const _$TDSRecordOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.financialYear,
      this.quarter,
      this.cumulativeAmountCredited,
      this.tdsDeducted,
      this.tdsRate,
      this.payoutId,
      this.earningsId,
      this.isReversal,
      this.reportedInForm26Q,
      this.form26QFilingDate,
      this.createdAt,
      this.updatedAt});

  factory _$TDSRecordOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TDSRecordOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? financialYear;
  @override
  final SortOrder? quarter;
  @override
  final SortOrder? cumulativeAmountCredited;
  @override
  final SortOrder? tdsDeducted;
  @override
  final SortOrder? tdsRate;
  @override
  final SortOrder? payoutId;
  @override
  final SortOrder? earningsId;
  @override
  final SortOrder? isReversal;
  @override
  final SortOrder? reportedInForm26Q;
  @override
  final SortOrder? form26QFilingDate;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'TDSRecordOrderByInput(id: $id, consultantProfileId: $consultantProfileId, financialYear: $financialYear, quarter: $quarter, cumulativeAmountCredited: $cumulativeAmountCredited, tdsDeducted: $tdsDeducted, tdsRate: $tdsRate, payoutId: $payoutId, earningsId: $earningsId, isReversal: $isReversal, reportedInForm26Q: $reportedInForm26Q, form26QFilingDate: $form26QFilingDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TDSRecordOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.financialYear, financialYear) ||
                other.financialYear == financialYear) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(
                    other.cumulativeAmountCredited, cumulativeAmountCredited) ||
                other.cumulativeAmountCredited == cumulativeAmountCredited) &&
            (identical(other.tdsDeducted, tdsDeducted) ||
                other.tdsDeducted == tdsDeducted) &&
            (identical(other.tdsRate, tdsRate) || other.tdsRate == tdsRate) &&
            (identical(other.payoutId, payoutId) ||
                other.payoutId == payoutId) &&
            (identical(other.earningsId, earningsId) ||
                other.earningsId == earningsId) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.reportedInForm26Q, reportedInForm26Q) ||
                other.reportedInForm26Q == reportedInForm26Q) &&
            (identical(other.form26QFilingDate, form26QFilingDate) ||
                other.form26QFilingDate == form26QFilingDate) &&
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
      financialYear,
      quarter,
      cumulativeAmountCredited,
      tdsDeducted,
      tdsRate,
      payoutId,
      earningsId,
      isReversal,
      reportedInForm26Q,
      form26QFilingDate,
      createdAt,
      updatedAt);

  /// Create a copy of TDSRecordOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TDSRecordOrderByInputImplCopyWith<_$TDSRecordOrderByInputImpl>
      get copyWith => __$$TDSRecordOrderByInputImplCopyWithImpl<
          _$TDSRecordOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TDSRecordOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _TDSRecordOrderByInput implements TDSRecordOrderByInput {
  const factory _TDSRecordOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? financialYear,
      final SortOrder? quarter,
      final SortOrder? cumulativeAmountCredited,
      final SortOrder? tdsDeducted,
      final SortOrder? tdsRate,
      final SortOrder? payoutId,
      final SortOrder? earningsId,
      final SortOrder? isReversal,
      final SortOrder? reportedInForm26Q,
      final SortOrder? form26QFilingDate,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$TDSRecordOrderByInputImpl;

  factory _TDSRecordOrderByInput.fromJson(Map<String, dynamic> json) =
      _$TDSRecordOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get financialYear;
  @override
  SortOrder? get quarter;
  @override
  SortOrder? get cumulativeAmountCredited;
  @override
  SortOrder? get tdsDeducted;
  @override
  SortOrder? get tdsRate;
  @override
  SortOrder? get payoutId;
  @override
  SortOrder? get earningsId;
  @override
  SortOrder? get isReversal;
  @override
  SortOrder? get reportedInForm26Q;
  @override
  SortOrder? get form26QFilingDate;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of TDSRecordOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TDSRecordOrderByInputImplCopyWith<_$TDSRecordOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
