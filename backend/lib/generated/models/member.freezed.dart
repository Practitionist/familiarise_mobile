// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  String get id => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Organization? get organization => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {String id,
      String organizationId,
      String userId,
      String role,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Organization? organization,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt});

  $OrganizationCopyWith<$Res>? get organization;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? userId = null,
    Object? role = null,
    Object? organization = freezed,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of Member
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
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organizationId,
      String userId,
      String role,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Organization? organization,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt});

  @override
  $OrganizationCopyWith<$Res>? get organization;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? userId = null,
    Object? role = null,
    Object? organization = freezed,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$MemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {required this.id,
      required this.organizationId,
      required this.userId,
      this.role = "member",
      @JsonKey(includeFromJson: false, includeToJson: false) this.organization,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.createdAt});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  final String id;
  @override
  final String organizationId;
  @override
  final String userId;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Organization? organization;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Member(id: $id, organizationId: $organizationId, userId: $userId, role: $role, organization: $organization, user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, organizationId, userId, role,
      organization, user, createdAt);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {required final String id,
      required final String organizationId,
      required final String userId,
      final String role,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Organization? organization,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final DateTime createdAt}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  String get id;
  @override
  String get organizationId;
  @override
  String get userId;
  @override
  String get role;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Organization? get organization;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  DateTime get createdAt;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateMemberInput _$CreateMemberInputFromJson(Map<String, dynamic> json) {
  return _CreateMemberInput.fromJson(json);
}

/// @nodoc
mixin _$CreateMemberInput {
  String get organizationId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this CreateMemberInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMemberInputCopyWith<CreateMemberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMemberInputCopyWith<$Res> {
  factory $CreateMemberInputCopyWith(
          CreateMemberInput value, $Res Function(CreateMemberInput) then) =
      _$CreateMemberInputCopyWithImpl<$Res, CreateMemberInput>;
  @useResult
  $Res call({String organizationId, String userId, String? role});
}

/// @nodoc
class _$CreateMemberInputCopyWithImpl<$Res, $Val extends CreateMemberInput>
    implements $CreateMemberInputCopyWith<$Res> {
  _$CreateMemberInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? userId = null,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMemberInputImplCopyWith<$Res>
    implements $CreateMemberInputCopyWith<$Res> {
  factory _$$CreateMemberInputImplCopyWith(_$CreateMemberInputImpl value,
          $Res Function(_$CreateMemberInputImpl) then) =
      __$$CreateMemberInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String organizationId, String userId, String? role});
}

