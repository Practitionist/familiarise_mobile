// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  List<Invitation> get invitations => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Organization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? logo,
      Map<String, dynamic>? metadata,
      List<Member> members,
      List<Invitation> invitations,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? logo = freezed,
    Object? metadata = freezed,
    Object? members = null,
    Object? invitations = null,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      invitations: null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as List<Invitation>,
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
abstract class _$$OrganizationImplCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$OrganizationImplCopyWith(
          _$OrganizationImpl value, $Res Function(_$OrganizationImpl) then) =
      __$$OrganizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? logo,
      Map<String, dynamic>? metadata,
      List<Member> members,
      List<Invitation> invitations,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$OrganizationImplCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$OrganizationImpl>
    implements _$$OrganizationImplCopyWith<$Res> {
  __$$OrganizationImplCopyWithImpl(
      _$OrganizationImpl _value, $Res Function(_$OrganizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? logo = freezed,
    Object? metadata = freezed,
    Object? members = null,
    Object? invitations = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$OrganizationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      invitations: null == invitations
          ? _value._invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as List<Invitation>,
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
class _$OrganizationImpl implements _Organization {
  const _$OrganizationImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.logo,
      final Map<String, dynamic>? metadata,
      required final List<Member> members,
      required final List<Invitation> invitations,
      required this.createdAt,
      required this.updatedAt})
      : _metadata = metadata,
        _members = members,
        _invitations = invitations;

  factory _$OrganizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? logo;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<Invitation> _invitations;
  @override
  List<Invitation> get invitations {
    if (_invitations is EqualUnmodifiableListView) return _invitations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invitations);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Organization(id: $id, name: $name, slug: $slug, logo: $logo, metadata: $metadata, members: $members, invitations: $invitations, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._invitations, _invitations) &&
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
      slug,
      logo,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_invitations),
      createdAt,
      updatedAt);

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      __$$OrganizationImplCopyWithImpl<_$OrganizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationImplToJson(
      this,
    );
  }
}

