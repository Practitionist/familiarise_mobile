// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
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

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
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
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tag
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

  /// Create a copy of Tag
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
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
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
class __$$TagImplCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$TagImpl>
    implements _$$TagImplCopyWith<$Res> {
  __$$TagImplCopyWithImpl(_$TagImpl _value, $Res Function(_$TagImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tag
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
    return _then(_$TagImpl(
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
class _$TagImpl implements _Tag {
  const _$TagImpl(
      {required this.id,
      required this.name,
      @JsonKey(includeFromJson: false, includeToJson: false) this.domain,
      required this.domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultantProfile>? consultantProfiles,
      required this.createdAt,
      required this.updatedAt})
      : _consultantProfiles = consultantProfiles;

  factory _$TagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagImplFromJson(json);

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
    return 'Tag(id: $id, name: $name, domain: $domain, domainId: $domainId, consultantProfiles: $consultantProfiles, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagImpl &&
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

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      __$$TagImplCopyWithImpl<_$TagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagImplToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {required final String id,
      required final String name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Domain? domain,
      required final String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultantProfile>? consultantProfiles,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

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

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTagInput _$CreateTagInputFromJson(Map<String, dynamic> json) {
  return _CreateTagInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTagInput {
  String get name => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;

  /// Serializes this CreateTagInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTagInputCopyWith<CreateTagInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagInputCopyWith<$Res> {
  factory $CreateTagInputCopyWith(
          CreateTagInput value, $Res Function(CreateTagInput) then) =
      _$CreateTagInputCopyWithImpl<$Res, CreateTagInput>;
  @useResult
  $Res call({String name, String domainId});
}

/// @nodoc
class _$CreateTagInputCopyWithImpl<$Res, $Val extends CreateTagInput>
    implements $CreateTagInputCopyWith<$Res> {
  _$CreateTagInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTagInput
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
abstract class _$$CreateTagInputImplCopyWith<$Res>
    implements $CreateTagInputCopyWith<$Res> {
  factory _$$CreateTagInputImplCopyWith(_$CreateTagInputImpl value,
          $Res Function(_$CreateTagInputImpl) then) =
      __$$CreateTagInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String domainId});
}

/// @nodoc
class __$$CreateTagInputImplCopyWithImpl<$Res>
    extends _$CreateTagInputCopyWithImpl<$Res, _$CreateTagInputImpl>
    implements _$$CreateTagInputImplCopyWith<$Res> {
  __$$CreateTagInputImplCopyWithImpl(
      _$CreateTagInputImpl _value, $Res Function(_$CreateTagInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? domainId = null,
  }) {
    return _then(_$CreateTagInputImpl(
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
class _$CreateTagInputImpl implements _CreateTagInput {
  const _$CreateTagInputImpl({required this.name, required this.domainId});

  factory _$CreateTagInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTagInputImplFromJson(json);

  @override
  final String name;
  @override
  final String domainId;

  @override
  String toString() {
    return 'CreateTagInput(name: $name, domainId: $domainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTagInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, domainId);

  /// Create a copy of CreateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTagInputImplCopyWith<_$CreateTagInputImpl> get copyWith =>
      __$$CreateTagInputImplCopyWithImpl<_$CreateTagInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTagInputImplToJson(
      this,
    );
  }
}

abstract class _CreateTagInput implements CreateTagInput {
  const factory _CreateTagInput(
      {required final String name,
      required final String domainId}) = _$CreateTagInputImpl;

  factory _CreateTagInput.fromJson(Map<String, dynamic> json) =
      _$CreateTagInputImpl.fromJson;

  @override
  String get name;
  @override
  String get domainId;

  /// Create a copy of CreateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTagInputImplCopyWith<_$CreateTagInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTagInput _$UpdateTagInputFromJson(Map<String, dynamic> json) {
  return _UpdateTagInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTagInput {
  String? get name => throw _privateConstructorUsedError;
  String? get domainId => throw _privateConstructorUsedError;

  /// Serializes this UpdateTagInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTagInputCopyWith<UpdateTagInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTagInputCopyWith<$Res> {
  factory $UpdateTagInputCopyWith(
          UpdateTagInput value, $Res Function(UpdateTagInput) then) =
      _$UpdateTagInputCopyWithImpl<$Res, UpdateTagInput>;
  @useResult
  $Res call({String? name, String? domainId});
}

/// @nodoc
class _$UpdateTagInputCopyWithImpl<$Res, $Val extends UpdateTagInput>
    implements $UpdateTagInputCopyWith<$Res> {
  _$UpdateTagInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTagInput
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
abstract class _$$UpdateTagInputImplCopyWith<$Res>
    implements $UpdateTagInputCopyWith<$Res> {
  factory _$$UpdateTagInputImplCopyWith(_$UpdateTagInputImpl value,
          $Res Function(_$UpdateTagInputImpl) then) =
      __$$UpdateTagInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? domainId});
}

/// @nodoc
class __$$UpdateTagInputImplCopyWithImpl<$Res>
    extends _$UpdateTagInputCopyWithImpl<$Res, _$UpdateTagInputImpl>
    implements _$$UpdateTagInputImplCopyWith<$Res> {
  __$$UpdateTagInputImplCopyWithImpl(
      _$UpdateTagInputImpl _value, $Res Function(_$UpdateTagInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? domainId = freezed,
  }) {
    return _then(_$UpdateTagInputImpl(
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
class _$UpdateTagInputImpl implements _UpdateTagInput {
  const _$UpdateTagInputImpl({this.name, this.domainId});

  factory _$UpdateTagInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTagInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String? domainId;

  @override
  String toString() {
    return 'UpdateTagInput(name: $name, domainId: $domainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTagInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, domainId);

  /// Create a copy of UpdateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTagInputImplCopyWith<_$UpdateTagInputImpl> get copyWith =>
      __$$UpdateTagInputImplCopyWithImpl<_$UpdateTagInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTagInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateTagInput implements UpdateTagInput {
  const factory _UpdateTagInput({final String? name, final String? domainId}) =
      _$UpdateTagInputImpl;

  factory _UpdateTagInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTagInputImpl.fromJson;

  @override
  String? get name;
  @override
  String? get domainId;

  /// Create a copy of UpdateTagInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTagInputImplCopyWith<_$UpdateTagInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagWhereUniqueInput _$TagWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _TagWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$TagWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this TagWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagWhereUniqueInputCopyWith<TagWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagWhereUniqueInputCopyWith<$Res> {
  factory $TagWhereUniqueInputCopyWith(
          TagWhereUniqueInput value, $Res Function(TagWhereUniqueInput) then) =
      _$TagWhereUniqueInputCopyWithImpl<$Res, TagWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$TagWhereUniqueInputCopyWithImpl<$Res, $Val extends TagWhereUniqueInput>
    implements $TagWhereUniqueInputCopyWith<$Res> {
  _$TagWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagWhereUniqueInput
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
abstract class _$$TagWhereUniqueInputImplCopyWith<$Res>
    implements $TagWhereUniqueInputCopyWith<$Res> {
  factory _$$TagWhereUniqueInputImplCopyWith(_$TagWhereUniqueInputImpl value,
          $Res Function(_$TagWhereUniqueInputImpl) then) =
      __$$TagWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$TagWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$TagWhereUniqueInputCopyWithImpl<$Res, _$TagWhereUniqueInputImpl>
    implements _$$TagWhereUniqueInputImplCopyWith<$Res> {
  __$$TagWhereUniqueInputImplCopyWithImpl(_$TagWhereUniqueInputImpl _value,
      $Res Function(_$TagWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TagWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagWhereUniqueInputImpl implements _TagWhereUniqueInput {
  const _$TagWhereUniqueInputImpl({this.id});

  factory _$TagWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'TagWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TagWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagWhereUniqueInputImplCopyWith<_$TagWhereUniqueInputImpl> get copyWith =>
      __$$TagWhereUniqueInputImplCopyWithImpl<_$TagWhereUniqueInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _TagWhereUniqueInput implements TagWhereUniqueInput {
  const factory _TagWhereUniqueInput({final String? id}) =
      _$TagWhereUniqueInputImpl;

  factory _TagWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$TagWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of TagWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagWhereUniqueInputImplCopyWith<_$TagWhereUniqueInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagWhereInput _$TagWhereInputFromJson(Map<String, dynamic> json) {
  return _TagWhereInput.fromJson(json);
}

/// @nodoc
mixin _$TagWhereInput {
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
  List<TagWhereInput>? get AND => throw _privateConstructorUsedError;
  List<TagWhereInput>? get OR => throw _privateConstructorUsedError;
  TagWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this TagWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagWhereInputCopyWith<TagWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagWhereInputCopyWith<$Res> {
  factory $TagWhereInputCopyWith(
          TagWhereInput value, $Res Function(TagWhereInput) then) =
      _$TagWhereInputCopyWithImpl<$Res, TagWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      DomainRelationFilter? domain,
      StringFilter? domainId,
      ConsultantProfileListRelationFilter? consultantProfiles,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TagWhereInput>? AND,
      List<TagWhereInput>? OR,
      TagWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $DomainRelationFilterCopyWith<$Res>? get domain;
  $StringFilterCopyWith<$Res>? get domainId;
  $ConsultantProfileListRelationFilterCopyWith<$Res>? get consultantProfiles;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $TagWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$TagWhereInputCopyWithImpl<$Res, $Val extends TagWhereInput>
    implements $TagWhereInputCopyWith<$Res> {
  _$TagWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagWhereInput
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
              as List<TagWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TagWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
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

  /// Create a copy of TagWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagWhereInputImplCopyWith<$Res>
    implements $TagWhereInputCopyWith<$Res> {
  factory _$$TagWhereInputImplCopyWith(
          _$TagWhereInputImpl value, $Res Function(_$TagWhereInputImpl) then) =
      __$$TagWhereInputImplCopyWithImpl<$Res>;
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
      List<TagWhereInput>? AND,
      List<TagWhereInput>? OR,
      TagWhereInput? NOT});

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
  $TagWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$TagWhereInputImplCopyWithImpl<$Res>
    extends _$TagWhereInputCopyWithImpl<$Res, _$TagWhereInputImpl>
    implements _$$TagWhereInputImplCopyWith<$Res> {
  __$$TagWhereInputImplCopyWithImpl(
      _$TagWhereInputImpl _value, $Res Function(_$TagWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagWhereInput
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
    return _then(_$TagWhereInputImpl(
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
              as List<TagWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TagWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TagWhereInputImpl implements _TagWhereInput {
  const _$TagWhereInputImpl(
      {this.id,
      this.name,
      this.domain,
      this.domainId,
      this.consultantProfiles,
      this.createdAt,
      this.updatedAt,
      final List<TagWhereInput>? AND,
      final List<TagWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$TagWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagWhereInputImplFromJson(json);

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
  final List<TagWhereInput>? _AND;
  @override
  List<TagWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagWhereInput>? _OR;
  @override
  List<TagWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TagWhereInput? NOT;

  @override
  String toString() {
    return 'TagWhereInput(id: $id, name: $name, domain: $domain, domainId: $domainId, consultantProfiles: $consultantProfiles, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagWhereInputImpl &&
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

  /// Create a copy of TagWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagWhereInputImplCopyWith<_$TagWhereInputImpl> get copyWith =>
      __$$TagWhereInputImplCopyWithImpl<_$TagWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagWhereInputImplToJson(
      this,
    );
  }
}

abstract class _TagWhereInput implements TagWhereInput {
  const factory _TagWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final DomainRelationFilter? domain,
      final StringFilter? domainId,
      final ConsultantProfileListRelationFilter? consultantProfiles,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<TagWhereInput>? AND,
      final List<TagWhereInput>? OR,
      final TagWhereInput? NOT}) = _$TagWhereInputImpl;

  factory _TagWhereInput.fromJson(Map<String, dynamic> json) =
      _$TagWhereInputImpl.fromJson;

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
  List<TagWhereInput>? get AND;
  @override
  List<TagWhereInput>? get OR;
  @override
  TagWhereInput? get NOT;

  /// Create a copy of TagWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagWhereInputImplCopyWith<_$TagWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagListRelationFilter _$TagListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TagListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TagListRelationFilter {
  /// At least one related record matches
  TagWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  TagWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  TagWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this TagListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagListRelationFilterCopyWith<TagListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagListRelationFilterCopyWith<$Res> {
  factory $TagListRelationFilterCopyWith(TagListRelationFilter value,
          $Res Function(TagListRelationFilter) then) =
      _$TagListRelationFilterCopyWithImpl<$Res, TagListRelationFilter>;
  @useResult
  $Res call({TagWhereInput? some, TagWhereInput? every, TagWhereInput? none});

  $TagWhereInputCopyWith<$Res>? get some;
  $TagWhereInputCopyWith<$Res>? get every;
  $TagWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$TagListRelationFilterCopyWithImpl<$Res,
        $Val extends TagListRelationFilter>
    implements $TagListRelationFilterCopyWith<$Res> {
  _$TagListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagListRelationFilter
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
              as TagWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagListRelationFilterImplCopyWith<$Res>
    implements $TagListRelationFilterCopyWith<$Res> {
  factory _$$TagListRelationFilterImplCopyWith(
          _$TagListRelationFilterImpl value,
          $Res Function(_$TagListRelationFilterImpl) then) =
      __$$TagListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TagWhereInput? some, TagWhereInput? every, TagWhereInput? none});

  @override
  $TagWhereInputCopyWith<$Res>? get some;
  @override
  $TagWhereInputCopyWith<$Res>? get every;
  @override
  $TagWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$TagListRelationFilterImplCopyWithImpl<$Res>
    extends _$TagListRelationFilterCopyWithImpl<$Res,
        _$TagListRelationFilterImpl>
    implements _$$TagListRelationFilterImplCopyWith<$Res> {
  __$$TagListRelationFilterImplCopyWithImpl(_$TagListRelationFilterImpl _value,
      $Res Function(_$TagListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$TagListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagListRelationFilterImpl implements _TagListRelationFilter {
  const _$TagListRelationFilterImpl({this.some, this.every, this.none});

  factory _$TagListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final TagWhereInput? some;

  /// All related records match
  @override
  final TagWhereInput? every;

  /// No related records match
  @override
  final TagWhereInput? none;

  @override
  String toString() {
    return 'TagListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagListRelationFilterImplCopyWith<_$TagListRelationFilterImpl>
      get copyWith => __$$TagListRelationFilterImplCopyWithImpl<
          _$TagListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TagListRelationFilter implements TagListRelationFilter {
  const factory _TagListRelationFilter(
      {final TagWhereInput? some,
      final TagWhereInput? every,
      final TagWhereInput? none}) = _$TagListRelationFilterImpl;

  factory _TagListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TagListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  TagWhereInput? get some;

  /// All related records match
  @override
  TagWhereInput? get every;

  /// No related records match
  @override
  TagWhereInput? get none;

  /// Create a copy of TagListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagListRelationFilterImplCopyWith<_$TagListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TagRelationFilter _$TagRelationFilterFromJson(Map<String, dynamic> json) {
  return _TagRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TagRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  TagWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  TagWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this TagRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagRelationFilterCopyWith<TagRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagRelationFilterCopyWith<$Res> {
  factory $TagRelationFilterCopyWith(
          TagRelationFilter value, $Res Function(TagRelationFilter) then) =
      _$TagRelationFilterCopyWithImpl<$Res, TagRelationFilter>;
  @useResult
  $Res call({@JsonKey(name: 'is') TagWhereInput? is_, TagWhereInput? isNot});

  $TagWhereInputCopyWith<$Res>? get is_;
  $TagWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$TagRelationFilterCopyWithImpl<$Res, $Val extends TagRelationFilter>
    implements $TagRelationFilterCopyWith<$Res> {
  _$TagRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagRelationFilter
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
              as TagWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $TagWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagRelationFilterImplCopyWith<$Res>
    implements $TagRelationFilterCopyWith<$Res> {
  factory _$$TagRelationFilterImplCopyWith(_$TagRelationFilterImpl value,
          $Res Function(_$TagRelationFilterImpl) then) =
      __$$TagRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is') TagWhereInput? is_, TagWhereInput? isNot});

  @override
  $TagWhereInputCopyWith<$Res>? get is_;
  @override
  $TagWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$TagRelationFilterImplCopyWithImpl<$Res>
    extends _$TagRelationFilterCopyWithImpl<$Res, _$TagRelationFilterImpl>
    implements _$$TagRelationFilterImplCopyWith<$Res> {
  __$$TagRelationFilterImplCopyWithImpl(_$TagRelationFilterImpl _value,
      $Res Function(_$TagRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$TagRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TagWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagRelationFilterImpl implements _TagRelationFilter {
  const _$TagRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$TagRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final TagWhereInput? is_;

  /// Related record does not match
  @override
  final TagWhereInput? isNot;

  @override
  String toString() {
    return 'TagRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagRelationFilterImplCopyWith<_$TagRelationFilterImpl> get copyWith =>
      __$$TagRelationFilterImplCopyWithImpl<_$TagRelationFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TagRelationFilter implements TagRelationFilter {
  const factory _TagRelationFilter(
      {@JsonKey(name: 'is') final TagWhereInput? is_,
      final TagWhereInput? isNot}) = _$TagRelationFilterImpl;

  factory _TagRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TagRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  TagWhereInput? get is_;

  /// Related record does not match
  @override
  TagWhereInput? get isNot;

  /// Create a copy of TagRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagRelationFilterImplCopyWith<_$TagRelationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagOrderByInput _$TagOrderByInputFromJson(Map<String, dynamic> json) {
  return _TagOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$TagOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get domainId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TagOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagOrderByInputCopyWith<TagOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagOrderByInputCopyWith<$Res> {
  factory $TagOrderByInputCopyWith(
          TagOrderByInput value, $Res Function(TagOrderByInput) then) =
      _$TagOrderByInputCopyWithImpl<$Res, TagOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? domainId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$TagOrderByInputCopyWithImpl<$Res, $Val extends TagOrderByInput>
    implements $TagOrderByInputCopyWith<$Res> {
  _$TagOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagOrderByInput
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
abstract class _$$TagOrderByInputImplCopyWith<$Res>
    implements $TagOrderByInputCopyWith<$Res> {
  factory _$$TagOrderByInputImplCopyWith(_$TagOrderByInputImpl value,
          $Res Function(_$TagOrderByInputImpl) then) =
      __$$TagOrderByInputImplCopyWithImpl<$Res>;
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
class __$$TagOrderByInputImplCopyWithImpl<$Res>
    extends _$TagOrderByInputCopyWithImpl<$Res, _$TagOrderByInputImpl>
    implements _$$TagOrderByInputImplCopyWith<$Res> {
  __$$TagOrderByInputImplCopyWithImpl(
      _$TagOrderByInputImpl _value, $Res Function(_$TagOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagOrderByInput
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
    return _then(_$TagOrderByInputImpl(
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
class _$TagOrderByInputImpl implements _TagOrderByInput {
  const _$TagOrderByInputImpl(
      {this.id, this.name, this.domainId, this.createdAt, this.updatedAt});

  factory _$TagOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagOrderByInputImplFromJson(json);

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
    return 'TagOrderByInput(id: $id, name: $name, domainId: $domainId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagOrderByInputImpl &&
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

  /// Create a copy of TagOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagOrderByInputImplCopyWith<_$TagOrderByInputImpl> get copyWith =>
      __$$TagOrderByInputImplCopyWithImpl<_$TagOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _TagOrderByInput implements TagOrderByInput {
  const factory _TagOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? domainId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$TagOrderByInputImpl;

  factory _TagOrderByInput.fromJson(Map<String, dynamic> json) =
      _$TagOrderByInputImpl.fromJson;

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

  /// Create a copy of TagOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagOrderByInputImplCopyWith<_$TagOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
