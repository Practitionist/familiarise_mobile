// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultant_tax_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultantTaxInfo _$ConsultantTaxInfoFromJson(Map<String, dynamic> json) {
  return _ConsultantTaxInfo.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfo {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  List<int>? get panEncrypted => throw _privateConstructorUsedError;
  String? get panLast4 => throw _privateConstructorUsedError;
  bool get panVerified => throw _privateConstructorUsedError;
  String? get gstin => throw _privateConstructorUsedError;
  bool get gstinVerified => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  bool get isIndianResident => throw _privateConstructorUsedError;
  String? get lutNumber => throw _privateConstructorUsedError;
  DateTime? get lutValidUntil => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoCopyWith<ConsultantTaxInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoCopyWith<$Res> {
  factory $ConsultantTaxInfoCopyWith(
          ConsultantTaxInfo value, $Res Function(ConsultantTaxInfo) then) =
      _$ConsultantTaxInfoCopyWithImpl<$Res, ConsultantTaxInfo>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool panVerified,
      String? gstin,
      bool gstinVerified,
      String country,
      bool isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$ConsultantTaxInfoCopyWithImpl<$Res, $Val extends ConsultantTaxInfo>
    implements $ConsultantTaxInfoCopyWith<$Res> {
  _$ConsultantTaxInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = null,
    Object? gstin = freezed,
    Object? gstinVerified = null,
    Object? country = null,
    Object? isIndianResident = null,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
    Object? consultantProfile = freezed,
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
      panEncrypted: freezed == panEncrypted
          ? _value.panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: null == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: null == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isIndianResident: null == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
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

  /// Create a copy of ConsultantTaxInfo
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
abstract class _$$ConsultantTaxInfoImplCopyWith<$Res>
    implements $ConsultantTaxInfoCopyWith<$Res> {
  factory _$$ConsultantTaxInfoImplCopyWith(_$ConsultantTaxInfoImpl value,
          $Res Function(_$ConsultantTaxInfoImpl) then) =
      __$$ConsultantTaxInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool panVerified,
      String? gstin,
      bool gstinVerified,
      String country,
      bool isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$ConsultantTaxInfoImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoCopyWithImpl<$Res, _$ConsultantTaxInfoImpl>
    implements _$$ConsultantTaxInfoImplCopyWith<$Res> {
  __$$ConsultantTaxInfoImplCopyWithImpl(_$ConsultantTaxInfoImpl _value,
      $Res Function(_$ConsultantTaxInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = null,
    Object? gstin = freezed,
    Object? gstinVerified = null,
    Object? country = null,
    Object? isIndianResident = null,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
    Object? consultantProfile = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultantTaxInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      panEncrypted: freezed == panEncrypted
          ? _value._panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: null == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: null == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isIndianResident: null == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
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
class _$ConsultantTaxInfoImpl implements _ConsultantTaxInfo {
  const _$ConsultantTaxInfoImpl(
      {required this.id,
      required this.consultantProfileId,
      final List<int>? panEncrypted,
      this.panLast4,
      this.panVerified = false,
      this.gstin,
      this.gstinVerified = false,
      this.country = "IN",
      this.isIndianResident = true,
      this.lutNumber,
      this.lutValidUntil,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.createdAt,
      required this.updatedAt})
      : _panEncrypted = panEncrypted;

  factory _$ConsultantTaxInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  final List<int>? _panEncrypted;
  @override
  List<int>? get panEncrypted {
    final value = _panEncrypted;
    if (value == null) return null;
    if (_panEncrypted is EqualUnmodifiableListView) return _panEncrypted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? panLast4;
  @override
  @JsonKey()
  final bool panVerified;
  @override
  final String? gstin;
  @override
  @JsonKey()
  final bool gstinVerified;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final bool isIndianResident;
  @override
  final String? lutNumber;
  @override
  final DateTime? lutValidUntil;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsultantTaxInfo(id: $id, consultantProfileId: $consultantProfileId, panEncrypted: $panEncrypted, panLast4: $panLast4, panVerified: $panVerified, gstin: $gstin, gstinVerified: $gstinVerified, country: $country, isIndianResident: $isIndianResident, lutNumber: $lutNumber, lutValidUntil: $lutValidUntil, consultantProfile: $consultantProfile, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality()
                .equals(other._panEncrypted, _panEncrypted) &&
            (identical(other.panLast4, panLast4) ||
                other.panLast4 == panLast4) &&
            (identical(other.panVerified, panVerified) ||
                other.panVerified == panVerified) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.gstinVerified, gstinVerified) ||
                other.gstinVerified == gstinVerified) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isIndianResident, isIndianResident) ||
                other.isIndianResident == isIndianResident) &&
            (identical(other.lutNumber, lutNumber) ||
                other.lutNumber == lutNumber) &&
            (identical(other.lutValidUntil, lutValidUntil) ||
                other.lutValidUntil == lutValidUntil) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
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
      const DeepCollectionEquality().hash(_panEncrypted),
      panLast4,
      panVerified,
      gstin,
      gstinVerified,
      country,
      isIndianResident,
      lutNumber,
      lutValidUntil,
      consultantProfile,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantTaxInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoImplCopyWith<_$ConsultantTaxInfoImpl> get copyWith =>
      __$$ConsultantTaxInfoImplCopyWithImpl<_$ConsultantTaxInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfo implements ConsultantTaxInfo {
  const factory _ConsultantTaxInfo(
      {required final String id,
      required final String consultantProfileId,
      final List<int>? panEncrypted,
      final String? panLast4,
      final bool panVerified,
      final String? gstin,
      final bool gstinVerified,
      final String country,
      final bool isIndianResident,
      final String? lutNumber,
      final DateTime? lutValidUntil,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultantTaxInfoImpl;

  factory _ConsultantTaxInfo.fromJson(Map<String, dynamic> json) =
      _$ConsultantTaxInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  List<int>? get panEncrypted;
  @override
  String? get panLast4;
  @override
  bool get panVerified;
  @override
  String? get gstin;
  @override
  bool get gstinVerified;
  @override
  String get country;
  @override
  bool get isIndianResident;
  @override
  String? get lutNumber;
  @override
  DateTime? get lutValidUntil;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsultantTaxInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoImplCopyWith<_$ConsultantTaxInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultantTaxInfoInput _$CreateConsultantTaxInfoInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultantTaxInfoInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultantTaxInfoInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  List<int>? get panEncrypted => throw _privateConstructorUsedError;
  String? get panLast4 => throw _privateConstructorUsedError;
  bool? get panVerified => throw _privateConstructorUsedError;
  String? get gstin => throw _privateConstructorUsedError;
  bool? get gstinVerified => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  bool? get isIndianResident => throw _privateConstructorUsedError;
  String? get lutNumber => throw _privateConstructorUsedError;
  DateTime? get lutValidUntil => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultantTaxInfoInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultantTaxInfoInputCopyWith<CreateConsultantTaxInfoInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultantTaxInfoInputCopyWith<$Res> {
  factory $CreateConsultantTaxInfoInputCopyWith(
          CreateConsultantTaxInfoInput value,
          $Res Function(CreateConsultantTaxInfoInput) then) =
      _$CreateConsultantTaxInfoInputCopyWithImpl<$Res,
          CreateConsultantTaxInfoInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool? panVerified,
      String? gstin,
      bool? gstinVerified,
      String? country,
      bool? isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil});
}

/// @nodoc
class _$CreateConsultantTaxInfoInputCopyWithImpl<$Res,
        $Val extends CreateConsultantTaxInfoInput>
    implements $CreateConsultantTaxInfoInputCopyWith<$Res> {
  _$CreateConsultantTaxInfoInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      panEncrypted: freezed == panEncrypted
          ? _value.panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultantTaxInfoInputImplCopyWith<$Res>
    implements $CreateConsultantTaxInfoInputCopyWith<$Res> {
  factory _$$CreateConsultantTaxInfoInputImplCopyWith(
          _$CreateConsultantTaxInfoInputImpl value,
          $Res Function(_$CreateConsultantTaxInfoInputImpl) then) =
      __$$CreateConsultantTaxInfoInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool? panVerified,
      String? gstin,
      bool? gstinVerified,
      String? country,
      bool? isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil});
}

/// @nodoc
class __$$CreateConsultantTaxInfoInputImplCopyWithImpl<$Res>
    extends _$CreateConsultantTaxInfoInputCopyWithImpl<$Res,
        _$CreateConsultantTaxInfoInputImpl>
    implements _$$CreateConsultantTaxInfoInputImplCopyWith<$Res> {
  __$$CreateConsultantTaxInfoInputImplCopyWithImpl(
      _$CreateConsultantTaxInfoInputImpl _value,
      $Res Function(_$CreateConsultantTaxInfoInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
  }) {
    return _then(_$CreateConsultantTaxInfoInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      panEncrypted: freezed == panEncrypted
          ? _value._panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultantTaxInfoInputImpl
    implements _CreateConsultantTaxInfoInput {
  const _$CreateConsultantTaxInfoInputImpl(
      {required this.consultantProfileId,
      final List<int>? panEncrypted,
      this.panLast4,
      this.panVerified = false,
      this.gstin,
      this.gstinVerified = false,
      this.country = "IN",
      this.isIndianResident = true,
      this.lutNumber,
      this.lutValidUntil})
      : _panEncrypted = panEncrypted;

  factory _$CreateConsultantTaxInfoInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultantTaxInfoInputImplFromJson(json);

  @override
  final String consultantProfileId;
  final List<int>? _panEncrypted;
  @override
  List<int>? get panEncrypted {
    final value = _panEncrypted;
    if (value == null) return null;
    if (_panEncrypted is EqualUnmodifiableListView) return _panEncrypted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? panLast4;
  @override
  @JsonKey()
  final bool? panVerified;
  @override
  final String? gstin;
  @override
  @JsonKey()
  final bool? gstinVerified;
  @override
  @JsonKey()
  final String? country;
  @override
  @JsonKey()
  final bool? isIndianResident;
  @override
  final String? lutNumber;
  @override
  final DateTime? lutValidUntil;

  @override
  String toString() {
    return 'CreateConsultantTaxInfoInput(consultantProfileId: $consultantProfileId, panEncrypted: $panEncrypted, panLast4: $panLast4, panVerified: $panVerified, gstin: $gstin, gstinVerified: $gstinVerified, country: $country, isIndianResident: $isIndianResident, lutNumber: $lutNumber, lutValidUntil: $lutValidUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultantTaxInfoInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality()
                .equals(other._panEncrypted, _panEncrypted) &&
            (identical(other.panLast4, panLast4) ||
                other.panLast4 == panLast4) &&
            (identical(other.panVerified, panVerified) ||
                other.panVerified == panVerified) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.gstinVerified, gstinVerified) ||
                other.gstinVerified == gstinVerified) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isIndianResident, isIndianResident) ||
                other.isIndianResident == isIndianResident) &&
            (identical(other.lutNumber, lutNumber) ||
                other.lutNumber == lutNumber) &&
            (identical(other.lutValidUntil, lutValidUntil) ||
                other.lutValidUntil == lutValidUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      const DeepCollectionEquality().hash(_panEncrypted),
      panLast4,
      panVerified,
      gstin,
      gstinVerified,
      country,
      isIndianResident,
      lutNumber,
      lutValidUntil);

  /// Create a copy of CreateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultantTaxInfoInputImplCopyWith<
          _$CreateConsultantTaxInfoInputImpl>
      get copyWith => __$$CreateConsultantTaxInfoInputImplCopyWithImpl<
          _$CreateConsultantTaxInfoInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultantTaxInfoInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultantTaxInfoInput
    implements CreateConsultantTaxInfoInput {
  const factory _CreateConsultantTaxInfoInput(
      {required final String consultantProfileId,
      final List<int>? panEncrypted,
      final String? panLast4,
      final bool? panVerified,
      final String? gstin,
      final bool? gstinVerified,
      final String? country,
      final bool? isIndianResident,
      final String? lutNumber,
      final DateTime? lutValidUntil}) = _$CreateConsultantTaxInfoInputImpl;

  factory _CreateConsultantTaxInfoInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultantTaxInfoInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  List<int>? get panEncrypted;
  @override
  String? get panLast4;
  @override
  bool? get panVerified;
  @override
  String? get gstin;
  @override
  bool? get gstinVerified;
  @override
  String? get country;
  @override
  bool? get isIndianResident;
  @override
  String? get lutNumber;
  @override
  DateTime? get lutValidUntil;

  /// Create a copy of CreateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultantTaxInfoInputImplCopyWith<
          _$CreateConsultantTaxInfoInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultantTaxInfoInput _$UpdateConsultantTaxInfoInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultantTaxInfoInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultantTaxInfoInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  List<int>? get panEncrypted => throw _privateConstructorUsedError;
  String? get panLast4 => throw _privateConstructorUsedError;
  bool? get panVerified => throw _privateConstructorUsedError;
  String? get gstin => throw _privateConstructorUsedError;
  bool? get gstinVerified => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  bool? get isIndianResident => throw _privateConstructorUsedError;
  String? get lutNumber => throw _privateConstructorUsedError;
  DateTime? get lutValidUntil => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultantTaxInfoInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultantTaxInfoInputCopyWith<UpdateConsultantTaxInfoInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultantTaxInfoInputCopyWith<$Res> {
  factory $UpdateConsultantTaxInfoInputCopyWith(
          UpdateConsultantTaxInfoInput value,
          $Res Function(UpdateConsultantTaxInfoInput) then) =
      _$UpdateConsultantTaxInfoInputCopyWithImpl<$Res,
          UpdateConsultantTaxInfoInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool? panVerified,
      String? gstin,
      bool? gstinVerified,
      String? country,
      bool? isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil});
}

/// @nodoc
class _$UpdateConsultantTaxInfoInputCopyWithImpl<$Res,
        $Val extends UpdateConsultantTaxInfoInput>
    implements $UpdateConsultantTaxInfoInputCopyWith<$Res> {
  _$UpdateConsultantTaxInfoInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      panEncrypted: freezed == panEncrypted
          ? _value.panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultantTaxInfoInputImplCopyWith<$Res>
    implements $UpdateConsultantTaxInfoInputCopyWith<$Res> {
  factory _$$UpdateConsultantTaxInfoInputImplCopyWith(
          _$UpdateConsultantTaxInfoInputImpl value,
          $Res Function(_$UpdateConsultantTaxInfoInputImpl) then) =
      __$$UpdateConsultantTaxInfoInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      List<int>? panEncrypted,
      String? panLast4,
      bool? panVerified,
      String? gstin,
      bool? gstinVerified,
      String? country,
      bool? isIndianResident,
      String? lutNumber,
      DateTime? lutValidUntil});
}

/// @nodoc
class __$$UpdateConsultantTaxInfoInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultantTaxInfoInputCopyWithImpl<$Res,
        _$UpdateConsultantTaxInfoInputImpl>
    implements _$$UpdateConsultantTaxInfoInputImplCopyWith<$Res> {
  __$$UpdateConsultantTaxInfoInputImplCopyWithImpl(
      _$UpdateConsultantTaxInfoInputImpl _value,
      $Res Function(_$UpdateConsultantTaxInfoInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? panEncrypted = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
  }) {
    return _then(_$UpdateConsultantTaxInfoInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      panEncrypted: freezed == panEncrypted
          ? _value._panEncrypted
          : panEncrypted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as bool?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultantTaxInfoInputImpl
    implements _UpdateConsultantTaxInfoInput {
  const _$UpdateConsultantTaxInfoInputImpl(
      {this.consultantProfileId,
      final List<int>? panEncrypted,
      this.panLast4,
      this.panVerified,
      this.gstin,
      this.gstinVerified,
      this.country,
      this.isIndianResident,
      this.lutNumber,
      this.lutValidUntil})
      : _panEncrypted = panEncrypted;

  factory _$UpdateConsultantTaxInfoInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultantTaxInfoInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  final List<int>? _panEncrypted;
  @override
  List<int>? get panEncrypted {
    final value = _panEncrypted;
    if (value == null) return null;
    if (_panEncrypted is EqualUnmodifiableListView) return _panEncrypted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? panLast4;
  @override
  final bool? panVerified;
  @override
  final String? gstin;
  @override
  final bool? gstinVerified;
  @override
  final String? country;
  @override
  final bool? isIndianResident;
  @override
  final String? lutNumber;
  @override
  final DateTime? lutValidUntil;

  @override
  String toString() {
    return 'UpdateConsultantTaxInfoInput(consultantProfileId: $consultantProfileId, panEncrypted: $panEncrypted, panLast4: $panLast4, panVerified: $panVerified, gstin: $gstin, gstinVerified: $gstinVerified, country: $country, isIndianResident: $isIndianResident, lutNumber: $lutNumber, lutValidUntil: $lutValidUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultantTaxInfoInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality()
                .equals(other._panEncrypted, _panEncrypted) &&
            (identical(other.panLast4, panLast4) ||
                other.panLast4 == panLast4) &&
            (identical(other.panVerified, panVerified) ||
                other.panVerified == panVerified) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.gstinVerified, gstinVerified) ||
                other.gstinVerified == gstinVerified) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isIndianResident, isIndianResident) ||
                other.isIndianResident == isIndianResident) &&
            (identical(other.lutNumber, lutNumber) ||
                other.lutNumber == lutNumber) &&
            (identical(other.lutValidUntil, lutValidUntil) ||
                other.lutValidUntil == lutValidUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      const DeepCollectionEquality().hash(_panEncrypted),
      panLast4,
      panVerified,
      gstin,
      gstinVerified,
      country,
      isIndianResident,
      lutNumber,
      lutValidUntil);

  /// Create a copy of UpdateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultantTaxInfoInputImplCopyWith<
          _$UpdateConsultantTaxInfoInputImpl>
      get copyWith => __$$UpdateConsultantTaxInfoInputImplCopyWithImpl<
          _$UpdateConsultantTaxInfoInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultantTaxInfoInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultantTaxInfoInput
    implements UpdateConsultantTaxInfoInput {
  const factory _UpdateConsultantTaxInfoInput(
      {final String? consultantProfileId,
      final List<int>? panEncrypted,
      final String? panLast4,
      final bool? panVerified,
      final String? gstin,
      final bool? gstinVerified,
      final String? country,
      final bool? isIndianResident,
      final String? lutNumber,
      final DateTime? lutValidUntil}) = _$UpdateConsultantTaxInfoInputImpl;

  factory _UpdateConsultantTaxInfoInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultantTaxInfoInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  List<int>? get panEncrypted;
  @override
  String? get panLast4;
  @override
  bool? get panVerified;
  @override
  String? get gstin;
  @override
  bool? get gstinVerified;
  @override
  String? get country;
  @override
  bool? get isIndianResident;
  @override
  String? get lutNumber;
  @override
  DateTime? get lutValidUntil;

  /// Create a copy of UpdateConsultantTaxInfoInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultantTaxInfoInputImplCopyWith<
          _$UpdateConsultantTaxInfoInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantTaxInfoWhereUniqueInput _$ConsultantTaxInfoWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantTaxInfoWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfoWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfoWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfoWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoWhereUniqueInputCopyWith<ConsultantTaxInfoWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoWhereUniqueInputCopyWith<$Res> {
  factory $ConsultantTaxInfoWhereUniqueInputCopyWith(
          ConsultantTaxInfoWhereUniqueInput value,
          $Res Function(ConsultantTaxInfoWhereUniqueInput) then) =
      _$ConsultantTaxInfoWhereUniqueInputCopyWithImpl<$Res,
          ConsultantTaxInfoWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? consultantProfileId});
}

/// @nodoc
class _$ConsultantTaxInfoWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultantTaxInfoWhereUniqueInput>
    implements $ConsultantTaxInfoWhereUniqueInputCopyWith<$Res> {
  _$ConsultantTaxInfoWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfoWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultantTaxInfoWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultantTaxInfoWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultantTaxInfoWhereUniqueInputImplCopyWith(
          _$ConsultantTaxInfoWhereUniqueInputImpl value,
          $Res Function(_$ConsultantTaxInfoWhereUniqueInputImpl) then) =
      __$$ConsultantTaxInfoWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? consultantProfileId});
}

/// @nodoc
class __$$ConsultantTaxInfoWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultantTaxInfoWhereUniqueInputImpl>
    implements _$$ConsultantTaxInfoWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultantTaxInfoWhereUniqueInputImplCopyWithImpl(
      _$ConsultantTaxInfoWhereUniqueInputImpl _value,
      $Res Function(_$ConsultantTaxInfoWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfoWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$ConsultantTaxInfoWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantTaxInfoWhereUniqueInputImpl
    implements _ConsultantTaxInfoWhereUniqueInput {
  const _$ConsultantTaxInfoWhereUniqueInputImpl(
      {this.id, this.consultantProfileId});

  factory _$ConsultantTaxInfoWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'ConsultantTaxInfoWhereUniqueInput(id: $id, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, consultantProfileId);

  /// Create a copy of ConsultantTaxInfoWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoWhereUniqueInputImplCopyWith<
          _$ConsultantTaxInfoWhereUniqueInputImpl>
      get copyWith => __$$ConsultantTaxInfoWhereUniqueInputImplCopyWithImpl<
          _$ConsultantTaxInfoWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfoWhereUniqueInput
    implements ConsultantTaxInfoWhereUniqueInput {
  const factory _ConsultantTaxInfoWhereUniqueInput(
          {final String? id, final String? consultantProfileId}) =
      _$ConsultantTaxInfoWhereUniqueInputImpl;

  factory _ConsultantTaxInfoWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantTaxInfoWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get consultantProfileId;

  /// Create a copy of ConsultantTaxInfoWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoWhereUniqueInputImplCopyWith<
          _$ConsultantTaxInfoWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantTaxInfoWhereInput _$ConsultantTaxInfoWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantTaxInfoWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfoWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get panLast4 => throw _privateConstructorUsedError;
  BooleanFilter? get panVerified => throw _privateConstructorUsedError;
  StringFilter? get gstin => throw _privateConstructorUsedError;
  BooleanFilter? get gstinVerified => throw _privateConstructorUsedError;
  StringFilter? get country => throw _privateConstructorUsedError;
  BooleanFilter? get isIndianResident => throw _privateConstructorUsedError;
  StringFilter? get lutNumber => throw _privateConstructorUsedError;
  DateTimeFilter? get lutValidUntil => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultantTaxInfoWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultantTaxInfoWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultantTaxInfoWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfoWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoWhereInputCopyWith<ConsultantTaxInfoWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoWhereInputCopyWith<$Res> {
  factory $ConsultantTaxInfoWhereInputCopyWith(
          ConsultantTaxInfoWhereInput value,
          $Res Function(ConsultantTaxInfoWhereInput) then) =
      _$ConsultantTaxInfoWhereInputCopyWithImpl<$Res,
          ConsultantTaxInfoWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? panLast4,
      BooleanFilter? panVerified,
      StringFilter? gstin,
      BooleanFilter? gstinVerified,
      StringFilter? country,
      BooleanFilter? isIndianResident,
      StringFilter? lutNumber,
      DateTimeFilter? lutValidUntil,
      ConsultantProfileRelationFilter? consultantProfile,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantTaxInfoWhereInput>? AND,
      List<ConsultantTaxInfoWhereInput>? OR,
      ConsultantTaxInfoWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get panLast4;
  $BooleanFilterCopyWith<$Res>? get panVerified;
  $StringFilterCopyWith<$Res>? get gstin;
  $BooleanFilterCopyWith<$Res>? get gstinVerified;
  $StringFilterCopyWith<$Res>? get country;
  $BooleanFilterCopyWith<$Res>? get isIndianResident;
  $StringFilterCopyWith<$Res>? get lutNumber;
  $DateTimeFilterCopyWith<$Res>? get lutValidUntil;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultantTaxInfoWhereInputCopyWithImpl<$Res,
        $Val extends ConsultantTaxInfoWhereInput>
    implements $ConsultantTaxInfoWhereInputCopyWith<$Res> {
  _$ConsultantTaxInfoWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
    Object? consultantProfile = freezed,
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
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
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
              as List<ConsultantTaxInfoWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantTaxInfoWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
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

  /// Create a copy of ConsultantTaxInfoWhereInput
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

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get panLast4 {
    if (_value.panLast4 == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.panLast4!, (value) {
      return _then(_value.copyWith(panLast4: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get panVerified {
    if (_value.panVerified == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.panVerified!, (value) {
      return _then(_value.copyWith(panVerified: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get gstin {
    if (_value.gstin == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.gstin!, (value) {
      return _then(_value.copyWith(gstin: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get gstinVerified {
    if (_value.gstinVerified == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.gstinVerified!, (value) {
      return _then(_value.copyWith(gstinVerified: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isIndianResident {
    if (_value.isIndianResident == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isIndianResident!, (value) {
      return _then(_value.copyWith(isIndianResident: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get lutNumber {
    if (_value.lutNumber == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.lutNumber!, (value) {
      return _then(_value.copyWith(lutNumber: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get lutValidUntil {
    if (_value.lutValidUntil == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.lutValidUntil!, (value) {
      return _then(_value.copyWith(lutValidUntil: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoWhereInput
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

  /// Create a copy of ConsultantTaxInfoWhereInput
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

  /// Create a copy of ConsultantTaxInfoWhereInput
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

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantTaxInfoWhereInputImplCopyWith<$Res>
    implements $ConsultantTaxInfoWhereInputCopyWith<$Res> {
  factory _$$ConsultantTaxInfoWhereInputImplCopyWith(
          _$ConsultantTaxInfoWhereInputImpl value,
          $Res Function(_$ConsultantTaxInfoWhereInputImpl) then) =
      __$$ConsultantTaxInfoWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? panLast4,
      BooleanFilter? panVerified,
      StringFilter? gstin,
      BooleanFilter? gstinVerified,
      StringFilter? country,
      BooleanFilter? isIndianResident,
      StringFilter? lutNumber,
      DateTimeFilter? lutValidUntil,
      ConsultantProfileRelationFilter? consultantProfile,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantTaxInfoWhereInput>? AND,
      List<ConsultantTaxInfoWhereInput>? OR,
      ConsultantTaxInfoWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get panLast4;
  @override
  $BooleanFilterCopyWith<$Res>? get panVerified;
  @override
  $StringFilterCopyWith<$Res>? get gstin;
  @override
  $BooleanFilterCopyWith<$Res>? get gstinVerified;
  @override
  $StringFilterCopyWith<$Res>? get country;
  @override
  $BooleanFilterCopyWith<$Res>? get isIndianResident;
  @override
  $StringFilterCopyWith<$Res>? get lutNumber;
  @override
  $DateTimeFilterCopyWith<$Res>? get lutValidUntil;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultantTaxInfoWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoWhereInputCopyWithImpl<$Res,
        _$ConsultantTaxInfoWhereInputImpl>
    implements _$$ConsultantTaxInfoWhereInputImplCopyWith<$Res> {
  __$$ConsultantTaxInfoWhereInputImplCopyWithImpl(
      _$ConsultantTaxInfoWhereInputImpl _value,
      $Res Function(_$ConsultantTaxInfoWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
    Object? consultantProfile = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultantTaxInfoWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
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
              as List<ConsultantTaxInfoWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantTaxInfoWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultantTaxInfoWhereInputImpl
    implements _ConsultantTaxInfoWhereInput {
  const _$ConsultantTaxInfoWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.panLast4,
      this.panVerified,
      this.gstin,
      this.gstinVerified,
      this.country,
      this.isIndianResident,
      this.lutNumber,
      this.lutValidUntil,
      this.consultantProfile,
      this.createdAt,
      this.updatedAt,
      final List<ConsultantTaxInfoWhereInput>? AND,
      final List<ConsultantTaxInfoWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultantTaxInfoWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? panLast4;
  @override
  final BooleanFilter? panVerified;
  @override
  final StringFilter? gstin;
  @override
  final BooleanFilter? gstinVerified;
  @override
  final StringFilter? country;
  @override
  final BooleanFilter? isIndianResident;
  @override
  final StringFilter? lutNumber;
  @override
  final DateTimeFilter? lutValidUntil;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultantTaxInfoWhereInput>? _AND;
  @override
  List<ConsultantTaxInfoWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantTaxInfoWhereInput>? _OR;
  @override
  List<ConsultantTaxInfoWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultantTaxInfoWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultantTaxInfoWhereInput(id: $id, consultantProfileId: $consultantProfileId, panLast4: $panLast4, panVerified: $panVerified, gstin: $gstin, gstinVerified: $gstinVerified, country: $country, isIndianResident: $isIndianResident, lutNumber: $lutNumber, lutValidUntil: $lutValidUntil, consultantProfile: $consultantProfile, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.panLast4, panLast4) ||
                other.panLast4 == panLast4) &&
            (identical(other.panVerified, panVerified) ||
                other.panVerified == panVerified) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.gstinVerified, gstinVerified) ||
                other.gstinVerified == gstinVerified) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isIndianResident, isIndianResident) ||
                other.isIndianResident == isIndianResident) &&
            (identical(other.lutNumber, lutNumber) ||
                other.lutNumber == lutNumber) &&
            (identical(other.lutValidUntil, lutValidUntil) ||
                other.lutValidUntil == lutValidUntil) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
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
      consultantProfileId,
      panLast4,
      panVerified,
      gstin,
      gstinVerified,
      country,
      isIndianResident,
      lutNumber,
      lutValidUntil,
      consultantProfile,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoWhereInputImplCopyWith<_$ConsultantTaxInfoWhereInputImpl>
      get copyWith => __$$ConsultantTaxInfoWhereInputImplCopyWithImpl<
          _$ConsultantTaxInfoWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfoWhereInput
    implements ConsultantTaxInfoWhereInput {
  const factory _ConsultantTaxInfoWhereInput(
          {final StringFilter? id,
          final StringFilter? consultantProfileId,
          final StringFilter? panLast4,
          final BooleanFilter? panVerified,
          final StringFilter? gstin,
          final BooleanFilter? gstinVerified,
          final StringFilter? country,
          final BooleanFilter? isIndianResident,
          final StringFilter? lutNumber,
          final DateTimeFilter? lutValidUntil,
          final ConsultantProfileRelationFilter? consultantProfile,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsultantTaxInfoWhereInput>? AND,
          final List<ConsultantTaxInfoWhereInput>? OR,
          final ConsultantTaxInfoWhereInput? NOT}) =
      _$ConsultantTaxInfoWhereInputImpl;

  factory _ConsultantTaxInfoWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantTaxInfoWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get panLast4;
  @override
  BooleanFilter? get panVerified;
  @override
  StringFilter? get gstin;
  @override
  BooleanFilter? get gstinVerified;
  @override
  StringFilter? get country;
  @override
  BooleanFilter? get isIndianResident;
  @override
  StringFilter? get lutNumber;
  @override
  DateTimeFilter? get lutValidUntil;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultantTaxInfoWhereInput>? get AND;
  @override
  List<ConsultantTaxInfoWhereInput>? get OR;
  @override
  ConsultantTaxInfoWhereInput? get NOT;

  /// Create a copy of ConsultantTaxInfoWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoWhereInputImplCopyWith<_$ConsultantTaxInfoWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantTaxInfoListRelationFilter
    _$ConsultantTaxInfoListRelationFilterFromJson(Map<String, dynamic> json) {
  return _ConsultantTaxInfoListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfoListRelationFilter {
  /// At least one related record matches
  ConsultantTaxInfoWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultantTaxInfoWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultantTaxInfoWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfoListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoListRelationFilterCopyWith<
          ConsultantTaxInfoListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoListRelationFilterCopyWith<$Res> {
  factory $ConsultantTaxInfoListRelationFilterCopyWith(
          ConsultantTaxInfoListRelationFilter value,
          $Res Function(ConsultantTaxInfoListRelationFilter) then) =
      _$ConsultantTaxInfoListRelationFilterCopyWithImpl<$Res,
          ConsultantTaxInfoListRelationFilter>;
  @useResult
  $Res call(
      {ConsultantTaxInfoWhereInput? some,
      ConsultantTaxInfoWhereInput? every,
      ConsultantTaxInfoWhereInput? none});

  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get some;
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get every;
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultantTaxInfoListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantTaxInfoListRelationFilter>
    implements $ConsultantTaxInfoListRelationFilterCopyWith<$Res> {
  _$ConsultantTaxInfoListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfoListRelationFilter
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
              as ConsultantTaxInfoWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantTaxInfoListRelationFilterImplCopyWith<$Res>
    implements $ConsultantTaxInfoListRelationFilterCopyWith<$Res> {
  factory _$$ConsultantTaxInfoListRelationFilterImplCopyWith(
          _$ConsultantTaxInfoListRelationFilterImpl value,
          $Res Function(_$ConsultantTaxInfoListRelationFilterImpl) then) =
      __$$ConsultantTaxInfoListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantTaxInfoWhereInput? some,
      ConsultantTaxInfoWhereInput? every,
      ConsultantTaxInfoWhereInput? none});

  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultantTaxInfoListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoListRelationFilterCopyWithImpl<$Res,
        _$ConsultantTaxInfoListRelationFilterImpl>
    implements _$$ConsultantTaxInfoListRelationFilterImplCopyWith<$Res> {
  __$$ConsultantTaxInfoListRelationFilterImplCopyWithImpl(
      _$ConsultantTaxInfoListRelationFilterImpl _value,
      $Res Function(_$ConsultantTaxInfoListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultantTaxInfoListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantTaxInfoListRelationFilterImpl
    implements _ConsultantTaxInfoListRelationFilter {
  const _$ConsultantTaxInfoListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultantTaxInfoListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultantTaxInfoWhereInput? some;

  /// All related records match
  @override
  final ConsultantTaxInfoWhereInput? every;

  /// No related records match
  @override
  final ConsultantTaxInfoWhereInput? none;

  @override
  String toString() {
    return 'ConsultantTaxInfoListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoListRelationFilterImplCopyWith<
          _$ConsultantTaxInfoListRelationFilterImpl>
      get copyWith => __$$ConsultantTaxInfoListRelationFilterImplCopyWithImpl<
          _$ConsultantTaxInfoListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfoListRelationFilter
    implements ConsultantTaxInfoListRelationFilter {
  const factory _ConsultantTaxInfoListRelationFilter(
          {final ConsultantTaxInfoWhereInput? some,
          final ConsultantTaxInfoWhereInput? every,
          final ConsultantTaxInfoWhereInput? none}) =
      _$ConsultantTaxInfoListRelationFilterImpl;

  factory _ConsultantTaxInfoListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantTaxInfoListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultantTaxInfoWhereInput? get some;

  /// All related records match
  @override
  ConsultantTaxInfoWhereInput? get every;

  /// No related records match
  @override
  ConsultantTaxInfoWhereInput? get none;

  /// Create a copy of ConsultantTaxInfoListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoListRelationFilterImplCopyWith<
          _$ConsultantTaxInfoListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantTaxInfoRelationFilter _$ConsultantTaxInfoRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantTaxInfoRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfoRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultantTaxInfoWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultantTaxInfoWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfoRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoRelationFilterCopyWith<ConsultantTaxInfoRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoRelationFilterCopyWith<$Res> {
  factory $ConsultantTaxInfoRelationFilterCopyWith(
          ConsultantTaxInfoRelationFilter value,
          $Res Function(ConsultantTaxInfoRelationFilter) then) =
      _$ConsultantTaxInfoRelationFilterCopyWithImpl<$Res,
          ConsultantTaxInfoRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantTaxInfoWhereInput? is_,
      ConsultantTaxInfoWhereInput? isNot});

  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get is_;
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultantTaxInfoRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantTaxInfoRelationFilter>
    implements $ConsultantTaxInfoRelationFilterCopyWith<$Res> {
  _$ConsultantTaxInfoRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfoRelationFilter
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
              as ConsultantTaxInfoWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultantTaxInfoWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantTaxInfoRelationFilterImplCopyWith<$Res>
    implements $ConsultantTaxInfoRelationFilterCopyWith<$Res> {
  factory _$$ConsultantTaxInfoRelationFilterImplCopyWith(
          _$ConsultantTaxInfoRelationFilterImpl value,
          $Res Function(_$ConsultantTaxInfoRelationFilterImpl) then) =
      __$$ConsultantTaxInfoRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantTaxInfoWhereInput? is_,
      ConsultantTaxInfoWhereInput? isNot});

  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultantTaxInfoWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultantTaxInfoRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoRelationFilterCopyWithImpl<$Res,
        _$ConsultantTaxInfoRelationFilterImpl>
    implements _$$ConsultantTaxInfoRelationFilterImplCopyWith<$Res> {
  __$$ConsultantTaxInfoRelationFilterImplCopyWithImpl(
      _$ConsultantTaxInfoRelationFilterImpl _value,
      $Res Function(_$ConsultantTaxInfoRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultantTaxInfoRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfoWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantTaxInfoRelationFilterImpl
    implements _ConsultantTaxInfoRelationFilter {
  const _$ConsultantTaxInfoRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultantTaxInfoRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultantTaxInfoWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultantTaxInfoWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultantTaxInfoRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoRelationFilterImplCopyWith<
          _$ConsultantTaxInfoRelationFilterImpl>
      get copyWith => __$$ConsultantTaxInfoRelationFilterImplCopyWithImpl<
          _$ConsultantTaxInfoRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfoRelationFilter
    implements ConsultantTaxInfoRelationFilter {
  const factory _ConsultantTaxInfoRelationFilter(
          {@JsonKey(name: 'is') final ConsultantTaxInfoWhereInput? is_,
          final ConsultantTaxInfoWhereInput? isNot}) =
      _$ConsultantTaxInfoRelationFilterImpl;

  factory _ConsultantTaxInfoRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultantTaxInfoRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultantTaxInfoWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultantTaxInfoWhereInput? get isNot;

  /// Create a copy of ConsultantTaxInfoRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoRelationFilterImplCopyWith<
          _$ConsultantTaxInfoRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantTaxInfoOrderByInput _$ConsultantTaxInfoOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantTaxInfoOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantTaxInfoOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get panLast4 => throw _privateConstructorUsedError;
  SortOrder? get panVerified => throw _privateConstructorUsedError;
  SortOrder? get gstin => throw _privateConstructorUsedError;
  SortOrder? get gstinVerified => throw _privateConstructorUsedError;
  SortOrder? get country => throw _privateConstructorUsedError;
  SortOrder? get isIndianResident => throw _privateConstructorUsedError;
  SortOrder? get lutNumber => throw _privateConstructorUsedError;
  SortOrder? get lutValidUntil => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantTaxInfoOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantTaxInfoOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantTaxInfoOrderByInputCopyWith<ConsultantTaxInfoOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantTaxInfoOrderByInputCopyWith<$Res> {
  factory $ConsultantTaxInfoOrderByInputCopyWith(
          ConsultantTaxInfoOrderByInput value,
          $Res Function(ConsultantTaxInfoOrderByInput) then) =
      _$ConsultantTaxInfoOrderByInputCopyWithImpl<$Res,
          ConsultantTaxInfoOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? panLast4,
      SortOrder? panVerified,
      SortOrder? gstin,
      SortOrder? gstinVerified,
      SortOrder? country,
      SortOrder? isIndianResident,
      SortOrder? lutNumber,
      SortOrder? lutValidUntil,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultantTaxInfoOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultantTaxInfoOrderByInput>
    implements $ConsultantTaxInfoOrderByInputCopyWith<$Res> {
  _$ConsultantTaxInfoOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantTaxInfoOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
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
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultantTaxInfoOrderByInputImplCopyWith<$Res>
    implements $ConsultantTaxInfoOrderByInputCopyWith<$Res> {
  factory _$$ConsultantTaxInfoOrderByInputImplCopyWith(
          _$ConsultantTaxInfoOrderByInputImpl value,
          $Res Function(_$ConsultantTaxInfoOrderByInputImpl) then) =
      __$$ConsultantTaxInfoOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? panLast4,
      SortOrder? panVerified,
      SortOrder? gstin,
      SortOrder? gstinVerified,
      SortOrder? country,
      SortOrder? isIndianResident,
      SortOrder? lutNumber,
      SortOrder? lutValidUntil,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultantTaxInfoOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultantTaxInfoOrderByInputCopyWithImpl<$Res,
        _$ConsultantTaxInfoOrderByInputImpl>
    implements _$$ConsultantTaxInfoOrderByInputImplCopyWith<$Res> {
  __$$ConsultantTaxInfoOrderByInputImplCopyWithImpl(
      _$ConsultantTaxInfoOrderByInputImpl _value,
      $Res Function(_$ConsultantTaxInfoOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantTaxInfoOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? panLast4 = freezed,
    Object? panVerified = freezed,
    Object? gstin = freezed,
    Object? gstinVerified = freezed,
    Object? country = freezed,
    Object? isIndianResident = freezed,
    Object? lutNumber = freezed,
    Object? lutValidUntil = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultantTaxInfoOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      panLast4: freezed == panLast4
          ? _value.panLast4
          : panLast4 // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      panVerified: freezed == panVerified
          ? _value.panVerified
          : panVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      gstinVerified: freezed == gstinVerified
          ? _value.gstinVerified
          : gstinVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isIndianResident: freezed == isIndianResident
          ? _value.isIndianResident
          : isIndianResident // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      lutNumber: freezed == lutNumber
          ? _value.lutNumber
          : lutNumber // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      lutValidUntil: freezed == lutValidUntil
          ? _value.lutValidUntil
          : lutValidUntil // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantTaxInfoOrderByInputImpl
    implements _ConsultantTaxInfoOrderByInput {
  const _$ConsultantTaxInfoOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.panLast4,
      this.panVerified,
      this.gstin,
      this.gstinVerified,
      this.country,
      this.isIndianResident,
      this.lutNumber,
      this.lutValidUntil,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultantTaxInfoOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantTaxInfoOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? panLast4;
  @override
  final SortOrder? panVerified;
  @override
  final SortOrder? gstin;
  @override
  final SortOrder? gstinVerified;
  @override
  final SortOrder? country;
  @override
  final SortOrder? isIndianResident;
  @override
  final SortOrder? lutNumber;
  @override
  final SortOrder? lutValidUntil;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultantTaxInfoOrderByInput(id: $id, consultantProfileId: $consultantProfileId, panLast4: $panLast4, panVerified: $panVerified, gstin: $gstin, gstinVerified: $gstinVerified, country: $country, isIndianResident: $isIndianResident, lutNumber: $lutNumber, lutValidUntil: $lutValidUntil, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantTaxInfoOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.panLast4, panLast4) ||
                other.panLast4 == panLast4) &&
            (identical(other.panVerified, panVerified) ||
                other.panVerified == panVerified) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.gstinVerified, gstinVerified) ||
                other.gstinVerified == gstinVerified) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isIndianResident, isIndianResident) ||
                other.isIndianResident == isIndianResident) &&
            (identical(other.lutNumber, lutNumber) ||
                other.lutNumber == lutNumber) &&
            (identical(other.lutValidUntil, lutValidUntil) ||
                other.lutValidUntil == lutValidUntil) &&
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
      panLast4,
      panVerified,
      gstin,
      gstinVerified,
      country,
      isIndianResident,
      lutNumber,
      lutValidUntil,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantTaxInfoOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantTaxInfoOrderByInputImplCopyWith<
          _$ConsultantTaxInfoOrderByInputImpl>
      get copyWith => __$$ConsultantTaxInfoOrderByInputImplCopyWithImpl<
          _$ConsultantTaxInfoOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantTaxInfoOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantTaxInfoOrderByInput
    implements ConsultantTaxInfoOrderByInput {
  const factory _ConsultantTaxInfoOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? panLast4,
      final SortOrder? panVerified,
      final SortOrder? gstin,
      final SortOrder? gstinVerified,
      final SortOrder? country,
      final SortOrder? isIndianResident,
      final SortOrder? lutNumber,
      final SortOrder? lutValidUntil,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultantTaxInfoOrderByInputImpl;

  factory _ConsultantTaxInfoOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantTaxInfoOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get panLast4;
  @override
  SortOrder? get panVerified;
  @override
  SortOrder? get gstin;
  @override
  SortOrder? get gstinVerified;
  @override
  SortOrder? get country;
  @override
  SortOrder? get isIndianResident;
  @override
  SortOrder? get lutNumber;
  @override
  SortOrder? get lutValidUntil;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultantTaxInfoOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantTaxInfoOrderByInputImplCopyWith<
          _$ConsultantTaxInfoOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
