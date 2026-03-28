// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  DateTime? get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String accountId,
      String providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? accountId = null,
    Object? providerId = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
    Object? user = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Account
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
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String accountId,
      String providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? accountId = null,
    Object? providerId = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
    Object? user = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      required this.userId,
      required this.accountId,
      required this.providerId,
      this.accessToken,
      this.refreshToken,
      this.accessTokenExpiresAt,
      this.refreshTokenExpiresAt,
      this.scope,
      this.idToken,
      this.password,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.createdAt,
      required this.updatedAt});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String accountId;
  @override
  final String providerId;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final DateTime? accessTokenExpiresAt;
  @override
  final DateTime? refreshTokenExpiresAt;
  @override
  final String? scope;
  @override
  final String? idToken;
  @override
  final String? password;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Account(id: $id, userId: $userId, accountId: $accountId, providerId: $providerId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, scope: $scope, idToken: $idToken, password: $password, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user) &&
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
      userId,
      accountId,
      providerId,
      accessToken,
      refreshToken,
      accessTokenExpiresAt,
      refreshTokenExpiresAt,
      scope,
      idToken,
      password,
      user,
      createdAt,
      updatedAt);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String id,
      required final String userId,
      required final String accountId,
      required final String providerId,
      final String? accessToken,
      final String? refreshToken,
      final DateTime? accessTokenExpiresAt,
      final DateTime? refreshTokenExpiresAt,
      final String? scope,
      final String? idToken,
      final String? password,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get accountId;
  @override
  String get providerId;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  DateTime? get accessTokenExpiresAt;
  @override
  DateTime? get refreshTokenExpiresAt;
  @override
  String? get scope;
  @override
  String? get idToken;
  @override
  String? get password;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAccountInput _$CreateAccountInputFromJson(Map<String, dynamic> json) {
  return _CreateAccountInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountInput {
  String get userId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  DateTime? get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this CreateAccountInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAccountInputCopyWith<CreateAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountInputCopyWith<$Res> {
  factory $CreateAccountInputCopyWith(
          CreateAccountInput value, $Res Function(CreateAccountInput) then) =
      _$CreateAccountInputCopyWithImpl<$Res, CreateAccountInput>;
  @useResult
  $Res call(
      {String userId,
      String accountId,
      String providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password});
}

/// @nodoc
class _$CreateAccountInputCopyWithImpl<$Res, $Val extends CreateAccountInput>
    implements $CreateAccountInputCopyWith<$Res> {
  _$CreateAccountInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accountId = null,
    Object? providerId = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountInputImplCopyWith<$Res>
    implements $CreateAccountInputCopyWith<$Res> {
  factory _$$CreateAccountInputImplCopyWith(_$CreateAccountInputImpl value,
          $Res Function(_$CreateAccountInputImpl) then) =
      __$$CreateAccountInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String accountId,
      String providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password});
}

/// @nodoc
class __$$CreateAccountInputImplCopyWithImpl<$Res>
    extends _$CreateAccountInputCopyWithImpl<$Res, _$CreateAccountInputImpl>
    implements _$$CreateAccountInputImplCopyWith<$Res> {
  __$$CreateAccountInputImplCopyWithImpl(_$CreateAccountInputImpl _value,
      $Res Function(_$CreateAccountInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accountId = null,
    Object? providerId = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
  }) {
    return _then(_$CreateAccountInputImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountInputImpl implements _CreateAccountInput {
  const _$CreateAccountInputImpl(
      {required this.userId,
      required this.accountId,
      required this.providerId,
      this.accessToken,
      this.refreshToken,
      this.accessTokenExpiresAt,
      this.refreshTokenExpiresAt,
      this.scope,
      this.idToken,
      this.password});

  factory _$CreateAccountInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountInputImplFromJson(json);

  @override
  final String userId;
  @override
  final String accountId;
  @override
  final String providerId;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final DateTime? accessTokenExpiresAt;
  @override
  final DateTime? refreshTokenExpiresAt;
  @override
  final String? scope;
  @override
  final String? idToken;
  @override
  final String? password;

  @override
  String toString() {
    return 'CreateAccountInput(userId: $userId, accountId: $accountId, providerId: $providerId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, scope: $scope, idToken: $idToken, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      accountId,
      providerId,
      accessToken,
      refreshToken,
      accessTokenExpiresAt,
      refreshTokenExpiresAt,
      scope,
      idToken,
      password);

  /// Create a copy of CreateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountInputImplCopyWith<_$CreateAccountInputImpl> get copyWith =>
      __$$CreateAccountInputImplCopyWithImpl<_$CreateAccountInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountInput implements CreateAccountInput {
  const factory _CreateAccountInput(
      {required final String userId,
      required final String accountId,
      required final String providerId,
      final String? accessToken,
      final String? refreshToken,
      final DateTime? accessTokenExpiresAt,
      final DateTime? refreshTokenExpiresAt,
      final String? scope,
      final String? idToken,
      final String? password}) = _$CreateAccountInputImpl;

  factory _CreateAccountInput.fromJson(Map<String, dynamic> json) =
      _$CreateAccountInputImpl.fromJson;

  @override
  String get userId;
  @override
  String get accountId;
  @override
  String get providerId;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  DateTime? get accessTokenExpiresAt;
  @override
  DateTime? get refreshTokenExpiresAt;
  @override
  String? get scope;
  @override
  String? get idToken;
  @override
  String? get password;

  /// Create a copy of CreateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAccountInputImplCopyWith<_$CreateAccountInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAccountInput _$UpdateAccountInputFromJson(Map<String, dynamic> json) {
  return _UpdateAccountInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAccountInput {
  String? get userId => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  DateTime? get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this UpdateAccountInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAccountInputCopyWith<UpdateAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountInputCopyWith<$Res> {
  factory $UpdateAccountInputCopyWith(
          UpdateAccountInput value, $Res Function(UpdateAccountInput) then) =
      _$UpdateAccountInputCopyWithImpl<$Res, UpdateAccountInput>;
  @useResult
  $Res call(
      {String? userId,
      String? accountId,
      String? providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password});
}

/// @nodoc
class _$UpdateAccountInputCopyWithImpl<$Res, $Val extends UpdateAccountInput>
    implements $UpdateAccountInputCopyWith<$Res> {
  _$UpdateAccountInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAccountInputImplCopyWith<$Res>
    implements $UpdateAccountInputCopyWith<$Res> {
  factory _$$UpdateAccountInputImplCopyWith(_$UpdateAccountInputImpl value,
          $Res Function(_$UpdateAccountInputImpl) then) =
      __$$UpdateAccountInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? accountId,
      String? providerId,
      String? accessToken,
      String? refreshToken,
      DateTime? accessTokenExpiresAt,
      DateTime? refreshTokenExpiresAt,
      String? scope,
      String? idToken,
      String? password});
}

/// @nodoc
class __$$UpdateAccountInputImplCopyWithImpl<$Res>
    extends _$UpdateAccountInputCopyWithImpl<$Res, _$UpdateAccountInputImpl>
    implements _$$UpdateAccountInputImplCopyWith<$Res> {
  __$$UpdateAccountInputImplCopyWithImpl(_$UpdateAccountInputImpl _value,
      $Res Function(_$UpdateAccountInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UpdateAccountInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAccountInputImpl implements _UpdateAccountInput {
  const _$UpdateAccountInputImpl(
      {this.userId,
      this.accountId,
      this.providerId,
      this.accessToken,
      this.refreshToken,
      this.accessTokenExpiresAt,
      this.refreshTokenExpiresAt,
      this.scope,
      this.idToken,
      this.password});

  factory _$UpdateAccountInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAccountInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? accountId;
  @override
  final String? providerId;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final DateTime? accessTokenExpiresAt;
  @override
  final DateTime? refreshTokenExpiresAt;
  @override
  final String? scope;
  @override
  final String? idToken;
  @override
  final String? password;

  @override
  String toString() {
    return 'UpdateAccountInput(userId: $userId, accountId: $accountId, providerId: $providerId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, scope: $scope, idToken: $idToken, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAccountInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      accountId,
      providerId,
      accessToken,
      refreshToken,
      accessTokenExpiresAt,
      refreshTokenExpiresAt,
      scope,
      idToken,
      password);

  /// Create a copy of UpdateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAccountInputImplCopyWith<_$UpdateAccountInputImpl> get copyWith =>
      __$$UpdateAccountInputImplCopyWithImpl<_$UpdateAccountInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAccountInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAccountInput implements UpdateAccountInput {
  const factory _UpdateAccountInput(
      {final String? userId,
      final String? accountId,
      final String? providerId,
      final String? accessToken,
      final String? refreshToken,
      final DateTime? accessTokenExpiresAt,
      final DateTime? refreshTokenExpiresAt,
      final String? scope,
      final String? idToken,
      final String? password}) = _$UpdateAccountInputImpl;

  factory _UpdateAccountInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAccountInputImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get accountId;
  @override
  String? get providerId;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  DateTime? get accessTokenExpiresAt;
  @override
  DateTime? get refreshTokenExpiresAt;
  @override
  String? get scope;
  @override
  String? get idToken;
  @override
  String? get password;

  /// Create a copy of UpdateAccountInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAccountInputImplCopyWith<_$UpdateAccountInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountWhereUniqueInput _$AccountWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _AccountWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AccountWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this AccountWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountWhereUniqueInputCopyWith<AccountWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWhereUniqueInputCopyWith<$Res> {
  factory $AccountWhereUniqueInputCopyWith(AccountWhereUniqueInput value,
          $Res Function(AccountWhereUniqueInput) then) =
      _$AccountWhereUniqueInputCopyWithImpl<$Res, AccountWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$AccountWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AccountWhereUniqueInput>
    implements $AccountWhereUniqueInputCopyWith<$Res> {
  _$AccountWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountWhereUniqueInput
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
abstract class _$$AccountWhereUniqueInputImplCopyWith<$Res>
    implements $AccountWhereUniqueInputCopyWith<$Res> {
  factory _$$AccountWhereUniqueInputImplCopyWith(
          _$AccountWhereUniqueInputImpl value,
          $Res Function(_$AccountWhereUniqueInputImpl) then) =
      __$$AccountWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$AccountWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AccountWhereUniqueInputCopyWithImpl<$Res,
        _$AccountWhereUniqueInputImpl>
    implements _$$AccountWhereUniqueInputImplCopyWith<$Res> {
  __$$AccountWhereUniqueInputImplCopyWithImpl(
      _$AccountWhereUniqueInputImpl _value,
      $Res Function(_$AccountWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AccountWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountWhereUniqueInputImpl implements _AccountWhereUniqueInput {
  const _$AccountWhereUniqueInputImpl({this.id});

  factory _$AccountWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'AccountWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountWhereUniqueInputImplCopyWith<_$AccountWhereUniqueInputImpl>
      get copyWith => __$$AccountWhereUniqueInputImplCopyWithImpl<
          _$AccountWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AccountWhereUniqueInput implements AccountWhereUniqueInput {
  const factory _AccountWhereUniqueInput({final String? id}) =
      _$AccountWhereUniqueInputImpl;

  factory _AccountWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$AccountWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of AccountWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountWhereUniqueInputImplCopyWith<_$AccountWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountWhereInput _$AccountWhereInputFromJson(Map<String, dynamic> json) {
  return _AccountWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AccountWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  StringFilter? get accountId => throw _privateConstructorUsedError;
  StringFilter? get providerId => throw _privateConstructorUsedError;
  StringFilter? get accessToken => throw _privateConstructorUsedError;
  StringFilter? get refreshToken => throw _privateConstructorUsedError;
  DateTimeFilter? get accessTokenExpiresAt =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get refreshTokenExpiresAt =>
      throw _privateConstructorUsedError;
  StringFilter? get scope => throw _privateConstructorUsedError;
  StringFilter? get idToken => throw _privateConstructorUsedError;
  StringFilter? get password => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AccountWhereInput>? get AND => throw _privateConstructorUsedError;
  List<AccountWhereInput>? get OR => throw _privateConstructorUsedError;
  AccountWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AccountWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountWhereInputCopyWith<AccountWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWhereInputCopyWith<$Res> {
  factory $AccountWhereInputCopyWith(
          AccountWhereInput value, $Res Function(AccountWhereInput) then) =
      _$AccountWhereInputCopyWithImpl<$Res, AccountWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      StringFilter? accountId,
      StringFilter? providerId,
      StringFilter? accessToken,
      StringFilter? refreshToken,
      DateTimeFilter? accessTokenExpiresAt,
      DateTimeFilter? refreshTokenExpiresAt,
      StringFilter? scope,
      StringFilter? idToken,
      StringFilter? password,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AccountWhereInput>? AND,
      List<AccountWhereInput>? OR,
      AccountWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get userId;
  $StringFilterCopyWith<$Res>? get accountId;
  $StringFilterCopyWith<$Res>? get providerId;
  $StringFilterCopyWith<$Res>? get accessToken;
  $StringFilterCopyWith<$Res>? get refreshToken;
  $DateTimeFilterCopyWith<$Res>? get accessTokenExpiresAt;
  $DateTimeFilterCopyWith<$Res>? get refreshTokenExpiresAt;
  $StringFilterCopyWith<$Res>? get scope;
  $StringFilterCopyWith<$Res>? get idToken;
  $StringFilterCopyWith<$Res>? get password;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AccountWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AccountWhereInputCopyWithImpl<$Res, $Val extends AccountWhereInput>
    implements $AccountWhereInputCopyWith<$Res> {
  _$AccountWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
              as List<AccountWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AccountWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AccountWhereInput
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

  /// Create a copy of AccountWhereInput
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

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get accountId {
    if (_value.accountId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.accountId!, (value) {
      return _then(_value.copyWith(accountId: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get providerId {
    if (_value.providerId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.providerId!, (value) {
      return _then(_value.copyWith(providerId: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get accessToken {
    if (_value.accessToken == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.accessToken!, (value) {
      return _then(_value.copyWith(accessToken: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get refreshToken {
    if (_value.refreshToken == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.refreshToken!, (value) {
      return _then(_value.copyWith(refreshToken: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get accessTokenExpiresAt {
    if (_value.accessTokenExpiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.accessTokenExpiresAt!, (value) {
      return _then(_value.copyWith(accessTokenExpiresAt: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get refreshTokenExpiresAt {
    if (_value.refreshTokenExpiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.refreshTokenExpiresAt!,
        (value) {
      return _then(_value.copyWith(refreshTokenExpiresAt: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get scope {
    if (_value.scope == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.scope!, (value) {
      return _then(_value.copyWith(scope: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get idToken {
    if (_value.idToken == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.idToken!, (value) {
      return _then(_value.copyWith(idToken: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get password {
    if (_value.password == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.password!, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }

  /// Create a copy of AccountWhereInput
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

  /// Create a copy of AccountWhereInput
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

  /// Create a copy of AccountWhereInput
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

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountWhereInputImplCopyWith<$Res>
    implements $AccountWhereInputCopyWith<$Res> {
  factory _$$AccountWhereInputImplCopyWith(_$AccountWhereInputImpl value,
          $Res Function(_$AccountWhereInputImpl) then) =
      __$$AccountWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? userId,
      StringFilter? accountId,
      StringFilter? providerId,
      StringFilter? accessToken,
      StringFilter? refreshToken,
      DateTimeFilter? accessTokenExpiresAt,
      DateTimeFilter? refreshTokenExpiresAt,
      StringFilter? scope,
      StringFilter? idToken,
      StringFilter? password,
      UserRelationFilter? user,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AccountWhereInput>? AND,
      List<AccountWhereInput>? OR,
      AccountWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $StringFilterCopyWith<$Res>? get accountId;
  @override
  $StringFilterCopyWith<$Res>? get providerId;
  @override
  $StringFilterCopyWith<$Res>? get accessToken;
  @override
  $StringFilterCopyWith<$Res>? get refreshToken;
  @override
  $DateTimeFilterCopyWith<$Res>? get accessTokenExpiresAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get refreshTokenExpiresAt;
  @override
  $StringFilterCopyWith<$Res>? get scope;
  @override
  $StringFilterCopyWith<$Res>? get idToken;
  @override
  $StringFilterCopyWith<$Res>? get password;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AccountWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AccountWhereInputImplCopyWithImpl<$Res>
    extends _$AccountWhereInputCopyWithImpl<$Res, _$AccountWhereInputImpl>
    implements _$$AccountWhereInputImplCopyWith<$Res> {
  __$$AccountWhereInputImplCopyWithImpl(_$AccountWhereInputImpl _value,
      $Res Function(_$AccountWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AccountWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
              as List<AccountWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AccountWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AccountWhereInputImpl implements _AccountWhereInput {
  const _$AccountWhereInputImpl(
      {this.id,
      this.userId,
      this.accountId,
      this.providerId,
      this.accessToken,
      this.refreshToken,
      this.accessTokenExpiresAt,
      this.refreshTokenExpiresAt,
      this.scope,
      this.idToken,
      this.password,
      this.user,
      this.createdAt,
      this.updatedAt,
      final List<AccountWhereInput>? AND,
      final List<AccountWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AccountWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? userId;
  @override
  final StringFilter? accountId;
  @override
  final StringFilter? providerId;
  @override
  final StringFilter? accessToken;
  @override
  final StringFilter? refreshToken;
  @override
  final DateTimeFilter? accessTokenExpiresAt;
  @override
  final DateTimeFilter? refreshTokenExpiresAt;
  @override
  final StringFilter? scope;
  @override
  final StringFilter? idToken;
  @override
  final StringFilter? password;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AccountWhereInput>? _AND;
  @override
  List<AccountWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AccountWhereInput>? _OR;
  @override
  List<AccountWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AccountWhereInput? NOT;

  @override
  String toString() {
    return 'AccountWhereInput(id: $id, userId: $userId, accountId: $accountId, providerId: $providerId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, scope: $scope, idToken: $idToken, password: $password, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.password, password) ||
                other.password == password) &&
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
      userId,
      accountId,
      providerId,
      accessToken,
      refreshToken,
      accessTokenExpiresAt,
      refreshTokenExpiresAt,
      scope,
      idToken,
      password,
      user,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountWhereInputImplCopyWith<_$AccountWhereInputImpl> get copyWith =>
      __$$AccountWhereInputImplCopyWithImpl<_$AccountWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AccountWhereInput implements AccountWhereInput {
  const factory _AccountWhereInput(
      {final StringFilter? id,
      final StringFilter? userId,
      final StringFilter? accountId,
      final StringFilter? providerId,
      final StringFilter? accessToken,
      final StringFilter? refreshToken,
      final DateTimeFilter? accessTokenExpiresAt,
      final DateTimeFilter? refreshTokenExpiresAt,
      final StringFilter? scope,
      final StringFilter? idToken,
      final StringFilter? password,
      final UserRelationFilter? user,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<AccountWhereInput>? AND,
      final List<AccountWhereInput>? OR,
      final AccountWhereInput? NOT}) = _$AccountWhereInputImpl;

  factory _AccountWhereInput.fromJson(Map<String, dynamic> json) =
      _$AccountWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get userId;
  @override
  StringFilter? get accountId;
  @override
  StringFilter? get providerId;
  @override
  StringFilter? get accessToken;
  @override
  StringFilter? get refreshToken;
  @override
  DateTimeFilter? get accessTokenExpiresAt;
  @override
  DateTimeFilter? get refreshTokenExpiresAt;
  @override
  StringFilter? get scope;
  @override
  StringFilter? get idToken;
  @override
  StringFilter? get password;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<AccountWhereInput>? get AND;
  @override
  List<AccountWhereInput>? get OR;
  @override
  AccountWhereInput? get NOT;

  /// Create a copy of AccountWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountWhereInputImplCopyWith<_$AccountWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountListRelationFilter _$AccountListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AccountListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AccountListRelationFilter {
  /// At least one related record matches
  AccountWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AccountWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  AccountWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AccountListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountListRelationFilterCopyWith<AccountListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountListRelationFilterCopyWith<$Res> {
  factory $AccountListRelationFilterCopyWith(AccountListRelationFilter value,
          $Res Function(AccountListRelationFilter) then) =
      _$AccountListRelationFilterCopyWithImpl<$Res, AccountListRelationFilter>;
  @useResult
  $Res call(
      {AccountWhereInput? some,
      AccountWhereInput? every,
      AccountWhereInput? none});

  $AccountWhereInputCopyWith<$Res>? get some;
  $AccountWhereInputCopyWith<$Res>? get every;
  $AccountWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AccountListRelationFilterCopyWithImpl<$Res,
        $Val extends AccountListRelationFilter>
    implements $AccountListRelationFilterCopyWith<$Res> {
  _$AccountListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountListRelationFilter
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
              as AccountWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountListRelationFilterImplCopyWith<$Res>
    implements $AccountListRelationFilterCopyWith<$Res> {
  factory _$$AccountListRelationFilterImplCopyWith(
          _$AccountListRelationFilterImpl value,
          $Res Function(_$AccountListRelationFilterImpl) then) =
      __$$AccountListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountWhereInput? some,
      AccountWhereInput? every,
      AccountWhereInput? none});

  @override
  $AccountWhereInputCopyWith<$Res>? get some;
  @override
  $AccountWhereInputCopyWith<$Res>? get every;
  @override
  $AccountWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AccountListRelationFilterImplCopyWithImpl<$Res>
    extends _$AccountListRelationFilterCopyWithImpl<$Res,
        _$AccountListRelationFilterImpl>
    implements _$$AccountListRelationFilterImplCopyWith<$Res> {
  __$$AccountListRelationFilterImplCopyWithImpl(
      _$AccountListRelationFilterImpl _value,
      $Res Function(_$AccountListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AccountListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountListRelationFilterImpl implements _AccountListRelationFilter {
  const _$AccountListRelationFilterImpl({this.some, this.every, this.none});

  factory _$AccountListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AccountWhereInput? some;

  /// All related records match
  @override
  final AccountWhereInput? every;

  /// No related records match
  @override
  final AccountWhereInput? none;

  @override
  String toString() {
    return 'AccountListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountListRelationFilterImplCopyWith<_$AccountListRelationFilterImpl>
      get copyWith => __$$AccountListRelationFilterImplCopyWithImpl<
          _$AccountListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AccountListRelationFilter implements AccountListRelationFilter {
  const factory _AccountListRelationFilter(
      {final AccountWhereInput? some,
      final AccountWhereInput? every,
      final AccountWhereInput? none}) = _$AccountListRelationFilterImpl;

  factory _AccountListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AccountListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AccountWhereInput? get some;

  /// All related records match
  @override
  AccountWhereInput? get every;

  /// No related records match
  @override
  AccountWhereInput? get none;

  /// Create a copy of AccountListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountListRelationFilterImplCopyWith<_$AccountListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountRelationFilter _$AccountRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AccountRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AccountRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AccountWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AccountWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this AccountRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountRelationFilterCopyWith<AccountRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRelationFilterCopyWith<$Res> {
  factory $AccountRelationFilterCopyWith(AccountRelationFilter value,
          $Res Function(AccountRelationFilter) then) =
      _$AccountRelationFilterCopyWithImpl<$Res, AccountRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AccountWhereInput? is_, AccountWhereInput? isNot});

  $AccountWhereInputCopyWith<$Res>? get is_;
  $AccountWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AccountRelationFilterCopyWithImpl<$Res,
        $Val extends AccountRelationFilter>
    implements $AccountRelationFilterCopyWith<$Res> {
  _$AccountRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountRelationFilter
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
              as AccountWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AccountWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountRelationFilterImplCopyWith<$Res>
    implements $AccountRelationFilterCopyWith<$Res> {
  factory _$$AccountRelationFilterImplCopyWith(
          _$AccountRelationFilterImpl value,
          $Res Function(_$AccountRelationFilterImpl) then) =
      __$$AccountRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AccountWhereInput? is_, AccountWhereInput? isNot});

  @override
  $AccountWhereInputCopyWith<$Res>? get is_;
  @override
  $AccountWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AccountRelationFilterImplCopyWithImpl<$Res>
    extends _$AccountRelationFilterCopyWithImpl<$Res,
        _$AccountRelationFilterImpl>
    implements _$$AccountRelationFilterImplCopyWith<$Res> {
  __$$AccountRelationFilterImplCopyWithImpl(_$AccountRelationFilterImpl _value,
      $Res Function(_$AccountRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AccountRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AccountWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountRelationFilterImpl implements _AccountRelationFilter {
  const _$AccountRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AccountRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AccountWhereInput? is_;

  /// Related record does not match
  @override
  final AccountWhereInput? isNot;

  @override
  String toString() {
    return 'AccountRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRelationFilterImplCopyWith<_$AccountRelationFilterImpl>
      get copyWith => __$$AccountRelationFilterImplCopyWithImpl<
          _$AccountRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AccountRelationFilter implements AccountRelationFilter {
  const factory _AccountRelationFilter(
      {@JsonKey(name: 'is') final AccountWhereInput? is_,
      final AccountWhereInput? isNot}) = _$AccountRelationFilterImpl;

  factory _AccountRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AccountRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AccountWhereInput? get is_;

  /// Related record does not match
  @override
  AccountWhereInput? get isNot;

  /// Create a copy of AccountRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountRelationFilterImplCopyWith<_$AccountRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountOrderByInput _$AccountOrderByInputFromJson(Map<String, dynamic> json) {
  return _AccountOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AccountOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get accountId => throw _privateConstructorUsedError;
  SortOrder? get providerId => throw _privateConstructorUsedError;
  SortOrder? get accessToken => throw _privateConstructorUsedError;
  SortOrder? get refreshToken => throw _privateConstructorUsedError;
  SortOrder? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  SortOrder? get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  SortOrder? get scope => throw _privateConstructorUsedError;
  SortOrder? get idToken => throw _privateConstructorUsedError;
  SortOrder? get password => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AccountOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountOrderByInputCopyWith<AccountOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountOrderByInputCopyWith<$Res> {
  factory $AccountOrderByInputCopyWith(
          AccountOrderByInput value, $Res Function(AccountOrderByInput) then) =
      _$AccountOrderByInputCopyWithImpl<$Res, AccountOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? accountId,
      SortOrder? providerId,
      SortOrder? accessToken,
      SortOrder? refreshToken,
      SortOrder? accessTokenExpiresAt,
      SortOrder? refreshTokenExpiresAt,
      SortOrder? scope,
      SortOrder? idToken,
      SortOrder? password,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AccountOrderByInputCopyWithImpl<$Res, $Val extends AccountOrderByInput>
    implements $AccountOrderByInputCopyWith<$Res> {
  _$AccountOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AccountOrderByInputImplCopyWith<$Res>
    implements $AccountOrderByInputCopyWith<$Res> {
  factory _$$AccountOrderByInputImplCopyWith(_$AccountOrderByInputImpl value,
          $Res Function(_$AccountOrderByInputImpl) then) =
      __$$AccountOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? accountId,
      SortOrder? providerId,
      SortOrder? accessToken,
      SortOrder? refreshToken,
      SortOrder? accessTokenExpiresAt,
      SortOrder? refreshTokenExpiresAt,
      SortOrder? scope,
      SortOrder? idToken,
      SortOrder? password,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AccountOrderByInputImplCopyWithImpl<$Res>
    extends _$AccountOrderByInputCopyWithImpl<$Res, _$AccountOrderByInputImpl>
    implements _$$AccountOrderByInputImplCopyWith<$Res> {
  __$$AccountOrderByInputImplCopyWithImpl(_$AccountOrderByInputImpl _value,
      $Res Function(_$AccountOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? accountId = freezed,
    Object? providerId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? scope = freezed,
    Object? idToken = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AccountOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$AccountOrderByInputImpl implements _AccountOrderByInput {
  const _$AccountOrderByInputImpl(
      {this.id,
      this.userId,
      this.accountId,
      this.providerId,
      this.accessToken,
      this.refreshToken,
      this.accessTokenExpiresAt,
      this.refreshTokenExpiresAt,
      this.scope,
      this.idToken,
      this.password,
      this.createdAt,
      this.updatedAt});

  factory _$AccountOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? accountId;
  @override
  final SortOrder? providerId;
  @override
  final SortOrder? accessToken;
  @override
  final SortOrder? refreshToken;
  @override
  final SortOrder? accessTokenExpiresAt;
  @override
  final SortOrder? refreshTokenExpiresAt;
  @override
  final SortOrder? scope;
  @override
  final SortOrder? idToken;
  @override
  final SortOrder? password;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AccountOrderByInput(id: $id, userId: $userId, accountId: $accountId, providerId: $providerId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, scope: $scope, idToken: $idToken, password: $password, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.password, password) ||
                other.password == password) &&
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
      userId,
      accountId,
      providerId,
      accessToken,
      refreshToken,
      accessTokenExpiresAt,
      refreshTokenExpiresAt,
      scope,
      idToken,
      password,
      createdAt,
      updatedAt);

  /// Create a copy of AccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountOrderByInputImplCopyWith<_$AccountOrderByInputImpl> get copyWith =>
      __$$AccountOrderByInputImplCopyWithImpl<_$AccountOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AccountOrderByInput implements AccountOrderByInput {
  const factory _AccountOrderByInput(
      {final SortOrder? id,
      final SortOrder? userId,
      final SortOrder? accountId,
      final SortOrder? providerId,
      final SortOrder? accessToken,
      final SortOrder? refreshToken,
      final SortOrder? accessTokenExpiresAt,
      final SortOrder? refreshTokenExpiresAt,
      final SortOrder? scope,
      final SortOrder? idToken,
      final SortOrder? password,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$AccountOrderByInputImpl;

  factory _AccountOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AccountOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get accountId;
  @override
  SortOrder? get providerId;
  @override
  SortOrder? get accessToken;
  @override
  SortOrder? get refreshToken;
  @override
  SortOrder? get accessTokenExpiresAt;
  @override
  SortOrder? get refreshTokenExpiresAt;
  @override
  SortOrder? get scope;
  @override
  SortOrder? get idToken;
  @override
  SortOrder? get password;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AccountOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountOrderByInputImplCopyWith<_$AccountOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
