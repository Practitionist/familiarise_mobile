// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminProfile _$AdminProfileFromJson(Map<String, dynamic> json) {
  return _AdminProfile.fromJson(json);
}

/// @nodoc
mixin _$AdminProfile {
  String get id => throw _privateConstructorUsedError;
  AdminLevel get adminLevel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AdminProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileCopyWith<AdminProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileCopyWith<$Res> {
  factory $AdminProfileCopyWith(
          AdminProfile value, $Res Function(AdminProfile) then) =
      _$AdminProfileCopyWithImpl<$Res, AdminProfile>;
  @useResult
  $Res call(
      {String id,
      AdminLevel adminLevel,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AdminProfileCopyWithImpl<$Res, $Val extends AdminProfile>
    implements $AdminProfileCopyWith<$Res> {
  _$AdminProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminLevel = null,
    Object? notes = freezed,
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
      adminLevel: null == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of AdminProfile
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
abstract class _$$AdminProfileImplCopyWith<$Res>
    implements $AdminProfileCopyWith<$Res> {
  factory _$$AdminProfileImplCopyWith(
          _$AdminProfileImpl value, $Res Function(_$AdminProfileImpl) then) =
      __$$AdminProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AdminLevel adminLevel,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AdminProfileImplCopyWithImpl<$Res>
    extends _$AdminProfileCopyWithImpl<$Res, _$AdminProfileImpl>
    implements _$$AdminProfileImplCopyWith<$Res> {
  __$$AdminProfileImplCopyWithImpl(
      _$AdminProfileImpl _value, $Res Function(_$AdminProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminLevel = null,
    Object? notes = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AdminProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      adminLevel: null == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$AdminProfileImpl implements _AdminProfile {
  const _$AdminProfileImpl(
      {required this.id,
      required this.adminLevel,
      this.notes,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$AdminProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProfileImplFromJson(json);

  @override
  final String id;
  @override
  final AdminLevel adminLevel;
  @override
  final String? notes;
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
    return 'AdminProfile(id: $id, adminLevel: $adminLevel, notes: $notes, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adminLevel, adminLevel) ||
                other.adminLevel == adminLevel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
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
      runtimeType, id, adminLevel, notes, user, userId, createdAt, updatedAt);

  /// Create a copy of AdminProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileImplCopyWith<_$AdminProfileImpl> get copyWith =>
      __$$AdminProfileImplCopyWithImpl<_$AdminProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileImplToJson(
      this,
    );
  }
}

abstract class _AdminProfile implements AdminProfile {
  const factory _AdminProfile(
      {required final String id,
      required final AdminLevel adminLevel,
      final String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AdminProfileImpl;

  factory _AdminProfile.fromJson(Map<String, dynamic> json) =
      _$AdminProfileImpl.fromJson;

  @override
  String get id;
  @override
  AdminLevel get adminLevel;
  @override
  String? get notes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of AdminProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileImplCopyWith<_$AdminProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAdminProfileInput _$CreateAdminProfileInputFromJson(
    Map<String, dynamic> json) {
  return _CreateAdminProfileInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAdminProfileInput {
  AdminLevel get adminLevel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateAdminProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAdminProfileInputCopyWith<CreateAdminProfileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAdminProfileInputCopyWith<$Res> {
  factory $CreateAdminProfileInputCopyWith(CreateAdminProfileInput value,
          $Res Function(CreateAdminProfileInput) then) =
      _$CreateAdminProfileInputCopyWithImpl<$Res, CreateAdminProfileInput>;
  @useResult
  $Res call({AdminLevel adminLevel, String? notes, String userId});
}

/// @nodoc
class _$CreateAdminProfileInputCopyWithImpl<$Res,
        $Val extends CreateAdminProfileInput>
    implements $CreateAdminProfileInputCopyWith<$Res> {
  _$CreateAdminProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminLevel = null,
    Object? notes = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      adminLevel: null == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAdminProfileInputImplCopyWith<$Res>
    implements $CreateAdminProfileInputCopyWith<$Res> {
  factory _$$CreateAdminProfileInputImplCopyWith(
          _$CreateAdminProfileInputImpl value,
          $Res Function(_$CreateAdminProfileInputImpl) then) =
      __$$CreateAdminProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminLevel adminLevel, String? notes, String userId});
}

/// @nodoc
class __$$CreateAdminProfileInputImplCopyWithImpl<$Res>
    extends _$CreateAdminProfileInputCopyWithImpl<$Res,
        _$CreateAdminProfileInputImpl>
    implements _$$CreateAdminProfileInputImplCopyWith<$Res> {
  __$$CreateAdminProfileInputImplCopyWithImpl(
      _$CreateAdminProfileInputImpl _value,
      $Res Function(_$CreateAdminProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminLevel = null,
    Object? notes = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateAdminProfileInputImpl(
      adminLevel: null == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$CreateAdminProfileInputImpl implements _CreateAdminProfileInput {
  const _$CreateAdminProfileInputImpl(
      {required this.adminLevel, this.notes, required this.userId});

  factory _$CreateAdminProfileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAdminProfileInputImplFromJson(json);

  @override
  final AdminLevel adminLevel;
  @override
  final String? notes;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateAdminProfileInput(adminLevel: $adminLevel, notes: $notes, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdminProfileInputImpl &&
            (identical(other.adminLevel, adminLevel) ||
                other.adminLevel == adminLevel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adminLevel, notes, userId);

  /// Create a copy of CreateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdminProfileInputImplCopyWith<_$CreateAdminProfileInputImpl>
      get copyWith => __$$CreateAdminProfileInputImplCopyWithImpl<
          _$CreateAdminProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAdminProfileInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAdminProfileInput implements CreateAdminProfileInput {
  const factory _CreateAdminProfileInput(
      {required final AdminLevel adminLevel,
      final String? notes,
      required final String userId}) = _$CreateAdminProfileInputImpl;

  factory _CreateAdminProfileInput.fromJson(Map<String, dynamic> json) =
      _$CreateAdminProfileInputImpl.fromJson;

  @override
  AdminLevel get adminLevel;
  @override
  String? get notes;
  @override
  String get userId;

  /// Create a copy of CreateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAdminProfileInputImplCopyWith<_$CreateAdminProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAdminProfileInput _$UpdateAdminProfileInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateAdminProfileInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAdminProfileInput {
  AdminLevel? get adminLevel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateAdminProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAdminProfileInputCopyWith<UpdateAdminProfileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAdminProfileInputCopyWith<$Res> {
  factory $UpdateAdminProfileInputCopyWith(UpdateAdminProfileInput value,
          $Res Function(UpdateAdminProfileInput) then) =
      _$UpdateAdminProfileInputCopyWithImpl<$Res, UpdateAdminProfileInput>;
  @useResult
  $Res call({AdminLevel? adminLevel, String? notes, String? userId});
}

/// @nodoc
class _$UpdateAdminProfileInputCopyWithImpl<$Res,
        $Val extends UpdateAdminProfileInput>
    implements $UpdateAdminProfileInputCopyWith<$Res> {
  _$UpdateAdminProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminLevel = freezed,
    Object? notes = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAdminProfileInputImplCopyWith<$Res>
    implements $UpdateAdminProfileInputCopyWith<$Res> {
  factory _$$UpdateAdminProfileInputImplCopyWith(
          _$UpdateAdminProfileInputImpl value,
          $Res Function(_$UpdateAdminProfileInputImpl) then) =
      __$$UpdateAdminProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminLevel? adminLevel, String? notes, String? userId});
}

/// @nodoc
class __$$UpdateAdminProfileInputImplCopyWithImpl<$Res>
    extends _$UpdateAdminProfileInputCopyWithImpl<$Res,
        _$UpdateAdminProfileInputImpl>
    implements _$$UpdateAdminProfileInputImplCopyWith<$Res> {
  __$$UpdateAdminProfileInputImplCopyWithImpl(
      _$UpdateAdminProfileInputImpl _value,
      $Res Function(_$UpdateAdminProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminLevel = freezed,
    Object? notes = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateAdminProfileInputImpl(
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$UpdateAdminProfileInputImpl implements _UpdateAdminProfileInput {
  const _$UpdateAdminProfileInputImpl(
      {this.adminLevel, this.notes, this.userId});

  factory _$UpdateAdminProfileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAdminProfileInputImplFromJson(json);

  @override
  final AdminLevel? adminLevel;
  @override
  final String? notes;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateAdminProfileInput(adminLevel: $adminLevel, notes: $notes, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAdminProfileInputImpl &&
            (identical(other.adminLevel, adminLevel) ||
                other.adminLevel == adminLevel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adminLevel, notes, userId);

  /// Create a copy of UpdateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAdminProfileInputImplCopyWith<_$UpdateAdminProfileInputImpl>
      get copyWith => __$$UpdateAdminProfileInputImplCopyWithImpl<
          _$UpdateAdminProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAdminProfileInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAdminProfileInput implements UpdateAdminProfileInput {
  const factory _UpdateAdminProfileInput(
      {final AdminLevel? adminLevel,
      final String? notes,
      final String? userId}) = _$UpdateAdminProfileInputImpl;

  factory _UpdateAdminProfileInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAdminProfileInputImpl.fromJson;

  @override
  AdminLevel? get adminLevel;
  @override
  String? get notes;
  @override
  String? get userId;

  /// Create a copy of UpdateAdminProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAdminProfileInputImplCopyWith<_$UpdateAdminProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProfileWhereUniqueInput _$AdminProfileWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _AdminProfileWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AdminProfileWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this AdminProfileWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileWhereUniqueInputCopyWith<AdminProfileWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileWhereUniqueInputCopyWith<$Res> {
  factory $AdminProfileWhereUniqueInputCopyWith(
          AdminProfileWhereUniqueInput value,
          $Res Function(AdminProfileWhereUniqueInput) then) =
      _$AdminProfileWhereUniqueInputCopyWithImpl<$Res,
          AdminProfileWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$AdminProfileWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AdminProfileWhereUniqueInput>
    implements $AdminProfileWhereUniqueInputCopyWith<$Res> {
  _$AdminProfileWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminProfileWhereUniqueInputImplCopyWith<$Res>
    implements $AdminProfileWhereUniqueInputCopyWith<$Res> {
  factory _$$AdminProfileWhereUniqueInputImplCopyWith(
          _$AdminProfileWhereUniqueInputImpl value,
          $Res Function(_$AdminProfileWhereUniqueInputImpl) then) =
      __$$AdminProfileWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class __$$AdminProfileWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AdminProfileWhereUniqueInputCopyWithImpl<$Res,
        _$AdminProfileWhereUniqueInputImpl>
    implements _$$AdminProfileWhereUniqueInputImplCopyWith<$Res> {
  __$$AdminProfileWhereUniqueInputImplCopyWithImpl(
      _$AdminProfileWhereUniqueInputImpl _value,
      $Res Function(_$AdminProfileWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$AdminProfileWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$AdminProfileWhereUniqueInputImpl
    implements _AdminProfileWhereUniqueInput {
  const _$AdminProfileWhereUniqueInputImpl({this.id, this.userId});

  factory _$AdminProfileWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdminProfileWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'AdminProfileWhereUniqueInput(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of AdminProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileWhereUniqueInputImplCopyWith<
          _$AdminProfileWhereUniqueInputImpl>
      get copyWith => __$$AdminProfileWhereUniqueInputImplCopyWithImpl<
          _$AdminProfileWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AdminProfileWhereUniqueInput
    implements AdminProfileWhereUniqueInput {
  const factory _AdminProfileWhereUniqueInput(
      {final String? id,
      final String? userId}) = _$AdminProfileWhereUniqueInputImpl;

  factory _AdminProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$AdminProfileWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;

  /// Create a copy of AdminProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileWhereUniqueInputImplCopyWith<
          _$AdminProfileWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProfileWhereInput _$AdminProfileWhereInputFromJson(
    Map<String, dynamic> json) {
  return _AdminProfileWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AdminProfileWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  AdminLevelFilter? get adminLevel => throw _privateConstructorUsedError;
  StringFilter? get notes => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AdminProfileWhereInput>? get AND => throw _privateConstructorUsedError;
  List<AdminProfileWhereInput>? get OR => throw _privateConstructorUsedError;
  AdminProfileWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AdminProfileWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileWhereInputCopyWith<AdminProfileWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileWhereInputCopyWith<$Res> {
  factory $AdminProfileWhereInputCopyWith(AdminProfileWhereInput value,
          $Res Function(AdminProfileWhereInput) then) =
      _$AdminProfileWhereInputCopyWithImpl<$Res, AdminProfileWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      AdminLevelFilter? adminLevel,
      StringFilter? notes,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AdminProfileWhereInput>? AND,
      List<AdminProfileWhereInput>? OR,
      AdminProfileWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $AdminLevelFilterCopyWith<$Res>? get adminLevel;
  $StringFilterCopyWith<$Res>? get notes;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AdminProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AdminProfileWhereInputCopyWithImpl<$Res,
        $Val extends AdminProfileWhereInput>
    implements $AdminProfileWhereInputCopyWith<$Res> {
  _$AdminProfileWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? adminLevel = freezed,
    Object? notes = freezed,
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
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevelFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
              as List<AdminProfileWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AdminProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AdminProfileWhereInput
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

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminLevelFilterCopyWith<$Res>? get adminLevel {
    if (_value.adminLevel == null) {
      return null;
    }

    return $AdminLevelFilterCopyWith<$Res>(_value.adminLevel!, (value) {
      return _then(_value.copyWith(adminLevel: value) as $Val);
    });
  }

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get notes {
    if (_value.notes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.notes!, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
    });
  }

  /// Create a copy of AdminProfileWhereInput
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

  /// Create a copy of AdminProfileWhereInput
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

  /// Create a copy of AdminProfileWhereInput
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

  /// Create a copy of AdminProfileWhereInput
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

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminProfileWhereInputImplCopyWith<$Res>
    implements $AdminProfileWhereInputCopyWith<$Res> {
  factory _$$AdminProfileWhereInputImplCopyWith(
          _$AdminProfileWhereInputImpl value,
          $Res Function(_$AdminProfileWhereInputImpl) then) =
      __$$AdminProfileWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      AdminLevelFilter? adminLevel,
      StringFilter? notes,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AdminProfileWhereInput>? AND,
      List<AdminProfileWhereInput>? OR,
      AdminProfileWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $AdminLevelFilterCopyWith<$Res>? get adminLevel;
  @override
  $StringFilterCopyWith<$Res>? get notes;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AdminProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AdminProfileWhereInputImplCopyWithImpl<$Res>
    extends _$AdminProfileWhereInputCopyWithImpl<$Res,
        _$AdminProfileWhereInputImpl>
    implements _$$AdminProfileWhereInputImplCopyWith<$Res> {
  __$$AdminProfileWhereInputImplCopyWithImpl(
      _$AdminProfileWhereInputImpl _value,
      $Res Function(_$AdminProfileWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? adminLevel = freezed,
    Object? notes = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AdminProfileWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as AdminLevelFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
              as List<AdminProfileWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AdminProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AdminProfileWhereInputImpl implements _AdminProfileWhereInput {
  const _$AdminProfileWhereInputImpl(
      {this.id,
      this.adminLevel,
      this.notes,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<AdminProfileWhereInput>? AND,
      final List<AdminProfileWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AdminProfileWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProfileWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final AdminLevelFilter? adminLevel;
  @override
  final StringFilter? notes;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AdminProfileWhereInput>? _AND;
  @override
  List<AdminProfileWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdminProfileWhereInput>? _OR;
  @override
  List<AdminProfileWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AdminProfileWhereInput? NOT;

  @override
  String toString() {
    return 'AdminProfileWhereInput(id: $id, adminLevel: $adminLevel, notes: $notes, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adminLevel, adminLevel) ||
                other.adminLevel == adminLevel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
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
      adminLevel,
      notes,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileWhereInputImplCopyWith<_$AdminProfileWhereInputImpl>
      get copyWith => __$$AdminProfileWhereInputImplCopyWithImpl<
          _$AdminProfileWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AdminProfileWhereInput implements AdminProfileWhereInput {
  const factory _AdminProfileWhereInput(
      {final StringFilter? id,
      final AdminLevelFilter? adminLevel,
      final StringFilter? notes,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<AdminProfileWhereInput>? AND,
      final List<AdminProfileWhereInput>? OR,
      final AdminProfileWhereInput? NOT}) = _$AdminProfileWhereInputImpl;

  factory _AdminProfileWhereInput.fromJson(Map<String, dynamic> json) =
      _$AdminProfileWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  AdminLevelFilter? get adminLevel;
  @override
  StringFilter? get notes;

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
  List<AdminProfileWhereInput>? get AND;
  @override
  List<AdminProfileWhereInput>? get OR;
  @override
  AdminProfileWhereInput? get NOT;

  /// Create a copy of AdminProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileWhereInputImplCopyWith<_$AdminProfileWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProfileListRelationFilter _$AdminProfileListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AdminProfileListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AdminProfileListRelationFilter {
  /// At least one related record matches
  AdminProfileWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AdminProfileWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  AdminProfileWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AdminProfileListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileListRelationFilterCopyWith<AdminProfileListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileListRelationFilterCopyWith<$Res> {
  factory $AdminProfileListRelationFilterCopyWith(
          AdminProfileListRelationFilter value,
          $Res Function(AdminProfileListRelationFilter) then) =
      _$AdminProfileListRelationFilterCopyWithImpl<$Res,
          AdminProfileListRelationFilter>;
  @useResult
  $Res call(
      {AdminProfileWhereInput? some,
      AdminProfileWhereInput? every,
      AdminProfileWhereInput? none});

  $AdminProfileWhereInputCopyWith<$Res>? get some;
  $AdminProfileWhereInputCopyWith<$Res>? get every;
  $AdminProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AdminProfileListRelationFilterCopyWithImpl<$Res,
        $Val extends AdminProfileListRelationFilter>
    implements $AdminProfileListRelationFilterCopyWith<$Res> {
  _$AdminProfileListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfileListRelationFilter
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
              as AdminProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminProfileListRelationFilterImplCopyWith<$Res>
    implements $AdminProfileListRelationFilterCopyWith<$Res> {
  factory _$$AdminProfileListRelationFilterImplCopyWith(
          _$AdminProfileListRelationFilterImpl value,
          $Res Function(_$AdminProfileListRelationFilterImpl) then) =
      __$$AdminProfileListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdminProfileWhereInput? some,
      AdminProfileWhereInput? every,
      AdminProfileWhereInput? none});

  @override
  $AdminProfileWhereInputCopyWith<$Res>? get some;
  @override
  $AdminProfileWhereInputCopyWith<$Res>? get every;
  @override
  $AdminProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AdminProfileListRelationFilterImplCopyWithImpl<$Res>
    extends _$AdminProfileListRelationFilterCopyWithImpl<$Res,
        _$AdminProfileListRelationFilterImpl>
    implements _$$AdminProfileListRelationFilterImplCopyWith<$Res> {
  __$$AdminProfileListRelationFilterImplCopyWithImpl(
      _$AdminProfileListRelationFilterImpl _value,
      $Res Function(_$AdminProfileListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AdminProfileListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProfileListRelationFilterImpl
    implements _AdminProfileListRelationFilter {
  const _$AdminProfileListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$AdminProfileListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdminProfileListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AdminProfileWhereInput? some;

  /// All related records match
  @override
  final AdminProfileWhereInput? every;

  /// No related records match
  @override
  final AdminProfileWhereInput? none;

  @override
  String toString() {
    return 'AdminProfileListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileListRelationFilterImplCopyWith<
          _$AdminProfileListRelationFilterImpl>
      get copyWith => __$$AdminProfileListRelationFilterImplCopyWithImpl<
          _$AdminProfileListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AdminProfileListRelationFilter
    implements AdminProfileListRelationFilter {
  const factory _AdminProfileListRelationFilter(
          {final AdminProfileWhereInput? some,
          final AdminProfileWhereInput? every,
          final AdminProfileWhereInput? none}) =
      _$AdminProfileListRelationFilterImpl;

  factory _AdminProfileListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AdminProfileListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AdminProfileWhereInput? get some;

  /// All related records match
  @override
  AdminProfileWhereInput? get every;

  /// No related records match
  @override
  AdminProfileWhereInput? get none;

  /// Create a copy of AdminProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileListRelationFilterImplCopyWith<
          _$AdminProfileListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProfileRelationFilter _$AdminProfileRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AdminProfileRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AdminProfileRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AdminProfileWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AdminProfileWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this AdminProfileRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileRelationFilterCopyWith<AdminProfileRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileRelationFilterCopyWith<$Res> {
  factory $AdminProfileRelationFilterCopyWith(AdminProfileRelationFilter value,
          $Res Function(AdminProfileRelationFilter) then) =
      _$AdminProfileRelationFilterCopyWithImpl<$Res,
          AdminProfileRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AdminProfileWhereInput? is_,
      AdminProfileWhereInput? isNot});

  $AdminProfileWhereInputCopyWith<$Res>? get is_;
  $AdminProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AdminProfileRelationFilterCopyWithImpl<$Res,
        $Val extends AdminProfileRelationFilter>
    implements $AdminProfileRelationFilterCopyWith<$Res> {
  _$AdminProfileRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfileRelationFilter
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
              as AdminProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AdminProfileWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminProfileRelationFilterImplCopyWith<$Res>
    implements $AdminProfileRelationFilterCopyWith<$Res> {
  factory _$$AdminProfileRelationFilterImplCopyWith(
          _$AdminProfileRelationFilterImpl value,
          $Res Function(_$AdminProfileRelationFilterImpl) then) =
      __$$AdminProfileRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AdminProfileWhereInput? is_,
      AdminProfileWhereInput? isNot});

  @override
  $AdminProfileWhereInputCopyWith<$Res>? get is_;
  @override
  $AdminProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AdminProfileRelationFilterImplCopyWithImpl<$Res>
    extends _$AdminProfileRelationFilterCopyWithImpl<$Res,
        _$AdminProfileRelationFilterImpl>
    implements _$$AdminProfileRelationFilterImplCopyWith<$Res> {
  __$$AdminProfileRelationFilterImplCopyWithImpl(
      _$AdminProfileRelationFilterImpl _value,
      $Res Function(_$AdminProfileRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AdminProfileRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AdminProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProfileRelationFilterImpl implements _AdminProfileRelationFilter {
  const _$AdminProfileRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AdminProfileRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdminProfileRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AdminProfileWhereInput? is_;

  /// Related record does not match
  @override
  final AdminProfileWhereInput? isNot;

  @override
  String toString() {
    return 'AdminProfileRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileRelationFilterImplCopyWith<_$AdminProfileRelationFilterImpl>
      get copyWith => __$$AdminProfileRelationFilterImplCopyWithImpl<
          _$AdminProfileRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AdminProfileRelationFilter
    implements AdminProfileRelationFilter {
  const factory _AdminProfileRelationFilter(
      {@JsonKey(name: 'is') final AdminProfileWhereInput? is_,
      final AdminProfileWhereInput? isNot}) = _$AdminProfileRelationFilterImpl;

  factory _AdminProfileRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AdminProfileRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AdminProfileWhereInput? get is_;

  /// Related record does not match
  @override
  AdminProfileWhereInput? get isNot;

  /// Create a copy of AdminProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileRelationFilterImplCopyWith<_$AdminProfileRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProfileOrderByInput _$AdminProfileOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _AdminProfileOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AdminProfileOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get notes => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AdminProfileOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProfileOrderByInputCopyWith<AdminProfileOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProfileOrderByInputCopyWith<$Res> {
  factory $AdminProfileOrderByInputCopyWith(AdminProfileOrderByInput value,
          $Res Function(AdminProfileOrderByInput) then) =
      _$AdminProfileOrderByInputCopyWithImpl<$Res, AdminProfileOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AdminProfileOrderByInputCopyWithImpl<$Res,
        $Val extends AdminProfileOrderByInput>
    implements $AdminProfileOrderByInputCopyWith<$Res> {
  _$AdminProfileOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminProfileOrderByInputImplCopyWith<$Res>
    implements $AdminProfileOrderByInputCopyWith<$Res> {
  factory _$$AdminProfileOrderByInputImplCopyWith(
          _$AdminProfileOrderByInputImpl value,
          $Res Function(_$AdminProfileOrderByInputImpl) then) =
      __$$AdminProfileOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AdminProfileOrderByInputImplCopyWithImpl<$Res>
    extends _$AdminProfileOrderByInputCopyWithImpl<$Res,
        _$AdminProfileOrderByInputImpl>
    implements _$$AdminProfileOrderByInputImplCopyWith<$Res> {
  __$$AdminProfileOrderByInputImplCopyWithImpl(
      _$AdminProfileOrderByInputImpl _value,
      $Res Function(_$AdminProfileOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AdminProfileOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$AdminProfileOrderByInputImpl implements _AdminProfileOrderByInput {
  const _$AdminProfileOrderByInputImpl(
      {this.id, this.notes, this.userId, this.createdAt, this.updatedAt});

  factory _$AdminProfileOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProfileOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? notes;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AdminProfileOrderByInput(id: $id, notes: $notes, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProfileOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, notes, userId, createdAt, updatedAt);

  /// Create a copy of AdminProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProfileOrderByInputImplCopyWith<_$AdminProfileOrderByInputImpl>
      get copyWith => __$$AdminProfileOrderByInputImplCopyWithImpl<
          _$AdminProfileOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProfileOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AdminProfileOrderByInput implements AdminProfileOrderByInput {
  const factory _AdminProfileOrderByInput(
      {final SortOrder? id,
      final SortOrder? notes,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$AdminProfileOrderByInputImpl;

  factory _AdminProfileOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AdminProfileOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get notes;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AdminProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProfileOrderByInputImplCopyWith<_$AdminProfileOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