/// @nodoc
class __$$CreateMemberInputImplCopyWithImpl<$Res>
    extends _$CreateMemberInputCopyWithImpl<$Res, _$CreateMemberInputImpl>
    implements _$$CreateMemberInputImplCopyWith<$Res> {
  __$$CreateMemberInputImplCopyWithImpl(_$CreateMemberInputImpl _value,
      $Res Function(_$CreateMemberInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? userId = null,
    Object? role = freezed,
  }) {
    return _then(_$CreateMemberInputImpl(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMemberInputImpl implements _CreateMemberInput {
  const _$CreateMemberInputImpl(
      {required this.organizationId,
      required this.userId,
      this.role = "member"});

  factory _$CreateMemberInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMemberInputImplFromJson(json);

  @override
  final String organizationId;
  @override
  final String userId;
  @override
  @JsonKey()
  final String? role;

  @override
  String toString() {
    return 'CreateMemberInput(organizationId: $organizationId, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMemberInputImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, organizationId, userId, role);

  /// Create a copy of CreateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMemberInputImplCopyWith<_$CreateMemberInputImpl> get copyWith =>
      __$$CreateMemberInputImplCopyWithImpl<_$CreateMemberInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMemberInputImplToJson(
      this,
    );
  }
}

abstract class _CreateMemberInput implements CreateMemberInput {
  const factory _CreateMemberInput(
      {required final String organizationId,
      required final String userId,
      final String? role}) = _$CreateMemberInputImpl;

  factory _CreateMemberInput.fromJson(Map<String, dynamic> json) =
      _$CreateMemberInputImpl.fromJson;

  @override
  String get organizationId;
  @override
  String get userId;
  @override
  String? get role;

  /// Create a copy of CreateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMemberInputImplCopyWith<_$CreateMemberInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateMemberInput _$UpdateMemberInputFromJson(Map<String, dynamic> json) {
  return _UpdateMemberInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateMemberInput {
  String? get organizationId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this UpdateMemberInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMemberInputCopyWith<UpdateMemberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMemberInputCopyWith<$Res> {
  factory $UpdateMemberInputCopyWith(
          UpdateMemberInput value, $Res Function(UpdateMemberInput) then) =
      _$UpdateMemberInputCopyWithImpl<$Res, UpdateMemberInput>;
  @useResult
  $Res call({String? organizationId, String? userId, String? role});
}

/// @nodoc
class _$UpdateMemberInputCopyWithImpl<$Res, $Val extends UpdateMemberInput>
    implements $UpdateMemberInputCopyWith<$Res> {
  _$UpdateMemberInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMemberInputImplCopyWith<$Res>
    implements $UpdateMemberInputCopyWith<$Res> {
  factory _$$UpdateMemberInputImplCopyWith(_$UpdateMemberInputImpl value,
          $Res Function(_$UpdateMemberInputImpl) then) =
      __$$UpdateMemberInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? organizationId, String? userId, String? role});
}

/// @nodoc
class __$$UpdateMemberInputImplCopyWithImpl<$Res>
    extends _$UpdateMemberInputCopyWithImpl<$Res, _$UpdateMemberInputImpl>
    implements _$$UpdateMemberInputImplCopyWith<$Res> {
  __$$UpdateMemberInputImplCopyWithImpl(_$UpdateMemberInputImpl _value,
      $Res Function(_$UpdateMemberInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UpdateMemberInputImpl(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMemberInputImpl implements _UpdateMemberInput {
  const _$UpdateMemberInputImpl({this.organizationId, this.userId, this.role});

  factory _$UpdateMemberInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateMemberInputImplFromJson(json);

  @override
  final String? organizationId;
  @override
  final String? userId;
  @override
  final String? role;

  @override
  String toString() {
    return 'UpdateMemberInput(organizationId: $organizationId, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemberInputImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, organizationId, userId, role);

  /// Create a copy of UpdateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemberInputImplCopyWith<_$UpdateMemberInputImpl> get copyWith =>
      __$$UpdateMemberInputImplCopyWithImpl<_$UpdateMemberInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMemberInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateMemberInput implements UpdateMemberInput {
  const factory _UpdateMemberInput(
      {final String? organizationId,
      final String? userId,
      final String? role}) = _$UpdateMemberInputImpl;

  factory _UpdateMemberInput.fromJson(Map<String, dynamic> json) =
      _$UpdateMemberInputImpl.fromJson;

  @override
  String? get organizationId;
  @override
  String? get userId;
  @override
  String? get role;

  /// Create a copy of UpdateMemberInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemberInputImplCopyWith<_$UpdateMemberInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberWhereUniqueInput _$MemberWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _MemberWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$MemberWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this MemberWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberWhereUniqueInputCopyWith<MemberWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberWhereUniqueInputCopyWith<$Res> {
  factory $MemberWhereUniqueInputCopyWith(MemberWhereUniqueInput value,
          $Res Function(MemberWhereUniqueInput) then) =
      _$MemberWhereUniqueInputCopyWithImpl<$Res, MemberWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$MemberWhereUniqueInputCopyWithImpl<$Res,
        $Val extends MemberWhereUniqueInput>
    implements $MemberWhereUniqueInputCopyWith<$Res> {
  _$MemberWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberWhereUniqueInput
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
abstract class _$$MemberWhereUniqueInputImplCopyWith<$Res>
    implements $MemberWhereUniqueInputCopyWith<$Res> {
  factory _$$MemberWhereUniqueInputImplCopyWith(
          _$MemberWhereUniqueInputImpl value,
          $Res Function(_$MemberWhereUniqueInputImpl) then) =
      __$$MemberWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$MemberWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$MemberWhereUniqueInputCopyWithImpl<$Res,
        _$MemberWhereUniqueInputImpl>
    implements _$$MemberWhereUniqueInputImplCopyWith<$Res> {
  __$$MemberWhereUniqueInputImplCopyWithImpl(
      _$MemberWhereUniqueInputImpl _value,
      $Res Function(_$MemberWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$MemberWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberWhereUniqueInputImpl implements _MemberWhereUniqueInput {
  const _$MemberWhereUniqueInputImpl({this.id});

  factory _$MemberWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'MemberWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MemberWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberWhereUniqueInputImplCopyWith<_$MemberWhereUniqueInputImpl>
      get copyWith => __$$MemberWhereUniqueInputImplCopyWithImpl<
          _$MemberWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _MemberWhereUniqueInput implements MemberWhereUniqueInput {
  const factory _MemberWhereUniqueInput({final String? id}) =
      _$MemberWhereUniqueInputImpl;

  factory _MemberWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$MemberWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of MemberWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberWhereUniqueInputImplCopyWith<_$MemberWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberWhereInput _$MemberWhereInputFromJson(Map<String, dynamic> json) {
  return _MemberWhereInput.fromJson(json);
}

/// @nodoc
mixin _$MemberWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get organizationId => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  StringFilter? get role => throw _privateConstructorUsedError;

  /// Filter by organization relation
  OrganizationRelationFilter? get organization =>
      throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<MemberWhereInput>? get AND => throw _privateConstructorUsedError;
  List<MemberWhereInput>? get OR => throw _privateConstructorUsedError;
  MemberWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this MemberWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberWhereInputCopyWith<MemberWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberWhereInputCopyWith<$Res> {
  factory $MemberWhereInputCopyWith(
          MemberWhereInput value, $Res Function(MemberWhereInput) then) =
      _$MemberWhereInputCopyWithImpl<$Res, MemberWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? organizationId,
      StringFilter? userId,
      StringFilter? role,
      OrganizationRelationFilter? organization,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      List<MemberWhereInput>? AND,
      List<MemberWhereInput>? OR,
      MemberWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get organizationId;
  $StringFilterCopyWith<$Res>? get userId;
  $StringFilterCopyWith<$Res>? get role;
  $OrganizationRelationFilterCopyWith<$Res>? get organization;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $MemberWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$MemberWhereInputCopyWithImpl<$Res, $Val extends MemberWhereInput>
    implements $MemberWhereInputCopyWith<$Res> {
  _$MemberWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? organization = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationRelationFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<MemberWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MemberWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MemberWhereInput
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

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get organizationId {
    if (_value.organizationId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.organizationId!, (value) {
      return _then(_value.copyWith(organizationId: value) as $Val);
    });
  }

  /// Create a copy of MemberWhereInput
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

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationRelationFilterCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationRelationFilterCopyWith<$Res>(_value.organization!,
        (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of MemberWhereInput
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

  /// Create a copy of MemberWhereInput
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

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberWhereInputImplCopyWith<$Res>
    implements $MemberWhereInputCopyWith<$Res> {
  factory _$$MemberWhereInputImplCopyWith(_$MemberWhereInputImpl value,
          $Res Function(_$MemberWhereInputImpl) then) =
      __$$MemberWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? organizationId,
      StringFilter? userId,
      StringFilter? role,
      OrganizationRelationFilter? organization,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      List<MemberWhereInput>? AND,
      List<MemberWhereInput>? OR,
      MemberWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get organizationId;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $StringFilterCopyWith<$Res>? get role;
  @override
  $OrganizationRelationFilterCopyWith<$Res>? get organization;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $MemberWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$MemberWhereInputImplCopyWithImpl<$Res>
    extends _$MemberWhereInputCopyWithImpl<$Res, _$MemberWhereInputImpl>
    implements _$$MemberWhereInputImplCopyWith<$Res> {
  __$$MemberWhereInputImplCopyWithImpl(_$MemberWhereInputImpl _value,
      $Res Function(_$MemberWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? organization = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$MemberWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationRelationFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<MemberWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MemberWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MemberWhereInputImpl implements _MemberWhereInput {
  const _$MemberWhereInputImpl(
      {this.id,
      this.organizationId,
      this.userId,
      this.role,
      this.organization,
      this.user,
      this.createdAt,
      final List<MemberWhereInput>? AND,
      final List<MemberWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$MemberWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? organizationId;
  @override
  final StringFilter? userId;
  @override
  final StringFilter? role;

  /// Filter by organization relation
  @override
  final OrganizationRelationFilter? organization;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? createdAt;
  final List<MemberWhereInput>? _AND;
  @override
  List<MemberWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MemberWhereInput>? _OR;
  @override
  List<MemberWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MemberWhereInput? NOT;

  @override
  String toString() {
    return 'MemberWhereInput(id: $id, organizationId: $organizationId, userId: $userId, role: $role, organization: $organization, user: $user, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      userId,
      role,
      organization,
      user,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberWhereInputImplCopyWith<_$MemberWhereInputImpl> get copyWith =>
      __$$MemberWhereInputImplCopyWithImpl<_$MemberWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberWhereInputImplToJson(
      this,
    );
  }
}

abstract class _MemberWhereInput implements MemberWhereInput {
  const factory _MemberWhereInput(
      {final StringFilter? id,
      final StringFilter? organizationId,
      final StringFilter? userId,
      final StringFilter? role,
      final OrganizationRelationFilter? organization,
      final UserRelationFilter? user,
      final DateTimeFilter? createdAt,
      final List<MemberWhereInput>? AND,
      final List<MemberWhereInput>? OR,
      final MemberWhereInput? NOT}) = _$MemberWhereInputImpl;

  factory _MemberWhereInput.fromJson(Map<String, dynamic> json) =
      _$MemberWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get organizationId;
  @override
  StringFilter? get userId;
  @override
  StringFilter? get role;

  /// Filter by organization relation
  @override
  OrganizationRelationFilter? get organization;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<MemberWhereInput>? get AND;
  @override
  List<MemberWhereInput>? get OR;
  @override
  MemberWhereInput? get NOT;

  /// Create a copy of MemberWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberWhereInputImplCopyWith<_$MemberWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberListRelationFilter _$MemberListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _MemberListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MemberListRelationFilter {
  /// At least one related record matches
  MemberWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  MemberWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  MemberWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this MemberListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberListRelationFilterCopyWith<MemberListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberListRelationFilterCopyWith<$Res> {
  factory $MemberListRelationFilterCopyWith(MemberListRelationFilter value,
          $Res Function(MemberListRelationFilter) then) =
      _$MemberListRelationFilterCopyWithImpl<$Res, MemberListRelationFilter>;
  @useResult
  $Res call(
      {MemberWhereInput? some,
      MemberWhereInput? every,
      MemberWhereInput? none});

  $MemberWhereInputCopyWith<$Res>? get some;
  $MemberWhereInputCopyWith<$Res>? get every;
  $MemberWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$MemberListRelationFilterCopyWithImpl<$Res,
        $Val extends MemberListRelationFilter>
    implements $MemberListRelationFilterCopyWith<$Res> {
  _$MemberListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberListRelationFilter
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
              as MemberWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberListRelationFilterImplCopyWith<$Res>
    implements $MemberListRelationFilterCopyWith<$Res> {
  factory _$$MemberListRelationFilterImplCopyWith(
          _$MemberListRelationFilterImpl value,
          $Res Function(_$MemberListRelationFilterImpl) then) =
      __$$MemberListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MemberWhereInput? some,
      MemberWhereInput? every,
      MemberWhereInput? none});

  @override
  $MemberWhereInputCopyWith<$Res>? get some;
  @override
  $MemberWhereInputCopyWith<$Res>? get every;
  @override
  $MemberWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$MemberListRelationFilterImplCopyWithImpl<$Res>
    extends _$MemberListRelationFilterCopyWithImpl<$Res,
        _$MemberListRelationFilterImpl>
    implements _$$MemberListRelationFilterImplCopyWith<$Res> {
  __$$MemberListRelationFilterImplCopyWithImpl(
      _$MemberListRelationFilterImpl _value,
      $Res Function(_$MemberListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$MemberListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberListRelationFilterImpl implements _MemberListRelationFilter {
  const _$MemberListRelationFilterImpl({this.some, this.every, this.none});

  factory _$MemberListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final MemberWhereInput? some;

  /// All related records match
  @override
  final MemberWhereInput? every;

  /// No related records match
  @override
  final MemberWhereInput? none;

  @override
  String toString() {
    return 'MemberListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberListRelationFilterImplCopyWith<_$MemberListRelationFilterImpl>
      get copyWith => __$$MemberListRelationFilterImplCopyWithImpl<
          _$MemberListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MemberListRelationFilter implements MemberListRelationFilter {
  const factory _MemberListRelationFilter(
      {final MemberWhereInput? some,
      final MemberWhereInput? every,
      final MemberWhereInput? none}) = _$MemberListRelationFilterImpl;

  factory _MemberListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$MemberListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  MemberWhereInput? get some;

  /// All related records match
  @override
  MemberWhereInput? get every;

  /// No related records match
  @override
  MemberWhereInput? get none;

  /// Create a copy of MemberListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberListRelationFilterImplCopyWith<_$MemberListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberRelationFilter _$MemberRelationFilterFromJson(Map<String, dynamic> json) {
  return _MemberRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MemberRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  MemberWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  MemberWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this MemberRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberRelationFilterCopyWith<MemberRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberRelationFilterCopyWith<$Res> {
  factory $MemberRelationFilterCopyWith(MemberRelationFilter value,
          $Res Function(MemberRelationFilter) then) =
      _$MemberRelationFilterCopyWithImpl<$Res, MemberRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MemberWhereInput? is_, MemberWhereInput? isNot});

  $MemberWhereInputCopyWith<$Res>? get is_;
  $MemberWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$MemberRelationFilterCopyWithImpl<$Res,
        $Val extends MemberRelationFilter>
    implements $MemberRelationFilterCopyWith<$Res> {
  _$MemberRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberRelationFilter
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
              as MemberWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $MemberWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberRelationFilterImplCopyWith<$Res>
    implements $MemberRelationFilterCopyWith<$Res> {
  factory _$$MemberRelationFilterImplCopyWith(_$MemberRelationFilterImpl value,
          $Res Function(_$MemberRelationFilterImpl) then) =
      __$$MemberRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MemberWhereInput? is_, MemberWhereInput? isNot});

  @override
  $MemberWhereInputCopyWith<$Res>? get is_;
  @override
  $MemberWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$MemberRelationFilterImplCopyWithImpl<$Res>
    extends _$MemberRelationFilterCopyWithImpl<$Res, _$MemberRelationFilterImpl>
    implements _$$MemberRelationFilterImplCopyWith<$Res> {
  __$$MemberRelationFilterImplCopyWithImpl(_$MemberRelationFilterImpl _value,
      $Res Function(_$MemberRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$MemberRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MemberWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberRelationFilterImpl implements _MemberRelationFilter {
  const _$MemberRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$MemberRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final MemberWhereInput? is_;

  /// Related record does not match
  @override
  final MemberWhereInput? isNot;

  @override
  String toString() {
    return 'MemberRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberRelationFilterImplCopyWith<_$MemberRelationFilterImpl>
      get copyWith =>
          __$$MemberRelationFilterImplCopyWithImpl<_$MemberRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MemberRelationFilter implements MemberRelationFilter {
  const factory _MemberRelationFilter(
      {@JsonKey(name: 'is') final MemberWhereInput? is_,
      final MemberWhereInput? isNot}) = _$MemberRelationFilterImpl;

  factory _MemberRelationFilter.fromJson(Map<String, dynamic> json) =
      _$MemberRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  MemberWhereInput? get is_;

  /// Related record does not match
  @override
  MemberWhereInput? get isNot;

  /// Create a copy of MemberRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberRelationFilterImplCopyWith<_$MemberRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberOrderByInput _$MemberOrderByInputFromJson(Map<String, dynamic> json) {
  return _MemberOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$MemberOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get organizationId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get role => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MemberOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberOrderByInputCopyWith<MemberOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberOrderByInputCopyWith<$Res> {
  factory $MemberOrderByInputCopyWith(
          MemberOrderByInput value, $Res Function(MemberOrderByInput) then) =
      _$MemberOrderByInputCopyWithImpl<$Res, MemberOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? organizationId,
      SortOrder? userId,
      SortOrder? role,
      SortOrder? createdAt});
}

/// @nodoc
class _$MemberOrderByInputCopyWithImpl<$Res, $Val extends MemberOrderByInput>
    implements $MemberOrderByInputCopyWith<$Res> {
  _$MemberOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberOrderByInputImplCopyWith<$Res>
    implements $MemberOrderByInputCopyWith<$Res> {
  factory _$$MemberOrderByInputImplCopyWith(_$MemberOrderByInputImpl value,
          $Res Function(_$MemberOrderByInputImpl) then) =
      __$$MemberOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? organizationId,
      SortOrder? userId,
      SortOrder? role,
      SortOrder? createdAt});
}

/// @nodoc
class __$$MemberOrderByInputImplCopyWithImpl<$Res>
    extends _$MemberOrderByInputCopyWithImpl<$Res, _$MemberOrderByInputImpl>
    implements _$$MemberOrderByInputImplCopyWith<$Res> {
  __$$MemberOrderByInputImplCopyWithImpl(_$MemberOrderByInputImpl _value,
      $Res Function(_$MemberOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MemberOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberOrderByInputImpl implements _MemberOrderByInput {
  const _$MemberOrderByInputImpl(
      {this.id, this.organizationId, this.userId, this.role, this.createdAt});

  factory _$MemberOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? organizationId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? role;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'MemberOrderByInput(id: $id, organizationId: $organizationId, userId: $userId, role: $role, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, organizationId, userId, role, createdAt);

  /// Create a copy of MemberOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberOrderByInputImplCopyWith<_$MemberOrderByInputImpl> get copyWith =>
      __$$MemberOrderByInputImplCopyWithImpl<_$MemberOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _MemberOrderByInput implements MemberOrderByInput {
  const factory _MemberOrderByInput(
      {final SortOrder? id,
      final SortOrder? organizationId,
      final SortOrder? userId,
      final SortOrder? role,
      final SortOrder? createdAt}) = _$MemberOrderByInputImpl;

  factory _MemberOrderByInput.fromJson(Map<String, dynamic> json) =
      _$MemberOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get organizationId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get role;
  @override
  SortOrder? get createdAt;

  /// Create a copy of MemberOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberOrderByInputImplCopyWith<_$MemberOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
