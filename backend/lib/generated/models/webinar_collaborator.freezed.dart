// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar_collaborator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebinarCollaborator _$WebinarCollaboratorFromJson(Map<String, dynamic> json) {
  return _WebinarCollaborator.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaborator {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get webinarPlanId => throw _privateConstructorUsedError;
  WebinarCollaboratorRole get role => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;
  double get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatus get status => throw _privateConstructorUsedError;
  String get invitedById => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get invitedBy => throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaborator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorCopyWith<WebinarCollaborator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorCopyWith<$Res> {
  factory $WebinarCollaboratorCopyWith(
          WebinarCollaborator value, $Res Function(WebinarCollaborator) then) =
      _$WebinarCollaboratorCopyWithImpl<$Res, WebinarCollaborator>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String webinarPlanId,
      WebinarCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? invitedBy});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  $ConsultantProfileCopyWith<$Res>? get invitedBy;
}

/// @nodoc
class _$WebinarCollaboratorCopyWithImpl<$Res, $Val extends WebinarCollaborator>
    implements $WebinarCollaboratorCopyWith<$Res> {
  _$WebinarCollaboratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? webinarPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? webinarPlan = freezed,
    Object? invitedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: null == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus,
      invitedById: null == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
    ) as $Val);
  }

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileCopyWith<$Res>(_value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanCopyWith<$Res>? get webinarPlan {
    if (_value.webinarPlan == null) {
      return null;
    }

    return $WebinarPlanCopyWith<$Res>(_value.webinarPlan!, (value) {
      return _then(_value.copyWith(webinarPlan: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileCopyWith<$Res>? get invitedBy {
    if (_value.invitedBy == null) {
      return null;
    }

    return $ConsultantProfileCopyWith<$Res>(_value.invitedBy!, (value) {
      return _then(_value.copyWith(invitedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarCollaboratorImplCopyWith<$Res>
    implements $WebinarCollaboratorCopyWith<$Res> {
  factory _$$WebinarCollaboratorImplCopyWith(_$WebinarCollaboratorImpl value,
          $Res Function(_$WebinarCollaboratorImpl) then) =
      __$$WebinarCollaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String webinarPlanId,
      WebinarCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? invitedBy});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  @override
  $ConsultantProfileCopyWith<$Res>? get invitedBy;
}

/// @nodoc
class __$$WebinarCollaboratorImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorCopyWithImpl<$Res, _$WebinarCollaboratorImpl>
    implements _$$WebinarCollaboratorImplCopyWith<$Res> {
  __$$WebinarCollaboratorImplCopyWithImpl(_$WebinarCollaboratorImpl _value,
      $Res Function(_$WebinarCollaboratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? webinarPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? webinarPlan = freezed,
    Object? invitedBy = freezed,
  }) {
    return _then(_$WebinarCollaboratorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: null == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus,
      invitedById: null == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarCollaboratorImpl implements _WebinarCollaborator {
  const _$WebinarCollaboratorImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.webinarPlanId,
      this.role = WebinarCollaboratorRole.coHost,
      final Map<String, dynamic>? permissions,
      required this.revenueSharePercentage,
      this.status = CollaboratorStatus.pending,
      required this.invitedById,
      this.respondedAt,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) this.webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false) this.invitedBy})
      : _permissions = permissions;

  factory _$WebinarCollaboratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarCollaboratorImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final String webinarPlanId;
  @override
  @JsonKey()
  final WebinarCollaboratorRole role;
  final Map<String, dynamic>? _permissions;
  @override
  Map<String, dynamic>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double revenueSharePercentage;
  @override
  @JsonKey()
  final CollaboratorStatus status;
  @override
  final String invitedById;
  @override
  final DateTime? respondedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final WebinarPlan? webinarPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? invitedBy;

  @override
  String toString() {
    return 'WebinarCollaborator(id: $id, consultantProfileId: $consultantProfileId, webinarPlanId: $webinarPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, webinarPlan: $webinarPlan, invitedBy: $invitedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.revenueSharePercentage, revenueSharePercentage) ||
                other.revenueSharePercentage == revenueSharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultantProfileId,
      webinarPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt,
      consultantProfile,
      webinarPlan,
      invitedBy);

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorImplCopyWith<_$WebinarCollaboratorImpl> get copyWith =>
      __$$WebinarCollaboratorImplCopyWithImpl<_$WebinarCollaboratorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaborator implements WebinarCollaborator {
  const factory _WebinarCollaborator(
      {required final String id,
      required final String consultantProfileId,
      required final String webinarPlanId,
      final WebinarCollaboratorRole role,
      final Map<String, dynamic>? permissions,
      required final double revenueSharePercentage,
      final CollaboratorStatus status,
      required final String invitedById,
      final DateTime? respondedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? invitedBy}) = _$WebinarCollaboratorImpl;

  factory _WebinarCollaborator.fromJson(Map<String, dynamic> json) =
      _$WebinarCollaboratorImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  String get webinarPlanId;
  @override
  WebinarCollaboratorRole get role;
  @override
  Map<String, dynamic>? get permissions;
  @override
  double get revenueSharePercentage;
  @override
  CollaboratorStatus get status;
  @override
  String get invitedById;
  @override
  DateTime? get respondedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get invitedBy;

  /// Create a copy of WebinarCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorImplCopyWith<_$WebinarCollaboratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWebinarCollaboratorInput _$CreateWebinarCollaboratorInputFromJson(
    Map<String, dynamic> json) {
  return _CreateWebinarCollaboratorInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWebinarCollaboratorInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get webinarPlanId => throw _privateConstructorUsedError;
  WebinarCollaboratorRole get role => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;
  double get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatus get status => throw _privateConstructorUsedError;
  String get invitedById => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateWebinarCollaboratorInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWebinarCollaboratorInputCopyWith<CreateWebinarCollaboratorInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWebinarCollaboratorInputCopyWith<$Res> {
  factory $CreateWebinarCollaboratorInputCopyWith(
          CreateWebinarCollaboratorInput value,
          $Res Function(CreateWebinarCollaboratorInput) then) =
      _$CreateWebinarCollaboratorInputCopyWithImpl<$Res,
          CreateWebinarCollaboratorInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      String webinarPlanId,
      WebinarCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class _$CreateWebinarCollaboratorInputCopyWithImpl<$Res,
        $Val extends CreateWebinarCollaboratorInput>
    implements $CreateWebinarCollaboratorInputCopyWith<$Res> {
  _$CreateWebinarCollaboratorInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? webinarPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: null == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus,
      invitedById: null == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWebinarCollaboratorInputImplCopyWith<$Res>
    implements $CreateWebinarCollaboratorInputCopyWith<$Res> {
  factory _$$CreateWebinarCollaboratorInputImplCopyWith(
          _$CreateWebinarCollaboratorInputImpl value,
          $Res Function(_$CreateWebinarCollaboratorInputImpl) then) =
      __$$CreateWebinarCollaboratorInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      String webinarPlanId,
      WebinarCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class __$$CreateWebinarCollaboratorInputImplCopyWithImpl<$Res>
    extends _$CreateWebinarCollaboratorInputCopyWithImpl<$Res,
        _$CreateWebinarCollaboratorInputImpl>
    implements _$$CreateWebinarCollaboratorInputImplCopyWith<$Res> {
  __$$CreateWebinarCollaboratorInputImplCopyWithImpl(
      _$CreateWebinarCollaboratorInputImpl _value,
      $Res Function(_$CreateWebinarCollaboratorInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? webinarPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
  }) {
    return _then(_$CreateWebinarCollaboratorInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: null == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus,
      invitedById: null == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWebinarCollaboratorInputImpl
    implements _CreateWebinarCollaboratorInput {
  const _$CreateWebinarCollaboratorInputImpl(
      {required this.consultantProfileId,
      required this.webinarPlanId,
      this.role = WebinarCollaboratorRole.coHost,
      final Map<String, dynamic>? permissions,
      required this.revenueSharePercentage,
      this.status = CollaboratorStatus.pending,
      required this.invitedById,
      this.respondedAt})
      : _permissions = permissions;

  factory _$CreateWebinarCollaboratorInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateWebinarCollaboratorInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final String webinarPlanId;
  @override
  @JsonKey()
  final WebinarCollaboratorRole role;
  final Map<String, dynamic>? _permissions;
  @override
  Map<String, dynamic>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double revenueSharePercentage;
  @override
  @JsonKey()
  final CollaboratorStatus status;
  @override
  final String invitedById;
  @override
  final DateTime? respondedAt;

  @override
  String toString() {
    return 'CreateWebinarCollaboratorInput(consultantProfileId: $consultantProfileId, webinarPlanId: $webinarPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWebinarCollaboratorInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.revenueSharePercentage, revenueSharePercentage) ||
                other.revenueSharePercentage == revenueSharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      webinarPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt);

  /// Create a copy of CreateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWebinarCollaboratorInputImplCopyWith<
          _$CreateWebinarCollaboratorInputImpl>
      get copyWith => __$$CreateWebinarCollaboratorInputImplCopyWithImpl<
          _$CreateWebinarCollaboratorInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWebinarCollaboratorInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWebinarCollaboratorInput
    implements CreateWebinarCollaboratorInput {
  const factory _CreateWebinarCollaboratorInput(
      {required final String consultantProfileId,
      required final String webinarPlanId,
      final WebinarCollaboratorRole role,
      final Map<String, dynamic>? permissions,
      required final double revenueSharePercentage,
      final CollaboratorStatus status,
      required final String invitedById,
      final DateTime? respondedAt}) = _$CreateWebinarCollaboratorInputImpl;

  factory _CreateWebinarCollaboratorInput.fromJson(Map<String, dynamic> json) =
      _$CreateWebinarCollaboratorInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  String get webinarPlanId;
  @override
  WebinarCollaboratorRole get role;
  @override
  Map<String, dynamic>? get permissions;
  @override
  double get revenueSharePercentage;
  @override
  CollaboratorStatus get status;
  @override
  String get invitedById;
  @override
  DateTime? get respondedAt;

  /// Create a copy of CreateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWebinarCollaboratorInputImplCopyWith<
          _$CreateWebinarCollaboratorInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateWebinarCollaboratorInput _$UpdateWebinarCollaboratorInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateWebinarCollaboratorInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWebinarCollaboratorInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get webinarPlanId => throw _privateConstructorUsedError;
  WebinarCollaboratorRole? get role => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;
  double? get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatus? get status => throw _privateConstructorUsedError;
  String? get invitedById => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateWebinarCollaboratorInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWebinarCollaboratorInputCopyWith<UpdateWebinarCollaboratorInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWebinarCollaboratorInputCopyWith<$Res> {
  factory $UpdateWebinarCollaboratorInputCopyWith(
          UpdateWebinarCollaboratorInput value,
          $Res Function(UpdateWebinarCollaboratorInput) then) =
      _$UpdateWebinarCollaboratorInputCopyWithImpl<$Res,
          UpdateWebinarCollaboratorInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? webinarPlanId,
      WebinarCollaboratorRole? role,
      Map<String, dynamic>? permissions,
      double? revenueSharePercentage,
      CollaboratorStatus? status,
      String? invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class _$UpdateWebinarCollaboratorInputCopyWithImpl<$Res,
        $Val extends UpdateWebinarCollaboratorInput>
    implements $UpdateWebinarCollaboratorInputCopyWith<$Res> {
  _$UpdateWebinarCollaboratorInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? role = freezed,
    Object? permissions = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
  }) {
    return _then(_value.copyWith(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWebinarCollaboratorInputImplCopyWith<$Res>
    implements $UpdateWebinarCollaboratorInputCopyWith<$Res> {
  factory _$$UpdateWebinarCollaboratorInputImplCopyWith(
          _$UpdateWebinarCollaboratorInputImpl value,
          $Res Function(_$UpdateWebinarCollaboratorInputImpl) then) =
      __$$UpdateWebinarCollaboratorInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? webinarPlanId,
      WebinarCollaboratorRole? role,
      Map<String, dynamic>? permissions,
      double? revenueSharePercentage,
      CollaboratorStatus? status,
      String? invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class __$$UpdateWebinarCollaboratorInputImplCopyWithImpl<$Res>
    extends _$UpdateWebinarCollaboratorInputCopyWithImpl<$Res,
        _$UpdateWebinarCollaboratorInputImpl>
    implements _$$UpdateWebinarCollaboratorInputImplCopyWith<$Res> {
  __$$UpdateWebinarCollaboratorInputImplCopyWithImpl(
      _$UpdateWebinarCollaboratorInputImpl _value,
      $Res Function(_$UpdateWebinarCollaboratorInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? role = freezed,
    Object? permissions = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
  }) {
    return _then(_$UpdateWebinarCollaboratorInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWebinarCollaboratorInputImpl
    implements _UpdateWebinarCollaboratorInput {
  const _$UpdateWebinarCollaboratorInputImpl(
      {this.consultantProfileId,
      this.webinarPlanId,
      this.role,
      final Map<String, dynamic>? permissions,
      this.revenueSharePercentage,
      this.status,
      this.invitedById,
      this.respondedAt})
      : _permissions = permissions;

  factory _$UpdateWebinarCollaboratorInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateWebinarCollaboratorInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final String? webinarPlanId;
  @override
  final WebinarCollaboratorRole? role;
  final Map<String, dynamic>? _permissions;
  @override
  Map<String, dynamic>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? revenueSharePercentage;
  @override
  final CollaboratorStatus? status;
  @override
  final String? invitedById;
  @override
  final DateTime? respondedAt;

  @override
  String toString() {
    return 'UpdateWebinarCollaboratorInput(consultantProfileId: $consultantProfileId, webinarPlanId: $webinarPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWebinarCollaboratorInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.revenueSharePercentage, revenueSharePercentage) ||
                other.revenueSharePercentage == revenueSharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantProfileId,
      webinarPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt);

  /// Create a copy of UpdateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWebinarCollaboratorInputImplCopyWith<
          _$UpdateWebinarCollaboratorInputImpl>
      get copyWith => __$$UpdateWebinarCollaboratorInputImplCopyWithImpl<
          _$UpdateWebinarCollaboratorInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWebinarCollaboratorInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWebinarCollaboratorInput
    implements UpdateWebinarCollaboratorInput {
  const factory _UpdateWebinarCollaboratorInput(
      {final String? consultantProfileId,
      final String? webinarPlanId,
      final WebinarCollaboratorRole? role,
      final Map<String, dynamic>? permissions,
      final double? revenueSharePercentage,
      final CollaboratorStatus? status,
      final String? invitedById,
      final DateTime? respondedAt}) = _$UpdateWebinarCollaboratorInputImpl;

  factory _UpdateWebinarCollaboratorInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWebinarCollaboratorInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  String? get webinarPlanId;
  @override
  WebinarCollaboratorRole? get role;
  @override
  Map<String, dynamic>? get permissions;
  @override
  double? get revenueSharePercentage;
  @override
  CollaboratorStatus? get status;
  @override
  String? get invitedById;
  @override
  DateTime? get respondedAt;

  /// Create a copy of UpdateWebinarCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWebinarCollaboratorInputImplCopyWith<
          _$UpdateWebinarCollaboratorInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorWhereUniqueInput
    _$WebinarCollaboratorWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _WebinarCollaboratorWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorWhereUniqueInputCopyWith<
          WebinarCollaboratorWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorWhereUniqueInputCopyWith<$Res> {
  factory $WebinarCollaboratorWhereUniqueInputCopyWith(
          WebinarCollaboratorWhereUniqueInput value,
          $Res Function(WebinarCollaboratorWhereUniqueInput) then) =
      _$WebinarCollaboratorWhereUniqueInputCopyWithImpl<$Res,
          WebinarCollaboratorWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$WebinarCollaboratorWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorWhereUniqueInput>
    implements $WebinarCollaboratorWhereUniqueInputCopyWith<$Res> {
  _$WebinarCollaboratorWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorWhereUniqueInput
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
abstract class _$$WebinarCollaboratorWhereUniqueInputImplCopyWith<$Res>
    implements $WebinarCollaboratorWhereUniqueInputCopyWith<$Res> {
  factory _$$WebinarCollaboratorWhereUniqueInputImplCopyWith(
          _$WebinarCollaboratorWhereUniqueInputImpl value,
          $Res Function(_$WebinarCollaboratorWhereUniqueInputImpl) then) =
      __$$WebinarCollaboratorWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$WebinarCollaboratorWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorWhereUniqueInputCopyWithImpl<$Res,
        _$WebinarCollaboratorWhereUniqueInputImpl>
    implements _$$WebinarCollaboratorWhereUniqueInputImplCopyWith<$Res> {
  __$$WebinarCollaboratorWhereUniqueInputImplCopyWithImpl(
      _$WebinarCollaboratorWhereUniqueInputImpl _value,
      $Res Function(_$WebinarCollaboratorWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WebinarCollaboratorWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarCollaboratorWhereUniqueInputImpl
    implements _WebinarCollaboratorWhereUniqueInput {
  const _$WebinarCollaboratorWhereUniqueInputImpl({this.id});

  factory _$WebinarCollaboratorWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'WebinarCollaboratorWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WebinarCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorWhereUniqueInputImplCopyWith<
          _$WebinarCollaboratorWhereUniqueInputImpl>
      get copyWith => __$$WebinarCollaboratorWhereUniqueInputImplCopyWithImpl<
          _$WebinarCollaboratorWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorWhereUniqueInput
    implements WebinarCollaboratorWhereUniqueInput {
  const factory _WebinarCollaboratorWhereUniqueInput({final String? id}) =
      _$WebinarCollaboratorWhereUniqueInputImpl;

  factory _WebinarCollaboratorWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$WebinarCollaboratorWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of WebinarCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorWhereUniqueInputImplCopyWith<
          _$WebinarCollaboratorWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorWhereInput _$WebinarCollaboratorWhereInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarCollaboratorWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get webinarPlanId => throw _privateConstructorUsedError;
  WebinarCollaboratorRoleFilter? get role => throw _privateConstructorUsedError;
  FloatFilter? get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get invitedById => throw _privateConstructorUsedError;
  DateTimeFilter? get respondedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;

  /// Filter by webinarPlan relation
  WebinarPlanRelationFilter? get webinarPlan =>
      throw _privateConstructorUsedError;

  /// Filter by invitedBy relation
  ConsultantProfileRelationFilter? get invitedBy =>
      throw _privateConstructorUsedError;
  List<WebinarCollaboratorWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<WebinarCollaboratorWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  WebinarCollaboratorWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorWhereInputCopyWith<WebinarCollaboratorWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorWhereInputCopyWith<$Res> {
  factory $WebinarCollaboratorWhereInputCopyWith(
          WebinarCollaboratorWhereInput value,
          $Res Function(WebinarCollaboratorWhereInput) then) =
      _$WebinarCollaboratorWhereInputCopyWithImpl<$Res,
          WebinarCollaboratorWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? webinarPlanId,
      WebinarCollaboratorRoleFilter? role,
      FloatFilter? revenueSharePercentage,
      CollaboratorStatusFilter? status,
      StringFilter? invitedById,
      DateTimeFilter? respondedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      WebinarPlanRelationFilter? webinarPlan,
      ConsultantProfileRelationFilter? invitedBy,
      List<WebinarCollaboratorWhereInput>? AND,
      List<WebinarCollaboratorWhereInput>? OR,
      WebinarCollaboratorWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  $WebinarCollaboratorRoleFilterCopyWith<$Res>? get role;
  $FloatFilterCopyWith<$Res>? get revenueSharePercentage;
  $CollaboratorStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get invitedById;
  $DateTimeFilterCopyWith<$Res>? get respondedAt;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get invitedBy;
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WebinarCollaboratorWhereInputCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorWhereInput>
    implements $WebinarCollaboratorWhereInputCopyWith<$Res> {
  _$WebinarCollaboratorWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? role = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? webinarPlan = freezed,
    Object? invitedBy = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRoleFilter?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatusFilter?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarCollaboratorWhereInput
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

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultantProfileId {
    if (_value.consultantProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultantProfileId!, (value) {
      return _then(_value.copyWith(consultantProfileId: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get webinarPlanId {
    if (_value.webinarPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.webinarPlanId!, (value) {
      return _then(_value.copyWith(webinarPlanId: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorRoleFilterCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $WebinarCollaboratorRoleFilterCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get revenueSharePercentage {
    if (_value.revenueSharePercentage == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.revenueSharePercentage!, (value) {
      return _then(_value.copyWith(revenueSharePercentage: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollaboratorStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CollaboratorStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get invitedById {
    if (_value.invitedById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.invitedById!, (value) {
      return _then(_value.copyWith(invitedById: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get respondedAt {
    if (_value.respondedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.respondedAt!, (value) {
      return _then(_value.copyWith(respondedAt: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
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

  /// Create a copy of WebinarCollaboratorWhereInput
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

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileRelationFilterCopyWith<$Res>(
        _value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan {
    if (_value.webinarPlan == null) {
      return null;
    }

    return $WebinarPlanRelationFilterCopyWith<$Res>(_value.webinarPlan!,
        (value) {
      return _then(_value.copyWith(webinarPlan: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileRelationFilterCopyWith<$Res>? get invitedBy {
    if (_value.invitedBy == null) {
      return null;
    }

    return $ConsultantProfileRelationFilterCopyWith<$Res>(_value.invitedBy!,
        (value) {
      return _then(_value.copyWith(invitedBy: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarCollaboratorWhereInputImplCopyWith<$Res>
    implements $WebinarCollaboratorWhereInputCopyWith<$Res> {
  factory _$$WebinarCollaboratorWhereInputImplCopyWith(
          _$WebinarCollaboratorWhereInputImpl value,
          $Res Function(_$WebinarCollaboratorWhereInputImpl) then) =
      __$$WebinarCollaboratorWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? webinarPlanId,
      WebinarCollaboratorRoleFilter? role,
      FloatFilter? revenueSharePercentage,
      CollaboratorStatusFilter? status,
      StringFilter? invitedById,
      DateTimeFilter? respondedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      WebinarPlanRelationFilter? webinarPlan,
      ConsultantProfileRelationFilter? invitedBy,
      List<WebinarCollaboratorWhereInput>? AND,
      List<WebinarCollaboratorWhereInput>? OR,
      WebinarCollaboratorWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  @override
  $WebinarCollaboratorRoleFilterCopyWith<$Res>? get role;
  @override
  $FloatFilterCopyWith<$Res>? get revenueSharePercentage;
  @override
  $CollaboratorStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get invitedById;
  @override
  $DateTimeFilterCopyWith<$Res>? get respondedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get invitedBy;
  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WebinarCollaboratorWhereInputImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorWhereInputCopyWithImpl<$Res,
        _$WebinarCollaboratorWhereInputImpl>
    implements _$$WebinarCollaboratorWhereInputImplCopyWith<$Res> {
  __$$WebinarCollaboratorWhereInputImplCopyWithImpl(
      _$WebinarCollaboratorWhereInputImpl _value,
      $Res Function(_$WebinarCollaboratorWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? role = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? webinarPlan = freezed,
    Object? invitedBy = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$WebinarCollaboratorWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRoleFilter?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatusFilter?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WebinarCollaboratorWhereInputImpl
    implements _WebinarCollaboratorWhereInput {
  const _$WebinarCollaboratorWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.webinarPlanId,
      this.role,
      this.revenueSharePercentage,
      this.status,
      this.invitedById,
      this.respondedAt,
      this.createdAt,
      this.updatedAt,
      this.consultantProfile,
      this.webinarPlan,
      this.invitedBy,
      final List<WebinarCollaboratorWhereInput>? AND,
      final List<WebinarCollaboratorWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WebinarCollaboratorWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? webinarPlanId;
  @override
  final WebinarCollaboratorRoleFilter? role;
  @override
  final FloatFilter? revenueSharePercentage;
  @override
  final CollaboratorStatusFilter? status;
  @override
  final StringFilter? invitedById;
  @override
  final DateTimeFilter? respondedAt;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;

  /// Filter by webinarPlan relation
  @override
  final WebinarPlanRelationFilter? webinarPlan;

  /// Filter by invitedBy relation
  @override
  final ConsultantProfileRelationFilter? invitedBy;
  final List<WebinarCollaboratorWhereInput>? _AND;
  @override
  List<WebinarCollaboratorWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebinarCollaboratorWhereInput>? _OR;
  @override
  List<WebinarCollaboratorWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WebinarCollaboratorWhereInput? NOT;

  @override
  String toString() {
    return 'WebinarCollaboratorWhereInput(id: $id, consultantProfileId: $consultantProfileId, webinarPlanId: $webinarPlanId, role: $role, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, webinarPlan: $webinarPlan, invitedBy: $invitedBy, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.revenueSharePercentage, revenueSharePercentage) ||
                other.revenueSharePercentage == revenueSharePercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultantProfileId,
      webinarPlanId,
      role,
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt,
      consultantProfile,
      webinarPlan,
      invitedBy,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorWhereInputImplCopyWith<
          _$WebinarCollaboratorWhereInputImpl>
      get copyWith => __$$WebinarCollaboratorWhereInputImplCopyWithImpl<
          _$WebinarCollaboratorWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorWhereInput
    implements WebinarCollaboratorWhereInput {
  const factory _WebinarCollaboratorWhereInput(
          {final StringFilter? id,
          final StringFilter? consultantProfileId,
          final StringFilter? webinarPlanId,
          final WebinarCollaboratorRoleFilter? role,
          final FloatFilter? revenueSharePercentage,
          final CollaboratorStatusFilter? status,
          final StringFilter? invitedById,
          final DateTimeFilter? respondedAt,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final ConsultantProfileRelationFilter? consultantProfile,
          final WebinarPlanRelationFilter? webinarPlan,
          final ConsultantProfileRelationFilter? invitedBy,
          final List<WebinarCollaboratorWhereInput>? AND,
          final List<WebinarCollaboratorWhereInput>? OR,
          final WebinarCollaboratorWhereInput? NOT}) =
      _$WebinarCollaboratorWhereInputImpl;

  factory _WebinarCollaboratorWhereInput.fromJson(Map<String, dynamic> json) =
      _$WebinarCollaboratorWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get webinarPlanId;
  @override
  WebinarCollaboratorRoleFilter? get role;
  @override
  FloatFilter? get revenueSharePercentage;
  @override
  CollaboratorStatusFilter? get status;
  @override
  StringFilter? get invitedById;
  @override
  DateTimeFilter? get respondedAt;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;

  /// Filter by webinarPlan relation
  @override
  WebinarPlanRelationFilter? get webinarPlan;

  /// Filter by invitedBy relation
  @override
  ConsultantProfileRelationFilter? get invitedBy;
  @override
  List<WebinarCollaboratorWhereInput>? get AND;
  @override
  List<WebinarCollaboratorWhereInput>? get OR;
  @override
  WebinarCollaboratorWhereInput? get NOT;

  /// Create a copy of WebinarCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorWhereInputImplCopyWith<
          _$WebinarCollaboratorWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorListRelationFilter
    _$WebinarCollaboratorListRelationFilterFromJson(Map<String, dynamic> json) {
  return _WebinarCollaboratorListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorListRelationFilter {
  /// At least one related record matches
  WebinarCollaboratorWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WebinarCollaboratorWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  WebinarCollaboratorWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorListRelationFilterCopyWith<
          WebinarCollaboratorListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorListRelationFilterCopyWith<$Res> {
  factory $WebinarCollaboratorListRelationFilterCopyWith(
          WebinarCollaboratorListRelationFilter value,
          $Res Function(WebinarCollaboratorListRelationFilter) then) =
      _$WebinarCollaboratorListRelationFilterCopyWithImpl<$Res,
          WebinarCollaboratorListRelationFilter>;
  @useResult
  $Res call(
      {WebinarCollaboratorWhereInput? some,
      WebinarCollaboratorWhereInput? every,
      WebinarCollaboratorWhereInput? none});

  $WebinarCollaboratorWhereInputCopyWith<$Res>? get some;
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get every;
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WebinarCollaboratorListRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorListRelationFilter>
    implements $WebinarCollaboratorListRelationFilterCopyWith<$Res> {
  _$WebinarCollaboratorListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorListRelationFilter
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
              as WebinarCollaboratorWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarCollaboratorListRelationFilterImplCopyWith<$Res>
    implements $WebinarCollaboratorListRelationFilterCopyWith<$Res> {
  factory _$$WebinarCollaboratorListRelationFilterImplCopyWith(
          _$WebinarCollaboratorListRelationFilterImpl value,
          $Res Function(_$WebinarCollaboratorListRelationFilterImpl) then) =
      __$$WebinarCollaboratorListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarCollaboratorWhereInput? some,
      WebinarCollaboratorWhereInput? every,
      WebinarCollaboratorWhereInput? none});

  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get some;
  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get every;
  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WebinarCollaboratorListRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorListRelationFilterCopyWithImpl<$Res,
        _$WebinarCollaboratorListRelationFilterImpl>
    implements _$$WebinarCollaboratorListRelationFilterImplCopyWith<$Res> {
  __$$WebinarCollaboratorListRelationFilterImplCopyWithImpl(
      _$WebinarCollaboratorListRelationFilterImpl _value,
      $Res Function(_$WebinarCollaboratorListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WebinarCollaboratorListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarCollaboratorListRelationFilterImpl
    implements _WebinarCollaboratorListRelationFilter {
  const _$WebinarCollaboratorListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$WebinarCollaboratorListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WebinarCollaboratorWhereInput? some;

  /// All related records match
  @override
  final WebinarCollaboratorWhereInput? every;

  /// No related records match
  @override
  final WebinarCollaboratorWhereInput? none;

  @override
  String toString() {
    return 'WebinarCollaboratorListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorListRelationFilterImplCopyWith<
          _$WebinarCollaboratorListRelationFilterImpl>
      get copyWith => __$$WebinarCollaboratorListRelationFilterImplCopyWithImpl<
          _$WebinarCollaboratorListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorListRelationFilter
    implements WebinarCollaboratorListRelationFilter {
  const factory _WebinarCollaboratorListRelationFilter(
          {final WebinarCollaboratorWhereInput? some,
          final WebinarCollaboratorWhereInput? every,
          final WebinarCollaboratorWhereInput? none}) =
      _$WebinarCollaboratorListRelationFilterImpl;

  factory _WebinarCollaboratorListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$WebinarCollaboratorListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WebinarCollaboratorWhereInput? get some;

  /// All related records match
  @override
  WebinarCollaboratorWhereInput? get every;

  /// No related records match
  @override
  WebinarCollaboratorWhereInput? get none;

  /// Create a copy of WebinarCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorListRelationFilterImplCopyWith<
          _$WebinarCollaboratorListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorRelationFilter _$WebinarCollaboratorRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarCollaboratorRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WebinarCollaboratorWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WebinarCollaboratorWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorRelationFilterCopyWith<WebinarCollaboratorRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorRelationFilterCopyWith<$Res> {
  factory $WebinarCollaboratorRelationFilterCopyWith(
          WebinarCollaboratorRelationFilter value,
          $Res Function(WebinarCollaboratorRelationFilter) then) =
      _$WebinarCollaboratorRelationFilterCopyWithImpl<$Res,
          WebinarCollaboratorRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarCollaboratorWhereInput? is_,
      WebinarCollaboratorWhereInput? isNot});

  $WebinarCollaboratorWhereInputCopyWith<$Res>? get is_;
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WebinarCollaboratorRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorRelationFilter>
    implements $WebinarCollaboratorRelationFilterCopyWith<$Res> {
  _$WebinarCollaboratorRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorRelationFilter
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
              as WebinarCollaboratorWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WebinarCollaboratorWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarCollaboratorRelationFilterImplCopyWith<$Res>
    implements $WebinarCollaboratorRelationFilterCopyWith<$Res> {
  factory _$$WebinarCollaboratorRelationFilterImplCopyWith(
          _$WebinarCollaboratorRelationFilterImpl value,
          $Res Function(_$WebinarCollaboratorRelationFilterImpl) then) =
      __$$WebinarCollaboratorRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarCollaboratorWhereInput? is_,
      WebinarCollaboratorWhereInput? isNot});

  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get is_;
  @override
  $WebinarCollaboratorWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WebinarCollaboratorRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorRelationFilterCopyWithImpl<$Res,
        _$WebinarCollaboratorRelationFilterImpl>
    implements _$$WebinarCollaboratorRelationFilterImplCopyWith<$Res> {
  __$$WebinarCollaboratorRelationFilterImplCopyWithImpl(
      _$WebinarCollaboratorRelationFilterImpl _value,
      $Res Function(_$WebinarCollaboratorRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WebinarCollaboratorRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarCollaboratorRelationFilterImpl
    implements _WebinarCollaboratorRelationFilter {
  const _$WebinarCollaboratorRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WebinarCollaboratorRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WebinarCollaboratorWhereInput? is_;

  /// Related record does not match
  @override
  final WebinarCollaboratorWhereInput? isNot;

  @override
  String toString() {
    return 'WebinarCollaboratorRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorRelationFilterImplCopyWith<
          _$WebinarCollaboratorRelationFilterImpl>
      get copyWith => __$$WebinarCollaboratorRelationFilterImplCopyWithImpl<
          _$WebinarCollaboratorRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorRelationFilter
    implements WebinarCollaboratorRelationFilter {
  const factory _WebinarCollaboratorRelationFilter(
          {@JsonKey(name: 'is') final WebinarCollaboratorWhereInput? is_,
          final WebinarCollaboratorWhereInput? isNot}) =
      _$WebinarCollaboratorRelationFilterImpl;

  factory _WebinarCollaboratorRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$WebinarCollaboratorRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WebinarCollaboratorWhereInput? get is_;

  /// Related record does not match
  @override
  WebinarCollaboratorWhereInput? get isNot;

  /// Create a copy of WebinarCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorRelationFilterImplCopyWith<
          _$WebinarCollaboratorRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorOrderByInput _$WebinarCollaboratorOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarCollaboratorOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get webinarPlanId => throw _privateConstructorUsedError;
  SortOrder? get revenueSharePercentage => throw _privateConstructorUsedError;
  SortOrder? get invitedById => throw _privateConstructorUsedError;
  SortOrder? get respondedAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorOrderByInputCopyWith<WebinarCollaboratorOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorOrderByInputCopyWith<$Res> {
  factory $WebinarCollaboratorOrderByInputCopyWith(
          WebinarCollaboratorOrderByInput value,
          $Res Function(WebinarCollaboratorOrderByInput) then) =
      _$WebinarCollaboratorOrderByInputCopyWithImpl<$Res,
          WebinarCollaboratorOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? webinarPlanId,
      SortOrder? revenueSharePercentage,
      SortOrder? invitedById,
      SortOrder? respondedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$WebinarCollaboratorOrderByInputCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorOrderByInput>
    implements $WebinarCollaboratorOrderByInputCopyWith<$Res> {
  _$WebinarCollaboratorOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? revenueSharePercentage = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WebinarCollaboratorOrderByInputImplCopyWith<$Res>
    implements $WebinarCollaboratorOrderByInputCopyWith<$Res> {
  factory _$$WebinarCollaboratorOrderByInputImplCopyWith(
          _$WebinarCollaboratorOrderByInputImpl value,
          $Res Function(_$WebinarCollaboratorOrderByInputImpl) then) =
      __$$WebinarCollaboratorOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? webinarPlanId,
      SortOrder? revenueSharePercentage,
      SortOrder? invitedById,
      SortOrder? respondedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$WebinarCollaboratorOrderByInputImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorOrderByInputCopyWithImpl<$Res,
        _$WebinarCollaboratorOrderByInputImpl>
    implements _$$WebinarCollaboratorOrderByInputImplCopyWith<$Res> {
  __$$WebinarCollaboratorOrderByInputImplCopyWithImpl(
      _$WebinarCollaboratorOrderByInputImpl _value,
      $Res Function(_$WebinarCollaboratorOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? webinarPlanId = freezed,
    Object? revenueSharePercentage = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WebinarCollaboratorOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      revenueSharePercentage: freezed == revenueSharePercentage
          ? _value.revenueSharePercentage
          : revenueSharePercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
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
class _$WebinarCollaboratorOrderByInputImpl
    implements _WebinarCollaboratorOrderByInput {
  const _$WebinarCollaboratorOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.webinarPlanId,
      this.revenueSharePercentage,
      this.invitedById,
      this.respondedAt,
      this.createdAt,
      this.updatedAt});

  factory _$WebinarCollaboratorOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? webinarPlanId;
  @override
  final SortOrder? revenueSharePercentage;
  @override
  final SortOrder? invitedById;
  @override
  final SortOrder? respondedAt;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'WebinarCollaboratorOrderByInput(id: $id, consultantProfileId: $consultantProfileId, webinarPlanId: $webinarPlanId, revenueSharePercentage: $revenueSharePercentage, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.revenueSharePercentage, revenueSharePercentage) ||
                other.revenueSharePercentage == revenueSharePercentage) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
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
      consultantProfileId,
      webinarPlanId,
      revenueSharePercentage,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt);

  /// Create a copy of WebinarCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorOrderByInputImplCopyWith<
          _$WebinarCollaboratorOrderByInputImpl>
      get copyWith => __$$WebinarCollaboratorOrderByInputImplCopyWithImpl<
          _$WebinarCollaboratorOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorOrderByInput
    implements WebinarCollaboratorOrderByInput {
  const factory _WebinarCollaboratorOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? webinarPlanId,
      final SortOrder? revenueSharePercentage,
      final SortOrder? invitedById,
      final SortOrder? respondedAt,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$WebinarCollaboratorOrderByInputImpl;

  factory _WebinarCollaboratorOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WebinarCollaboratorOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get webinarPlanId;
  @override
  SortOrder? get revenueSharePercentage;
  @override
  SortOrder? get invitedById;
  @override
  SortOrder? get respondedAt;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of WebinarCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorOrderByInputImplCopyWith<
          _$WebinarCollaboratorOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
