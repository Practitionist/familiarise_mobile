// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffProfile _$StaffProfileFromJson(Map<String, dynamic> json) {
  return _StaffProfile.fromJson(json);
}

/// @nodoc
mixin _$StaffProfile {
  String get id => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StaffProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileCopyWith<StaffProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileCopyWith<$Res> {
  factory $StaffProfileCopyWith(
          StaffProfile value, $Res Function(StaffProfile) then) =
      _$StaffProfileCopyWithImpl<$Res, StaffProfile>;
  @useResult
  $Res call(
      {String id,
      String? department,
      String? position,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$StaffProfileCopyWithImpl<$Res, $Val extends StaffProfile>
    implements $StaffProfileCopyWith<$Res> {
  _$StaffProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? department = freezed,
    Object? position = freezed,
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
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of StaffProfile
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
abstract class _$$StaffProfileImplCopyWith<$Res>
    implements $StaffProfileCopyWith<$Res> {
  factory _$$StaffProfileImplCopyWith(
          _$StaffProfileImpl value, $Res Function(_$StaffProfileImpl) then) =
      __$$StaffProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? department,
      String? position,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StaffProfileImplCopyWithImpl<$Res>
    extends _$StaffProfileCopyWithImpl<$Res, _$StaffProfileImpl>
    implements _$$StaffProfileImplCopyWith<$Res> {
  __$$StaffProfileImplCopyWithImpl(
      _$StaffProfileImpl _value, $Res Function(_$StaffProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? department = freezed,
    Object? position = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$StaffProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
class _$StaffProfileImpl implements _StaffProfile {
  const _$StaffProfileImpl(
      {required this.id,
      this.department,
      this.position,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$StaffProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String? department;
  @override
  final String? position;
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
    return 'StaffProfile(id: $id, department: $department, position: $position, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, department, position, user,
      userId, createdAt, updatedAt);

  /// Create a copy of StaffProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileImplCopyWith<_$StaffProfileImpl> get copyWith =>
      __$$StaffProfileImplCopyWithImpl<_$StaffProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileImplToJson(
      this,
    );
  }
}

abstract class _StaffProfile implements StaffProfile {
  const factory _StaffProfile(
      {required final String id,
      final String? department,
      final String? position,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$StaffProfileImpl;

  factory _StaffProfile.fromJson(Map<String, dynamic> json) =
      _$StaffProfileImpl.fromJson;

  @override
  String get id;
  @override
  String? get department;
  @override
  String? get position;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of StaffProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileImplCopyWith<_$StaffProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateStaffProfileInput _$CreateStaffProfileInputFromJson(
    Map<String, dynamic> json) {
  return _CreateStaffProfileInput.fromJson(json);
}

/// @nodoc
mixin _$CreateStaffProfileInput {
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateStaffProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStaffProfileInputCopyWith<CreateStaffProfileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStaffProfileInputCopyWith<$Res> {
  factory $CreateStaffProfileInputCopyWith(CreateStaffProfileInput value,
          $Res Function(CreateStaffProfileInput) then) =
      _$CreateStaffProfileInputCopyWithImpl<$Res, CreateStaffProfileInput>;
  @useResult
  $Res call({String? department, String? position, String userId});
}

/// @nodoc
class _$CreateStaffProfileInputCopyWithImpl<$Res,
        $Val extends CreateStaffProfileInput>
    implements $CreateStaffProfileInputCopyWith<$Res> {
  _$CreateStaffProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStaffProfileInputImplCopyWith<$Res>
    implements $CreateStaffProfileInputCopyWith<$Res> {
  factory _$$CreateStaffProfileInputImplCopyWith(
          _$CreateStaffProfileInputImpl value,
          $Res Function(_$CreateStaffProfileInputImpl) then) =
      __$$CreateStaffProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? department, String? position, String userId});
}

/// @nodoc
class __$$CreateStaffProfileInputImplCopyWithImpl<$Res>
    extends _$CreateStaffProfileInputCopyWithImpl<$Res,
        _$CreateStaffProfileInputImpl>
    implements _$$CreateStaffProfileInputImplCopyWith<$Res> {
  __$$CreateStaffProfileInputImplCopyWithImpl(
      _$CreateStaffProfileInputImpl _value,
      $Res Function(_$CreateStaffProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateStaffProfileInputImpl(
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
class _$CreateStaffProfileInputImpl implements _CreateStaffProfileInput {
  const _$CreateStaffProfileInputImpl(
      {this.department, this.position, required this.userId});

  factory _$CreateStaffProfileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStaffProfileInputImplFromJson(json);

  @override
  final String? department;
  @override
  final String? position;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateStaffProfileInput(department: $department, position: $position, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStaffProfileInputImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, department, position, userId);

  /// Create a copy of CreateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStaffProfileInputImplCopyWith<_$CreateStaffProfileInputImpl>
      get copyWith => __$$CreateStaffProfileInputImplCopyWithImpl<
          _$CreateStaffProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStaffProfileInputImplToJson(
      this,
    );
  }
}

abstract class _CreateStaffProfileInput implements CreateStaffProfileInput {
  const factory _CreateStaffProfileInput(
      {final String? department,
      final String? position,
      required final String userId}) = _$CreateStaffProfileInputImpl;

  factory _CreateStaffProfileInput.fromJson(Map<String, dynamic> json) =
      _$CreateStaffProfileInputImpl.fromJson;

  @override
  String? get department;
  @override
  String? get position;
  @override
  String get userId;

  /// Create a copy of CreateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStaffProfileInputImplCopyWith<_$CreateStaffProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateStaffProfileInput _$UpdateStaffProfileInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateStaffProfileInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateStaffProfileInput {
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateStaffProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStaffProfileInputCopyWith<UpdateStaffProfileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStaffProfileInputCopyWith<$Res> {
  factory $UpdateStaffProfileInputCopyWith(UpdateStaffProfileInput value,
          $Res Function(UpdateStaffProfileInput) then) =
      _$UpdateStaffProfileInputCopyWithImpl<$Res, UpdateStaffProfileInput>;
  @useResult
  $Res call({String? department, String? position, String? userId});
}

/// @nodoc
class _$UpdateStaffProfileInputCopyWithImpl<$Res,
        $Val extends UpdateStaffProfileInput>
    implements $UpdateStaffProfileInputCopyWith<$Res> {
  _$UpdateStaffProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStaffProfileInputImplCopyWith<$Res>
    implements $UpdateStaffProfileInputCopyWith<$Res> {
  factory _$$UpdateStaffProfileInputImplCopyWith(
          _$UpdateStaffProfileInputImpl value,
          $Res Function(_$UpdateStaffProfileInputImpl) then) =
      __$$UpdateStaffProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? department, String? position, String? userId});
}

/// @nodoc
class __$$UpdateStaffProfileInputImplCopyWithImpl<$Res>
    extends _$UpdateStaffProfileInputCopyWithImpl<$Res,
        _$UpdateStaffProfileInputImpl>
    implements _$$UpdateStaffProfileInputImplCopyWith<$Res> {
  __$$UpdateStaffProfileInputImplCopyWithImpl(
      _$UpdateStaffProfileInputImpl _value,
      $Res Function(_$UpdateStaffProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateStaffProfileInputImpl(
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
class _$UpdateStaffProfileInputImpl implements _UpdateStaffProfileInput {
  const _$UpdateStaffProfileInputImpl(
      {this.department, this.position, this.userId});

  factory _$UpdateStaffProfileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStaffProfileInputImplFromJson(json);

  @override
  final String? department;
  @override
  final String? position;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateStaffProfileInput(department: $department, position: $position, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStaffProfileInputImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, department, position, userId);

  /// Create a copy of UpdateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStaffProfileInputImplCopyWith<_$UpdateStaffProfileInputImpl>
      get copyWith => __$$UpdateStaffProfileInputImplCopyWithImpl<
          _$UpdateStaffProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStaffProfileInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateStaffProfileInput implements UpdateStaffProfileInput {
  const factory _UpdateStaffProfileInput(
      {final String? department,
      final String? position,
      final String? userId}) = _$UpdateStaffProfileInputImpl;

  factory _UpdateStaffProfileInput.fromJson(Map<String, dynamic> json) =
      _$UpdateStaffProfileInputImpl.fromJson;

  @override
  String? get department;
  @override
  String? get position;
  @override
  String? get userId;

  /// Create a copy of UpdateStaffProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStaffProfileInputImplCopyWith<_$UpdateStaffProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StaffProfileWhereUniqueInput _$StaffProfileWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _StaffProfileWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$StaffProfileWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this StaffProfileWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileWhereUniqueInputCopyWith<StaffProfileWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileWhereUniqueInputCopyWith<$Res> {
  factory $StaffProfileWhereUniqueInputCopyWith(
          StaffProfileWhereUniqueInput value,
          $Res Function(StaffProfileWhereUniqueInput) then) =
      _$StaffProfileWhereUniqueInputCopyWithImpl<$Res,
          StaffProfileWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$StaffProfileWhereUniqueInputCopyWithImpl<$Res,
        $Val extends StaffProfileWhereUniqueInput>
    implements $StaffProfileWhereUniqueInputCopyWith<$Res> {
  _$StaffProfileWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfileWhereUniqueInput
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
abstract class _$$StaffProfileWhereUniqueInputImplCopyWith<$Res>
    implements $StaffProfileWhereUniqueInputCopyWith<$Res> {
  factory _$$StaffProfileWhereUniqueInputImplCopyWith(
          _$StaffProfileWhereUniqueInputImpl value,
          $Res Function(_$StaffProfileWhereUniqueInputImpl) then) =
      __$$StaffProfileWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class __$$StaffProfileWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$StaffProfileWhereUniqueInputCopyWithImpl<$Res,
        _$StaffProfileWhereUniqueInputImpl>
    implements _$$StaffProfileWhereUniqueInputImplCopyWith<$Res> {
  __$$StaffProfileWhereUniqueInputImplCopyWithImpl(
      _$StaffProfileWhereUniqueInputImpl _value,
      $Res Function(_$StaffProfileWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$StaffProfileWhereUniqueInputImpl(
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
class _$StaffProfileWhereUniqueInputImpl
    implements _StaffProfileWhereUniqueInput {
  const _$StaffProfileWhereUniqueInputImpl({this.id, this.userId});

  factory _$StaffProfileWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StaffProfileWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'StaffProfileWhereUniqueInput(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of StaffProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileWhereUniqueInputImplCopyWith<
          _$StaffProfileWhereUniqueInputImpl>
      get copyWith => __$$StaffProfileWhereUniqueInputImplCopyWithImpl<
          _$StaffProfileWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _StaffProfileWhereUniqueInput
    implements StaffProfileWhereUniqueInput {
  const factory _StaffProfileWhereUniqueInput(
      {final String? id,
      final String? userId}) = _$StaffProfileWhereUniqueInputImpl;

  factory _StaffProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$StaffProfileWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;

  /// Create a copy of StaffProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileWhereUniqueInputImplCopyWith<
          _$StaffProfileWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StaffProfileWhereInput _$StaffProfileWhereInputFromJson(
    Map<String, dynamic> json) {
  return _StaffProfileWhereInput.fromJson(json);
}

/// @nodoc
mixin _$StaffProfileWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get department => throw _privateConstructorUsedError;
  StringFilter? get position => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<StaffProfileWhereInput>? get AND => throw _privateConstructorUsedError;
  List<StaffProfileWhereInput>? get OR => throw _privateConstructorUsedError;
  StaffProfileWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this StaffProfileWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileWhereInputCopyWith<StaffProfileWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileWhereInputCopyWith<$Res> {
  factory $StaffProfileWhereInputCopyWith(StaffProfileWhereInput value,
          $Res Function(StaffProfileWhereInput) then) =
      _$StaffProfileWhereInputCopyWithImpl<$Res, StaffProfileWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? department,
      StringFilter? position,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<StaffProfileWhereInput>? AND,
      List<StaffProfileWhereInput>? OR,
      StaffProfileWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get department;
  $StringFilterCopyWith<$Res>? get position;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $StaffProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$StaffProfileWhereInputCopyWithImpl<$Res,
        $Val extends StaffProfileWhereInput>
    implements $StaffProfileWhereInputCopyWith<$Res> {
  _$StaffProfileWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? position = freezed,
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
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
              as List<StaffProfileWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<StaffProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of StaffProfileWhereInput
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

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  /// Create a copy of StaffProfileWhereInput
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

  /// Create a copy of StaffProfileWhereInput
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

  /// Create a copy of StaffProfileWhereInput
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

  /// Create a copy of StaffProfileWhereInput
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

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaffProfileWhereInputImplCopyWith<$Res>
    implements $StaffProfileWhereInputCopyWith<$Res> {
  factory _$$StaffProfileWhereInputImplCopyWith(
          _$StaffProfileWhereInputImpl value,
          $Res Function(_$StaffProfileWhereInputImpl) then) =
      __$$StaffProfileWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? department,
      StringFilter? position,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<StaffProfileWhereInput>? AND,
      List<StaffProfileWhereInput>? OR,
      StaffProfileWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get department;
  @override
  $StringFilterCopyWith<$Res>? get position;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $StaffProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$StaffProfileWhereInputImplCopyWithImpl<$Res>
    extends _$StaffProfileWhereInputCopyWithImpl<$Res,
        _$StaffProfileWhereInputImpl>
    implements _$$StaffProfileWhereInputImplCopyWith<$Res> {
  __$$StaffProfileWhereInputImplCopyWithImpl(
      _$StaffProfileWhereInputImpl _value,
      $Res Function(_$StaffProfileWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$StaffProfileWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
              as List<StaffProfileWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<StaffProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StaffProfileWhereInputImpl implements _StaffProfileWhereInput {
  const _$StaffProfileWhereInputImpl(
      {this.id,
      this.department,
      this.position,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<StaffProfileWhereInput>? AND,
      final List<StaffProfileWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$StaffProfileWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffProfileWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? department;
  @override
  final StringFilter? position;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<StaffProfileWhereInput>? _AND;
  @override
  List<StaffProfileWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StaffProfileWhereInput>? _OR;
  @override
  List<StaffProfileWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StaffProfileWhereInput? NOT;

  @override
  String toString() {
    return 'StaffProfileWhereInput(id: $id, department: $department, position: $position, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
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
      department,
      position,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileWhereInputImplCopyWith<_$StaffProfileWhereInputImpl>
      get copyWith => __$$StaffProfileWhereInputImplCopyWithImpl<
          _$StaffProfileWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileWhereInputImplToJson(
      this,
    );
  }
}

abstract class _StaffProfileWhereInput implements StaffProfileWhereInput {
  const factory _StaffProfileWhereInput(
      {final StringFilter? id,
      final StringFilter? department,
      final StringFilter? position,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<StaffProfileWhereInput>? AND,
      final List<StaffProfileWhereInput>? OR,
      final StaffProfileWhereInput? NOT}) = _$StaffProfileWhereInputImpl;

  factory _StaffProfileWhereInput.fromJson(Map<String, dynamic> json) =
      _$StaffProfileWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get department;
  @override
  StringFilter? get position;

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
  List<StaffProfileWhereInput>? get AND;
  @override
  List<StaffProfileWhereInput>? get OR;
  @override
  StaffProfileWhereInput? get NOT;

  /// Create a copy of StaffProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileWhereInputImplCopyWith<_$StaffProfileWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StaffProfileListRelationFilter _$StaffProfileListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _StaffProfileListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$StaffProfileListRelationFilter {
  /// At least one related record matches
  StaffProfileWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  StaffProfileWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  StaffProfileWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this StaffProfileListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileListRelationFilterCopyWith<StaffProfileListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileListRelationFilterCopyWith<$Res> {
  factory $StaffProfileListRelationFilterCopyWith(
          StaffProfileListRelationFilter value,
          $Res Function(StaffProfileListRelationFilter) then) =
      _$StaffProfileListRelationFilterCopyWithImpl<$Res,
          StaffProfileListRelationFilter>;
  @useResult
  $Res call(
      {StaffProfileWhereInput? some,
      StaffProfileWhereInput? every,
      StaffProfileWhereInput? none});

  $StaffProfileWhereInputCopyWith<$Res>? get some;
  $StaffProfileWhereInputCopyWith<$Res>? get every;
  $StaffProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$StaffProfileListRelationFilterCopyWithImpl<$Res,
        $Val extends StaffProfileListRelationFilter>
    implements $StaffProfileListRelationFilterCopyWith<$Res> {
  _$StaffProfileListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfileListRelationFilter
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
              as StaffProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaffProfileListRelationFilterImplCopyWith<$Res>
    implements $StaffProfileListRelationFilterCopyWith<$Res> {
  factory _$$StaffProfileListRelationFilterImplCopyWith(
          _$StaffProfileListRelationFilterImpl value,
          $Res Function(_$StaffProfileListRelationFilterImpl) then) =
      __$$StaffProfileListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StaffProfileWhereInput? some,
      StaffProfileWhereInput? every,
      StaffProfileWhereInput? none});

  @override
  $StaffProfileWhereInputCopyWith<$Res>? get some;
  @override
  $StaffProfileWhereInputCopyWith<$Res>? get every;
  @override
  $StaffProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$StaffProfileListRelationFilterImplCopyWithImpl<$Res>
    extends _$StaffProfileListRelationFilterCopyWithImpl<$Res,
        _$StaffProfileListRelationFilterImpl>
    implements _$$StaffProfileListRelationFilterImplCopyWith<$Res> {
  __$$StaffProfileListRelationFilterImplCopyWithImpl(
      _$StaffProfileListRelationFilterImpl _value,
      $Res Function(_$StaffProfileListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$StaffProfileListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffProfileListRelationFilterImpl
    implements _StaffProfileListRelationFilter {
  const _$StaffProfileListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$StaffProfileListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StaffProfileListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final StaffProfileWhereInput? some;

  /// All related records match
  @override
  final StaffProfileWhereInput? every;

  /// No related records match
  @override
  final StaffProfileWhereInput? none;

  @override
  String toString() {
    return 'StaffProfileListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileListRelationFilterImplCopyWith<
          _$StaffProfileListRelationFilterImpl>
      get copyWith => __$$StaffProfileListRelationFilterImplCopyWithImpl<
          _$StaffProfileListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _StaffProfileListRelationFilter
    implements StaffProfileListRelationFilter {
  const factory _StaffProfileListRelationFilter(
          {final StaffProfileWhereInput? some,
          final StaffProfileWhereInput? every,
          final StaffProfileWhereInput? none}) =
      _$StaffProfileListRelationFilterImpl;

  factory _StaffProfileListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$StaffProfileListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  StaffProfileWhereInput? get some;

  /// All related records match
  @override
  StaffProfileWhereInput? get every;

  /// No related records match
  @override
  StaffProfileWhereInput? get none;

  /// Create a copy of StaffProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileListRelationFilterImplCopyWith<
          _$StaffProfileListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StaffProfileRelationFilter _$StaffProfileRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _StaffProfileRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$StaffProfileRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  StaffProfileWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  StaffProfileWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this StaffProfileRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileRelationFilterCopyWith<StaffProfileRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileRelationFilterCopyWith<$Res> {
  factory $StaffProfileRelationFilterCopyWith(StaffProfileRelationFilter value,
          $Res Function(StaffProfileRelationFilter) then) =
      _$StaffProfileRelationFilterCopyWithImpl<$Res,
          StaffProfileRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') StaffProfileWhereInput? is_,
      StaffProfileWhereInput? isNot});

  $StaffProfileWhereInputCopyWith<$Res>? get is_;
  $StaffProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$StaffProfileRelationFilterCopyWithImpl<$Res,
        $Val extends StaffProfileRelationFilter>
    implements $StaffProfileRelationFilterCopyWith<$Res> {
  _$StaffProfileRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfileRelationFilter
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
              as StaffProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $StaffProfileWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaffProfileRelationFilterImplCopyWith<$Res>
    implements $StaffProfileRelationFilterCopyWith<$Res> {
  factory _$$StaffProfileRelationFilterImplCopyWith(
          _$StaffProfileRelationFilterImpl value,
          $Res Function(_$StaffProfileRelationFilterImpl) then) =
      __$$StaffProfileRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') StaffProfileWhereInput? is_,
      StaffProfileWhereInput? isNot});

  @override
  $StaffProfileWhereInputCopyWith<$Res>? get is_;
  @override
  $StaffProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$StaffProfileRelationFilterImplCopyWithImpl<$Res>
    extends _$StaffProfileRelationFilterCopyWithImpl<$Res,
        _$StaffProfileRelationFilterImpl>
    implements _$$StaffProfileRelationFilterImplCopyWith<$Res> {
  __$$StaffProfileRelationFilterImplCopyWithImpl(
      _$StaffProfileRelationFilterImpl _value,
      $Res Function(_$StaffProfileRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$StaffProfileRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as StaffProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffProfileRelationFilterImpl implements _StaffProfileRelationFilter {
  const _$StaffProfileRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$StaffProfileRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StaffProfileRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final StaffProfileWhereInput? is_;

  /// Related record does not match
  @override
  final StaffProfileWhereInput? isNot;

  @override
  String toString() {
    return 'StaffProfileRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileRelationFilterImplCopyWith<_$StaffProfileRelationFilterImpl>
      get copyWith => __$$StaffProfileRelationFilterImplCopyWithImpl<
          _$StaffProfileRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _StaffProfileRelationFilter
    implements StaffProfileRelationFilter {
  const factory _StaffProfileRelationFilter(
      {@JsonKey(name: 'is') final StaffProfileWhereInput? is_,
      final StaffProfileWhereInput? isNot}) = _$StaffProfileRelationFilterImpl;

  factory _StaffProfileRelationFilter.fromJson(Map<String, dynamic> json) =
      _$StaffProfileRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  StaffProfileWhereInput? get is_;

  /// Related record does not match
  @override
  StaffProfileWhereInput? get isNot;

  /// Create a copy of StaffProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileRelationFilterImplCopyWith<_$StaffProfileRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StaffProfileOrderByInput _$StaffProfileOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _StaffProfileOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$StaffProfileOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get department => throw _privateConstructorUsedError;
  SortOrder? get position => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StaffProfileOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffProfileOrderByInputCopyWith<StaffProfileOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffProfileOrderByInputCopyWith<$Res> {
  factory $StaffProfileOrderByInputCopyWith(StaffProfileOrderByInput value,
          $Res Function(StaffProfileOrderByInput) then) =
      _$StaffProfileOrderByInputCopyWithImpl<$Res, StaffProfileOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? department,
      SortOrder? position,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$StaffProfileOrderByInputCopyWithImpl<$Res,
        $Val extends StaffProfileOrderByInput>
    implements $StaffProfileOrderByInputCopyWith<$Res> {
  _$StaffProfileOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StaffProfileOrderByInputImplCopyWith<$Res>
    implements $StaffProfileOrderByInputCopyWith<$Res> {
  factory _$$StaffProfileOrderByInputImplCopyWith(
          _$StaffProfileOrderByInputImpl value,
          $Res Function(_$StaffProfileOrderByInputImpl) then) =
      __$$StaffProfileOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? department,
      SortOrder? position,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$StaffProfileOrderByInputImplCopyWithImpl<$Res>
    extends _$StaffProfileOrderByInputCopyWithImpl<$Res,
        _$StaffProfileOrderByInputImpl>
    implements _$$StaffProfileOrderByInputImplCopyWith<$Res> {
  __$$StaffProfileOrderByInputImplCopyWithImpl(
      _$StaffProfileOrderByInputImpl _value,
      $Res Function(_$StaffProfileOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StaffProfileOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
class _$StaffProfileOrderByInputImpl implements _StaffProfileOrderByInput {
  const _$StaffProfileOrderByInputImpl(
      {this.id,
      this.department,
      this.position,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$StaffProfileOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffProfileOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? department;
  @override
  final SortOrder? position;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'StaffProfileOrderByInput(id: $id, department: $department, position: $position, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffProfileOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, department, position, userId, createdAt, updatedAt);

  /// Create a copy of StaffProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffProfileOrderByInputImplCopyWith<_$StaffProfileOrderByInputImpl>
      get copyWith => __$$StaffProfileOrderByInputImplCopyWithImpl<
          _$StaffProfileOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffProfileOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _StaffProfileOrderByInput implements StaffProfileOrderByInput {
  const factory _StaffProfileOrderByInput(
      {final SortOrder? id,
      final SortOrder? department,
      final SortOrder? position,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$StaffProfileOrderByInputImpl;

  factory _StaffProfileOrderByInput.fromJson(Map<String, dynamic> json) =
      _$StaffProfileOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get department;
  @override
  SortOrder? get position;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of StaffProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffProfileOrderByInputImplCopyWith<_$StaffProfileOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
