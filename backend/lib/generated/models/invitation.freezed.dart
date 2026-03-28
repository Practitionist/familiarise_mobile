// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invitation _$InvitationFromJson(Map<String, dynamic> json) {
  return _Invitation.fromJson(json);
}

/// @nodoc
mixin _$Invitation {
  String get id => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String get inviterId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Organization? get organization => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Invitation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationCopyWith<Invitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationCopyWith<$Res> {
  factory $InvitationCopyWith(
          Invitation value, $Res Function(Invitation) then) =
      _$InvitationCopyWithImpl<$Res, Invitation>;
  @useResult
  $Res call(
      {String id,
      String organizationId,
      String email,
      String role,
      String status,
      DateTime expiresAt,
      String inviterId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Organization? organization,
      DateTime createdAt});

  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$InvitationCopyWithImpl<$Res, $Val extends Invitation>
    implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? email = null,
    Object? role = null,
    Object? status = null,
    Object? expiresAt = null,
    Object? inviterId = null,
    Object? organization = freezed,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Invitation
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
}

/// @nodoc
abstract class _$$InvitationImplCopyWith<$Res>
    implements $InvitationCopyWith<$Res> {
  factory _$$InvitationImplCopyWith(
          _$InvitationImpl value, $Res Function(_$InvitationImpl) then) =
      __$$InvitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organizationId,
      String email,
      String role,
      String status,
      DateTime expiresAt,
      String inviterId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Organization? organization,
      DateTime createdAt});

  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$InvitationImplCopyWithImpl<$Res>
    extends _$InvitationCopyWithImpl<$Res, _$InvitationImpl>
    implements _$$InvitationImplCopyWith<$Res> {
  __$$InvitationImplCopyWithImpl(
      _$InvitationImpl _value, $Res Function(_$InvitationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? email = null,
    Object? role = null,
    Object? status = null,
    Object? expiresAt = null,
    Object? inviterId = null,
    Object? organization = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$InvitationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvitationImpl implements _Invitation {
  const _$InvitationImpl(
      {required this.id,
      required this.organizationId,
      required this.email,
      this.role = "member",
      this.status = "pending",
      required this.expiresAt,
      required this.inviterId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.organization,
      required this.createdAt});

  factory _$InvitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationImplFromJson(json);

  @override
  final String id;
  @override
  final String organizationId;
  @override
  final String email;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime expiresAt;
  @override
  final String inviterId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Organization? organization;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Invitation(id: $id, organizationId: $organizationId, email: $email, role: $role, status: $status, expiresAt: $expiresAt, inviterId: $inviterId, organization: $organization, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, organizationId, email, role,
      status, expiresAt, inviterId, organization, createdAt);

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationImplCopyWith<_$InvitationImpl> get copyWith =>
      __$$InvitationImplCopyWithImpl<_$InvitationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationImplToJson(
      this,
    );
  }
}

abstract class _Invitation implements Invitation {
  const factory _Invitation(
      {required final String id,
      required final String organizationId,
      required final String email,
      final String role,
      final String status,
      required final DateTime expiresAt,
      required final String inviterId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Organization? organization,
      required final DateTime createdAt}) = _$InvitationImpl;

  factory _Invitation.fromJson(Map<String, dynamic> json) =
      _$InvitationImpl.fromJson;

  @override
  String get id;
  @override
  String get organizationId;
  @override
  String get email;
  @override
  String get role;
  @override
  String get status;
  @override
  DateTime get expiresAt;
  @override
  String get inviterId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Organization? get organization;
  @override
  DateTime get createdAt;

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationImplCopyWith<_$InvitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateInvitationInput _$CreateInvitationInputFromJson(
    Map<String, dynamic> json) {
  return _CreateInvitationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateInvitationInput {
  String get organizationId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String get inviterId => throw _privateConstructorUsedError;

  /// Serializes this CreateInvitationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateInvitationInputCopyWith<CreateInvitationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvitationInputCopyWith<$Res> {
  factory $CreateInvitationInputCopyWith(CreateInvitationInput value,
          $Res Function(CreateInvitationInput) then) =
      _$CreateInvitationInputCopyWithImpl<$Res, CreateInvitationInput>;
  @useResult
  $Res call(
      {String organizationId,
      String email,
      String? role,
      String? status,
      DateTime expiresAt,
      String inviterId});
}

/// @nodoc
class _$CreateInvitationInputCopyWithImpl<$Res,
        $Val extends CreateInvitationInput>
    implements $CreateInvitationInputCopyWith<$Res> {
  _$CreateInvitationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? email = null,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = null,
    Object? inviterId = null,
  }) {
    return _then(_value.copyWith(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateInvitationInputImplCopyWith<$Res>
    implements $CreateInvitationInputCopyWith<$Res> {
  factory _$$CreateInvitationInputImplCopyWith(
          _$CreateInvitationInputImpl value,
          $Res Function(_$CreateInvitationInputImpl) then) =
      __$$CreateInvitationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String organizationId,
      String email,
      String? role,
      String? status,
      DateTime expiresAt,
      String inviterId});
}

/// @nodoc
class __$$CreateInvitationInputImplCopyWithImpl<$Res>
    extends _$CreateInvitationInputCopyWithImpl<$Res,
        _$CreateInvitationInputImpl>
    implements _$$CreateInvitationInputImplCopyWith<$Res> {
  __$$CreateInvitationInputImplCopyWithImpl(_$CreateInvitationInputImpl _value,
      $Res Function(_$CreateInvitationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? email = null,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = null,
    Object? inviterId = null,
  }) {
    return _then(_$CreateInvitationInputImpl(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateInvitationInputImpl implements _CreateInvitationInput {
  const _$CreateInvitationInputImpl(
      {required this.organizationId,
      required this.email,
      this.role = "member",
      this.status = "pending",
      required this.expiresAt,
      required this.inviterId});

  factory _$CreateInvitationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateInvitationInputImplFromJson(json);

  @override
  final String organizationId;
  @override
  final String email;
  @override
  @JsonKey()
  final String? role;
  @override
  @JsonKey()
  final String? status;
  @override
  final DateTime expiresAt;
  @override
  final String inviterId;

  @override
  String toString() {
    return 'CreateInvitationInput(organizationId: $organizationId, email: $email, role: $role, status: $status, expiresAt: $expiresAt, inviterId: $inviterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvitationInputImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, organizationId, email, role, status, expiresAt, inviterId);

  /// Create a copy of CreateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvitationInputImplCopyWith<_$CreateInvitationInputImpl>
      get copyWith => __$$CreateInvitationInputImplCopyWithImpl<
          _$CreateInvitationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInvitationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateInvitationInput implements CreateInvitationInput {
  const factory _CreateInvitationInput(
      {required final String organizationId,
      required final String email,
      final String? role,
      final String? status,
      required final DateTime expiresAt,
      required final String inviterId}) = _$CreateInvitationInputImpl;

  factory _CreateInvitationInput.fromJson(Map<String, dynamic> json) =
      _$CreateInvitationInputImpl.fromJson;

  @override
  String get organizationId;
  @override
  String get email;
  @override
  String? get role;
  @override
  String? get status;
  @override
  DateTime get expiresAt;
  @override
  String get inviterId;

  /// Create a copy of CreateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInvitationInputImplCopyWith<_$CreateInvitationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateInvitationInput _$UpdateInvitationInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateInvitationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateInvitationInput {
  String? get organizationId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get inviterId => throw _privateConstructorUsedError;

  /// Serializes this UpdateInvitationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateInvitationInputCopyWith<UpdateInvitationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInvitationInputCopyWith<$Res> {
  factory $UpdateInvitationInputCopyWith(UpdateInvitationInput value,
          $Res Function(UpdateInvitationInput) then) =
      _$UpdateInvitationInputCopyWithImpl<$Res, UpdateInvitationInput>;
  @useResult
  $Res call(
      {String? organizationId,
      String? email,
      String? role,
      String? status,
      DateTime? expiresAt,
      String? inviterId});
}

/// @nodoc
class _$UpdateInvitationInputCopyWithImpl<$Res,
        $Val extends UpdateInvitationInput>
    implements $UpdateInvitationInputCopyWith<$Res> {
  _$UpdateInvitationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
  }) {
    return _then(_value.copyWith(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInvitationInputImplCopyWith<$Res>
    implements $UpdateInvitationInputCopyWith<$Res> {
  factory _$$UpdateInvitationInputImplCopyWith(
          _$UpdateInvitationInputImpl value,
          $Res Function(_$UpdateInvitationInputImpl) then) =
      __$$UpdateInvitationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? organizationId,
      String? email,
      String? role,
      String? status,
      DateTime? expiresAt,
      String? inviterId});
}

/// @nodoc
class __$$UpdateInvitationInputImplCopyWithImpl<$Res>
    extends _$UpdateInvitationInputCopyWithImpl<$Res,
        _$UpdateInvitationInputImpl>
    implements _$$UpdateInvitationInputImplCopyWith<$Res> {
  __$$UpdateInvitationInputImplCopyWithImpl(_$UpdateInvitationInputImpl _value,
      $Res Function(_$UpdateInvitationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
  }) {
    return _then(_$UpdateInvitationInputImpl(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateInvitationInputImpl implements _UpdateInvitationInput {
  const _$UpdateInvitationInputImpl(
      {this.organizationId,
      this.email,
      this.role,
      this.status,
      this.expiresAt,
      this.inviterId});

  factory _$UpdateInvitationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateInvitationInputImplFromJson(json);

  @override
  final String? organizationId;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? status;
  @override
  final DateTime? expiresAt;
  @override
  final String? inviterId;

  @override
  String toString() {
    return 'UpdateInvitationInput(organizationId: $organizationId, email: $email, role: $role, status: $status, expiresAt: $expiresAt, inviterId: $inviterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInvitationInputImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, organizationId, email, role, status, expiresAt, inviterId);

  /// Create a copy of UpdateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInvitationInputImplCopyWith<_$UpdateInvitationInputImpl>
      get copyWith => __$$UpdateInvitationInputImplCopyWithImpl<
          _$UpdateInvitationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateInvitationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateInvitationInput implements UpdateInvitationInput {
  const factory _UpdateInvitationInput(
      {final String? organizationId,
      final String? email,
      final String? role,
      final String? status,
      final DateTime? expiresAt,
      final String? inviterId}) = _$UpdateInvitationInputImpl;

  factory _UpdateInvitationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateInvitationInputImpl.fromJson;

  @override
  String? get organizationId;
  @override
  String? get email;
  @override
  String? get role;
  @override
  String? get status;
  @override
  DateTime? get expiresAt;
  @override
  String? get inviterId;

  /// Create a copy of UpdateInvitationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInvitationInputImplCopyWith<_$UpdateInvitationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvitationWhereUniqueInput _$InvitationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _InvitationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$InvitationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this InvitationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationWhereUniqueInputCopyWith<InvitationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationWhereUniqueInputCopyWith<$Res> {
  factory $InvitationWhereUniqueInputCopyWith(InvitationWhereUniqueInput value,
          $Res Function(InvitationWhereUniqueInput) then) =
      _$InvitationWhereUniqueInputCopyWithImpl<$Res,
          InvitationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$InvitationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends InvitationWhereUniqueInput>
    implements $InvitationWhereUniqueInputCopyWith<$Res> {
  _$InvitationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationWhereUniqueInput
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
abstract class _$$InvitationWhereUniqueInputImplCopyWith<$Res>
    implements $InvitationWhereUniqueInputCopyWith<$Res> {
  factory _$$InvitationWhereUniqueInputImplCopyWith(
          _$InvitationWhereUniqueInputImpl value,
          $Res Function(_$InvitationWhereUniqueInputImpl) then) =
      __$$InvitationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$InvitationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$InvitationWhereUniqueInputCopyWithImpl<$Res,
        _$InvitationWhereUniqueInputImpl>
    implements _$$InvitationWhereUniqueInputImplCopyWith<$Res> {
  __$$InvitationWhereUniqueInputImplCopyWithImpl(
      _$InvitationWhereUniqueInputImpl _value,
      $Res Function(_$InvitationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$InvitationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvitationWhereUniqueInputImpl implements _InvitationWhereUniqueInput {
  const _$InvitationWhereUniqueInputImpl({this.id});

  factory _$InvitationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvitationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'InvitationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of InvitationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationWhereUniqueInputImplCopyWith<_$InvitationWhereUniqueInputImpl>
      get copyWith => __$$InvitationWhereUniqueInputImplCopyWithImpl<
          _$InvitationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _InvitationWhereUniqueInput
    implements InvitationWhereUniqueInput {
  const factory _InvitationWhereUniqueInput({final String? id}) =
      _$InvitationWhereUniqueInputImpl;

  factory _InvitationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$InvitationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of InvitationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationWhereUniqueInputImplCopyWith<_$InvitationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvitationWhereInput _$InvitationWhereInputFromJson(Map<String, dynamic> json) {
  return _InvitationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$InvitationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get organizationId => throw _privateConstructorUsedError;
  StringFilter? get email => throw _privateConstructorUsedError;
  StringFilter? get role => throw _privateConstructorUsedError;
  StringFilter? get status => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  StringFilter? get inviterId => throw _privateConstructorUsedError;

  /// Filter by organization relation
  OrganizationRelationFilter? get organization =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<InvitationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<InvitationWhereInput>? get OR => throw _privateConstructorUsedError;
  InvitationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this InvitationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationWhereInputCopyWith<InvitationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationWhereInputCopyWith<$Res> {
  factory $InvitationWhereInputCopyWith(InvitationWhereInput value,
          $Res Function(InvitationWhereInput) then) =
      _$InvitationWhereInputCopyWithImpl<$Res, InvitationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? organizationId,
      StringFilter? email,
      StringFilter? role,
      StringFilter? status,
      DateTimeFilter? expiresAt,
      StringFilter? inviterId,
      OrganizationRelationFilter? organization,
      DateTimeFilter? createdAt,
      List<InvitationWhereInput>? AND,
      List<InvitationWhereInput>? OR,
      InvitationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get organizationId;
  $StringFilterCopyWith<$Res>? get email;
  $StringFilterCopyWith<$Res>? get role;
  $StringFilterCopyWith<$Res>? get status;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $StringFilterCopyWith<$Res>? get inviterId;
  $OrganizationRelationFilterCopyWith<$Res>? get organization;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $InvitationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$InvitationWhereInputCopyWithImpl<$Res,
        $Val extends InvitationWhereInput>
    implements $InvitationWhereInputCopyWith<$Res> {
  _$InvitationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
    Object? organization = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<InvitationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<InvitationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get inviterId {
    if (_value.inviterId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.inviterId!, (value) {
      return _then(_value.copyWith(inviterId: value) as $Val);
    });
  }

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
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

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvitationWhereInputImplCopyWith<$Res>
    implements $InvitationWhereInputCopyWith<$Res> {
  factory _$$InvitationWhereInputImplCopyWith(_$InvitationWhereInputImpl value,
          $Res Function(_$InvitationWhereInputImpl) then) =
      __$$InvitationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? organizationId,
      StringFilter? email,
      StringFilter? role,
      StringFilter? status,
      DateTimeFilter? expiresAt,
      StringFilter? inviterId,
      OrganizationRelationFilter? organization,
      DateTimeFilter? createdAt,
      List<InvitationWhereInput>? AND,
      List<InvitationWhereInput>? OR,
      InvitationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get organizationId;
  @override
  $StringFilterCopyWith<$Res>? get email;
  @override
  $StringFilterCopyWith<$Res>? get role;
  @override
  $StringFilterCopyWith<$Res>? get status;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $StringFilterCopyWith<$Res>? get inviterId;
  @override
  $OrganizationRelationFilterCopyWith<$Res>? get organization;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $InvitationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$InvitationWhereInputImplCopyWithImpl<$Res>
    extends _$InvitationWhereInputCopyWithImpl<$Res, _$InvitationWhereInputImpl>
    implements _$$InvitationWhereInputImplCopyWith<$Res> {
  __$$InvitationWhereInputImplCopyWithImpl(_$InvitationWhereInputImpl _value,
      $Res Function(_$InvitationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
    Object? organization = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$InvitationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<InvitationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<InvitationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$InvitationWhereInputImpl implements _InvitationWhereInput {
  const _$InvitationWhereInputImpl(
      {this.id,
      this.organizationId,
      this.email,
      this.role,
      this.status,
      this.expiresAt,
      this.inviterId,
      this.organization,
      this.createdAt,
      final List<InvitationWhereInput>? AND,
      final List<InvitationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$InvitationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? organizationId;
  @override
  final StringFilter? email;
  @override
  final StringFilter? role;
  @override
  final StringFilter? status;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final StringFilter? inviterId;

  /// Filter by organization relation
  @override
  final OrganizationRelationFilter? organization;
  @override
  final DateTimeFilter? createdAt;
  final List<InvitationWhereInput>? _AND;
  @override
  List<InvitationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InvitationWhereInput>? _OR;
  @override
  List<InvitationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final InvitationWhereInput? NOT;

  @override
  String toString() {
    return 'InvitationWhereInput(id: $id, organizationId: $organizationId, email: $email, role: $role, status: $status, expiresAt: $expiresAt, inviterId: $inviterId, organization: $organization, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
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
      email,
      role,
      status,
      expiresAt,
      inviterId,
      organization,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationWhereInputImplCopyWith<_$InvitationWhereInputImpl>
      get copyWith =>
          __$$InvitationWhereInputImplCopyWithImpl<_$InvitationWhereInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _InvitationWhereInput implements InvitationWhereInput {
  const factory _InvitationWhereInput(
      {final StringFilter? id,
      final StringFilter? organizationId,
      final StringFilter? email,
      final StringFilter? role,
      final StringFilter? status,
      final DateTimeFilter? expiresAt,
      final StringFilter? inviterId,
      final OrganizationRelationFilter? organization,
      final DateTimeFilter? createdAt,
      final List<InvitationWhereInput>? AND,
      final List<InvitationWhereInput>? OR,
      final InvitationWhereInput? NOT}) = _$InvitationWhereInputImpl;

  factory _InvitationWhereInput.fromJson(Map<String, dynamic> json) =
      _$InvitationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get organizationId;
  @override
  StringFilter? get email;
  @override
  StringFilter? get role;
  @override
  StringFilter? get status;
  @override
  DateTimeFilter? get expiresAt;
  @override
  StringFilter? get inviterId;

  /// Filter by organization relation
  @override
  OrganizationRelationFilter? get organization;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<InvitationWhereInput>? get AND;
  @override
  List<InvitationWhereInput>? get OR;
  @override
  InvitationWhereInput? get NOT;

  /// Create a copy of InvitationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationWhereInputImplCopyWith<_$InvitationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvitationListRelationFilter _$InvitationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _InvitationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$InvitationListRelationFilter {
  /// At least one related record matches
  InvitationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  InvitationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  InvitationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this InvitationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationListRelationFilterCopyWith<InvitationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationListRelationFilterCopyWith<$Res> {
  factory $InvitationListRelationFilterCopyWith(
          InvitationListRelationFilter value,
          $Res Function(InvitationListRelationFilter) then) =
      _$InvitationListRelationFilterCopyWithImpl<$Res,
          InvitationListRelationFilter>;
  @useResult
  $Res call(
      {InvitationWhereInput? some,
      InvitationWhereInput? every,
      InvitationWhereInput? none});

  $InvitationWhereInputCopyWith<$Res>? get some;
  $InvitationWhereInputCopyWith<$Res>? get every;
  $InvitationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$InvitationListRelationFilterCopyWithImpl<$Res,
        $Val extends InvitationListRelationFilter>
    implements $InvitationListRelationFilterCopyWith<$Res> {
  _$InvitationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationListRelationFilter
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
              as InvitationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvitationListRelationFilterImplCopyWith<$Res>
    implements $InvitationListRelationFilterCopyWith<$Res> {
  factory _$$InvitationListRelationFilterImplCopyWith(
          _$InvitationListRelationFilterImpl value,
          $Res Function(_$InvitationListRelationFilterImpl) then) =
      __$$InvitationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvitationWhereInput? some,
      InvitationWhereInput? every,
      InvitationWhereInput? none});

  @override
  $InvitationWhereInputCopyWith<$Res>? get some;
  @override
  $InvitationWhereInputCopyWith<$Res>? get every;
  @override
  $InvitationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$InvitationListRelationFilterImplCopyWithImpl<$Res>
    extends _$InvitationListRelationFilterCopyWithImpl<$Res,
        _$InvitationListRelationFilterImpl>
    implements _$$InvitationListRelationFilterImplCopyWith<$Res> {
  __$$InvitationListRelationFilterImplCopyWithImpl(
      _$InvitationListRelationFilterImpl _value,
      $Res Function(_$InvitationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$InvitationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvitationListRelationFilterImpl
    implements _InvitationListRelationFilter {
  const _$InvitationListRelationFilterImpl({this.some, this.every, this.none});

  factory _$InvitationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvitationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final InvitationWhereInput? some;

  /// All related records match
  @override
  final InvitationWhereInput? every;

  /// No related records match
  @override
  final InvitationWhereInput? none;

  @override
  String toString() {
    return 'InvitationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationListRelationFilterImplCopyWith<
          _$InvitationListRelationFilterImpl>
      get copyWith => __$$InvitationListRelationFilterImplCopyWithImpl<
          _$InvitationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _InvitationListRelationFilter
    implements InvitationListRelationFilter {
  const factory _InvitationListRelationFilter(
      {final InvitationWhereInput? some,
      final InvitationWhereInput? every,
      final InvitationWhereInput? none}) = _$InvitationListRelationFilterImpl;

  factory _InvitationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$InvitationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  InvitationWhereInput? get some;

  /// All related records match
  @override
  InvitationWhereInput? get every;

  /// No related records match
  @override
  InvitationWhereInput? get none;

  /// Create a copy of InvitationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationListRelationFilterImplCopyWith<
          _$InvitationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvitationRelationFilter _$InvitationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _InvitationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$InvitationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  InvitationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  InvitationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this InvitationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationRelationFilterCopyWith<InvitationRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationRelationFilterCopyWith<$Res> {
  factory $InvitationRelationFilterCopyWith(InvitationRelationFilter value,
          $Res Function(InvitationRelationFilter) then) =
      _$InvitationRelationFilterCopyWithImpl<$Res, InvitationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') InvitationWhereInput? is_,
      InvitationWhereInput? isNot});

  $InvitationWhereInputCopyWith<$Res>? get is_;
  $InvitationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$InvitationRelationFilterCopyWithImpl<$Res,
        $Val extends InvitationRelationFilter>
    implements $InvitationRelationFilterCopyWith<$Res> {
  _$InvitationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationRelationFilter
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
              as InvitationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $InvitationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvitationRelationFilterImplCopyWith<$Res>
    implements $InvitationRelationFilterCopyWith<$Res> {
  factory _$$InvitationRelationFilterImplCopyWith(
          _$InvitationRelationFilterImpl value,
          $Res Function(_$InvitationRelationFilterImpl) then) =
      __$$InvitationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') InvitationWhereInput? is_,
      InvitationWhereInput? isNot});

  @override
  $InvitationWhereInputCopyWith<$Res>? get is_;
  @override
  $InvitationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$InvitationRelationFilterImplCopyWithImpl<$Res>
    extends _$InvitationRelationFilterCopyWithImpl<$Res,
        _$InvitationRelationFilterImpl>
    implements _$$InvitationRelationFilterImplCopyWith<$Res> {
  __$$InvitationRelationFilterImplCopyWithImpl(
      _$InvitationRelationFilterImpl _value,
      $Res Function(_$InvitationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$InvitationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as InvitationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvitationRelationFilterImpl implements _InvitationRelationFilter {
  const _$InvitationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$InvitationRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final InvitationWhereInput? is_;

  /// Related record does not match
  @override
  final InvitationWhereInput? isNot;

  @override
  String toString() {
    return 'InvitationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationRelationFilterImplCopyWith<_$InvitationRelationFilterImpl>
      get copyWith => __$$InvitationRelationFilterImplCopyWithImpl<
          _$InvitationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _InvitationRelationFilter implements InvitationRelationFilter {
  const factory _InvitationRelationFilter(
      {@JsonKey(name: 'is') final InvitationWhereInput? is_,
      final InvitationWhereInput? isNot}) = _$InvitationRelationFilterImpl;

  factory _InvitationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$InvitationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  InvitationWhereInput? get is_;

  /// Related record does not match
  @override
  InvitationWhereInput? get isNot;

  /// Create a copy of InvitationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationRelationFilterImplCopyWith<_$InvitationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvitationOrderByInput _$InvitationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _InvitationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$InvitationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get organizationId => throw _privateConstructorUsedError;
  SortOrder? get email => throw _privateConstructorUsedError;
  SortOrder? get role => throw _privateConstructorUsedError;
  SortOrder? get status => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get inviterId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this InvitationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationOrderByInputCopyWith<InvitationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationOrderByInputCopyWith<$Res> {
  factory $InvitationOrderByInputCopyWith(InvitationOrderByInput value,
          $Res Function(InvitationOrderByInput) then) =
      _$InvitationOrderByInputCopyWithImpl<$Res, InvitationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? organizationId,
      SortOrder? email,
      SortOrder? role,
      SortOrder? status,
      SortOrder? expiresAt,
      SortOrder? inviterId,
      SortOrder? createdAt});
}

/// @nodoc
class _$InvitationOrderByInputCopyWithImpl<$Res,
        $Val extends InvitationOrderByInput>
    implements $InvitationOrderByInputCopyWith<$Res> {
  _$InvitationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvitationOrderByInputImplCopyWith<$Res>
    implements $InvitationOrderByInputCopyWith<$Res> {
  factory _$$InvitationOrderByInputImplCopyWith(
          _$InvitationOrderByInputImpl value,
          $Res Function(_$InvitationOrderByInputImpl) then) =
      __$$InvitationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? organizationId,
      SortOrder? email,
      SortOrder? role,
      SortOrder? status,
      SortOrder? expiresAt,
      SortOrder? inviterId,
      SortOrder? createdAt});
}

/// @nodoc
class __$$InvitationOrderByInputImplCopyWithImpl<$Res>
    extends _$InvitationOrderByInputCopyWithImpl<$Res,
        _$InvitationOrderByInputImpl>
    implements _$$InvitationOrderByInputImplCopyWith<$Res> {
  __$$InvitationOrderByInputImplCopyWithImpl(
      _$InvitationOrderByInputImpl _value,
      $Res Function(_$InvitationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? inviterId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$InvitationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      inviterId: freezed == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
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
class _$InvitationOrderByInputImpl implements _InvitationOrderByInput {
  const _$InvitationOrderByInputImpl(
      {this.id,
      this.organizationId,
      this.email,
      this.role,
      this.status,
      this.expiresAt,
      this.inviterId,
      this.createdAt});

  factory _$InvitationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? organizationId;
  @override
  final SortOrder? email;
  @override
  final SortOrder? role;
  @override
  final SortOrder? status;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? inviterId;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'InvitationOrderByInput(id: $id, organizationId: $organizationId, email: $email, role: $role, status: $status, expiresAt: $expiresAt, inviterId: $inviterId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, organizationId, email, role,
      status, expiresAt, inviterId, createdAt);

  /// Create a copy of InvitationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationOrderByInputImplCopyWith<_$InvitationOrderByInputImpl>
      get copyWith => __$$InvitationOrderByInputImplCopyWithImpl<
          _$InvitationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _InvitationOrderByInput implements InvitationOrderByInput {
  const factory _InvitationOrderByInput(
      {final SortOrder? id,
      final SortOrder? organizationId,
      final SortOrder? email,
      final SortOrder? role,
      final SortOrder? status,
      final SortOrder? expiresAt,
      final SortOrder? inviterId,
      final SortOrder? createdAt}) = _$InvitationOrderByInputImpl;

  factory _InvitationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$InvitationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get organizationId;
  @override
  SortOrder? get email;
  @override
  SortOrder? get role;
  @override
  SortOrder? get status;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get inviterId;
  @override
  SortOrder? get createdAt;

  /// Create a copy of InvitationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationOrderByInputImplCopyWith<_$InvitationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
