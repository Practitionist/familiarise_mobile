// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      String token,
      String userId,
      DateTime expiresAt,
      String? ipAddress,
      String? userAgent,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
    Object? userId = null,
    Object? expiresAt = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? user = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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

  /// Create a copy of Session
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
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String token,
      String userId,
      DateTime expiresAt,
      String? ipAddress,
      String? userAgent,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
    Object? userId = null,
    Object? expiresAt = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? user = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {required this.id,
      required this.token,
      required this.userId,
      required this.expiresAt,
      this.ipAddress,
      this.userAgent,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.createdAt,
      required this.updatedAt});

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String id;
  @override
  final String token;
  @override
  final String userId;
  @override
  final DateTime expiresAt;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Session(id: $id, token: $token, userId: $userId, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, token, userId, expiresAt,
      ipAddress, userAgent, user, createdAt, updatedAt);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String token,
      required final String userId,
      required final DateTime expiresAt,
      final String? ipAddress,
      final String? userAgent,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get token;
  @override
  String get userId;
  @override
  DateTime get expiresAt;
  @override
  String? get ipAddress;
  @override
  String? get userAgent;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSessionInput _$CreateSessionInputFromJson(Map<String, dynamic> json) {
  return _CreateSessionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSessionInput {
  String get token => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;

  /// Serializes this CreateSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSessionInputCopyWith<CreateSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSessionInputCopyWith<$Res> {
  factory $CreateSessionInputCopyWith(
          CreateSessionInput value, $Res Function(CreateSessionInput) then) =
      _$CreateSessionInputCopyWithImpl<$Res, CreateSessionInput>;
  @useResult
  $Res call(
      {String token,
      String userId,
      DateTime expiresAt,
      String? ipAddress,
      String? userAgent});
}

/// @nodoc
class _$CreateSessionInputCopyWithImpl<$Res, $Val extends CreateSessionInput>
    implements $CreateSessionInputCopyWith<$Res> {
  _$CreateSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
    Object? expiresAt = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSessionInputImplCopyWith<$Res>
    implements $CreateSessionInputCopyWith<$Res> {
  factory _$$CreateSessionInputImplCopyWith(_$CreateSessionInputImpl value,
          $Res Function(_$CreateSessionInputImpl) then) =
      __$$CreateSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String userId,
      DateTime expiresAt,
      String? ipAddress,
      String? userAgent});
}