abstract class _Organization implements Organization {
  const factory _Organization(
      {required final String id,
      required final String name,
      required final String slug,
      final String? logo,
      final Map<String, dynamic>? metadata,
      required final List<Member> members,
      required final List<Invitation> invitations,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$OrganizationImpl;

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$OrganizationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get logo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<Member> get members;
  @override
  List<Invitation> get invitations;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOrganizationInput _$CreateOrganizationInputFromJson(
    Map<String, dynamic> json) {
  return _CreateOrganizationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateOrganizationInput {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CreateOrganizationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateOrganizationInputCopyWith<CreateOrganizationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganizationInputCopyWith<$Res> {
  factory $CreateOrganizationInputCopyWith(CreateOrganizationInput value,
          $Res Function(CreateOrganizationInput) then) =
      _$CreateOrganizationInputCopyWithImpl<$Res, CreateOrganizationInput>;
  @useResult
  $Res call(
      {String name, String slug, String? logo, Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateOrganizationInputCopyWithImpl<$Res,
        $Val extends CreateOrganizationInput>
    implements $CreateOrganizationInputCopyWith<$Res> {
  _$CreateOrganizationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? logo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrganizationInputImplCopyWith<$Res>
    implements $CreateOrganizationInputCopyWith<$Res> {
  factory _$$CreateOrganizationInputImplCopyWith(
          _$CreateOrganizationInputImpl value,
          $Res Function(_$CreateOrganizationInputImpl) then) =
      __$$CreateOrganizationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String slug, String? logo, Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateOrganizationInputImplCopyWithImpl<$Res>
    extends _$CreateOrganizationInputCopyWithImpl<$Res,
        _$CreateOrganizationInputImpl>
    implements _$$CreateOrganizationInputImplCopyWith<$Res> {
  __$$CreateOrganizationInputImplCopyWithImpl(
      _$CreateOrganizationInputImpl _value,
      $Res Function(_$CreateOrganizationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? logo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateOrganizationInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrganizationInputImpl implements _CreateOrganizationInput {
  const _$CreateOrganizationInputImpl(
      {required this.name,
      required this.slug,
      this.logo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateOrganizationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrganizationInputImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  @override
  final String? logo;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateOrganizationInput(name: $name, slug: $slug, logo: $logo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrganizationInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, logo,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of CreateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrganizationInputImplCopyWith<_$CreateOrganizationInputImpl>
      get copyWith => __$$CreateOrganizationInputImplCopyWithImpl<
          _$CreateOrganizationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrganizationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateOrganizationInput implements CreateOrganizationInput {
  const factory _CreateOrganizationInput(
      {required final String name,
      required final String slug,
      final String? logo,
      final Map<String, dynamic>? metadata}) = _$CreateOrganizationInputImpl;

  factory _CreateOrganizationInput.fromJson(Map<String, dynamic> json) =
      _$CreateOrganizationInputImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  String? get logo;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrganizationInputImplCopyWith<_$CreateOrganizationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateOrganizationInput _$UpdateOrganizationInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateOrganizationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrganizationInput {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this UpdateOrganizationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateOrganizationInputCopyWith<UpdateOrganizationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrganizationInputCopyWith<$Res> {
  factory $UpdateOrganizationInputCopyWith(UpdateOrganizationInput value,
          $Res Function(UpdateOrganizationInput) then) =
      _$UpdateOrganizationInputCopyWithImpl<$Res, UpdateOrganizationInput>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? logo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateOrganizationInputCopyWithImpl<$Res,
        $Val extends UpdateOrganizationInput>
    implements $UpdateOrganizationInputCopyWith<$Res> {
  _$UpdateOrganizationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateOrganizationInputImplCopyWith<$Res>
    implements $UpdateOrganizationInputCopyWith<$Res> {
  factory _$$UpdateOrganizationInputImplCopyWith(
          _$UpdateOrganizationInputImpl value,
          $Res Function(_$UpdateOrganizationInputImpl) then) =
      __$$UpdateOrganizationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? logo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateOrganizationInputImplCopyWithImpl<$Res>
    extends _$UpdateOrganizationInputCopyWithImpl<$Res,
        _$UpdateOrganizationInputImpl>
    implements _$$UpdateOrganizationInputImplCopyWith<$Res> {
  __$$UpdateOrganizationInputImplCopyWithImpl(
      _$UpdateOrganizationInputImpl _value,
      $Res Function(_$UpdateOrganizationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateOrganizationInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrganizationInputImpl implements _UpdateOrganizationInput {
  const _$UpdateOrganizationInputImpl(
      {this.name, this.slug, this.logo, final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateOrganizationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrganizationInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? logo;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateOrganizationInput(name: $name, slug: $slug, logo: $logo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrganizationInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, logo,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of UpdateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrganizationInputImplCopyWith<_$UpdateOrganizationInputImpl>
      get copyWith => __$$UpdateOrganizationInputImplCopyWithImpl<
          _$UpdateOrganizationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrganizationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrganizationInput implements UpdateOrganizationInput {
  const factory _UpdateOrganizationInput(
      {final String? name,
      final String? slug,
      final String? logo,
      final Map<String, dynamic>? metadata}) = _$UpdateOrganizationInputImpl;

  factory _UpdateOrganizationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateOrganizationInputImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get logo;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateOrganizationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrganizationInputImplCopyWith<_$UpdateOrganizationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationWhereUniqueInput _$OrganizationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _OrganizationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$OrganizationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this OrganizationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationWhereUniqueInputCopyWith<OrganizationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationWhereUniqueInputCopyWith<$Res> {
  factory $OrganizationWhereUniqueInputCopyWith(
          OrganizationWhereUniqueInput value,
          $Res Function(OrganizationWhereUniqueInput) then) =
      _$OrganizationWhereUniqueInputCopyWithImpl<$Res,
          OrganizationWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? slug});
}

/// @nodoc
class _$OrganizationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends OrganizationWhereUniqueInput>
    implements $OrganizationWhereUniqueInputCopyWith<$Res> {
  _$OrganizationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationWhereUniqueInputImplCopyWith<$Res>
    implements $OrganizationWhereUniqueInputCopyWith<$Res> {
  factory _$$OrganizationWhereUniqueInputImplCopyWith(
          _$OrganizationWhereUniqueInputImpl value,
          $Res Function(_$OrganizationWhereUniqueInputImpl) then) =
      __$$OrganizationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? slug});
}

/// @nodoc
class __$$OrganizationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$OrganizationWhereUniqueInputCopyWithImpl<$Res,
        _$OrganizationWhereUniqueInputImpl>
    implements _$$OrganizationWhereUniqueInputImplCopyWith<$Res> {
  __$$OrganizationWhereUniqueInputImplCopyWithImpl(
      _$OrganizationWhereUniqueInputImpl _value,
      $Res Function(_$OrganizationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$OrganizationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationWhereUniqueInputImpl
    implements _OrganizationWhereUniqueInput {
  const _$OrganizationWhereUniqueInputImpl({this.id, this.slug});

  factory _$OrganizationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrganizationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? slug;

  @override
  String toString() {
    return 'OrganizationWhereUniqueInput(id: $id, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug);

  /// Create a copy of OrganizationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationWhereUniqueInputImplCopyWith<
          _$OrganizationWhereUniqueInputImpl>
      get copyWith => __$$OrganizationWhereUniqueInputImplCopyWithImpl<
          _$OrganizationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _OrganizationWhereUniqueInput
    implements OrganizationWhereUniqueInput {
  const factory _OrganizationWhereUniqueInput(
      {final String? id,
      final String? slug}) = _$OrganizationWhereUniqueInputImpl;

  factory _OrganizationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$OrganizationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get slug;

  /// Create a copy of OrganizationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationWhereUniqueInputImplCopyWith<
          _$OrganizationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationWhereInput _$OrganizationWhereInputFromJson(
    Map<String, dynamic> json) {
  return _OrganizationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$OrganizationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  StringFilter? get slug => throw _privateConstructorUsedError;
  StringFilter? get logo => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<OrganizationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<OrganizationWhereInput>? get OR => throw _privateConstructorUsedError;
  OrganizationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this OrganizationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationWhereInputCopyWith<OrganizationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationWhereInputCopyWith<$Res> {
  factory $OrganizationWhereInputCopyWith(OrganizationWhereInput value,
          $Res Function(OrganizationWhereInput) then) =
      _$OrganizationWhereInputCopyWithImpl<$Res, OrganizationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? slug,
      StringFilter? logo,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<OrganizationWhereInput>? AND,
      List<OrganizationWhereInput>? OR,
      OrganizationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $StringFilterCopyWith<$Res>? get slug;
  $StringFilterCopyWith<$Res>? get logo;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $OrganizationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$OrganizationWhereInputCopyWithImpl<$Res,
        $Val extends OrganizationWhereInput>
    implements $OrganizationWhereInputCopyWith<$Res> {
  _$OrganizationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
              as List<OrganizationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<OrganizationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of OrganizationWhereInput
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

  /// Create a copy of OrganizationWhereInput
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

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get slug {
    if (_value.slug == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.slug!, (value) {
      return _then(_value.copyWith(slug: value) as $Val);
    });
  }

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }

  /// Create a copy of OrganizationWhereInput
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

  /// Create a copy of OrganizationWhereInput
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

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationWhereInputImplCopyWith<$Res>
    implements $OrganizationWhereInputCopyWith<$Res> {
  factory _$$OrganizationWhereInputImplCopyWith(
          _$OrganizationWhereInputImpl value,
          $Res Function(_$OrganizationWhereInputImpl) then) =
      __$$OrganizationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? slug,
      StringFilter? logo,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<OrganizationWhereInput>? AND,
      List<OrganizationWhereInput>? OR,
      OrganizationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $StringFilterCopyWith<$Res>? get slug;
  @override
  $StringFilterCopyWith<$Res>? get logo;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $OrganizationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$OrganizationWhereInputImplCopyWithImpl<$Res>
    extends _$OrganizationWhereInputCopyWithImpl<$Res,
        _$OrganizationWhereInputImpl>
    implements _$$OrganizationWhereInputImplCopyWith<$Res> {
  __$$OrganizationWhereInputImplCopyWithImpl(
      _$OrganizationWhereInputImpl _value,
      $Res Function(_$OrganizationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$OrganizationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
              as List<OrganizationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<OrganizationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrganizationWhereInputImpl implements _OrganizationWhereInput {
  const _$OrganizationWhereInputImpl(
      {this.id,
      this.name,
      this.slug,
      this.logo,
      this.createdAt,
      this.updatedAt,
      final List<OrganizationWhereInput>? AND,
      final List<OrganizationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$OrganizationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final StringFilter? slug;
  @override
  final StringFilter? logo;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<OrganizationWhereInput>? _AND;
  @override
  List<OrganizationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrganizationWhereInput>? _OR;
  @override
  List<OrganizationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrganizationWhereInput? NOT;

  @override
  String toString() {
    return 'OrganizationWhereInput(id: $id, name: $name, slug: $slug, logo: $logo, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
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
      slug,
      logo,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationWhereInputImplCopyWith<_$OrganizationWhereInputImpl>
      get copyWith => __$$OrganizationWhereInputImplCopyWithImpl<
          _$OrganizationWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _OrganizationWhereInput implements OrganizationWhereInput {
  const factory _OrganizationWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final StringFilter? slug,
      final StringFilter? logo,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<OrganizationWhereInput>? AND,
      final List<OrganizationWhereInput>? OR,
      final OrganizationWhereInput? NOT}) = _$OrganizationWhereInputImpl;

  factory _OrganizationWhereInput.fromJson(Map<String, dynamic> json) =
      _$OrganizationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  StringFilter? get slug;
  @override
  StringFilter? get logo;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<OrganizationWhereInput>? get AND;
  @override
  List<OrganizationWhereInput>? get OR;
  @override
  OrganizationWhereInput? get NOT;

  /// Create a copy of OrganizationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationWhereInputImplCopyWith<_$OrganizationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationListRelationFilter _$OrganizationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _OrganizationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$OrganizationListRelationFilter {
  /// At least one related record matches
  OrganizationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  OrganizationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  OrganizationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this OrganizationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationListRelationFilterCopyWith<OrganizationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationListRelationFilterCopyWith<$Res> {
  factory $OrganizationListRelationFilterCopyWith(
          OrganizationListRelationFilter value,
          $Res Function(OrganizationListRelationFilter) then) =
      _$OrganizationListRelationFilterCopyWithImpl<$Res,
          OrganizationListRelationFilter>;
  @useResult
  $Res call(
      {OrganizationWhereInput? some,
      OrganizationWhereInput? every,
      OrganizationWhereInput? none});

  $OrganizationWhereInputCopyWith<$Res>? get some;
  $OrganizationWhereInputCopyWith<$Res>? get every;
  $OrganizationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$OrganizationListRelationFilterCopyWithImpl<$Res,
        $Val extends OrganizationListRelationFilter>
    implements $OrganizationListRelationFilterCopyWith<$Res> {
  _$OrganizationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationListRelationFilter
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
              as OrganizationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationListRelationFilterImplCopyWith<$Res>
    implements $OrganizationListRelationFilterCopyWith<$Res> {
  factory _$$OrganizationListRelationFilterImplCopyWith(
          _$OrganizationListRelationFilterImpl value,
          $Res Function(_$OrganizationListRelationFilterImpl) then) =
      __$$OrganizationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrganizationWhereInput? some,
      OrganizationWhereInput? every,
      OrganizationWhereInput? none});

  @override
  $OrganizationWhereInputCopyWith<$Res>? get some;
  @override
  $OrganizationWhereInputCopyWith<$Res>? get every;
  @override
  $OrganizationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$OrganizationListRelationFilterImplCopyWithImpl<$Res>
    extends _$OrganizationListRelationFilterCopyWithImpl<$Res,
        _$OrganizationListRelationFilterImpl>
    implements _$$OrganizationListRelationFilterImplCopyWith<$Res> {
  __$$OrganizationListRelationFilterImplCopyWithImpl(
      _$OrganizationListRelationFilterImpl _value,
      $Res Function(_$OrganizationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$OrganizationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationListRelationFilterImpl
    implements _OrganizationListRelationFilter {
  const _$OrganizationListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$OrganizationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrganizationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final OrganizationWhereInput? some;

  /// All related records match
  @override
  final OrganizationWhereInput? every;

  /// No related records match
  @override
  final OrganizationWhereInput? none;

  @override
  String toString() {
    return 'OrganizationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationListRelationFilterImplCopyWith<
          _$OrganizationListRelationFilterImpl>
      get copyWith => __$$OrganizationListRelationFilterImplCopyWithImpl<
          _$OrganizationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _OrganizationListRelationFilter
    implements OrganizationListRelationFilter {
  const factory _OrganizationListRelationFilter(
          {final OrganizationWhereInput? some,
          final OrganizationWhereInput? every,
          final OrganizationWhereInput? none}) =
      _$OrganizationListRelationFilterImpl;

  factory _OrganizationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$OrganizationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  OrganizationWhereInput? get some;

  /// All related records match
  @override
  OrganizationWhereInput? get every;

  /// No related records match
  @override
  OrganizationWhereInput? get none;

  /// Create a copy of OrganizationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationListRelationFilterImplCopyWith<
          _$OrganizationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationRelationFilter _$OrganizationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _OrganizationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$OrganizationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  OrganizationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  OrganizationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this OrganizationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationRelationFilterCopyWith<OrganizationRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationRelationFilterCopyWith<$Res> {
  factory $OrganizationRelationFilterCopyWith(OrganizationRelationFilter value,
          $Res Function(OrganizationRelationFilter) then) =
      _$OrganizationRelationFilterCopyWithImpl<$Res,
          OrganizationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') OrganizationWhereInput? is_,
      OrganizationWhereInput? isNot});

  $OrganizationWhereInputCopyWith<$Res>? get is_;
  $OrganizationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$OrganizationRelationFilterCopyWithImpl<$Res,
        $Val extends OrganizationRelationFilter>
    implements $OrganizationRelationFilterCopyWith<$Res> {
  _$OrganizationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationRelationFilter
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
              as OrganizationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $OrganizationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationRelationFilterImplCopyWith<$Res>
    implements $OrganizationRelationFilterCopyWith<$Res> {
  factory _$$OrganizationRelationFilterImplCopyWith(
          _$OrganizationRelationFilterImpl value,
          $Res Function(_$OrganizationRelationFilterImpl) then) =
      __$$OrganizationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') OrganizationWhereInput? is_,
      OrganizationWhereInput? isNot});

  @override
  $OrganizationWhereInputCopyWith<$Res>? get is_;
  @override
  $OrganizationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$OrganizationRelationFilterImplCopyWithImpl<$Res>
    extends _$OrganizationRelationFilterCopyWithImpl<$Res,
        _$OrganizationRelationFilterImpl>
    implements _$$OrganizationRelationFilterImplCopyWith<$Res> {
  __$$OrganizationRelationFilterImplCopyWithImpl(
      _$OrganizationRelationFilterImpl _value,
      $Res Function(_$OrganizationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$OrganizationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as OrganizationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationRelationFilterImpl implements _OrganizationRelationFilter {
  const _$OrganizationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$OrganizationRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrganizationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final OrganizationWhereInput? is_;

  /// Related record does not match
  @override
  final OrganizationWhereInput? isNot;

  @override
  String toString() {
    return 'OrganizationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationRelationFilterImplCopyWith<_$OrganizationRelationFilterImpl>
      get copyWith => __$$OrganizationRelationFilterImplCopyWithImpl<
          _$OrganizationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _OrganizationRelationFilter
    implements OrganizationRelationFilter {
  const factory _OrganizationRelationFilter(
      {@JsonKey(name: 'is') final OrganizationWhereInput? is_,
      final OrganizationWhereInput? isNot}) = _$OrganizationRelationFilterImpl;

  factory _OrganizationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$OrganizationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  OrganizationWhereInput? get is_;

  /// Related record does not match
  @override
  OrganizationWhereInput? get isNot;

  /// Create a copy of OrganizationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationRelationFilterImplCopyWith<_$OrganizationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationOrderByInput _$OrganizationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _OrganizationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$OrganizationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get slug => throw _privateConstructorUsedError;
  SortOrder? get logo => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OrganizationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationOrderByInputCopyWith<OrganizationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationOrderByInputCopyWith<$Res> {
  factory $OrganizationOrderByInputCopyWith(OrganizationOrderByInput value,
          $Res Function(OrganizationOrderByInput) then) =
      _$OrganizationOrderByInputCopyWithImpl<$Res, OrganizationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? slug,
      SortOrder? logo,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$OrganizationOrderByInputCopyWithImpl<$Res,
        $Val extends OrganizationOrderByInput>
    implements $OrganizationOrderByInputCopyWith<$Res> {
  _$OrganizationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrganizationOrderByInputImplCopyWith<$Res>
    implements $OrganizationOrderByInputCopyWith<$Res> {
  factory _$$OrganizationOrderByInputImplCopyWith(
          _$OrganizationOrderByInputImpl value,
          $Res Function(_$OrganizationOrderByInputImpl) then) =
      __$$OrganizationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? slug,
      SortOrder? logo,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$OrganizationOrderByInputImplCopyWithImpl<$Res>
    extends _$OrganizationOrderByInputCopyWithImpl<$Res,
        _$OrganizationOrderByInputImpl>
    implements _$$OrganizationOrderByInputImplCopyWith<$Res> {
  __$$OrganizationOrderByInputImplCopyWithImpl(
      _$OrganizationOrderByInputImpl _value,
      $Res Function(_$OrganizationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrganizationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
class _$OrganizationOrderByInputImpl implements _OrganizationOrderByInput {
  const _$OrganizationOrderByInputImpl(
      {this.id,
      this.name,
      this.slug,
      this.logo,
      this.createdAt,
      this.updatedAt});

  factory _$OrganizationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? slug;
  @override
  final SortOrder? logo;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'OrganizationOrderByInput(id: $id, name: $name, slug: $slug, logo: $logo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, logo, createdAt, updatedAt);

  /// Create a copy of OrganizationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationOrderByInputImplCopyWith<_$OrganizationOrderByInputImpl>
      get copyWith => __$$OrganizationOrderByInputImplCopyWithImpl<
          _$OrganizationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _OrganizationOrderByInput implements OrganizationOrderByInput {
  const factory _OrganizationOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? slug,
      final SortOrder? logo,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$OrganizationOrderByInputImpl;

  factory _OrganizationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$OrganizationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get slug;
  @override
  SortOrder? get logo;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of OrganizationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationOrderByInputImplCopyWith<_$OrganizationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
