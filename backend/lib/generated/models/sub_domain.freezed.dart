// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubDomain _$SubDomainFromJson(Map<String, dynamic> json) {
  return _SubDomain.fromJson(json);
}

/// @nodoc
mixin _$SubDomain {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Domain? get domain => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultantProfile>? get consultantProfiles =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainCopyWith<SubDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainCopyWith<$Res> {
  factory $SubDomainCopyWith(SubDomain value, $Res Function(SubDomain) then) =
      _$SubDomainCopyWithImpl<$Res, SubDomain>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(includeFromJson: false, includeToJson: false) Domain? domain,
      String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ConsultantProfile>? consultantProfiles,
      DateTime createdAt,
      DateTime updatedAt});

  $DomainCopyWith<$Res>? get domain;
}

/// @nodoc
class _$SubDomainCopyWithImpl<$Res, $Val extends SubDomain>
    implements $SubDomainCopyWith<$Res> {
  _$SubDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? domain = freezed,
    Object? domainId = null,
    Object? consultantProfiles = freezed,
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
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfiles: freezed == consultantProfiles
          ? _value.consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfile>?,
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

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $DomainCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubDomainImplCopyWith<$Res>
    implements $SubDomainCopyWith<$Res> {
  factory _$$SubDomainImplCopyWith(
          _$SubDomainImpl value, $Res Function(_$SubDomainImpl) then) =
      __$$SubDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(includeFromJson: false, includeToJson: false) Domain? domain,
      String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ConsultantProfile>? consultantProfiles,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $DomainCopyWith<$Res>? get domain;
}

/// @nodoc
class __$$SubDomainImplCopyWithImpl<$Res>
    extends _$SubDomainCopyWithImpl<$Res, _$SubDomainImpl>
    implements _$$SubDomainImplCopyWith<$Res> {
  __$$SubDomainImplCopyWithImpl(
      _$SubDomainImpl _value, $Res Function(_$SubDomainImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? domain = freezed,
    Object? domainId = null,
    Object? consultantProfiles = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubDomainImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfiles: freezed == consultantProfiles
          ? _value._consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfile>?,
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
class _$SubDomainImpl implements _SubDomain {
  const _$SubDomainImpl(
      {required this.id,
      required this.name,
      @JsonKey(includeFromJson: false, includeToJson: false) this.domain,
      required this.domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultantProfile>? consultantProfiles,
      required this.createdAt,
      required this.updatedAt})
      : _consultantProfiles = consultantProfiles;

  factory _$SubDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDomainImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Domain? domain;
  @override
  final String domainId;
  final List<ConsultantProfile>? _consultantProfiles;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultantProfile>? get consultantProfiles {
    final value = _consultantProfiles;
    if (value == null) return null;
    if (_consultantProfiles is EqualUnmodifiableListView)
      return _consultantProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SubDomain(id: $id, name: $name, domain: $domain, domainId: $domainId, consultantProfiles: $consultantProfiles, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            const DeepCollectionEquality()
                .equals(other._consultantProfiles, _consultantProfiles) &&
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
      domain,
      domainId,
      const DeepCollectionEquality().hash(_consultantProfiles),
      createdAt,
      updatedAt);

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainImplCopyWith<_$SubDomainImpl> get copyWith =>
      __$$SubDomainImplCopyWithImpl<_$SubDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainImplToJson(
      this,
    );
  }
}

abstract class _SubDomain implements SubDomain {
  const factory _SubDomain(
      {required final String id,
      required final String name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Domain? domain,
      required final String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultantProfile>? consultantProfiles,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SubDomainImpl;

  factory _SubDomain.fromJson(Map<String, dynamic> json) =
      _$SubDomainImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Domain? get domain;
  @override
  String get domainId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultantProfile>? get consultantProfiles;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SubDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainImplCopyWith<_$SubDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSubDomainInput _$CreateSubDomainInputFromJson(Map<String, dynamic> json) {
  return _CreateSubDomainInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSubDomainInput {
  String get name => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;

  /// Serializes this CreateSubDomainInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSubDomainInputCopyWith<CreateSubDomainInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubDomainInputCopyWith<$Res> {
  factory $CreateSubDomainInputCopyWith(CreateSubDomainInput value,
          $Res Function(CreateSubDomainInput) then) =
      _$CreateSubDomainInputCopyWithImpl<$Res, CreateSubDomainInput>;
  @useResult
  $Res call({String name, String domainId});
}

/// @nodoc
class _$CreateSubDomainInputCopyWithImpl<$Res,
        $Val extends CreateSubDomainInput>
    implements $CreateSubDomainInputCopyWith<$Res> {
  _$CreateSubDomainInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? domainId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSubDomainInputImplCopyWith<$Res>
    implements $CreateSubDomainInputCopyWith<$Res> {
  factory _$$CreateSubDomainInputImplCopyWith(_$CreateSubDomainInputImpl value,
          $Res Function(_$CreateSubDomainInputImpl) then) =
      __$$CreateSubDomainInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String domainId});
}

/// @nodoc
class __$$CreateSubDomainInputImplCopyWithImpl<$Res>
    extends _$CreateSubDomainInputCopyWithImpl<$Res, _$CreateSubDomainInputImpl>
    implements _$$CreateSubDomainInputImplCopyWith<$Res> {
  __$$CreateSubDomainInputImplCopyWithImpl(_$CreateSubDomainInputImpl _value,
      $Res Function(_$CreateSubDomainInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? domainId = null,
  }) {
    return _then(_$CreateSubDomainInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSubDomainInputImpl implements _CreateSubDomainInput {
  const _$CreateSubDomainInputImpl(
      {required this.name, required this.domainId});

  factory _$CreateSubDomainInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSubDomainInputImplFromJson(json);

  @override
  final String name;
  @override
  final String domainId;

  @override
  String toString() {
    return 'CreateSubDomainInput(name: $name, domainId: $domainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubDomainInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, domainId);

  /// Create a copy of CreateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubDomainInputImplCopyWith<_$CreateSubDomainInputImpl>
      get copyWith =>
          __$$CreateSubDomainInputImplCopyWithImpl<_$CreateSubDomainInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSubDomainInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSubDomainInput implements CreateSubDomainInput {
  const factory _CreateSubDomainInput(
      {required final String name,
      required final String domainId}) = _$CreateSubDomainInputImpl;

  factory _CreateSubDomainInput.fromJson(Map<String, dynamic> json) =
      _$CreateSubDomainInputImpl.fromJson;

  @override
  String get name;
  @override
  String get domainId;

  /// Create a copy of CreateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubDomainInputImplCopyWith<_$CreateSubDomainInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSubDomainInput _$UpdateSubDomainInputFromJson(Map<String, dynamic> json) {
  return _UpdateSubDomainInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSubDomainInput {
  String? get name => throw _privateConstructorUsedError;
  String? get domainId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSubDomainInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSubDomainInputCopyWith<UpdateSubDomainInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSubDomainInputCopyWith<$Res> {
  factory $UpdateSubDomainInputCopyWith(UpdateSubDomainInput value,
          $Res Function(UpdateSubDomainInput) then) =
      _$UpdateSubDomainInputCopyWithImpl<$Res, UpdateSubDomainInput>;
  @useResult
  $Res call({String? name, String? domainId});
}

/// @nodoc
class _$UpdateSubDomainInputCopyWithImpl<$Res,
        $Val extends UpdateSubDomainInput>
    implements $UpdateSubDomainInputCopyWith<$Res> {
  _$UpdateSubDomainInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? domainId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSubDomainInputImplCopyWith<$Res>
    implements $UpdateSubDomainInputCopyWith<$Res> {
  factory _$$UpdateSubDomainInputImplCopyWith(_$UpdateSubDomainInputImpl value,
          $Res Function(_$UpdateSubDomainInputImpl) then) =
      __$$UpdateSubDomainInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? domainId});
}

/// @nodoc
class __$$UpdateSubDomainInputImplCopyWithImpl<$Res>
    extends _$UpdateSubDomainInputCopyWithImpl<$Res, _$UpdateSubDomainInputImpl>
    implements _$$UpdateSubDomainInputImplCopyWith<$Res> {
  __$$UpdateSubDomainInputImplCopyWithImpl(_$UpdateSubDomainInputImpl _value,
      $Res Function(_$UpdateSubDomainInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? domainId = freezed,
  }) {
    return _then(_$UpdateSubDomainInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSubDomainInputImpl implements _UpdateSubDomainInput {
  const _$UpdateSubDomainInputImpl({this.name, this.domainId});

  factory _$UpdateSubDomainInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSubDomainInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String? domainId;

  @override
  String toString() {
    return 'UpdateSubDomainInput(name: $name, domainId: $domainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubDomainInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, domainId);

  /// Create a copy of UpdateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubDomainInputImplCopyWith<_$UpdateSubDomainInputImpl>
      get copyWith =>
          __$$UpdateSubDomainInputImplCopyWithImpl<_$UpdateSubDomainInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSubDomainInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSubDomainInput implements UpdateSubDomainInput {
  const factory _UpdateSubDomainInput(
      {final String? name,
      final String? domainId}) = _$UpdateSubDomainInputImpl;

  factory _UpdateSubDomainInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSubDomainInputImpl.fromJson;

  @override
  String? get name;
  @override
  String? get domainId;

  /// Create a copy of UpdateSubDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubDomainInputImplCopyWith<_$UpdateSubDomainInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubDomainWhereUniqueInput _$SubDomainWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SubDomainWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SubDomainWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SubDomainWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainWhereUniqueInputCopyWith<SubDomainWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainWhereUniqueInputCopyWith<$Res> {
  factory $SubDomainWhereUniqueInputCopyWith(SubDomainWhereUniqueInput value,
          $Res Function(SubDomainWhereUniqueInput) then) =
      _$SubDomainWhereUniqueInputCopyWithImpl<$Res, SubDomainWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SubDomainWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SubDomainWhereUniqueInput>
    implements $SubDomainWhereUniqueInputCopyWith<$Res> {
  _$SubDomainWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomainWhereUniqueInput
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
abstract class _$$SubDomainWhereUniqueInputImplCopyWith<$Res>
    implements $SubDomainWhereUniqueInputCopyWith<$Res> {
  factory _$$SubDomainWhereUniqueInputImplCopyWith(
          _$SubDomainWhereUniqueInputImpl value,
          $Res Function(_$SubDomainWhereUniqueInputImpl) then) =
      __$$SubDomainWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SubDomainWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SubDomainWhereUniqueInputCopyWithImpl<$Res,
        _$SubDomainWhereUniqueInputImpl>
    implements _$$SubDomainWhereUniqueInputImplCopyWith<$Res> {
  __$$SubDomainWhereUniqueInputImplCopyWithImpl(
      _$SubDomainWhereUniqueInputImpl _value,
      $Res Function(_$SubDomainWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SubDomainWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubDomainWhereUniqueInputImpl implements _SubDomainWhereUniqueInput {
  const _$SubDomainWhereUniqueInputImpl({this.id});

  factory _$SubDomainWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDomainWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SubDomainWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubDomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainWhereUniqueInputImplCopyWith<_$SubDomainWhereUniqueInputImpl>
      get copyWith => __$$SubDomainWhereUniqueInputImplCopyWithImpl<
          _$SubDomainWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SubDomainWhereUniqueInput implements SubDomainWhereUniqueInput {
  const factory _SubDomainWhereUniqueInput({final String? id}) =
      _$SubDomainWhereUniqueInputImpl;

  factory _SubDomainWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$SubDomainWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SubDomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainWhereUniqueInputImplCopyWith<_$SubDomainWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubDomainWhereInput _$SubDomainWhereInputFromJson(Map<String, dynamic> json) {
  return _SubDomainWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SubDomainWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;

  /// Filter by domain relation
  DomainRelationFilter? get domain => throw _privateConstructorUsedError;
  StringFilter? get domainId => throw _privateConstructorUsedError;

  /// Filter by consultantProfiles relation
  ConsultantProfileListRelationFilter? get consultantProfiles =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SubDomainWhereInput>? get AND => throw _privateConstructorUsedError;
  List<SubDomainWhereInput>? get OR => throw _privateConstructorUsedError;
  SubDomainWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SubDomainWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainWhereInputCopyWith<SubDomainWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainWhereInputCopyWith<$Res> {
  factory $SubDomainWhereInputCopyWith(
          SubDomainWhereInput value, $Res Function(SubDomainWhereInput) then) =
      _$SubDomainWhereInputCopyWithImpl<$Res, SubDomainWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      DomainRelationFilter? domain,
      StringFilter? domainId,
      ConsultantProfileListRelationFilter? consultantProfiles,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubDomainWhereInput>? AND,
      List<SubDomainWhereInput>? OR,
      SubDomainWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $DomainRelationFilterCopyWith<$Res>? get domain;
  $StringFilterCopyWith<$Res>? get domainId;
  $ConsultantProfileListRelationFilterCopyWith<$Res>? get consultantProfiles;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SubDomainWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SubDomainWhereInputCopyWithImpl<$Res, $Val extends SubDomainWhereInput>
    implements $SubDomainWhereInputCopyWith<$Res> {
  _$SubDomainWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? domain = freezed,
    Object? domainId = freezed,
    Object? consultantProfiles = freezed,
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
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as DomainRelationFilter?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfiles: freezed == consultantProfiles
          ? _value.consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileListRelationFilter?,
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
              as List<SubDomainWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubDomainWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubDomainWhereInput
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

  /// Create a copy of SubDomainWhereInput
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

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainRelationFilterCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $DomainRelationFilterCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get domainId {
    if (_value.domainId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.domainId!, (value) {
      return _then(_value.copyWith(domainId: value) as $Val);
    });
  }

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileListRelationFilterCopyWith<$Res>? get consultantProfiles {
    if (_value.consultantProfiles == null) {
      return null;
    }

    return $ConsultantProfileListRelationFilterCopyWith<$Res>(
        _value.consultantProfiles!, (value) {
      return _then(_value.copyWith(consultantProfiles: value) as $Val);
    });
  }

  /// Create a copy of SubDomainWhereInput
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

  /// Create a copy of SubDomainWhereInput
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

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubDomainWhereInputImplCopyWith<$Res>
    implements $SubDomainWhereInputCopyWith<$Res> {
  factory _$$SubDomainWhereInputImplCopyWith(_$SubDomainWhereInputImpl value,
          $Res Function(_$SubDomainWhereInputImpl) then) =
      __$$SubDomainWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      DomainRelationFilter? domain,
      StringFilter? domainId,
      ConsultantProfileListRelationFilter? consultantProfiles,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubDomainWhereInput>? AND,
      List<SubDomainWhereInput>? OR,
      SubDomainWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $DomainRelationFilterCopyWith<$Res>? get domain;
  @override
  $StringFilterCopyWith<$Res>? get domainId;
  @override
  $ConsultantProfileListRelationFilterCopyWith<$Res>? get consultantProfiles;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SubDomainWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SubDomainWhereInputImplCopyWithImpl<$Res>
    extends _$SubDomainWhereInputCopyWithImpl<$Res, _$SubDomainWhereInputImpl>
    implements _$$SubDomainWhereInputImplCopyWith<$Res> {
  __$$SubDomainWhereInputImplCopyWithImpl(_$SubDomainWhereInputImpl _value,
      $Res Function(_$SubDomainWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? domain = freezed,
    Object? domainId = freezed,
    Object? consultantProfiles = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SubDomainWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as DomainRelationFilter?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfiles: freezed == consultantProfiles
          ? _value.consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileListRelationFilter?,
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
              as List<SubDomainWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubDomainWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubDomainWhereInputImpl implements _SubDomainWhereInput {
  const _$SubDomainWhereInputImpl(
      {this.id,
      this.name,
      this.domain,
      this.domainId,
      this.consultantProfiles,
      this.createdAt,
      this.updatedAt,
      final List<SubDomainWhereInput>? AND,
      final List<SubDomainWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SubDomainWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDomainWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;

  /// Filter by domain relation
  @override
  final DomainRelationFilter? domain;
  @override
  final StringFilter? domainId;

  /// Filter by consultantProfiles relation
  @override
  final ConsultantProfileListRelationFilter? consultantProfiles;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SubDomainWhereInput>? _AND;
  @override
  List<SubDomainWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubDomainWhereInput>? _OR;
  @override
  List<SubDomainWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubDomainWhereInput? NOT;

  @override
  String toString() {
    return 'SubDomainWhereInput(id: $id, name: $name, domain: $domain, domainId: $domainId, consultantProfiles: $consultantProfiles, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.consultantProfiles, consultantProfiles) ||
                other.consultantProfiles == consultantProfiles) &&
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
      domain,
      domainId,
      consultantProfiles,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainWhereInputImplCopyWith<_$SubDomainWhereInputImpl> get copyWith =>
      __$$SubDomainWhereInputImplCopyWithImpl<_$SubDomainWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SubDomainWhereInput implements SubDomainWhereInput {
  const factory _SubDomainWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final DomainRelationFilter? domain,
      final StringFilter? domainId,
      final ConsultantProfileListRelationFilter? consultantProfiles,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<SubDomainWhereInput>? AND,
      final List<SubDomainWhereInput>? OR,
      final SubDomainWhereInput? NOT}) = _$SubDomainWhereInputImpl;

  factory _SubDomainWhereInput.fromJson(Map<String, dynamic> json) =
      _$SubDomainWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;

  /// Filter by domain relation
  @override
  DomainRelationFilter? get domain;
  @override
  StringFilter? get domainId;

  /// Filter by consultantProfiles relation
  @override
  ConsultantProfileListRelationFilter? get consultantProfiles;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SubDomainWhereInput>? get AND;
  @override
  List<SubDomainWhereInput>? get OR;
  @override
  SubDomainWhereInput? get NOT;

  /// Create a copy of SubDomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainWhereInputImplCopyWith<_$SubDomainWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubDomainListRelationFilter _$SubDomainListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubDomainListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubDomainListRelationFilter {
  /// At least one related record matches
  SubDomainWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SubDomainWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SubDomainWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SubDomainListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainListRelationFilterCopyWith<SubDomainListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainListRelationFilterCopyWith<$Res> {
  factory $SubDomainListRelationFilterCopyWith(
          SubDomainListRelationFilter value,
          $Res Function(SubDomainListRelationFilter) then) =
      _$SubDomainListRelationFilterCopyWithImpl<$Res,
          SubDomainListRelationFilter>;
  @useResult
  $Res call(
      {SubDomainWhereInput? some,
      SubDomainWhereInput? every,
      SubDomainWhereInput? none});

  $SubDomainWhereInputCopyWith<$Res>? get some;
  $SubDomainWhereInputCopyWith<$Res>? get every;
  $SubDomainWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SubDomainListRelationFilterCopyWithImpl<$Res,
        $Val extends SubDomainListRelationFilter>
    implements $SubDomainListRelationFilterCopyWith<$Res> {
  _$SubDomainListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomainListRelationFilter
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
              as SubDomainWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubDomainListRelationFilterImplCopyWith<$Res>
    implements $SubDomainListRelationFilterCopyWith<$Res> {
  factory _$$SubDomainListRelationFilterImplCopyWith(
          _$SubDomainListRelationFilterImpl value,
          $Res Function(_$SubDomainListRelationFilterImpl) then) =
      __$$SubDomainListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubDomainWhereInput? some,
      SubDomainWhereInput? every,
      SubDomainWhereInput? none});

  @override
  $SubDomainWhereInputCopyWith<$Res>? get some;
  @override
  $SubDomainWhereInputCopyWith<$Res>? get every;
  @override
  $SubDomainWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SubDomainListRelationFilterImplCopyWithImpl<$Res>
    extends _$SubDomainListRelationFilterCopyWithImpl<$Res,
        _$SubDomainListRelationFilterImpl>
    implements _$$SubDomainListRelationFilterImplCopyWith<$Res> {
  __$$SubDomainListRelationFilterImplCopyWithImpl(
      _$SubDomainListRelationFilterImpl _value,
      $Res Function(_$SubDomainListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SubDomainListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubDomainListRelationFilterImpl
    implements _SubDomainListRelationFilter {
  const _$SubDomainListRelationFilterImpl({this.some, this.every, this.none});

  factory _$SubDomainListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubDomainListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SubDomainWhereInput? some;

  /// All related records match
  @override
  final SubDomainWhereInput? every;

  /// No related records match
  @override
  final SubDomainWhereInput? none;

  @override
  String toString() {
    return 'SubDomainListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainListRelationFilterImplCopyWith<_$SubDomainListRelationFilterImpl>
      get copyWith => __$$SubDomainListRelationFilterImplCopyWithImpl<
          _$SubDomainListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubDomainListRelationFilter
    implements SubDomainListRelationFilter {
  const factory _SubDomainListRelationFilter(
      {final SubDomainWhereInput? some,
      final SubDomainWhereInput? every,
      final SubDomainWhereInput? none}) = _$SubDomainListRelationFilterImpl;

  factory _SubDomainListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SubDomainListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SubDomainWhereInput? get some;

  /// All related records match
  @override
  SubDomainWhereInput? get every;

  /// No related records match
  @override
  SubDomainWhereInput? get none;

  /// Create a copy of SubDomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainListRelationFilterImplCopyWith<_$SubDomainListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubDomainRelationFilter _$SubDomainRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubDomainRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubDomainRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SubDomainWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SubDomainWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SubDomainRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainRelationFilterCopyWith<SubDomainRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainRelationFilterCopyWith<$Res> {
  factory $SubDomainRelationFilterCopyWith(SubDomainRelationFilter value,
          $Res Function(SubDomainRelationFilter) then) =
      _$SubDomainRelationFilterCopyWithImpl<$Res, SubDomainRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubDomainWhereInput? is_,
      SubDomainWhereInput? isNot});

  $SubDomainWhereInputCopyWith<$Res>? get is_;
  $SubDomainWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SubDomainRelationFilterCopyWithImpl<$Res,
        $Val extends SubDomainRelationFilter>
    implements $SubDomainRelationFilterCopyWith<$Res> {
  _$SubDomainRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomainRelationFilter
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
              as SubDomainWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SubDomainWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubDomainRelationFilterImplCopyWith<$Res>
    implements $SubDomainRelationFilterCopyWith<$Res> {
  factory _$$SubDomainRelationFilterImplCopyWith(
          _$SubDomainRelationFilterImpl value,
          $Res Function(_$SubDomainRelationFilterImpl) then) =
      __$$SubDomainRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubDomainWhereInput? is_,
      SubDomainWhereInput? isNot});

  @override
  $SubDomainWhereInputCopyWith<$Res>? get is_;
  @override
  $SubDomainWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SubDomainRelationFilterImplCopyWithImpl<$Res>
    extends _$SubDomainRelationFilterCopyWithImpl<$Res,
        _$SubDomainRelationFilterImpl>
    implements _$$SubDomainRelationFilterImplCopyWith<$Res> {
  __$$SubDomainRelationFilterImplCopyWithImpl(
      _$SubDomainRelationFilterImpl _value,
      $Res Function(_$SubDomainRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SubDomainRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubDomainWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubDomainRelationFilterImpl implements _SubDomainRelationFilter {
  const _$SubDomainRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SubDomainRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDomainRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SubDomainWhereInput? is_;

  /// Related record does not match
  @override
  final SubDomainWhereInput? isNot;

  @override
  String toString() {
    return 'SubDomainRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainRelationFilterImplCopyWith<_$SubDomainRelationFilterImpl>
      get copyWith => __$$SubDomainRelationFilterImplCopyWithImpl<
          _$SubDomainRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubDomainRelationFilter implements SubDomainRelationFilter {
  const factory _SubDomainRelationFilter(
      {@JsonKey(name: 'is') final SubDomainWhereInput? is_,
      final SubDomainWhereInput? isNot}) = _$SubDomainRelationFilterImpl;

  factory _SubDomainRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SubDomainRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SubDomainWhereInput? get is_;

  /// Related record does not match
  @override
  SubDomainWhereInput? get isNot;

  /// Create a copy of SubDomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainRelationFilterImplCopyWith<_$SubDomainRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubDomainOrderByInput _$SubDomainOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SubDomainOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SubDomainOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get domainId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubDomainOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDomainOrderByInputCopyWith<SubDomainOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDomainOrderByInputCopyWith<$Res> {
  factory $SubDomainOrderByInputCopyWith(SubDomainOrderByInput value,
          $Res Function(SubDomainOrderByInput) then) =
      _$SubDomainOrderByInputCopyWithImpl<$Res, SubDomainOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? domainId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SubDomainOrderByInputCopyWithImpl<$Res,
        $Val extends SubDomainOrderByInput>
    implements $SubDomainOrderByInputCopyWith<$Res> {
  _$SubDomainOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? domainId = freezed,
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
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubDomainOrderByInputImplCopyWith<$Res>
    implements $SubDomainOrderByInputCopyWith<$Res> {
  factory _$$SubDomainOrderByInputImplCopyWith(
          _$SubDomainOrderByInputImpl value,
          $Res Function(_$SubDomainOrderByInputImpl) then) =
      __$$SubDomainOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? domainId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SubDomainOrderByInputImplCopyWithImpl<$Res>
    extends _$SubDomainOrderByInputCopyWithImpl<$Res,
        _$SubDomainOrderByInputImpl>
    implements _$$SubDomainOrderByInputImplCopyWith<$Res> {
  __$$SubDomainOrderByInputImplCopyWithImpl(_$SubDomainOrderByInputImpl _value,
      $Res Function(_$SubDomainOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? domainId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubDomainOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
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
class _$SubDomainOrderByInputImpl implements _SubDomainOrderByInput {
  const _$SubDomainOrderByInputImpl(
      {this.id, this.name, this.domainId, this.createdAt, this.updatedAt});

  factory _$SubDomainOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDomainOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? domainId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SubDomainOrderByInput(id: $id, name: $name, domainId: $domainId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDomainOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, domainId, createdAt, updatedAt);

  /// Create a copy of SubDomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDomainOrderByInputImplCopyWith<_$SubDomainOrderByInputImpl>
      get copyWith => __$$SubDomainOrderByInputImplCopyWithImpl<
          _$SubDomainOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDomainOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SubDomainOrderByInput implements SubDomainOrderByInput {
  const factory _SubDomainOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? domainId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SubDomainOrderByInputImpl;

  factory _SubDomainOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SubDomainOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get domainId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SubDomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDomainOrderByInputImplCopyWith<_$SubDomainOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
