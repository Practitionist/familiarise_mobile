// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportResponse _$SupportResponseFromJson(Map<String, dynamic> json) {
  return _SupportResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportResponse {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isInternal => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SupportTicket? get supportTicket => throw _privateConstructorUsedError;
  String get supportTicketId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseCopyWith<SupportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseCopyWith<$Res> {
  factory $SupportResponseCopyWith(
          SupportResponse value, $Res Function(SupportResponse) then) =
      _$SupportResponseCopyWithImpl<$Res, SupportResponse>;
  @useResult
  $Res call(
      {String id,
      String message,
      bool isInternal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SupportTicket? supportTicket,
      String supportTicketId,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $SupportTicketCopyWith<$Res>? get supportTicket;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SupportResponseCopyWithImpl<$Res, $Val extends SupportResponse>
    implements $SupportResponseCopyWith<$Res> {
  _$SupportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isInternal = null,
    Object? supportTicket = freezed,
    Object? supportTicketId = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      supportTicket: freezed == supportTicket
          ? _value.supportTicket
          : supportTicket // ignore: cast_nullable_to_non_nullable
              as SupportTicket?,
      supportTicketId: null == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketCopyWith<$Res>? get supportTicket {
    if (_value.supportTicket == null) {
      return null;
    }

    return $SupportTicketCopyWith<$Res>(_value.supportTicket!, (value) {
      return _then(_value.copyWith(supportTicket: value) as $Val);
    });
  }

  /// Create a copy of SupportResponse
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
abstract class _$$SupportResponseImplCopyWith<$Res>
    implements $SupportResponseCopyWith<$Res> {
  factory _$$SupportResponseImplCopyWith(_$SupportResponseImpl value,
          $Res Function(_$SupportResponseImpl) then) =
      __$$SupportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      bool isInternal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SupportTicket? supportTicket,
      String supportTicketId,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $SupportTicketCopyWith<$Res>? get supportTicket;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SupportResponseImplCopyWithImpl<$Res>
    extends _$SupportResponseCopyWithImpl<$Res, _$SupportResponseImpl>
    implements _$$SupportResponseImplCopyWith<$Res> {
  __$$SupportResponseImplCopyWithImpl(
      _$SupportResponseImpl _value, $Res Function(_$SupportResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isInternal = null,
    Object? supportTicket = freezed,
    Object? supportTicketId = null,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SupportResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      supportTicket: freezed == supportTicket
          ? _value.supportTicket
          : supportTicket // ignore: cast_nullable_to_non_nullable
              as SupportTicket?,
      supportTicketId: null == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SupportResponseImpl implements _SupportResponse {
  const _$SupportResponseImpl(
      {required this.id,
      required this.message,
      this.isInternal = false,
      @JsonKey(includeFromJson: false, includeToJson: false) this.supportTicket,
      required this.supportTicketId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$SupportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  @JsonKey()
  final bool isInternal;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SupportTicket? supportTicket;
  @override
  final String supportTicketId;
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
    return 'SupportResponse(id: $id, message: $message, isInternal: $isInternal, supportTicket: $supportTicket, supportTicketId: $supportTicketId, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.supportTicket, supportTicket) ||
                other.supportTicket == supportTicket) &&
            (identical(other.supportTicketId, supportTicketId) ||
                other.supportTicketId == supportTicketId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, isInternal,
      supportTicket, supportTicketId, user, userId, createdAt, updatedAt);

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseImplCopyWith<_$SupportResponseImpl> get copyWith =>
      __$$SupportResponseImplCopyWithImpl<_$SupportResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportResponse implements SupportResponse {
  const factory _SupportResponse(
      {required final String id,
      required final String message,
      final bool isInternal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SupportTicket? supportTicket,
      required final String supportTicketId,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SupportResponseImpl;

  factory _SupportResponse.fromJson(Map<String, dynamic> json) =
      _$SupportResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  bool get isInternal;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SupportTicket? get supportTicket;
  @override
  String get supportTicketId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseImplCopyWith<_$SupportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSupportResponseInput _$CreateSupportResponseInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSupportResponseInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSupportResponseInput {
  String get message => throw _privateConstructorUsedError;
  bool? get isInternal => throw _privateConstructorUsedError;
  String get supportTicketId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateSupportResponseInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSupportResponseInputCopyWith<CreateSupportResponseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupportResponseInputCopyWith<$Res> {
  factory $CreateSupportResponseInputCopyWith(CreateSupportResponseInput value,
          $Res Function(CreateSupportResponseInput) then) =
      _$CreateSupportResponseInputCopyWithImpl<$Res,
          CreateSupportResponseInput>;
  @useResult
  $Res call(
      {String message,
      bool? isInternal,
      String supportTicketId,
      String userId});
}

/// @nodoc
class _$CreateSupportResponseInputCopyWithImpl<$Res,
        $Val extends CreateSupportResponseInput>
    implements $CreateSupportResponseInputCopyWith<$Res> {
  _$CreateSupportResponseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isInternal = freezed,
    Object? supportTicketId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportTicketId: null == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupportResponseInputImplCopyWith<$Res>
    implements $CreateSupportResponseInputCopyWith<$Res> {
  factory _$$CreateSupportResponseInputImplCopyWith(
          _$CreateSupportResponseInputImpl value,
          $Res Function(_$CreateSupportResponseInputImpl) then) =
      __$$CreateSupportResponseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      bool? isInternal,
      String supportTicketId,
      String userId});
}

/// @nodoc
class __$$CreateSupportResponseInputImplCopyWithImpl<$Res>
    extends _$CreateSupportResponseInputCopyWithImpl<$Res,
        _$CreateSupportResponseInputImpl>
    implements _$$CreateSupportResponseInputImplCopyWith<$Res> {
  __$$CreateSupportResponseInputImplCopyWithImpl(
      _$CreateSupportResponseInputImpl _value,
      $Res Function(_$CreateSupportResponseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isInternal = freezed,
    Object? supportTicketId = null,
    Object? userId = null,
  }) {
    return _then(_$CreateSupportResponseInputImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportTicketId: null == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupportResponseInputImpl implements _CreateSupportResponseInput {
  const _$CreateSupportResponseInputImpl(
      {required this.message,
      this.isInternal = false,
      required this.supportTicketId,
      required this.userId});

  factory _$CreateSupportResponseInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSupportResponseInputImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final bool? isInternal;
  @override
  final String supportTicketId;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateSupportResponseInput(message: $message, isInternal: $isInternal, supportTicketId: $supportTicketId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupportResponseInputImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.supportTicketId, supportTicketId) ||
                other.supportTicketId == supportTicketId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, isInternal, supportTicketId, userId);

  /// Create a copy of CreateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupportResponseInputImplCopyWith<_$CreateSupportResponseInputImpl>
      get copyWith => __$$CreateSupportResponseInputImplCopyWithImpl<
          _$CreateSupportResponseInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupportResponseInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSupportResponseInput
    implements CreateSupportResponseInput {
  const factory _CreateSupportResponseInput(
      {required final String message,
      final bool? isInternal,
      required final String supportTicketId,
      required final String userId}) = _$CreateSupportResponseInputImpl;

  factory _CreateSupportResponseInput.fromJson(Map<String, dynamic> json) =
      _$CreateSupportResponseInputImpl.fromJson;

  @override
  String get message;
  @override
  bool? get isInternal;
  @override
  String get supportTicketId;
  @override
  String get userId;

  /// Create a copy of CreateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSupportResponseInputImplCopyWith<_$CreateSupportResponseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSupportResponseInput _$UpdateSupportResponseInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSupportResponseInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSupportResponseInput {
  String? get message => throw _privateConstructorUsedError;
  bool? get isInternal => throw _privateConstructorUsedError;
  String? get supportTicketId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSupportResponseInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSupportResponseInputCopyWith<UpdateSupportResponseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSupportResponseInputCopyWith<$Res> {
  factory $UpdateSupportResponseInputCopyWith(UpdateSupportResponseInput value,
          $Res Function(UpdateSupportResponseInput) then) =
      _$UpdateSupportResponseInputCopyWithImpl<$Res,
          UpdateSupportResponseInput>;
  @useResult
  $Res call(
      {String? message,
      bool? isInternal,
      String? supportTicketId,
      String? userId});
}

/// @nodoc
class _$UpdateSupportResponseInputCopyWithImpl<$Res,
        $Val extends UpdateSupportResponseInput>
    implements $UpdateSupportResponseInputCopyWith<$Res> {
  _$UpdateSupportResponseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicketId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSupportResponseInputImplCopyWith<$Res>
    implements $UpdateSupportResponseInputCopyWith<$Res> {
  factory _$$UpdateSupportResponseInputImplCopyWith(
          _$UpdateSupportResponseInputImpl value,
          $Res Function(_$UpdateSupportResponseInputImpl) then) =
      __$$UpdateSupportResponseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      bool? isInternal,
      String? supportTicketId,
      String? userId});
}

/// @nodoc
class __$$UpdateSupportResponseInputImplCopyWithImpl<$Res>
    extends _$UpdateSupportResponseInputCopyWithImpl<$Res,
        _$UpdateSupportResponseInputImpl>
    implements _$$UpdateSupportResponseInputImplCopyWith<$Res> {
  __$$UpdateSupportResponseInputImplCopyWithImpl(
      _$UpdateSupportResponseInputImpl _value,
      $Res Function(_$UpdateSupportResponseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicketId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateSupportResponseInputImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
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
class _$UpdateSupportResponseInputImpl implements _UpdateSupportResponseInput {
  const _$UpdateSupportResponseInputImpl(
      {this.message, this.isInternal, this.supportTicketId, this.userId});

  factory _$UpdateSupportResponseInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSupportResponseInputImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? isInternal;
  @override
  final String? supportTicketId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateSupportResponseInput(message: $message, isInternal: $isInternal, supportTicketId: $supportTicketId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSupportResponseInputImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.supportTicketId, supportTicketId) ||
                other.supportTicketId == supportTicketId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, isInternal, supportTicketId, userId);

  /// Create a copy of UpdateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSupportResponseInputImplCopyWith<_$UpdateSupportResponseInputImpl>
      get copyWith => __$$UpdateSupportResponseInputImplCopyWithImpl<
          _$UpdateSupportResponseInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSupportResponseInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSupportResponseInput
    implements UpdateSupportResponseInput {
  const factory _UpdateSupportResponseInput(
      {final String? message,
      final bool? isInternal,
      final String? supportTicketId,
      final String? userId}) = _$UpdateSupportResponseInputImpl;

  factory _UpdateSupportResponseInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSupportResponseInputImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get isInternal;
  @override
  String? get supportTicketId;
  @override
  String? get userId;

  /// Create a copy of UpdateSupportResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSupportResponseInputImplCopyWith<_$UpdateSupportResponseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportResponseWhereUniqueInput _$SupportResponseWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SupportResponseWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SupportResponseWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SupportResponseWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponseWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseWhereUniqueInputCopyWith<SupportResponseWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseWhereUniqueInputCopyWith<$Res> {
  factory $SupportResponseWhereUniqueInputCopyWith(
          SupportResponseWhereUniqueInput value,
          $Res Function(SupportResponseWhereUniqueInput) then) =
      _$SupportResponseWhereUniqueInputCopyWithImpl<$Res,
          SupportResponseWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SupportResponseWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SupportResponseWhereUniqueInput>
    implements $SupportResponseWhereUniqueInputCopyWith<$Res> {
  _$SupportResponseWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponseWhereUniqueInput
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
abstract class _$$SupportResponseWhereUniqueInputImplCopyWith<$Res>
    implements $SupportResponseWhereUniqueInputCopyWith<$Res> {
  factory _$$SupportResponseWhereUniqueInputImplCopyWith(
          _$SupportResponseWhereUniqueInputImpl value,
          $Res Function(_$SupportResponseWhereUniqueInputImpl) then) =
      __$$SupportResponseWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SupportResponseWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SupportResponseWhereUniqueInputCopyWithImpl<$Res,
        _$SupportResponseWhereUniqueInputImpl>
    implements _$$SupportResponseWhereUniqueInputImplCopyWith<$Res> {
  __$$SupportResponseWhereUniqueInputImplCopyWithImpl(
      _$SupportResponseWhereUniqueInputImpl _value,
      $Res Function(_$SupportResponseWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponseWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SupportResponseWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportResponseWhereUniqueInputImpl
    implements _SupportResponseWhereUniqueInput {
  const _$SupportResponseWhereUniqueInputImpl({this.id});

  factory _$SupportResponseWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportResponseWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SupportResponseWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SupportResponseWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseWhereUniqueInputImplCopyWith<
          _$SupportResponseWhereUniqueInputImpl>
      get copyWith => __$$SupportResponseWhereUniqueInputImplCopyWithImpl<
          _$SupportResponseWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SupportResponseWhereUniqueInput
    implements SupportResponseWhereUniqueInput {
  const factory _SupportResponseWhereUniqueInput({final String? id}) =
      _$SupportResponseWhereUniqueInputImpl;

  factory _SupportResponseWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$SupportResponseWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SupportResponseWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseWhereUniqueInputImplCopyWith<
          _$SupportResponseWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportResponseWhereInput _$SupportResponseWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SupportResponseWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SupportResponseWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get message => throw _privateConstructorUsedError;
  BooleanFilter? get isInternal => throw _privateConstructorUsedError;

  /// Filter by supportTicket relation
  SupportTicketRelationFilter? get supportTicket =>
      throw _privateConstructorUsedError;
  StringFilter? get supportTicketId => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SupportResponseWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SupportResponseWhereInput>? get OR => throw _privateConstructorUsedError;
  SupportResponseWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SupportResponseWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseWhereInputCopyWith<SupportResponseWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseWhereInputCopyWith<$Res> {
  factory $SupportResponseWhereInputCopyWith(SupportResponseWhereInput value,
          $Res Function(SupportResponseWhereInput) then) =
      _$SupportResponseWhereInputCopyWithImpl<$Res, SupportResponseWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? message,
      BooleanFilter? isInternal,
      SupportTicketRelationFilter? supportTicket,
      StringFilter? supportTicketId,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SupportResponseWhereInput>? AND,
      List<SupportResponseWhereInput>? OR,
      SupportResponseWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get message;
  $BooleanFilterCopyWith<$Res>? get isInternal;
  $SupportTicketRelationFilterCopyWith<$Res>? get supportTicket;
  $StringFilterCopyWith<$Res>? get supportTicketId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SupportResponseWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SupportResponseWhereInputCopyWithImpl<$Res,
        $Val extends SupportResponseWhereInput>
    implements $SupportResponseWhereInputCopyWith<$Res> {
  _$SupportResponseWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicket = freezed,
    Object? supportTicketId = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      supportTicket: freezed == supportTicket
          ? _value.supportTicket
          : supportTicket // ignore: cast_nullable_to_non_nullable
              as SupportTicketRelationFilter?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
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
              as List<SupportResponseWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportResponseWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportResponseWhereInput
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

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isInternal {
    if (_value.isInternal == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isInternal!, (value) {
      return _then(_value.copyWith(isInternal: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketRelationFilterCopyWith<$Res>? get supportTicket {
    if (_value.supportTicket == null) {
      return null;
    }

    return $SupportTicketRelationFilterCopyWith<$Res>(_value.supportTicket!,
        (value) {
      return _then(_value.copyWith(supportTicket: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get supportTicketId {
    if (_value.supportTicketId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.supportTicketId!, (value) {
      return _then(_value.copyWith(supportTicketId: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseWhereInput
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

  /// Create a copy of SupportResponseWhereInput
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

  /// Create a copy of SupportResponseWhereInput
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

  /// Create a copy of SupportResponseWhereInput
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

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportResponseWhereInputImplCopyWith<$Res>
    implements $SupportResponseWhereInputCopyWith<$Res> {
  factory _$$SupportResponseWhereInputImplCopyWith(
          _$SupportResponseWhereInputImpl value,
          $Res Function(_$SupportResponseWhereInputImpl) then) =
      __$$SupportResponseWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? message,
      BooleanFilter? isInternal,
      SupportTicketRelationFilter? supportTicket,
      StringFilter? supportTicketId,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SupportResponseWhereInput>? AND,
      List<SupportResponseWhereInput>? OR,
      SupportResponseWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get message;
  @override
  $BooleanFilterCopyWith<$Res>? get isInternal;
  @override
  $SupportTicketRelationFilterCopyWith<$Res>? get supportTicket;
  @override
  $StringFilterCopyWith<$Res>? get supportTicketId;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SupportResponseWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SupportResponseWhereInputImplCopyWithImpl<$Res>
    extends _$SupportResponseWhereInputCopyWithImpl<$Res,
        _$SupportResponseWhereInputImpl>
    implements _$$SupportResponseWhereInputImplCopyWith<$Res> {
  __$$SupportResponseWhereInputImplCopyWithImpl(
      _$SupportResponseWhereInputImpl _value,
      $Res Function(_$SupportResponseWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicket = freezed,
    Object? supportTicketId = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SupportResponseWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      supportTicket: freezed == supportTicket
          ? _value.supportTicket
          : supportTicket // ignore: cast_nullable_to_non_nullable
              as SupportTicketRelationFilter?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
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
              as List<SupportResponseWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportResponseWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportResponseWhereInputImpl implements _SupportResponseWhereInput {
  const _$SupportResponseWhereInputImpl(
      {this.id,
      this.message,
      this.isInternal,
      this.supportTicket,
      this.supportTicketId,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<SupportResponseWhereInput>? AND,
      final List<SupportResponseWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SupportResponseWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportResponseWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? message;
  @override
  final BooleanFilter? isInternal;

  /// Filter by supportTicket relation
  @override
  final SupportTicketRelationFilter? supportTicket;
  @override
  final StringFilter? supportTicketId;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SupportResponseWhereInput>? _AND;
  @override
  List<SupportResponseWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupportResponseWhereInput>? _OR;
  @override
  List<SupportResponseWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SupportResponseWhereInput? NOT;

  @override
  String toString() {
    return 'SupportResponseWhereInput(id: $id, message: $message, isInternal: $isInternal, supportTicket: $supportTicket, supportTicketId: $supportTicketId, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.supportTicket, supportTicket) ||
                other.supportTicket == supportTicket) &&
            (identical(other.supportTicketId, supportTicketId) ||
                other.supportTicketId == supportTicketId) &&
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
      message,
      isInternal,
      supportTicket,
      supportTicketId,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseWhereInputImplCopyWith<_$SupportResponseWhereInputImpl>
      get copyWith => __$$SupportResponseWhereInputImplCopyWithImpl<
          _$SupportResponseWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SupportResponseWhereInput implements SupportResponseWhereInput {
  const factory _SupportResponseWhereInput(
      {final StringFilter? id,
      final StringFilter? message,
      final BooleanFilter? isInternal,
      final SupportTicketRelationFilter? supportTicket,
      final StringFilter? supportTicketId,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<SupportResponseWhereInput>? AND,
      final List<SupportResponseWhereInput>? OR,
      final SupportResponseWhereInput? NOT}) = _$SupportResponseWhereInputImpl;

  factory _SupportResponseWhereInput.fromJson(Map<String, dynamic> json) =
      _$SupportResponseWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get message;
  @override
  BooleanFilter? get isInternal;

  /// Filter by supportTicket relation
  @override
  SupportTicketRelationFilter? get supportTicket;
  @override
  StringFilter? get supportTicketId;

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
  List<SupportResponseWhereInput>? get AND;
  @override
  List<SupportResponseWhereInput>? get OR;
  @override
  SupportResponseWhereInput? get NOT;

  /// Create a copy of SupportResponseWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseWhereInputImplCopyWith<_$SupportResponseWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportResponseListRelationFilter _$SupportResponseListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportResponseListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportResponseListRelationFilter {
  /// At least one related record matches
  SupportResponseWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SupportResponseWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SupportResponseWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SupportResponseListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseListRelationFilterCopyWith<SupportResponseListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseListRelationFilterCopyWith<$Res> {
  factory $SupportResponseListRelationFilterCopyWith(
          SupportResponseListRelationFilter value,
          $Res Function(SupportResponseListRelationFilter) then) =
      _$SupportResponseListRelationFilterCopyWithImpl<$Res,
          SupportResponseListRelationFilter>;
  @useResult
  $Res call(
      {SupportResponseWhereInput? some,
      SupportResponseWhereInput? every,
      SupportResponseWhereInput? none});

  $SupportResponseWhereInputCopyWith<$Res>? get some;
  $SupportResponseWhereInputCopyWith<$Res>? get every;
  $SupportResponseWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SupportResponseListRelationFilterCopyWithImpl<$Res,
        $Val extends SupportResponseListRelationFilter>
    implements $SupportResponseListRelationFilterCopyWith<$Res> {
  _$SupportResponseListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponseListRelationFilter
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
              as SupportResponseWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportResponseListRelationFilterImplCopyWith<$Res>
    implements $SupportResponseListRelationFilterCopyWith<$Res> {
  factory _$$SupportResponseListRelationFilterImplCopyWith(
          _$SupportResponseListRelationFilterImpl value,
          $Res Function(_$SupportResponseListRelationFilterImpl) then) =
      __$$SupportResponseListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportResponseWhereInput? some,
      SupportResponseWhereInput? every,
      SupportResponseWhereInput? none});

  @override
  $SupportResponseWhereInputCopyWith<$Res>? get some;
  @override
  $SupportResponseWhereInputCopyWith<$Res>? get every;
  @override
  $SupportResponseWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SupportResponseListRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportResponseListRelationFilterCopyWithImpl<$Res,
        _$SupportResponseListRelationFilterImpl>
    implements _$$SupportResponseListRelationFilterImplCopyWith<$Res> {
  __$$SupportResponseListRelationFilterImplCopyWithImpl(
      _$SupportResponseListRelationFilterImpl _value,
      $Res Function(_$SupportResponseListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SupportResponseListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportResponseListRelationFilterImpl
    implements _SupportResponseListRelationFilter {
  const _$SupportResponseListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SupportResponseListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportResponseListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SupportResponseWhereInput? some;

  /// All related records match
  @override
  final SupportResponseWhereInput? every;

  /// No related records match
  @override
  final SupportResponseWhereInput? none;

  @override
  String toString() {
    return 'SupportResponseListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseListRelationFilterImplCopyWith<
          _$SupportResponseListRelationFilterImpl>
      get copyWith => __$$SupportResponseListRelationFilterImplCopyWithImpl<
          _$SupportResponseListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportResponseListRelationFilter
    implements SupportResponseListRelationFilter {
  const factory _SupportResponseListRelationFilter(
          {final SupportResponseWhereInput? some,
          final SupportResponseWhereInput? every,
          final SupportResponseWhereInput? none}) =
      _$SupportResponseListRelationFilterImpl;

  factory _SupportResponseListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SupportResponseListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SupportResponseWhereInput? get some;

  /// All related records match
  @override
  SupportResponseWhereInput? get every;

  /// No related records match
  @override
  SupportResponseWhereInput? get none;

  /// Create a copy of SupportResponseListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseListRelationFilterImplCopyWith<
          _$SupportResponseListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportResponseRelationFilter _$SupportResponseRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportResponseRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportResponseRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SupportResponseWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SupportResponseWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SupportResponseRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseRelationFilterCopyWith<SupportResponseRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseRelationFilterCopyWith<$Res> {
  factory $SupportResponseRelationFilterCopyWith(
          SupportResponseRelationFilter value,
          $Res Function(SupportResponseRelationFilter) then) =
      _$SupportResponseRelationFilterCopyWithImpl<$Res,
          SupportResponseRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportResponseWhereInput? is_,
      SupportResponseWhereInput? isNot});

  $SupportResponseWhereInputCopyWith<$Res>? get is_;
  $SupportResponseWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SupportResponseRelationFilterCopyWithImpl<$Res,
        $Val extends SupportResponseRelationFilter>
    implements $SupportResponseRelationFilterCopyWith<$Res> {
  _$SupportResponseRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponseRelationFilter
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
              as SupportResponseWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportResponseWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SupportResponseWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportResponseRelationFilterImplCopyWith<$Res>
    implements $SupportResponseRelationFilterCopyWith<$Res> {
  factory _$$SupportResponseRelationFilterImplCopyWith(
          _$SupportResponseRelationFilterImpl value,
          $Res Function(_$SupportResponseRelationFilterImpl) then) =
      __$$SupportResponseRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportResponseWhereInput? is_,
      SupportResponseWhereInput? isNot});

  @override
  $SupportResponseWhereInputCopyWith<$Res>? get is_;
  @override
  $SupportResponseWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SupportResponseRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportResponseRelationFilterCopyWithImpl<$Res,
        _$SupportResponseRelationFilterImpl>
    implements _$$SupportResponseRelationFilterImplCopyWith<$Res> {
  __$$SupportResponseRelationFilterImplCopyWithImpl(
      _$SupportResponseRelationFilterImpl _value,
      $Res Function(_$SupportResponseRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SupportResponseRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportResponseWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportResponseRelationFilterImpl
    implements _SupportResponseRelationFilter {
  const _$SupportResponseRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SupportResponseRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportResponseRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SupportResponseWhereInput? is_;

  /// Related record does not match
  @override
  final SupportResponseWhereInput? isNot;

  @override
  String toString() {
    return 'SupportResponseRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseRelationFilterImplCopyWith<
          _$SupportResponseRelationFilterImpl>
      get copyWith => __$$SupportResponseRelationFilterImplCopyWithImpl<
          _$SupportResponseRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportResponseRelationFilter
    implements SupportResponseRelationFilter {
  const factory _SupportResponseRelationFilter(
          {@JsonKey(name: 'is') final SupportResponseWhereInput? is_,
          final SupportResponseWhereInput? isNot}) =
      _$SupportResponseRelationFilterImpl;

  factory _SupportResponseRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SupportResponseRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SupportResponseWhereInput? get is_;

  /// Related record does not match
  @override
  SupportResponseWhereInput? get isNot;

  /// Create a copy of SupportResponseRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseRelationFilterImplCopyWith<
          _$SupportResponseRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportResponseOrderByInput _$SupportResponseOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SupportResponseOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SupportResponseOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get message => throw _privateConstructorUsedError;
  SortOrder? get isInternal => throw _privateConstructorUsedError;
  SortOrder? get supportTicketId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportResponseOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponseOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseOrderByInputCopyWith<SupportResponseOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseOrderByInputCopyWith<$Res> {
  factory $SupportResponseOrderByInputCopyWith(
          SupportResponseOrderByInput value,
          $Res Function(SupportResponseOrderByInput) then) =
      _$SupportResponseOrderByInputCopyWithImpl<$Res,
          SupportResponseOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? message,
      SortOrder? isInternal,
      SortOrder? supportTicketId,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SupportResponseOrderByInputCopyWithImpl<$Res,
        $Val extends SupportResponseOrderByInput>
    implements $SupportResponseOrderByInputCopyWith<$Res> {
  _$SupportResponseOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponseOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicketId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SupportResponseOrderByInputImplCopyWith<$Res>
    implements $SupportResponseOrderByInputCopyWith<$Res> {
  factory _$$SupportResponseOrderByInputImplCopyWith(
          _$SupportResponseOrderByInputImpl value,
          $Res Function(_$SupportResponseOrderByInputImpl) then) =
      __$$SupportResponseOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? message,
      SortOrder? isInternal,
      SortOrder? supportTicketId,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SupportResponseOrderByInputImplCopyWithImpl<$Res>
    extends _$SupportResponseOrderByInputCopyWithImpl<$Res,
        _$SupportResponseOrderByInputImpl>
    implements _$$SupportResponseOrderByInputImplCopyWith<$Res> {
  __$$SupportResponseOrderByInputImplCopyWithImpl(
      _$SupportResponseOrderByInputImpl _value,
      $Res Function(_$SupportResponseOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportResponseOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? isInternal = freezed,
    Object? supportTicketId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SupportResponseOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supportTicketId: freezed == supportTicketId
          ? _value.supportTicketId
          : supportTicketId // ignore: cast_nullable_to_non_nullable
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
class _$SupportResponseOrderByInputImpl
    implements _SupportResponseOrderByInput {
  const _$SupportResponseOrderByInputImpl(
      {this.id,
      this.message,
      this.isInternal,
      this.supportTicketId,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$SupportResponseOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportResponseOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? message;
  @override
  final SortOrder? isInternal;
  @override
  final SortOrder? supportTicketId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SupportResponseOrderByInput(id: $id, message: $message, isInternal: $isInternal, supportTicketId: $supportTicketId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.supportTicketId, supportTicketId) ||
                other.supportTicketId == supportTicketId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, isInternal,
      supportTicketId, userId, createdAt, updatedAt);

  /// Create a copy of SupportResponseOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseOrderByInputImplCopyWith<_$SupportResponseOrderByInputImpl>
      get copyWith => __$$SupportResponseOrderByInputImplCopyWithImpl<
          _$SupportResponseOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SupportResponseOrderByInput
    implements SupportResponseOrderByInput {
  const factory _SupportResponseOrderByInput(
      {final SortOrder? id,
      final SortOrder? message,
      final SortOrder? isInternal,
      final SortOrder? supportTicketId,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SupportResponseOrderByInputImpl;

  factory _SupportResponseOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SupportResponseOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get message;
  @override
  SortOrder? get isInternal;
  @override
  SortOrder? get supportTicketId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SupportResponseOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseOrderByInputImplCopyWith<_$SupportResponseOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
