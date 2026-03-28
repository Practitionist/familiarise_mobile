// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Domain _$DomainFromJson(Map<String, dynamic> json) {
  return _Domain.fromJson(json);
}

/// @nodoc
mixin _$Domain {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SubDomain> get subDomains => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<ConsultantProfile> get consultantProfiles =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Domain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainCopyWith<Domain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainCopyWith<$Res> {
  factory $DomainCopyWith(Domain value, $Res Function(Domain) then) =
      _$DomainCopyWithImpl<$Res, Domain>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SubDomain> subDomains,
      List<Tag> tags,
      List<ConsultantProfile> consultantProfiles,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DomainCopyWithImpl<$Res, $Val extends Domain>
    implements $DomainCopyWith<$Res> {
  _$DomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subDomains = null,
    Object? tags = null,
    Object? consultantProfiles = null,
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
      subDomains: null == subDomains
          ? _value.subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as List<SubDomain>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      consultantProfiles: null == consultantProfiles
          ? _value.consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfile>,
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
}

/// @nodoc
abstract class _$$DomainImplCopyWith<$Res> implements $DomainCopyWith<$Res> {
  factory _$$DomainImplCopyWith(
          _$DomainImpl value, $Res Function(_$DomainImpl) then) =
      __$$DomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SubDomain> subDomains,
      List<Tag> tags,
      List<ConsultantProfile> consultantProfiles,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DomainImplCopyWithImpl<$Res>
    extends _$DomainCopyWithImpl<$Res, _$DomainImpl>
    implements _$$DomainImplCopyWith<$Res> {
  __$$DomainImplCopyWithImpl(
      _$DomainImpl _value, $Res Function(_$DomainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subDomains = null,
    Object? tags = null,
    Object? consultantProfiles = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DomainImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subDomains: null == subDomains
          ? _value._subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as List<SubDomain>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      consultantProfiles: null == consultantProfiles
          ? _value._consultantProfiles
          : consultantProfiles // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfile>,
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
class _$DomainImpl implements _Domain {
  const _$DomainImpl(
      {required this.id,
      required this.name,
      required final List<SubDomain> subDomains,
      required final List<Tag> tags,
      required final List<ConsultantProfile> consultantProfiles,
      required this.createdAt,
      required this.updatedAt})
      : _subDomains = subDomains,
        _tags = tags,
        _consultantProfiles = consultantProfiles;

  factory _$DomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SubDomain> _subDomains;
  @override
  List<SubDomain> get subDomains {
    if (_subDomains is EqualUnmodifiableListView) return _subDomains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subDomains);
  }

  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<ConsultantProfile> _consultantProfiles;
  @override
  List<ConsultantProfile> get consultantProfiles {
    if (_consultantProfiles is EqualUnmodifiableListView)
      return _consultantProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultantProfiles);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Domain(id: $id, name: $name, subDomains: $subDomains, tags: $tags, consultantProfiles: $consultantProfiles, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subDomains, _subDomains) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
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
      const DeepCollectionEquality().hash(_subDomains),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_consultantProfiles),
      createdAt,
      updatedAt);

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainImplCopyWith<_$DomainImpl> get copyWith =>
      __$$DomainImplCopyWithImpl<_$DomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainImplToJson(
      this,
    );
  }
}

abstract class _Domain implements Domain {
  const factory _Domain(
      {required final String id,
      required final String name,
      required final List<SubDomain> subDomains,
      required final List<Tag> tags,
      required final List<ConsultantProfile> consultantProfiles,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DomainImpl;

  factory _Domain.fromJson(Map<String, dynamic> json) = _$DomainImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SubDomain> get subDomains;
  @override
  List<Tag> get tags;
  @override
  List<ConsultantProfile> get consultantProfiles;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainImplCopyWith<_$DomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateDomainInput _$CreateDomainInputFromJson(Map<String, dynamic> json) {
  return _CreateDomainInput.fromJson(json);
}

/// @nodoc
mixin _$CreateDomainInput {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CreateDomainInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDomainInputCopyWith<CreateDomainInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDomainInputCopyWith<$Res> {
  factory $CreateDomainInputCopyWith(
          CreateDomainInput value, $Res Function(CreateDomainInput) then) =
      _$CreateDomainInputCopyWithImpl<$Res, CreateDomainInput>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateDomainInputCopyWithImpl<$Res, $Val extends CreateDomainInput>
    implements $CreateDomainInputCopyWith<$Res> {
  _$CreateDomainInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDomainInputImplCopyWith<$Res>
    implements $CreateDomainInputCopyWith<$Res> {
  factory _$$CreateDomainInputImplCopyWith(_$CreateDomainInputImpl value,
          $Res Function(_$CreateDomainInputImpl) then) =
      __$$CreateDomainInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateDomainInputImplCopyWithImpl<$Res>
    extends _$CreateDomainInputCopyWithImpl<$Res, _$CreateDomainInputImpl>
    implements _$$CreateDomainInputImplCopyWith<$Res> {
  __$$CreateDomainInputImplCopyWithImpl(_$CreateDomainInputImpl _value,
      $Res Function(_$CreateDomainInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateDomainInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDomainInputImpl implements _CreateDomainInput {
  const _$CreateDomainInputImpl({required this.name});

  factory _$CreateDomainInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDomainInputImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateDomainInput(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDomainInputImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CreateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDomainInputImplCopyWith<_$CreateDomainInputImpl> get copyWith =>
      __$$CreateDomainInputImplCopyWithImpl<_$CreateDomainInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDomainInputImplToJson(
      this,
    );
  }
}

abstract class _CreateDomainInput implements CreateDomainInput {
  const factory _CreateDomainInput({required final String name}) =
      _$CreateDomainInputImpl;

  factory _CreateDomainInput.fromJson(Map<String, dynamic> json) =
      _$CreateDomainInputImpl.fromJson;

  @override
  String get name;

  /// Create a copy of CreateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDomainInputImplCopyWith<_$CreateDomainInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateDomainInput _$UpdateDomainInputFromJson(Map<String, dynamic> json) {
  return _UpdateDomainInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateDomainInput {
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this UpdateDomainInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDomainInputCopyWith<UpdateDomainInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDomainInputCopyWith<$Res> {
  factory $UpdateDomainInputCopyWith(
          UpdateDomainInput value, $Res Function(UpdateDomainInput) then) =
      _$UpdateDomainInputCopyWithImpl<$Res, UpdateDomainInput>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$UpdateDomainInputCopyWithImpl<$Res, $Val extends UpdateDomainInput>
    implements $UpdateDomainInputCopyWith<$Res> {
  _$UpdateDomainInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateDomainInputImplCopyWith<$Res>
    implements $UpdateDomainInputCopyWith<$Res> {
  factory _$$UpdateDomainInputImplCopyWith(_$UpdateDomainInputImpl value,
          $Res Function(_$UpdateDomainInputImpl) then) =
      __$$UpdateDomainInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$UpdateDomainInputImplCopyWithImpl<$Res>
    extends _$UpdateDomainInputCopyWithImpl<$Res, _$UpdateDomainInputImpl>
    implements _$$UpdateDomainInputImplCopyWith<$Res> {
  __$$UpdateDomainInputImplCopyWithImpl(_$UpdateDomainInputImpl _value,
      $Res Function(_$UpdateDomainInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$UpdateDomainInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDomainInputImpl implements _UpdateDomainInput {
  const _$UpdateDomainInputImpl({this.name});

  factory _$UpdateDomainInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateDomainInputImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'UpdateDomainInput(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDomainInputImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of UpdateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDomainInputImplCopyWith<_$UpdateDomainInputImpl> get copyWith =>
      __$$UpdateDomainInputImplCopyWithImpl<_$UpdateDomainInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDomainInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateDomainInput implements UpdateDomainInput {
  const factory _UpdateDomainInput({final String? name}) =
      _$UpdateDomainInputImpl;

  factory _UpdateDomainInput.fromJson(Map<String, dynamic> json) =
      _$UpdateDomainInputImpl.fromJson;

  @override
  String? get name;

  /// Create a copy of UpdateDomainInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDomainInputImplCopyWith<_$UpdateDomainInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DomainWhereUniqueInput _$DomainWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _DomainWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$DomainWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this DomainWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainWhereUniqueInputCopyWith<DomainWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainWhereUniqueInputCopyWith<$Res> {
  factory $DomainWhereUniqueInputCopyWith(DomainWhereUniqueInput value,
          $Res Function(DomainWhereUniqueInput) then) =
      _$DomainWhereUniqueInputCopyWithImpl<$Res, DomainWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$DomainWhereUniqueInputCopyWithImpl<$Res,
        $Val extends DomainWhereUniqueInput>
    implements $DomainWhereUniqueInputCopyWith<$Res> {
  _$DomainWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DomainWhereUniqueInputImplCopyWith<$Res>
    implements $DomainWhereUniqueInputCopyWith<$Res> {
  factory _$$DomainWhereUniqueInputImplCopyWith(
          _$DomainWhereUniqueInputImpl value,
          $Res Function(_$DomainWhereUniqueInputImpl) then) =
      __$$DomainWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$DomainWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$DomainWhereUniqueInputCopyWithImpl<$Res,
        _$DomainWhereUniqueInputImpl>
    implements _$$DomainWhereUniqueInputImplCopyWith<$Res> {
  __$$DomainWhereUniqueInputImplCopyWithImpl(
      _$DomainWhereUniqueInputImpl _value,
      $Res Function(_$DomainWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DomainWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainWhereUniqueInputImpl implements _DomainWhereUniqueInput {
  const _$DomainWhereUniqueInputImpl({this.id, this.name});

  factory _$DomainWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DomainWhereUniqueInput(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of DomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainWhereUniqueInputImplCopyWith<_$DomainWhereUniqueInputImpl>
      get copyWith => __$$DomainWhereUniqueInputImplCopyWithImpl<
          _$DomainWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _DomainWhereUniqueInput implements DomainWhereUniqueInput {
  const factory _DomainWhereUniqueInput(
      {final String? id, final String? name}) = _$DomainWhereUniqueInputImpl;

  factory _DomainWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$DomainWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of DomainWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainWhereUniqueInputImplCopyWith<_$DomainWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DomainWhereInput _$DomainWhereInputFromJson(Map<String, dynamic> json) {
  return _DomainWhereInput.fromJson(json);
}

/// @nodoc
mixin _$DomainWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<DomainWhereInput>? get AND => throw _privateConstructorUsedError;
  List<DomainWhereInput>? get OR => throw _privateConstructorUsedError;
  DomainWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this DomainWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainWhereInputCopyWith<DomainWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainWhereInputCopyWith<$Res> {
  factory $DomainWhereInputCopyWith(
          DomainWhereInput value, $Res Function(DomainWhereInput) then) =
      _$DomainWhereInputCopyWithImpl<$Res, DomainWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DomainWhereInput>? AND,
      List<DomainWhereInput>? OR,
      DomainWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $DomainWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$DomainWhereInputCopyWithImpl<$Res, $Val extends DomainWhereInput>
    implements $DomainWhereInputCopyWith<$Res> {
  _$DomainWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
              as List<DomainWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DomainWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DomainWhereInput
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

  /// Create a copy of DomainWhereInput
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

  /// Create a copy of DomainWhereInput
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

  /// Create a copy of DomainWhereInput
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

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DomainWhereInputImplCopyWith<$Res>
    implements $DomainWhereInputCopyWith<$Res> {
  factory _$$DomainWhereInputImplCopyWith(_$DomainWhereInputImpl value,
          $Res Function(_$DomainWhereInputImpl) then) =
      __$$DomainWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DomainWhereInput>? AND,
      List<DomainWhereInput>? OR,
      DomainWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $DomainWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$DomainWhereInputImplCopyWithImpl<$Res>
    extends _$DomainWhereInputCopyWithImpl<$Res, _$DomainWhereInputImpl>
    implements _$$DomainWhereInputImplCopyWith<$Res> {
  __$$DomainWhereInputImplCopyWithImpl(_$DomainWhereInputImpl _value,
      $Res Function(_$DomainWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$DomainWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as List<DomainWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DomainWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DomainWhereInputImpl implements _DomainWhereInput {
  const _$DomainWhereInputImpl(
      {this.id,
      this.name,
      this.createdAt,
      this.updatedAt,
      final List<DomainWhereInput>? AND,
      final List<DomainWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$DomainWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<DomainWhereInput>? _AND;
  @override
  List<DomainWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DomainWhereInput>? _OR;
  @override
  List<DomainWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DomainWhereInput? NOT;

  @override
  String toString() {
    return 'DomainWhereInput(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainWhereInputImplCopyWith<_$DomainWhereInputImpl> get copyWith =>
      __$$DomainWhereInputImplCopyWithImpl<_$DomainWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainWhereInputImplToJson(
      this,
    );
  }
}

abstract class _DomainWhereInput implements DomainWhereInput {
  const factory _DomainWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<DomainWhereInput>? AND,
      final List<DomainWhereInput>? OR,
      final DomainWhereInput? NOT}) = _$DomainWhereInputImpl;

  factory _DomainWhereInput.fromJson(Map<String, dynamic> json) =
      _$DomainWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<DomainWhereInput>? get AND;
  @override
  List<DomainWhereInput>? get OR;
  @override
  DomainWhereInput? get NOT;

  /// Create a copy of DomainWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainWhereInputImplCopyWith<_$DomainWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DomainListRelationFilter _$DomainListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _DomainListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DomainListRelationFilter {
  /// At least one related record matches
  DomainWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  DomainWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  DomainWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this DomainListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainListRelationFilterCopyWith<DomainListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainListRelationFilterCopyWith<$Res> {
  factory $DomainListRelationFilterCopyWith(DomainListRelationFilter value,
          $Res Function(DomainListRelationFilter) then) =
      _$DomainListRelationFilterCopyWithImpl<$Res, DomainListRelationFilter>;
  @useResult
  $Res call(
      {DomainWhereInput? some,
      DomainWhereInput? every,
      DomainWhereInput? none});

  $DomainWhereInputCopyWith<$Res>? get some;
  $DomainWhereInputCopyWith<$Res>? get every;
  $DomainWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$DomainListRelationFilterCopyWithImpl<$Res,
        $Val extends DomainListRelationFilter>
    implements $DomainListRelationFilterCopyWith<$Res> {
  _$DomainListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainListRelationFilter
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
              as DomainWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DomainListRelationFilterImplCopyWith<$Res>
    implements $DomainListRelationFilterCopyWith<$Res> {
  factory _$$DomainListRelationFilterImplCopyWith(
          _$DomainListRelationFilterImpl value,
          $Res Function(_$DomainListRelationFilterImpl) then) =
      __$$DomainListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DomainWhereInput? some,
      DomainWhereInput? every,
      DomainWhereInput? none});

  @override
  $DomainWhereInputCopyWith<$Res>? get some;
  @override
  $DomainWhereInputCopyWith<$Res>? get every;
  @override
  $DomainWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$DomainListRelationFilterImplCopyWithImpl<$Res>
    extends _$DomainListRelationFilterCopyWithImpl<$Res,
        _$DomainListRelationFilterImpl>
    implements _$$DomainListRelationFilterImplCopyWith<$Res> {
  __$$DomainListRelationFilterImplCopyWithImpl(
      _$DomainListRelationFilterImpl _value,
      $Res Function(_$DomainListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$DomainListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainListRelationFilterImpl implements _DomainListRelationFilter {
  const _$DomainListRelationFilterImpl({this.some, this.every, this.none});

  factory _$DomainListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final DomainWhereInput? some;

  /// All related records match
  @override
  final DomainWhereInput? every;

  /// No related records match
  @override
  final DomainWhereInput? none;

  @override
  String toString() {
    return 'DomainListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainListRelationFilterImplCopyWith<_$DomainListRelationFilterImpl>
      get copyWith => __$$DomainListRelationFilterImplCopyWithImpl<
          _$DomainListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DomainListRelationFilter implements DomainListRelationFilter {
  const factory _DomainListRelationFilter(
      {final DomainWhereInput? some,
      final DomainWhereInput? every,
      final DomainWhereInput? none}) = _$DomainListRelationFilterImpl;

  factory _DomainListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DomainListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  DomainWhereInput? get some;

  /// All related records match
  @override
  DomainWhereInput? get every;

  /// No related records match
  @override
  DomainWhereInput? get none;

  /// Create a copy of DomainListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainListRelationFilterImplCopyWith<_$DomainListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DomainRelationFilter _$DomainRelationFilterFromJson(Map<String, dynamic> json) {
  return _DomainRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DomainRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  DomainWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  DomainWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this DomainRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainRelationFilterCopyWith<DomainRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainRelationFilterCopyWith<$Res> {
  factory $DomainRelationFilterCopyWith(DomainRelationFilter value,
          $Res Function(DomainRelationFilter) then) =
      _$DomainRelationFilterCopyWithImpl<$Res, DomainRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DomainWhereInput? is_, DomainWhereInput? isNot});

  $DomainWhereInputCopyWith<$Res>? get is_;
  $DomainWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$DomainRelationFilterCopyWithImpl<$Res,
        $Val extends DomainRelationFilter>
    implements $DomainRelationFilterCopyWith<$Res> {
  _$DomainRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainRelationFilter
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
              as DomainWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $DomainWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DomainRelationFilterImplCopyWith<$Res>
    implements $DomainRelationFilterCopyWith<$Res> {
  factory _$$DomainRelationFilterImplCopyWith(_$DomainRelationFilterImpl value,
          $Res Function(_$DomainRelationFilterImpl) then) =
      __$$DomainRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DomainWhereInput? is_, DomainWhereInput? isNot});

  @override
  $DomainWhereInputCopyWith<$Res>? get is_;
  @override
  $DomainWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$DomainRelationFilterImplCopyWithImpl<$Res>
    extends _$DomainRelationFilterCopyWithImpl<$Res, _$DomainRelationFilterImpl>
    implements _$$DomainRelationFilterImplCopyWith<$Res> {
  __$$DomainRelationFilterImplCopyWithImpl(_$DomainRelationFilterImpl _value,
      $Res Function(_$DomainRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$DomainRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DomainWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainRelationFilterImpl implements _DomainRelationFilter {
  const _$DomainRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$DomainRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final DomainWhereInput? is_;

  /// Related record does not match
  @override
  final DomainWhereInput? isNot;

  @override
  String toString() {
    return 'DomainRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainRelationFilterImplCopyWith<_$DomainRelationFilterImpl>
      get copyWith =>
          __$$DomainRelationFilterImplCopyWithImpl<_$DomainRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DomainRelationFilter implements DomainRelationFilter {
  const factory _DomainRelationFilter(
      {@JsonKey(name: 'is') final DomainWhereInput? is_,
      final DomainWhereInput? isNot}) = _$DomainRelationFilterImpl;

  factory _DomainRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DomainRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  DomainWhereInput? get is_;

  /// Related record does not match
  @override
  DomainWhereInput? get isNot;

  /// Create a copy of DomainRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainRelationFilterImplCopyWith<_$DomainRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DomainOrderByInput _$DomainOrderByInputFromJson(Map<String, dynamic> json) {
  return _DomainOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$DomainOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DomainOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainOrderByInputCopyWith<DomainOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainOrderByInputCopyWith<$Res> {
  factory $DomainOrderByInputCopyWith(
          DomainOrderByInput value, $Res Function(DomainOrderByInput) then) =
      _$DomainOrderByInputCopyWithImpl<$Res, DomainOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$DomainOrderByInputCopyWithImpl<$Res, $Val extends DomainOrderByInput>
    implements $DomainOrderByInputCopyWith<$Res> {
  _$DomainOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
abstract class _$$DomainOrderByInputImplCopyWith<$Res>
    implements $DomainOrderByInputCopyWith<$Res> {
  factory _$$DomainOrderByInputImplCopyWith(_$DomainOrderByInputImpl value,
          $Res Function(_$DomainOrderByInputImpl) then) =
      __$$DomainOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$DomainOrderByInputImplCopyWithImpl<$Res>
    extends _$DomainOrderByInputCopyWithImpl<$Res, _$DomainOrderByInputImpl>
    implements _$$DomainOrderByInputImplCopyWith<$Res> {
  __$$DomainOrderByInputImplCopyWithImpl(_$DomainOrderByInputImpl _value,
      $Res Function(_$DomainOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DomainOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$DomainOrderByInputImpl implements _DomainOrderByInput {
  const _$DomainOrderByInputImpl(
      {this.id, this.name, this.createdAt, this.updatedAt});

  factory _$DomainOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'DomainOrderByInput(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt);

  /// Create a copy of DomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainOrderByInputImplCopyWith<_$DomainOrderByInputImpl> get copyWith =>
      __$$DomainOrderByInputImplCopyWithImpl<_$DomainOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _DomainOrderByInput implements DomainOrderByInput {
  const factory _DomainOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$DomainOrderByInputImpl;

  factory _DomainOrderByInput.fromJson(Map<String, dynamic> json) =
      _$DomainOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of DomainOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainOrderByInputImplCopyWith<_$DomainOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
