// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Certification _$CertificationFromJson(Map<String, dynamic> json) {
  return _Certification.fromJson(json);
}

/// @nodoc
mixin _$Certification {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get issuingOrganization => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get credentialId => throw _privateConstructorUsedError;
  String? get credentialUrl => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Certification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationCopyWith<Certification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationCopyWith<$Res> {
  factory $CertificationCopyWith(
          Certification value, $Res Function(Certification) then) =
      _$CertificationCopyWithImpl<$Res, Certification>;
  @useResult
  $Res call(
      {String id,
      String name,
      String issuingOrganization,
      DateTime issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CertificationCopyWithImpl<$Res, $Val extends Certification>
    implements $CertificationCopyWith<$Res> {
  _$CertificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? issuingOrganization = null,
    Object? issueDate = null,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Certification
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
abstract class _$$CertificationImplCopyWith<$Res>
    implements $CertificationCopyWith<$Res> {
  factory _$$CertificationImplCopyWith(
          _$CertificationImpl value, $Res Function(_$CertificationImpl) then) =
      __$$CertificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String issuingOrganization,
      DateTime issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CertificationImplCopyWithImpl<$Res>
    extends _$CertificationCopyWithImpl<$Res, _$CertificationImpl>
    implements _$$CertificationImplCopyWith<$Res> {
  __$$CertificationImplCopyWithImpl(
      _$CertificationImpl _value, $Res Function(_$CertificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? issuingOrganization = null,
    Object? issueDate = null,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CertificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$CertificationImpl implements _Certification {
  const _$CertificationImpl(
      {required this.id,
      required this.name,
      required this.issuingOrganization,
      required this.issueDate,
      this.expiryDate,
      this.credentialId,
      this.credentialUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$CertificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String issuingOrganization;
  @override
  final DateTime issueDate;
  @override
  final DateTime? expiryDate;
  @override
  final String? credentialId;
  @override
  final String? credentialUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Certification(id: $id, name: $name, issuingOrganization: $issuingOrganization, issueDate: $issueDate, expiryDate: $expiryDate, credentialId: $credentialId, credentialUrl: $credentialUrl, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.credentialUrl, credentialUrl) ||
                other.credentialUrl == credentialUrl) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      name,
      issuingOrganization,
      issueDate,
      expiryDate,
      credentialId,
      credentialUrl,
      user,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationImplCopyWith<_$CertificationImpl> get copyWith =>
      __$$CertificationImplCopyWithImpl<_$CertificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationImplToJson(
      this,
    );
  }
}

abstract class _Certification implements Certification {
  const factory _Certification(
      {required final String id,
      required final String name,
      required final String issuingOrganization,
      required final DateTime issueDate,
      final DateTime? expiryDate,
      final String? credentialId,
      final String? credentialUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CertificationImpl;

  factory _Certification.fromJson(Map<String, dynamic> json) =
      _$CertificationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get issuingOrganization;
  @override
  DateTime get issueDate;
  @override
  DateTime? get expiryDate;
  @override
  String? get credentialId;
  @override
  String? get credentialUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationImplCopyWith<_$CertificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCertificationInput _$CreateCertificationInputFromJson(
    Map<String, dynamic> json) {
  return _CreateCertificationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateCertificationInput {
  String get name => throw _privateConstructorUsedError;
  String get issuingOrganization => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get credentialId => throw _privateConstructorUsedError;
  String? get credentialUrl => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateCertificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCertificationInputCopyWith<CreateCertificationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCertificationInputCopyWith<$Res> {
  factory $CreateCertificationInputCopyWith(CreateCertificationInput value,
          $Res Function(CreateCertificationInput) then) =
      _$CreateCertificationInputCopyWithImpl<$Res, CreateCertificationInput>;
  @useResult
  $Res call(
      {String name,
      String issuingOrganization,
      DateTime issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      String userId});
}

/// @nodoc
class _$CreateCertificationInputCopyWithImpl<$Res,
        $Val extends CreateCertificationInput>
    implements $CreateCertificationInputCopyWith<$Res> {
  _$CreateCertificationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issuingOrganization = null,
    Object? issueDate = null,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCertificationInputImplCopyWith<$Res>
    implements $CreateCertificationInputCopyWith<$Res> {
  factory _$$CreateCertificationInputImplCopyWith(
          _$CreateCertificationInputImpl value,
          $Res Function(_$CreateCertificationInputImpl) then) =
      __$$CreateCertificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String issuingOrganization,
      DateTime issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      String userId});
}

/// @nodoc
class __$$CreateCertificationInputImplCopyWithImpl<$Res>
    extends _$CreateCertificationInputCopyWithImpl<$Res,
        _$CreateCertificationInputImpl>
    implements _$$CreateCertificationInputImplCopyWith<$Res> {
  __$$CreateCertificationInputImplCopyWithImpl(
      _$CreateCertificationInputImpl _value,
      $Res Function(_$CreateCertificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issuingOrganization = null,
    Object? issueDate = null,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateCertificationInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCertificationInputImpl implements _CreateCertificationInput {
  const _$CreateCertificationInputImpl(
      {required this.name,
      required this.issuingOrganization,
      required this.issueDate,
      this.expiryDate,
      this.credentialId,
      this.credentialUrl,
      required this.userId});

  factory _$CreateCertificationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCertificationInputImplFromJson(json);

  @override
  final String name;
  @override
  final String issuingOrganization;
  @override
  final DateTime issueDate;
  @override
  final DateTime? expiryDate;
  @override
  final String? credentialId;
  @override
  final String? credentialUrl;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateCertificationInput(name: $name, issuingOrganization: $issuingOrganization, issueDate: $issueDate, expiryDate: $expiryDate, credentialId: $credentialId, credentialUrl: $credentialUrl, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCertificationInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.credentialUrl, credentialUrl) ||
                other.credentialUrl == credentialUrl) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, issuingOrganization,
      issueDate, expiryDate, credentialId, credentialUrl, userId);

  /// Create a copy of CreateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCertificationInputImplCopyWith<_$CreateCertificationInputImpl>
      get copyWith => __$$CreateCertificationInputImplCopyWithImpl<
          _$CreateCertificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCertificationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateCertificationInput implements CreateCertificationInput {
  const factory _CreateCertificationInput(
      {required final String name,
      required final String issuingOrganization,
      required final DateTime issueDate,
      final DateTime? expiryDate,
      final String? credentialId,
      final String? credentialUrl,
      required final String userId}) = _$CreateCertificationInputImpl;

  factory _CreateCertificationInput.fromJson(Map<String, dynamic> json) =
      _$CreateCertificationInputImpl.fromJson;

  @override
  String get name;
  @override
  String get issuingOrganization;
  @override
  DateTime get issueDate;
  @override
  DateTime? get expiryDate;
  @override
  String? get credentialId;
  @override
  String? get credentialUrl;
  @override
  String get userId;

  /// Create a copy of CreateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCertificationInputImplCopyWith<_$CreateCertificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCertificationInput _$UpdateCertificationInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateCertificationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateCertificationInput {
  String? get name => throw _privateConstructorUsedError;
  String? get issuingOrganization => throw _privateConstructorUsedError;
  DateTime? get issueDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get credentialId => throw _privateConstructorUsedError;
  String? get credentialUrl => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateCertificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCertificationInputCopyWith<UpdateCertificationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCertificationInputCopyWith<$Res> {
  factory $UpdateCertificationInputCopyWith(UpdateCertificationInput value,
          $Res Function(UpdateCertificationInput) then) =
      _$UpdateCertificationInputCopyWithImpl<$Res, UpdateCertificationInput>;
  @useResult
  $Res call(
      {String? name,
      String? issuingOrganization,
      DateTime? issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      String? userId});
}

/// @nodoc
class _$UpdateCertificationInputCopyWithImpl<$Res,
        $Val extends UpdateCertificationInput>
    implements $UpdateCertificationInputCopyWith<$Res> {
  _$UpdateCertificationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCertificationInputImplCopyWith<$Res>
    implements $UpdateCertificationInputCopyWith<$Res> {
  factory _$$UpdateCertificationInputImplCopyWith(
          _$UpdateCertificationInputImpl value,
          $Res Function(_$UpdateCertificationInputImpl) then) =
      __$$UpdateCertificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? issuingOrganization,
      DateTime? issueDate,
      DateTime? expiryDate,
      String? credentialId,
      String? credentialUrl,
      String? userId});
}

/// @nodoc
class __$$UpdateCertificationInputImplCopyWithImpl<$Res>
    extends _$UpdateCertificationInputCopyWithImpl<$Res,
        _$UpdateCertificationInputImpl>
    implements _$$UpdateCertificationInputImplCopyWith<$Res> {
  __$$UpdateCertificationInputImplCopyWithImpl(
      _$UpdateCertificationInputImpl _value,
      $Res Function(_$UpdateCertificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateCertificationInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCertificationInputImpl implements _UpdateCertificationInput {
  const _$UpdateCertificationInputImpl(
      {this.name,
      this.issuingOrganization,
      this.issueDate,
      this.expiryDate,
      this.credentialId,
      this.credentialUrl,
      this.userId});

  factory _$UpdateCertificationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCertificationInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String? issuingOrganization;
  @override
  final DateTime? issueDate;
  @override
  final DateTime? expiryDate;
  @override
  final String? credentialId;
  @override
  final String? credentialUrl;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateCertificationInput(name: $name, issuingOrganization: $issuingOrganization, issueDate: $issueDate, expiryDate: $expiryDate, credentialId: $credentialId, credentialUrl: $credentialUrl, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCertificationInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.credentialUrl, credentialUrl) ||
                other.credentialUrl == credentialUrl) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, issuingOrganization,
      issueDate, expiryDate, credentialId, credentialUrl, userId);

  /// Create a copy of UpdateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCertificationInputImplCopyWith<_$UpdateCertificationInputImpl>
      get copyWith => __$$UpdateCertificationInputImplCopyWithImpl<
          _$UpdateCertificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCertificationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateCertificationInput implements UpdateCertificationInput {
  const factory _UpdateCertificationInput(
      {final String? name,
      final String? issuingOrganization,
      final DateTime? issueDate,
      final DateTime? expiryDate,
      final String? credentialId,
      final String? credentialUrl,
      final String? userId}) = _$UpdateCertificationInputImpl;

  factory _UpdateCertificationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateCertificationInputImpl.fromJson;

  @override
  String? get name;
  @override
  String? get issuingOrganization;
  @override
  DateTime? get issueDate;
  @override
  DateTime? get expiryDate;
  @override
  String? get credentialId;
  @override
  String? get credentialUrl;
  @override
  String? get userId;

  /// Create a copy of UpdateCertificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCertificationInputImplCopyWith<_$UpdateCertificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CertificationWhereUniqueInput _$CertificationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _CertificationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$CertificationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this CertificationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationWhereUniqueInputCopyWith<CertificationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationWhereUniqueInputCopyWith<$Res> {
  factory $CertificationWhereUniqueInputCopyWith(
          CertificationWhereUniqueInput value,
          $Res Function(CertificationWhereUniqueInput) then) =
      _$CertificationWhereUniqueInputCopyWithImpl<$Res,
          CertificationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$CertificationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends CertificationWhereUniqueInput>
    implements $CertificationWhereUniqueInputCopyWith<$Res> {
  _$CertificationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationWhereUniqueInput
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
abstract class _$$CertificationWhereUniqueInputImplCopyWith<$Res>
    implements $CertificationWhereUniqueInputCopyWith<$Res> {
  factory _$$CertificationWhereUniqueInputImplCopyWith(
          _$CertificationWhereUniqueInputImpl value,
          $Res Function(_$CertificationWhereUniqueInputImpl) then) =
      __$$CertificationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$CertificationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$CertificationWhereUniqueInputCopyWithImpl<$Res,
        _$CertificationWhereUniqueInputImpl>
    implements _$$CertificationWhereUniqueInputImplCopyWith<$Res> {
  __$$CertificationWhereUniqueInputImplCopyWithImpl(
      _$CertificationWhereUniqueInputImpl _value,
      $Res Function(_$CertificationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$CertificationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationWhereUniqueInputImpl
    implements _CertificationWhereUniqueInput {
  const _$CertificationWhereUniqueInputImpl({this.id});

  factory _$CertificationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CertificationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'CertificationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CertificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationWhereUniqueInputImplCopyWith<
          _$CertificationWhereUniqueInputImpl>
      get copyWith => __$$CertificationWhereUniqueInputImplCopyWithImpl<
          _$CertificationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _CertificationWhereUniqueInput
    implements CertificationWhereUniqueInput {
  const factory _CertificationWhereUniqueInput({final String? id}) =
      _$CertificationWhereUniqueInputImpl;

  factory _CertificationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$CertificationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of CertificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationWhereUniqueInputImplCopyWith<
          _$CertificationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CertificationWhereInput _$CertificationWhereInputFromJson(
    Map<String, dynamic> json) {
  return _CertificationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$CertificationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  StringFilter? get issuingOrganization => throw _privateConstructorUsedError;
  DateTimeFilter? get issueDate => throw _privateConstructorUsedError;
  DateTimeFilter? get expiryDate => throw _privateConstructorUsedError;
  StringFilter? get credentialId => throw _privateConstructorUsedError;
  StringFilter? get credentialUrl => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<CertificationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<CertificationWhereInput>? get OR => throw _privateConstructorUsedError;
  CertificationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this CertificationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationWhereInputCopyWith<CertificationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationWhereInputCopyWith<$Res> {
  factory $CertificationWhereInputCopyWith(CertificationWhereInput value,
          $Res Function(CertificationWhereInput) then) =
      _$CertificationWhereInputCopyWithImpl<$Res, CertificationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? issuingOrganization,
      DateTimeFilter? issueDate,
      DateTimeFilter? expiryDate,
      StringFilter? credentialId,
      StringFilter? credentialUrl,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<CertificationWhereInput>? AND,
      List<CertificationWhereInput>? OR,
      CertificationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $StringFilterCopyWith<$Res>? get issuingOrganization;
  $DateTimeFilterCopyWith<$Res>? get issueDate;
  $DateTimeFilterCopyWith<$Res>? get expiryDate;
  $StringFilterCopyWith<$Res>? get credentialId;
  $StringFilterCopyWith<$Res>? get credentialUrl;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $CertificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$CertificationWhereInputCopyWithImpl<$Res,
        $Val extends CertificationWhereInput>
    implements $CertificationWhereInputCopyWith<$Res> {
  _$CertificationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? user = freezed,
    Object? userId = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<CertificationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<CertificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CertificationWhereInput
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

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get issuingOrganization {
    if (_value.issuingOrganization == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.issuingOrganization!, (value) {
      return _then(_value.copyWith(issuingOrganization: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get issueDate {
    if (_value.issueDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.issueDate!, (value) {
      return _then(_value.copyWith(issueDate: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get expiryDate {
    if (_value.expiryDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.expiryDate!, (value) {
      return _then(_value.copyWith(expiryDate: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get credentialId {
    if (_value.credentialId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.credentialId!, (value) {
      return _then(_value.copyWith(credentialId: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get credentialUrl {
    if (_value.credentialUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.credentialUrl!, (value) {
      return _then(_value.copyWith(credentialUrl: value) as $Val);
    });
  }

  /// Create a copy of CertificationWhereInput
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

  /// Create a copy of CertificationWhereInput
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

  /// Create a copy of CertificationWhereInput
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

  /// Create a copy of CertificationWhereInput
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

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CertificationWhereInputImplCopyWith<$Res>
    implements $CertificationWhereInputCopyWith<$Res> {
  factory _$$CertificationWhereInputImplCopyWith(
          _$CertificationWhereInputImpl value,
          $Res Function(_$CertificationWhereInputImpl) then) =
      __$$CertificationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? issuingOrganization,
      DateTimeFilter? issueDate,
      DateTimeFilter? expiryDate,
      StringFilter? credentialId,
      StringFilter? credentialUrl,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<CertificationWhereInput>? AND,
      List<CertificationWhereInput>? OR,
      CertificationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $StringFilterCopyWith<$Res>? get issuingOrganization;
  @override
  $DateTimeFilterCopyWith<$Res>? get issueDate;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiryDate;
  @override
  $StringFilterCopyWith<$Res>? get credentialId;
  @override
  $StringFilterCopyWith<$Res>? get credentialUrl;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $CertificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$CertificationWhereInputImplCopyWithImpl<$Res>
    extends _$CertificationWhereInputCopyWithImpl<$Res,
        _$CertificationWhereInputImpl>
    implements _$$CertificationWhereInputImplCopyWith<$Res> {
  __$$CertificationWhereInputImplCopyWithImpl(
      _$CertificationWhereInputImpl _value,
      $Res Function(_$CertificationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$CertificationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<CertificationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<CertificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CertificationWhereInputImpl implements _CertificationWhereInput {
  const _$CertificationWhereInputImpl(
      {this.id,
      this.name,
      this.issuingOrganization,
      this.issueDate,
      this.expiryDate,
      this.credentialId,
      this.credentialUrl,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<CertificationWhereInput>? AND,
      final List<CertificationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$CertificationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final StringFilter? issuingOrganization;
  @override
  final DateTimeFilter? issueDate;
  @override
  final DateTimeFilter? expiryDate;
  @override
  final StringFilter? credentialId;
  @override
  final StringFilter? credentialUrl;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<CertificationWhereInput>? _AND;
  @override
  List<CertificationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CertificationWhereInput>? _OR;
  @override
  List<CertificationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CertificationWhereInput? NOT;

  @override
  String toString() {
    return 'CertificationWhereInput(id: $id, name: $name, issuingOrganization: $issuingOrganization, issueDate: $issueDate, expiryDate: $expiryDate, credentialId: $credentialId, credentialUrl: $credentialUrl, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.credentialUrl, credentialUrl) ||
                other.credentialUrl == credentialUrl) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      name,
      issuingOrganization,
      issueDate,
      expiryDate,
      credentialId,
      credentialUrl,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationWhereInputImplCopyWith<_$CertificationWhereInputImpl>
      get copyWith => __$$CertificationWhereInputImplCopyWithImpl<
          _$CertificationWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _CertificationWhereInput implements CertificationWhereInput {
  const factory _CertificationWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final StringFilter? issuingOrganization,
      final DateTimeFilter? issueDate,
      final DateTimeFilter? expiryDate,
      final StringFilter? credentialId,
      final StringFilter? credentialUrl,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<CertificationWhereInput>? AND,
      final List<CertificationWhereInput>? OR,
      final CertificationWhereInput? NOT}) = _$CertificationWhereInputImpl;

  factory _CertificationWhereInput.fromJson(Map<String, dynamic> json) =
      _$CertificationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  StringFilter? get issuingOrganization;
  @override
  DateTimeFilter? get issueDate;
  @override
  DateTimeFilter? get expiryDate;
  @override
  StringFilter? get credentialId;
  @override
  StringFilter? get credentialUrl;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<CertificationWhereInput>? get AND;
  @override
  List<CertificationWhereInput>? get OR;
  @override
  CertificationWhereInput? get NOT;

  /// Create a copy of CertificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationWhereInputImplCopyWith<_$CertificationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CertificationListRelationFilter _$CertificationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _CertificationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$CertificationListRelationFilter {
  /// At least one related record matches
  CertificationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  CertificationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  CertificationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this CertificationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationListRelationFilterCopyWith<CertificationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationListRelationFilterCopyWith<$Res> {
  factory $CertificationListRelationFilterCopyWith(
          CertificationListRelationFilter value,
          $Res Function(CertificationListRelationFilter) then) =
      _$CertificationListRelationFilterCopyWithImpl<$Res,
          CertificationListRelationFilter>;
  @useResult
  $Res call(
      {CertificationWhereInput? some,
      CertificationWhereInput? every,
      CertificationWhereInput? none});

  $CertificationWhereInputCopyWith<$Res>? get some;
  $CertificationWhereInputCopyWith<$Res>? get every;
  $CertificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$CertificationListRelationFilterCopyWithImpl<$Res,
        $Val extends CertificationListRelationFilter>
    implements $CertificationListRelationFilterCopyWith<$Res> {
  _$CertificationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationListRelationFilter
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
              as CertificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CertificationListRelationFilterImplCopyWith<$Res>
    implements $CertificationListRelationFilterCopyWith<$Res> {
  factory _$$CertificationListRelationFilterImplCopyWith(
          _$CertificationListRelationFilterImpl value,
          $Res Function(_$CertificationListRelationFilterImpl) then) =
      __$$CertificationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificationWhereInput? some,
      CertificationWhereInput? every,
      CertificationWhereInput? none});

  @override
  $CertificationWhereInputCopyWith<$Res>? get some;
  @override
  $CertificationWhereInputCopyWith<$Res>? get every;
  @override
  $CertificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$CertificationListRelationFilterImplCopyWithImpl<$Res>
    extends _$CertificationListRelationFilterCopyWithImpl<$Res,
        _$CertificationListRelationFilterImpl>
    implements _$$CertificationListRelationFilterImplCopyWith<$Res> {
  __$$CertificationListRelationFilterImplCopyWithImpl(
      _$CertificationListRelationFilterImpl _value,
      $Res Function(_$CertificationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$CertificationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationListRelationFilterImpl
    implements _CertificationListRelationFilter {
  const _$CertificationListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$CertificationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CertificationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final CertificationWhereInput? some;

  /// All related records match
  @override
  final CertificationWhereInput? every;

  /// No related records match
  @override
  final CertificationWhereInput? none;

  @override
  String toString() {
    return 'CertificationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationListRelationFilterImplCopyWith<
          _$CertificationListRelationFilterImpl>
      get copyWith => __$$CertificationListRelationFilterImplCopyWithImpl<
          _$CertificationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _CertificationListRelationFilter
    implements CertificationListRelationFilter {
  const factory _CertificationListRelationFilter(
          {final CertificationWhereInput? some,
          final CertificationWhereInput? every,
          final CertificationWhereInput? none}) =
      _$CertificationListRelationFilterImpl;

  factory _CertificationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$CertificationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  CertificationWhereInput? get some;

  /// All related records match
  @override
  CertificationWhereInput? get every;

  /// No related records match
  @override
  CertificationWhereInput? get none;

  /// Create a copy of CertificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationListRelationFilterImplCopyWith<
          _$CertificationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CertificationRelationFilter _$CertificationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _CertificationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$CertificationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  CertificationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  CertificationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this CertificationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationRelationFilterCopyWith<CertificationRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationRelationFilterCopyWith<$Res> {
  factory $CertificationRelationFilterCopyWith(
          CertificationRelationFilter value,
          $Res Function(CertificationRelationFilter) then) =
      _$CertificationRelationFilterCopyWithImpl<$Res,
          CertificationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') CertificationWhereInput? is_,
      CertificationWhereInput? isNot});

  $CertificationWhereInputCopyWith<$Res>? get is_;
  $CertificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$CertificationRelationFilterCopyWithImpl<$Res,
        $Val extends CertificationRelationFilter>
    implements $CertificationRelationFilterCopyWith<$Res> {
  _$CertificationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationRelationFilter
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
              as CertificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CertificationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $CertificationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CertificationRelationFilterImplCopyWith<$Res>
    implements $CertificationRelationFilterCopyWith<$Res> {
  factory _$$CertificationRelationFilterImplCopyWith(
          _$CertificationRelationFilterImpl value,
          $Res Function(_$CertificationRelationFilterImpl) then) =
      __$$CertificationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') CertificationWhereInput? is_,
      CertificationWhereInput? isNot});

  @override
  $CertificationWhereInputCopyWith<$Res>? get is_;
  @override
  $CertificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$CertificationRelationFilterImplCopyWithImpl<$Res>
    extends _$CertificationRelationFilterCopyWithImpl<$Res,
        _$CertificationRelationFilterImpl>
    implements _$$CertificationRelationFilterImplCopyWith<$Res> {
  __$$CertificationRelationFilterImplCopyWithImpl(
      _$CertificationRelationFilterImpl _value,
      $Res Function(_$CertificationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$CertificationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as CertificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationRelationFilterImpl
    implements _CertificationRelationFilter {
  const _$CertificationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$CertificationRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CertificationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final CertificationWhereInput? is_;

  /// Related record does not match
  @override
  final CertificationWhereInput? isNot;

  @override
  String toString() {
    return 'CertificationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationRelationFilterImplCopyWith<_$CertificationRelationFilterImpl>
      get copyWith => __$$CertificationRelationFilterImplCopyWithImpl<
          _$CertificationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _CertificationRelationFilter
    implements CertificationRelationFilter {
  const factory _CertificationRelationFilter(
          {@JsonKey(name: 'is') final CertificationWhereInput? is_,
          final CertificationWhereInput? isNot}) =
      _$CertificationRelationFilterImpl;

  factory _CertificationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$CertificationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  CertificationWhereInput? get is_;

  /// Related record does not match
  @override
  CertificationWhereInput? get isNot;

  /// Create a copy of CertificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationRelationFilterImplCopyWith<_$CertificationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CertificationOrderByInput _$CertificationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _CertificationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$CertificationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get issuingOrganization => throw _privateConstructorUsedError;
  SortOrder? get issueDate => throw _privateConstructorUsedError;
  SortOrder? get expiryDate => throw _privateConstructorUsedError;
  SortOrder? get credentialId => throw _privateConstructorUsedError;
  SortOrder? get credentialUrl => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CertificationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationOrderByInputCopyWith<CertificationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationOrderByInputCopyWith<$Res> {
  factory $CertificationOrderByInputCopyWith(CertificationOrderByInput value,
          $Res Function(CertificationOrderByInput) then) =
      _$CertificationOrderByInputCopyWithImpl<$Res, CertificationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? issuingOrganization,
      SortOrder? issueDate,
      SortOrder? expiryDate,
      SortOrder? credentialId,
      SortOrder? credentialUrl,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$CertificationOrderByInputCopyWithImpl<$Res,
        $Val extends CertificationOrderByInput>
    implements $CertificationOrderByInputCopyWith<$Res> {
  _$CertificationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CertificationOrderByInputImplCopyWith<$Res>
    implements $CertificationOrderByInputCopyWith<$Res> {
  factory _$$CertificationOrderByInputImplCopyWith(
          _$CertificationOrderByInputImpl value,
          $Res Function(_$CertificationOrderByInputImpl) then) =
      __$$CertificationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? issuingOrganization,
      SortOrder? issueDate,
      SortOrder? expiryDate,
      SortOrder? credentialId,
      SortOrder? credentialUrl,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$CertificationOrderByInputImplCopyWithImpl<$Res>
    extends _$CertificationOrderByInputCopyWithImpl<$Res,
        _$CertificationOrderByInputImpl>
    implements _$$CertificationOrderByInputImplCopyWith<$Res> {
  __$$CertificationOrderByInputImplCopyWithImpl(
      _$CertificationOrderByInputImpl _value,
      $Res Function(_$CertificationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? issuingOrganization = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? credentialId = freezed,
    Object? credentialUrl = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CertificationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      issuingOrganization: freezed == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      credentialUrl: freezed == credentialUrl
          ? _value.credentialUrl
          : credentialUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$CertificationOrderByInputImpl implements _CertificationOrderByInput {
  const _$CertificationOrderByInputImpl(
      {this.id,
      this.name,
      this.issuingOrganization,
      this.issueDate,
      this.expiryDate,
      this.credentialId,
      this.credentialUrl,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$CertificationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? issuingOrganization;
  @override
  final SortOrder? issueDate;
  @override
  final SortOrder? expiryDate;
  @override
  final SortOrder? credentialId;
  @override
  final SortOrder? credentialUrl;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'CertificationOrderByInput(id: $id, name: $name, issuingOrganization: $issuingOrganization, issueDate: $issueDate, expiryDate: $expiryDate, credentialId: $credentialId, credentialUrl: $credentialUrl, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.credentialUrl, credentialUrl) ||
                other.credentialUrl == credentialUrl) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      name,
      issuingOrganization,
      issueDate,
      expiryDate,
      credentialId,
      credentialUrl,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of CertificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationOrderByInputImplCopyWith<_$CertificationOrderByInputImpl>
      get copyWith => __$$CertificationOrderByInputImplCopyWithImpl<
          _$CertificationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _CertificationOrderByInput implements CertificationOrderByInput {
  const factory _CertificationOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? issuingOrganization,
      final SortOrder? issueDate,
      final SortOrder? expiryDate,
      final SortOrder? credentialId,
      final SortOrder? credentialUrl,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$CertificationOrderByInputImpl;

  factory _CertificationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$CertificationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get issuingOrganization;
  @override
  SortOrder? get issueDate;
  @override
  SortOrder? get expiryDate;
  @override
  SortOrder? get credentialId;
  @override
  SortOrder? get credentialUrl;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of CertificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationOrderByInputImplCopyWith<_$CertificationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