/// @nodoc
class __$$CreateSessionInputImplCopyWithImpl<$Res>
    extends _$CreateSessionInputCopyWithImpl<$Res, _$CreateSessionInputImpl>
    implements _$$CreateSessionInputImplCopyWith<$Res> {
  __$$CreateSessionInputImplCopyWithImpl(_$CreateSessionInputImpl _value,
      $Res Function(_$CreateSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
    Object? expiresAt = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_$CreateSessionInputImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSessionInputImpl implements _CreateSessionInput {
  const _$CreateSessionInputImpl(
      {required this.token,
      required this.userId,
      required this.expiresAt,
      this.ipAddress,
      this.userAgent});

  factory _$CreateSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSessionInputImplFromJson(json);

  @override
  final String token;
  @override
  final String userId;
  @override
  final DateTime expiresAt;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;

  @override
  String toString() {
    return 'CreateSessionInput(token: $token, userId: $userId, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSessionInputImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userId, expiresAt, ipAddress, userAgent);

  /// Create a copy of CreateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSessionInputImplCopyWith<_$CreateSessionInputImpl> get copyWith =>
      __$$CreateSessionInputImplCopyWithImpl<_$CreateSessionInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSessionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSessionInput implements CreateSessionInput {
  const factory _CreateSessionInput(
      {required final String token,
      required final String userId,
      required final DateTime expiresAt,
      final String? ipAddress,
      final String? userAgent}) = _$CreateSessionInputImpl;

  factory _CreateSessionInput.fromJson(Map<String, dynamic> json) =
      _$CreateSessionInputImpl.fromJson;

  @override
  String get token;
  @override
  String get userId;
  @override
  DateTime get expiresAt;
  @override
  String? get ipAddress;
  @override
  String? get userAgent;

  /// Create a copy of CreateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSessionInputImplCopyWith<_$CreateSessionInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSessionInput _$UpdateSessionInputFromJson(Map<String, dynamic> json) {
  return _UpdateSessionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSessionInput {
  String? get token => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;

  /// Serializes this UpdateSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSessionInputCopyWith<UpdateSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSessionInputCopyWith<$Res> {
  factory $UpdateSessionInputCopyWith(
          UpdateSessionInput value, $Res Function(UpdateSessionInput) then) =
      _$UpdateSessionInputCopyWithImpl<$Res, UpdateSessionInput>;
  @useResult
  $Res call(
      {String? token,
      String? userId,
      DateTime? expiresAt,
      String? ipAddress,
      String? userAgent});
}

/// @nodoc
class _$UpdateSessionInputCopyWithImpl<$Res, $Val extends UpdateSessionInput>
    implements $UpdateSessionInputCopyWith<$Res> {
  _$UpdateSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSessionInputImplCopyWith<$Res>
    implements $UpdateSessionInputCopyWith<$Res> {
  factory _$$UpdateSessionInputImplCopyWith(_$UpdateSessionInputImpl value,
          $Res Function(_$UpdateSessionInputImpl) then) =
      __$$UpdateSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      String? userId,
      DateTime? expiresAt,
      String? ipAddress,
      String? userAgent});
}

/// @nodoc
class __$$UpdateSessionInputImplCopyWithImpl<$Res>
    extends _$UpdateSessionInputCopyWithImpl<$Res, _$UpdateSessionInputImpl>
    implements _$$UpdateSessionInputImplCopyWith<$Res> {
  __$$UpdateSessionInputImplCopyWithImpl(_$UpdateSessionInputImpl _value,
      $Res Function(_$UpdateSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_$UpdateSessionInputImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSessionInputImpl implements _UpdateSessionInput {
  const _$UpdateSessionInputImpl(
      {this.token,
      this.userId,
      this.expiresAt,
      this.ipAddress,
      this.userAgent});

  factory _$UpdateSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSessionInputImplFromJson(json);

  @override
  final String? token;
  @override
  final String? userId;
  @override
  final DateTime? expiresAt;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;

  @override
  String toString() {
    return 'UpdateSessionInput(token: $token, userId: $userId, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSessionInputImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userId, expiresAt, ipAddress, userAgent);

  /// Create a copy of UpdateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSessionInputImplCopyWith<_$UpdateSessionInputImpl> get copyWith =>
      __$$UpdateSessionInputImplCopyWithImpl<_$UpdateSessionInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSessionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSessionInput implements UpdateSessionInput {
  const factory _UpdateSessionInput(
      {final String? token,
      final String? userId,
      final DateTime? expiresAt,
      final String? ipAddress,
      final String? userAgent}) = _$UpdateSessionInputImpl;

  factory _UpdateSessionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSessionInputImpl.fromJson;

  @override
  String? get token;
  @override
  String? get userId;
  @override
  DateTime? get expiresAt;
  @override
  String? get ipAddress;
  @override
  String? get userAgent;

  /// Create a copy of UpdateSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSessionInputImplCopyWith<_$UpdateSessionInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionWhereUniqueInput _$SessionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SessionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SessionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this SessionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionWhereUniqueInputCopyWith<SessionWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionWhereUniqueInputCopyWith<$Res> {
  factory $SessionWhereUniqueInputCopyWith(SessionWhereUniqueInput value,
          $Res Function(SessionWhereUniqueInput) then) =
      _$SessionWhereUniqueInputCopyWithImpl<$Res, SessionWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? token});
}

/// @nodoc
class _$SessionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SessionWhereUniqueInput>
    implements $SessionWhereUniqueInputCopyWith<$Res> {
  _$SessionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionWhereUniqueInputImplCopyWith<$Res>
    implements $SessionWhereUniqueInputCopyWith<$Res> {
  factory _$$SessionWhereUniqueInputImplCopyWith(
          _$SessionWhereUniqueInputImpl value,
          $Res Function(_$SessionWhereUniqueInputImpl) then) =
      __$$SessionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? token});
}

/// @nodoc
class __$$SessionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SessionWhereUniqueInputCopyWithImpl<$Res,
        _$SessionWhereUniqueInputImpl>
    implements _$$SessionWhereUniqueInputImplCopyWith<$Res> {
  __$$SessionWhereUniqueInputImplCopyWithImpl(
      _$SessionWhereUniqueInputImpl _value,
      $Res Function(_$SessionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$SessionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionWhereUniqueInputImpl implements _SessionWhereUniqueInput {
  const _$SessionWhereUniqueInputImpl({this.id, this.token});

  factory _$SessionWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? token;

  @override
  String toString() {
    return 'SessionWhereUniqueInput(id: $id, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, token);

  /// Create a copy of SessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWhereUniqueInputImplCopyWith<_$SessionWhereUniqueInputImpl>
      get copyWith => __$$SessionWhereUniqueInputImplCopyWithImpl<
          _$SessionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SessionWhereUniqueInput implements SessionWhereUniqueInput {
  const factory _SessionWhereUniqueInput(
      {final String? id, final String? token}) = _$SessionWhereUniqueInputImpl;

  factory _SessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$SessionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get token;

  /// Create a copy of SessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionWhereUniqueInputImplCopyWith<_$SessionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionWhereInput _$SessionWhereInputFromJson(Map<String, dynamic> json) {
  return _SessionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SessionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get token => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  StringFilter? get ipAddress => throw _privateConstructorUsedError;
  StringFilter? get userAgent => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SessionWhereInput>? get AND => throw _privateConstructorUsedError;
  List<SessionWhereInput>? get OR => throw _privateConstructorUsedError;
  SessionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SessionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionWhereInputCopyWith<SessionWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionWhereInputCopyWith<$Res> {
  factory $SessionWhereInputCopyWith(
          SessionWhereInput value, $Res Function(SessionWhereInput) then) =
      _$SessionWhereInputCopyWithImpl<$Res, SessionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? token,
      StringFilter? userId,
      DateTimeFilter? expiresAt,
      StringFilter? ipAddress,
      StringFilter? userAgent,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SessionWhereInput>? AND,
      List<SessionWhereInput>? OR,
      SessionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get token;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $StringFilterCopyWith<$Res>? get ipAddress;
  $StringFilterCopyWith<$Res>? get userAgent;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SessionWhereInputCopyWithImpl<$Res, $Val extends SessionWhereInput>
    implements $SessionWhereInputCopyWith<$Res> {
  _$SessionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? user = freezed,
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
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
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
              as List<SessionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SessionWhereInput
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

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }

  /// Create a copy of SessionWhereInput
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

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get expiresAt {
    if (_value.expiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.expiresAt!, (value) {
      return _then(_value.copyWith(expiresAt: value) as $Val);
    });
  }

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get ipAddress {
    if (_value.ipAddress == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.ipAddress!, (value) {
      return _then(_value.copyWith(ipAddress: value) as $Val);
    });
  }

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userAgent {
    if (_value.userAgent == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userAgent!, (value) {
      return _then(_value.copyWith(userAgent: value) as $Val);
    });
  }

  /// Create a copy of SessionWhereInput
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

  /// Create a copy of SessionWhereInput
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

  /// Create a copy of SessionWhereInput
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

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionWhereInputImplCopyWith<$Res>
    implements $SessionWhereInputCopyWith<$Res> {
  factory _$$SessionWhereInputImplCopyWith(_$SessionWhereInputImpl value,
          $Res Function(_$SessionWhereInputImpl) then) =
      __$$SessionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? token,
      StringFilter? userId,
      DateTimeFilter? expiresAt,
      StringFilter? ipAddress,
      StringFilter? userAgent,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SessionWhereInput>? AND,
      List<SessionWhereInput>? OR,
      SessionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get token;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $StringFilterCopyWith<$Res>? get ipAddress;
  @override
  $StringFilterCopyWith<$Res>? get userAgent;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SessionWhereInputImplCopyWithImpl<$Res>
    extends _$SessionWhereInputCopyWithImpl<$Res, _$SessionWhereInputImpl>
    implements _$$SessionWhereInputImplCopyWith<$Res> {
  __$$SessionWhereInputImplCopyWithImpl(_$SessionWhereInputImpl _value,
      $Res Function(_$SessionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SessionWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
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
              as List<SessionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SessionWhereInputImpl implements _SessionWhereInput {
  const _$SessionWhereInputImpl(
      {this.id,
      this.token,
      this.userId,
      this.expiresAt,
      this.ipAddress,
      this.userAgent,
      this.user,
      this.createdAt,
      this.updatedAt,
      final List<SessionWhereInput>? AND,
      final List<SessionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SessionWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? token;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final StringFilter? ipAddress;
  @override
  final StringFilter? userAgent;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SessionWhereInput>? _AND;
  @override
  List<SessionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SessionWhereInput>? _OR;
  @override
  List<SessionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SessionWhereInput? NOT;

  @override
  String toString() {
    return 'SessionWhereInput(id: $id, token: $token, userId: $userId, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.user, user) || other.user == user) &&
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
      token,
      userId,
      expiresAt,
      ipAddress,
      userAgent,
      user,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWhereInputImplCopyWith<_$SessionWhereInputImpl> get copyWith =>
      __$$SessionWhereInputImplCopyWithImpl<_$SessionWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SessionWhereInput implements SessionWhereInput {
  const factory _SessionWhereInput(
      {final StringFilter? id,
      final StringFilter? token,
      final StringFilter? userId,
      final DateTimeFilter? expiresAt,
      final StringFilter? ipAddress,
      final StringFilter? userAgent,
      final UserRelationFilter? user,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<SessionWhereInput>? AND,
      final List<SessionWhereInput>? OR,
      final SessionWhereInput? NOT}) = _$SessionWhereInputImpl;

  factory _SessionWhereInput.fromJson(Map<String, dynamic> json) =
      _$SessionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get token;
  @override
  StringFilter? get userId;
  @override
  DateTimeFilter? get expiresAt;
  @override
  StringFilter? get ipAddress;
  @override
  StringFilter? get userAgent;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SessionWhereInput>? get AND;
  @override
  List<SessionWhereInput>? get OR;
  @override
  SessionWhereInput? get NOT;

  /// Create a copy of SessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionWhereInputImplCopyWith<_$SessionWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionListRelationFilter _$SessionListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SessionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SessionListRelationFilter {
  /// At least one related record matches
  SessionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SessionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SessionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SessionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionListRelationFilterCopyWith<SessionListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListRelationFilterCopyWith<$Res> {
  factory $SessionListRelationFilterCopyWith(SessionListRelationFilter value,
          $Res Function(SessionListRelationFilter) then) =
      _$SessionListRelationFilterCopyWithImpl<$Res, SessionListRelationFilter>;
  @useResult
  $Res call(
      {SessionWhereInput? some,
      SessionWhereInput? every,
      SessionWhereInput? none});

  $SessionWhereInputCopyWith<$Res>? get some;
  $SessionWhereInputCopyWith<$Res>? get every;
  $SessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SessionListRelationFilterCopyWithImpl<$Res,
        $Val extends SessionListRelationFilter>
    implements $SessionListRelationFilterCopyWith<$Res> {
  _$SessionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionListRelationFilter
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
              as SessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionListRelationFilterImplCopyWith<$Res>
    implements $SessionListRelationFilterCopyWith<$Res> {
  factory _$$SessionListRelationFilterImplCopyWith(
          _$SessionListRelationFilterImpl value,
          $Res Function(_$SessionListRelationFilterImpl) then) =
      __$$SessionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SessionWhereInput? some,
      SessionWhereInput? every,
      SessionWhereInput? none});

  @override
  $SessionWhereInputCopyWith<$Res>? get some;
  @override
  $SessionWhereInputCopyWith<$Res>? get every;
  @override
  $SessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SessionListRelationFilterImplCopyWithImpl<$Res>
    extends _$SessionListRelationFilterCopyWithImpl<$Res,
        _$SessionListRelationFilterImpl>
    implements _$$SessionListRelationFilterImplCopyWith<$Res> {
  __$$SessionListRelationFilterImplCopyWithImpl(
      _$SessionListRelationFilterImpl _value,
      $Res Function(_$SessionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SessionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionListRelationFilterImpl implements _SessionListRelationFilter {
  const _$SessionListRelationFilterImpl({this.some, this.every, this.none});

  factory _$SessionListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SessionWhereInput? some;

  /// All related records match
  @override
  final SessionWhereInput? every;

  /// No related records match
  @override
  final SessionWhereInput? none;

  @override
  String toString() {
    return 'SessionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionListRelationFilterImplCopyWith<_$SessionListRelationFilterImpl>
      get copyWith => __$$SessionListRelationFilterImplCopyWithImpl<
          _$SessionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SessionListRelationFilter implements SessionListRelationFilter {
  const factory _SessionListRelationFilter(
      {final SessionWhereInput? some,
      final SessionWhereInput? every,
      final SessionWhereInput? none}) = _$SessionListRelationFilterImpl;

  factory _SessionListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SessionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SessionWhereInput? get some;

  /// All related records match
  @override
  SessionWhereInput? get every;

  /// No related records match
  @override
  SessionWhereInput? get none;

  /// Create a copy of SessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionListRelationFilterImplCopyWith<_$SessionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionRelationFilter _$SessionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SessionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SessionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SessionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SessionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SessionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionRelationFilterCopyWith<SessionRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRelationFilterCopyWith<$Res> {
  factory $SessionRelationFilterCopyWith(SessionRelationFilter value,
          $Res Function(SessionRelationFilter) then) =
      _$SessionRelationFilterCopyWithImpl<$Res, SessionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SessionWhereInput? is_, SessionWhereInput? isNot});

  $SessionWhereInputCopyWith<$Res>? get is_;
  $SessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SessionRelationFilterCopyWithImpl<$Res,
        $Val extends SessionRelationFilter>
    implements $SessionRelationFilterCopyWith<$Res> {
  _$SessionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionRelationFilter
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
              as SessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SessionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionRelationFilterImplCopyWith<$Res>
    implements $SessionRelationFilterCopyWith<$Res> {
  factory _$$SessionRelationFilterImplCopyWith(
          _$SessionRelationFilterImpl value,
          $Res Function(_$SessionRelationFilterImpl) then) =
      __$$SessionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SessionWhereInput? is_, SessionWhereInput? isNot});

  @override
  $SessionWhereInputCopyWith<$Res>? get is_;
  @override
  $SessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SessionRelationFilterImplCopyWithImpl<$Res>
    extends _$SessionRelationFilterCopyWithImpl<$Res,
        _$SessionRelationFilterImpl>
    implements _$$SessionRelationFilterImplCopyWith<$Res> {
  __$$SessionRelationFilterImplCopyWithImpl(_$SessionRelationFilterImpl _value,
      $Res Function(_$SessionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SessionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRelationFilterImpl implements _SessionRelationFilter {
  const _$SessionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SessionRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SessionWhereInput? is_;

  /// Related record does not match
  @override
  final SessionWhereInput? isNot;

  @override
  String toString() {
    return 'SessionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRelationFilterImplCopyWith<_$SessionRelationFilterImpl>
      get copyWith => __$$SessionRelationFilterImplCopyWithImpl<
          _$SessionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SessionRelationFilter implements SessionRelationFilter {
  const factory _SessionRelationFilter(
      {@JsonKey(name: 'is') final SessionWhereInput? is_,
      final SessionWhereInput? isNot}) = _$SessionRelationFilterImpl;

  factory _SessionRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SessionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SessionWhereInput? get is_;

  /// Related record does not match
  @override
  SessionWhereInput? get isNot;

  /// Create a copy of SessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionRelationFilterImplCopyWith<_$SessionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionOrderByInput _$SessionOrderByInputFromJson(Map<String, dynamic> json) {
  return _SessionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SessionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get token => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get ipAddress => throw _privateConstructorUsedError;
  SortOrder? get userAgent => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SessionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionOrderByInputCopyWith<SessionOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOrderByInputCopyWith<$Res> {
  factory $SessionOrderByInputCopyWith(
          SessionOrderByInput value, $Res Function(SessionOrderByInput) then) =
      _$SessionOrderByInputCopyWithImpl<$Res, SessionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? token,
      SortOrder? userId,
      SortOrder? expiresAt,
      SortOrder? ipAddress,
      SortOrder? userAgent,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SessionOrderByInputCopyWithImpl<$Res, $Val extends SessionOrderByInput>
    implements $SessionOrderByInputCopyWith<$Res> {
  _$SessionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SessionOrderByInputImplCopyWith<$Res>
    implements $SessionOrderByInputCopyWith<$Res> {
  factory _$$SessionOrderByInputImplCopyWith(_$SessionOrderByInputImpl value,
          $Res Function(_$SessionOrderByInputImpl) then) =
      __$$SessionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? token,
      SortOrder? userId,
      SortOrder? expiresAt,
      SortOrder? ipAddress,
      SortOrder? userAgent,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SessionOrderByInputImplCopyWithImpl<$Res>
    extends _$SessionOrderByInputCopyWithImpl<$Res, _$SessionOrderByInputImpl>
    implements _$$SessionOrderByInputImplCopyWith<$Res> {
  __$$SessionOrderByInputImplCopyWithImpl(_$SessionOrderByInputImpl _value,
      $Res Function(_$SessionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? expiresAt = freezed,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SessionOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
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
class _$SessionOrderByInputImpl implements _SessionOrderByInput {
  const _$SessionOrderByInputImpl(
      {this.id,
      this.token,
      this.userId,
      this.expiresAt,
      this.ipAddress,
      this.userAgent,
      this.createdAt,
      this.updatedAt});

  factory _$SessionOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? token;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? ipAddress;
  @override
  final SortOrder? userAgent;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SessionOrderByInput(id: $id, token: $token, userId: $userId, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, token, userId, expiresAt,
      ipAddress, userAgent, createdAt, updatedAt);

  /// Create a copy of SessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionOrderByInputImplCopyWith<_$SessionOrderByInputImpl> get copyWith =>
      __$$SessionOrderByInputImplCopyWithImpl<_$SessionOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SessionOrderByInput implements SessionOrderByInput {
  const factory _SessionOrderByInput(
      {final SortOrder? id,
      final SortOrder? token,
      final SortOrder? userId,
      final SortOrder? expiresAt,
      final SortOrder? ipAddress,
      final SortOrder? userAgent,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SessionOrderByInputImpl;

  factory _SessionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SessionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get token;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get ipAddress;
  @override
  SortOrder? get userAgent;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionOrderByInputImplCopyWith<_$SessionOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
