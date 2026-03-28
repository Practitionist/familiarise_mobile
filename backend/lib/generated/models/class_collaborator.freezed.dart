// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_collaborator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassCollaborator _$ClassCollaboratorFromJson(Map<String, dynamic> json) {
  return _ClassCollaborator.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaborator {
  String get id => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;
  ClassCollaboratorRole get role => throw _privateConstructorUsedError;
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
  ClassPlan? get classPlan => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get invitedBy => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaborator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorCopyWith<ClassCollaborator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorCopyWith<$Res> {
  factory $ClassCollaboratorCopyWith(
          ClassCollaborator value, $Res Function(ClassCollaborator) then) =
      _$ClassCollaboratorCopyWithImpl<$Res, ClassCollaborator>;
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String classPlanId,
      ClassCollaboratorRole role,
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
      ClassPlan? classPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? invitedBy});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $ClassPlanCopyWith<$Res>? get classPlan;
  $ConsultantProfileCopyWith<$Res>? get invitedBy;
}

/// @nodoc
class _$ClassCollaboratorCopyWithImpl<$Res, $Val extends ClassCollaborator>
    implements $ClassCollaboratorCopyWith<$Res> {
  _$ClassCollaboratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? classPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? classPlan = freezed,
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
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole,
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
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
    ) as $Val);
  }

  /// Create a copy of ClassCollaborator
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

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanCopyWith<$Res>? get classPlan {
    if (_value.classPlan == null) {
      return null;
    }

    return $ClassPlanCopyWith<$Res>(_value.classPlan!, (value) {
      return _then(_value.copyWith(classPlan: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaborator
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
abstract class _$$ClassCollaboratorImplCopyWith<$Res>
    implements $ClassCollaboratorCopyWith<$Res> {
  factory _$$ClassCollaboratorImplCopyWith(_$ClassCollaboratorImpl value,
          $Res Function(_$ClassCollaboratorImpl) then) =
      __$$ClassCollaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String consultantProfileId,
      String classPlanId,
      ClassCollaboratorRole role,
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
      ClassPlan? classPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? invitedBy});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $ClassPlanCopyWith<$Res>? get classPlan;
  @override
  $ConsultantProfileCopyWith<$Res>? get invitedBy;
}

/// @nodoc
class __$$ClassCollaboratorImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorCopyWithImpl<$Res, _$ClassCollaboratorImpl>
    implements _$$ClassCollaboratorImplCopyWith<$Res> {
  __$$ClassCollaboratorImplCopyWithImpl(_$ClassCollaboratorImpl _value,
      $Res Function(_$ClassCollaboratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultantProfileId = null,
    Object? classPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? consultantProfile = freezed,
    Object? classPlan = freezed,
    Object? invitedBy = freezed,
  }) {
    return _then(_$ClassCollaboratorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole,
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
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassCollaboratorImpl implements _ClassCollaborator {
  const _$ClassCollaboratorImpl(
      {required this.id,
      required this.consultantProfileId,
      required this.classPlanId,
      this.role = ClassCollaboratorRole.coInstructor,
      final Map<String, dynamic>? permissions,
      required this.revenueSharePercentage,
      this.status = CollaboratorStatus.pending,
      required this.invitedById,
      this.respondedAt,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      @JsonKey(includeFromJson: false, includeToJson: false) this.classPlan,
      @JsonKey(includeFromJson: false, includeToJson: false) this.invitedBy})
      : _permissions = permissions;

  factory _$ClassCollaboratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassCollaboratorImplFromJson(json);

  @override
  final String id;
  @override
  final String consultantProfileId;
  @override
  final String classPlanId;
  @override
  @JsonKey()
  final ClassCollaboratorRole role;
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
  final ClassPlan? classPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? invitedBy;

  @override
  String toString() {
    return 'ClassCollaborator(id: $id, consultantProfileId: $consultantProfileId, classPlanId: $classPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, classPlan: $classPlan, invitedBy: $invitedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultantProfileId,
      classPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt,
      consultantProfile,
      classPlan,
      invitedBy);

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorImplCopyWith<_$ClassCollaboratorImpl> get copyWith =>
      __$$ClassCollaboratorImplCopyWithImpl<_$ClassCollaboratorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaborator implements ClassCollaborator {
  const factory _ClassCollaborator(
      {required final String id,
      required final String consultantProfileId,
      required final String classPlanId,
      final ClassCollaboratorRole role,
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
      final ClassPlan? classPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? invitedBy}) = _$ClassCollaboratorImpl;

  factory _ClassCollaborator.fromJson(Map<String, dynamic> json) =
      _$ClassCollaboratorImpl.fromJson;

  @override
  String get id;
  @override
  String get consultantProfileId;
  @override
  String get classPlanId;
  @override
  ClassCollaboratorRole get role;
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
  ClassPlan? get classPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get invitedBy;

  /// Create a copy of ClassCollaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorImplCopyWith<_$ClassCollaboratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClassCollaboratorInput _$CreateClassCollaboratorInputFromJson(
    Map<String, dynamic> json) {
  return _CreateClassCollaboratorInput.fromJson(json);
}

/// @nodoc
mixin _$CreateClassCollaboratorInput {
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;
  ClassCollaboratorRole get role => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;
  double get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatus get status => throw _privateConstructorUsedError;
  String get invitedById => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateClassCollaboratorInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClassCollaboratorInputCopyWith<CreateClassCollaboratorInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClassCollaboratorInputCopyWith<$Res> {
  factory $CreateClassCollaboratorInputCopyWith(
          CreateClassCollaboratorInput value,
          $Res Function(CreateClassCollaboratorInput) then) =
      _$CreateClassCollaboratorInputCopyWithImpl<$Res,
          CreateClassCollaboratorInput>;
  @useResult
  $Res call(
      {String consultantProfileId,
      String classPlanId,
      ClassCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class _$CreateClassCollaboratorInputCopyWithImpl<$Res,
        $Val extends CreateClassCollaboratorInput>
    implements $CreateClassCollaboratorInputCopyWith<$Res> {
  _$CreateClassCollaboratorInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? classPlanId = null,
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
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole,
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
abstract class _$$CreateClassCollaboratorInputImplCopyWith<$Res>
    implements $CreateClassCollaboratorInputCopyWith<$Res> {
  factory _$$CreateClassCollaboratorInputImplCopyWith(
          _$CreateClassCollaboratorInputImpl value,
          $Res Function(_$CreateClassCollaboratorInputImpl) then) =
      __$$CreateClassCollaboratorInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultantProfileId,
      String classPlanId,
      ClassCollaboratorRole role,
      Map<String, dynamic>? permissions,
      double revenueSharePercentage,
      CollaboratorStatus status,
      String invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class __$$CreateClassCollaboratorInputImplCopyWithImpl<$Res>
    extends _$CreateClassCollaboratorInputCopyWithImpl<$Res,
        _$CreateClassCollaboratorInputImpl>
    implements _$$CreateClassCollaboratorInputImplCopyWith<$Res> {
  __$$CreateClassCollaboratorInputImplCopyWithImpl(
      _$CreateClassCollaboratorInputImpl _value,
      $Res Function(_$CreateClassCollaboratorInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = null,
    Object? classPlanId = null,
    Object? role = null,
    Object? permissions = freezed,
    Object? revenueSharePercentage = null,
    Object? status = null,
    Object? invitedById = null,
    Object? respondedAt = freezed,
  }) {
    return _then(_$CreateClassCollaboratorInputImpl(
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole,
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
class _$CreateClassCollaboratorInputImpl
    implements _CreateClassCollaboratorInput {
  const _$CreateClassCollaboratorInputImpl(
      {required this.consultantProfileId,
      required this.classPlanId,
      this.role = ClassCollaboratorRole.coInstructor,
      final Map<String, dynamic>? permissions,
      required this.revenueSharePercentage,
      this.status = CollaboratorStatus.pending,
      required this.invitedById,
      this.respondedAt})
      : _permissions = permissions;

  factory _$CreateClassCollaboratorInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateClassCollaboratorInputImplFromJson(json);

  @override
  final String consultantProfileId;
  @override
  final String classPlanId;
  @override
  @JsonKey()
  final ClassCollaboratorRole role;
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
    return 'CreateClassCollaboratorInput(consultantProfileId: $consultantProfileId, classPlanId: $classPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClassCollaboratorInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      classPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt);

  /// Create a copy of CreateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClassCollaboratorInputImplCopyWith<
          _$CreateClassCollaboratorInputImpl>
      get copyWith => __$$CreateClassCollaboratorInputImplCopyWithImpl<
          _$CreateClassCollaboratorInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClassCollaboratorInputImplToJson(
      this,
    );
  }
}

abstract class _CreateClassCollaboratorInput
    implements CreateClassCollaboratorInput {
  const factory _CreateClassCollaboratorInput(
      {required final String consultantProfileId,
      required final String classPlanId,
      final ClassCollaboratorRole role,
      final Map<String, dynamic>? permissions,
      required final double revenueSharePercentage,
      final CollaboratorStatus status,
      required final String invitedById,
      final DateTime? respondedAt}) = _$CreateClassCollaboratorInputImpl;

  factory _CreateClassCollaboratorInput.fromJson(Map<String, dynamic> json) =
      _$CreateClassCollaboratorInputImpl.fromJson;

  @override
  String get consultantProfileId;
  @override
  String get classPlanId;
  @override
  ClassCollaboratorRole get role;
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

  /// Create a copy of CreateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClassCollaboratorInputImplCopyWith<
          _$CreateClassCollaboratorInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateClassCollaboratorInput _$UpdateClassCollaboratorInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateClassCollaboratorInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassCollaboratorInput {
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;
  ClassCollaboratorRole? get role => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;
  double? get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatus? get status => throw _privateConstructorUsedError;
  String? get invitedById => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateClassCollaboratorInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClassCollaboratorInputCopyWith<UpdateClassCollaboratorInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassCollaboratorInputCopyWith<$Res> {
  factory $UpdateClassCollaboratorInputCopyWith(
          UpdateClassCollaboratorInput value,
          $Res Function(UpdateClassCollaboratorInput) then) =
      _$UpdateClassCollaboratorInputCopyWithImpl<$Res,
          UpdateClassCollaboratorInput>;
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? classPlanId,
      ClassCollaboratorRole? role,
      Map<String, dynamic>? permissions,
      double? revenueSharePercentage,
      CollaboratorStatus? status,
      String? invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class _$UpdateClassCollaboratorInputCopyWithImpl<$Res,
        $Val extends UpdateClassCollaboratorInput>
    implements $UpdateClassCollaboratorInputCopyWith<$Res> {
  _$UpdateClassCollaboratorInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
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
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
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
abstract class _$$UpdateClassCollaboratorInputImplCopyWith<$Res>
    implements $UpdateClassCollaboratorInputCopyWith<$Res> {
  factory _$$UpdateClassCollaboratorInputImplCopyWith(
          _$UpdateClassCollaboratorInputImpl value,
          $Res Function(_$UpdateClassCollaboratorInputImpl) then) =
      __$$UpdateClassCollaboratorInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultantProfileId,
      String? classPlanId,
      ClassCollaboratorRole? role,
      Map<String, dynamic>? permissions,
      double? revenueSharePercentage,
      CollaboratorStatus? status,
      String? invitedById,
      DateTime? respondedAt});
}

/// @nodoc
class __$$UpdateClassCollaboratorInputImplCopyWithImpl<$Res>
    extends _$UpdateClassCollaboratorInputCopyWithImpl<$Res,
        _$UpdateClassCollaboratorInputImpl>
    implements _$$UpdateClassCollaboratorInputImplCopyWith<$Res> {
  __$$UpdateClassCollaboratorInputImplCopyWithImpl(
      _$UpdateClassCollaboratorInputImpl _value,
      $Res Function(_$UpdateClassCollaboratorInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
    Object? role = freezed,
    Object? permissions = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
  }) {
    return _then(_$UpdateClassCollaboratorInputImpl(
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
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
class _$UpdateClassCollaboratorInputImpl
    implements _UpdateClassCollaboratorInput {
  const _$UpdateClassCollaboratorInputImpl(
      {this.consultantProfileId,
      this.classPlanId,
      this.role,
      final Map<String, dynamic>? permissions,
      this.revenueSharePercentage,
      this.status,
      this.invitedById,
      this.respondedAt})
      : _permissions = permissions;

  factory _$UpdateClassCollaboratorInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateClassCollaboratorInputImplFromJson(json);

  @override
  final String? consultantProfileId;
  @override
  final String? classPlanId;
  @override
  final ClassCollaboratorRole? role;
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
    return 'UpdateClassCollaboratorInput(consultantProfileId: $consultantProfileId, classPlanId: $classPlanId, role: $role, permissions: $permissions, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassCollaboratorInputImpl &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      classPlanId,
      role,
      const DeepCollectionEquality().hash(_permissions),
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt);

  /// Create a copy of UpdateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassCollaboratorInputImplCopyWith<
          _$UpdateClassCollaboratorInputImpl>
      get copyWith => __$$UpdateClassCollaboratorInputImplCopyWithImpl<
          _$UpdateClassCollaboratorInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateClassCollaboratorInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateClassCollaboratorInput
    implements UpdateClassCollaboratorInput {
  const factory _UpdateClassCollaboratorInput(
      {final String? consultantProfileId,
      final String? classPlanId,
      final ClassCollaboratorRole? role,
      final Map<String, dynamic>? permissions,
      final double? revenueSharePercentage,
      final CollaboratorStatus? status,
      final String? invitedById,
      final DateTime? respondedAt}) = _$UpdateClassCollaboratorInputImpl;

  factory _UpdateClassCollaboratorInput.fromJson(Map<String, dynamic> json) =
      _$UpdateClassCollaboratorInputImpl.fromJson;

  @override
  String? get consultantProfileId;
  @override
  String? get classPlanId;
  @override
  ClassCollaboratorRole? get role;
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

  /// Create a copy of UpdateClassCollaboratorInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassCollaboratorInputImplCopyWith<
          _$UpdateClassCollaboratorInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorWhereUniqueInput _$ClassCollaboratorWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ClassCollaboratorWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorWhereUniqueInputCopyWith<ClassCollaboratorWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorWhereUniqueInputCopyWith<$Res> {
  factory $ClassCollaboratorWhereUniqueInputCopyWith(
          ClassCollaboratorWhereUniqueInput value,
          $Res Function(ClassCollaboratorWhereUniqueInput) then) =
      _$ClassCollaboratorWhereUniqueInputCopyWithImpl<$Res,
          ClassCollaboratorWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ClassCollaboratorWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ClassCollaboratorWhereUniqueInput>
    implements $ClassCollaboratorWhereUniqueInputCopyWith<$Res> {
  _$ClassCollaboratorWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorWhereUniqueInput
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
abstract class _$$ClassCollaboratorWhereUniqueInputImplCopyWith<$Res>
    implements $ClassCollaboratorWhereUniqueInputCopyWith<$Res> {
  factory _$$ClassCollaboratorWhereUniqueInputImplCopyWith(
          _$ClassCollaboratorWhereUniqueInputImpl value,
          $Res Function(_$ClassCollaboratorWhereUniqueInputImpl) then) =
      __$$ClassCollaboratorWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ClassCollaboratorWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorWhereUniqueInputCopyWithImpl<$Res,
        _$ClassCollaboratorWhereUniqueInputImpl>
    implements _$$ClassCollaboratorWhereUniqueInputImplCopyWith<$Res> {
  __$$ClassCollaboratorWhereUniqueInputImplCopyWithImpl(
      _$ClassCollaboratorWhereUniqueInputImpl _value,
      $Res Function(_$ClassCollaboratorWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ClassCollaboratorWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassCollaboratorWhereUniqueInputImpl
    implements _ClassCollaboratorWhereUniqueInput {
  const _$ClassCollaboratorWhereUniqueInputImpl({this.id});

  factory _$ClassCollaboratorWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ClassCollaboratorWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ClassCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorWhereUniqueInputImplCopyWith<
          _$ClassCollaboratorWhereUniqueInputImpl>
      get copyWith => __$$ClassCollaboratorWhereUniqueInputImplCopyWithImpl<
          _$ClassCollaboratorWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorWhereUniqueInput
    implements ClassCollaboratorWhereUniqueInput {
  const factory _ClassCollaboratorWhereUniqueInput({final String? id}) =
      _$ClassCollaboratorWhereUniqueInputImpl;

  factory _ClassCollaboratorWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ClassCollaboratorWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ClassCollaboratorWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorWhereUniqueInputImplCopyWith<
          _$ClassCollaboratorWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorWhereInput _$ClassCollaboratorWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ClassCollaboratorWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get classPlanId => throw _privateConstructorUsedError;
  ClassCollaboratorRoleFilter? get role => throw _privateConstructorUsedError;
  FloatFilter? get revenueSharePercentage => throw _privateConstructorUsedError;
  CollaboratorStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get invitedById => throw _privateConstructorUsedError;
  DateTimeFilter? get respondedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;

  /// Filter by classPlan relation
  ClassPlanRelationFilter? get classPlan => throw _privateConstructorUsedError;

  /// Filter by invitedBy relation
  ConsultantProfileRelationFilter? get invitedBy =>
      throw _privateConstructorUsedError;
  List<ClassCollaboratorWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ClassCollaboratorWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ClassCollaboratorWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorWhereInputCopyWith<ClassCollaboratorWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorWhereInputCopyWith<$Res> {
  factory $ClassCollaboratorWhereInputCopyWith(
          ClassCollaboratorWhereInput value,
          $Res Function(ClassCollaboratorWhereInput) then) =
      _$ClassCollaboratorWhereInputCopyWithImpl<$Res,
          ClassCollaboratorWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? classPlanId,
      ClassCollaboratorRoleFilter? role,
      FloatFilter? revenueSharePercentage,
      CollaboratorStatusFilter? status,
      StringFilter? invitedById,
      DateTimeFilter? respondedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      ClassPlanRelationFilter? classPlan,
      ConsultantProfileRelationFilter? invitedBy,
      List<ClassCollaboratorWhereInput>? AND,
      List<ClassCollaboratorWhereInput>? OR,
      ClassCollaboratorWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get classPlanId;
  $ClassCollaboratorRoleFilterCopyWith<$Res>? get role;
  $FloatFilterCopyWith<$Res>? get revenueSharePercentage;
  $CollaboratorStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get invitedById;
  $DateTimeFilterCopyWith<$Res>? get respondedAt;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get invitedBy;
  $ClassCollaboratorWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ClassCollaboratorWhereInputCopyWithImpl<$Res,
        $Val extends ClassCollaboratorWhereInput>
    implements $ClassCollaboratorWhereInputCopyWith<$Res> {
  _$ClassCollaboratorWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
    Object? role = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? classPlan = freezed,
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
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRoleFilter?,
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
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get classPlanId {
    if (_value.classPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.classPlanId!, (value) {
      return _then(_value.copyWith(classPlanId: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorRoleFilterCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $ClassCollaboratorRoleFilterCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan {
    if (_value.classPlan == null) {
      return null;
    }

    return $ClassPlanRelationFilterCopyWith<$Res>(_value.classPlan!, (value) {
      return _then(_value.copyWith(classPlan: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorWhereInput
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

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassCollaboratorWhereInputImplCopyWith<$Res>
    implements $ClassCollaboratorWhereInputCopyWith<$Res> {
  factory _$$ClassCollaboratorWhereInputImplCopyWith(
          _$ClassCollaboratorWhereInputImpl value,
          $Res Function(_$ClassCollaboratorWhereInputImpl) then) =
      __$$ClassCollaboratorWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? consultantProfileId,
      StringFilter? classPlanId,
      ClassCollaboratorRoleFilter? role,
      FloatFilter? revenueSharePercentage,
      CollaboratorStatusFilter? status,
      StringFilter? invitedById,
      DateTimeFilter? respondedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      ConsultantProfileRelationFilter? consultantProfile,
      ClassPlanRelationFilter? classPlan,
      ConsultantProfileRelationFilter? invitedBy,
      List<ClassCollaboratorWhereInput>? AND,
      List<ClassCollaboratorWhereInput>? OR,
      ClassCollaboratorWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get classPlanId;
  @override
  $ClassCollaboratorRoleFilterCopyWith<$Res>? get role;
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
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get invitedBy;
  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ClassCollaboratorWhereInputImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorWhereInputCopyWithImpl<$Res,
        _$ClassCollaboratorWhereInputImpl>
    implements _$$ClassCollaboratorWhereInputImplCopyWith<$Res> {
  __$$ClassCollaboratorWhereInputImplCopyWithImpl(
      _$ClassCollaboratorWhereInputImpl _value,
      $Res Function(_$ClassCollaboratorWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
    Object? role = freezed,
    Object? revenueSharePercentage = freezed,
    Object? status = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? consultantProfile = freezed,
    Object? classPlan = freezed,
    Object? invitedBy = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ClassCollaboratorWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRoleFilter?,
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
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClassCollaboratorWhereInputImpl
    implements _ClassCollaboratorWhereInput {
  const _$ClassCollaboratorWhereInputImpl(
      {this.id,
      this.consultantProfileId,
      this.classPlanId,
      this.role,
      this.revenueSharePercentage,
      this.status,
      this.invitedById,
      this.respondedAt,
      this.createdAt,
      this.updatedAt,
      this.consultantProfile,
      this.classPlan,
      this.invitedBy,
      final List<ClassCollaboratorWhereInput>? AND,
      final List<ClassCollaboratorWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ClassCollaboratorWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? classPlanId;
  @override
  final ClassCollaboratorRoleFilter? role;
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

  /// Filter by classPlan relation
  @override
  final ClassPlanRelationFilter? classPlan;

  /// Filter by invitedBy relation
  @override
  final ConsultantProfileRelationFilter? invitedBy;
  final List<ClassCollaboratorWhereInput>? _AND;
  @override
  List<ClassCollaboratorWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassCollaboratorWhereInput>? _OR;
  @override
  List<ClassCollaboratorWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClassCollaboratorWhereInput? NOT;

  @override
  String toString() {
    return 'ClassCollaboratorWhereInput(id: $id, consultantProfileId: $consultantProfileId, classPlanId: $classPlanId, role: $role, revenueSharePercentage: $revenueSharePercentage, status: $status, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt, consultantProfile: $consultantProfile, classPlan: $classPlan, invitedBy: $invitedBy, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
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
      classPlanId,
      role,
      revenueSharePercentage,
      status,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt,
      consultantProfile,
      classPlan,
      invitedBy,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorWhereInputImplCopyWith<_$ClassCollaboratorWhereInputImpl>
      get copyWith => __$$ClassCollaboratorWhereInputImplCopyWithImpl<
          _$ClassCollaboratorWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorWhereInput
    implements ClassCollaboratorWhereInput {
  const factory _ClassCollaboratorWhereInput(
          {final StringFilter? id,
          final StringFilter? consultantProfileId,
          final StringFilter? classPlanId,
          final ClassCollaboratorRoleFilter? role,
          final FloatFilter? revenueSharePercentage,
          final CollaboratorStatusFilter? status,
          final StringFilter? invitedById,
          final DateTimeFilter? respondedAt,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final ConsultantProfileRelationFilter? consultantProfile,
          final ClassPlanRelationFilter? classPlan,
          final ConsultantProfileRelationFilter? invitedBy,
          final List<ClassCollaboratorWhereInput>? AND,
          final List<ClassCollaboratorWhereInput>? OR,
          final ClassCollaboratorWhereInput? NOT}) =
      _$ClassCollaboratorWhereInputImpl;

  factory _ClassCollaboratorWhereInput.fromJson(Map<String, dynamic> json) =
      _$ClassCollaboratorWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get classPlanId;
  @override
  ClassCollaboratorRoleFilter? get role;
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

  /// Filter by classPlan relation
  @override
  ClassPlanRelationFilter? get classPlan;

  /// Filter by invitedBy relation
  @override
  ConsultantProfileRelationFilter? get invitedBy;
  @override
  List<ClassCollaboratorWhereInput>? get AND;
  @override
  List<ClassCollaboratorWhereInput>? get OR;
  @override
  ClassCollaboratorWhereInput? get NOT;

  /// Create a copy of ClassCollaboratorWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorWhereInputImplCopyWith<_$ClassCollaboratorWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorListRelationFilter
    _$ClassCollaboratorListRelationFilterFromJson(Map<String, dynamic> json) {
  return _ClassCollaboratorListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorListRelationFilter {
  /// At least one related record matches
  ClassCollaboratorWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ClassCollaboratorWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ClassCollaboratorWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorListRelationFilterCopyWith<
          ClassCollaboratorListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorListRelationFilterCopyWith<$Res> {
  factory $ClassCollaboratorListRelationFilterCopyWith(
          ClassCollaboratorListRelationFilter value,
          $Res Function(ClassCollaboratorListRelationFilter) then) =
      _$ClassCollaboratorListRelationFilterCopyWithImpl<$Res,
          ClassCollaboratorListRelationFilter>;
  @useResult
  $Res call(
      {ClassCollaboratorWhereInput? some,
      ClassCollaboratorWhereInput? every,
      ClassCollaboratorWhereInput? none});

  $ClassCollaboratorWhereInputCopyWith<$Res>? get some;
  $ClassCollaboratorWhereInputCopyWith<$Res>? get every;
  $ClassCollaboratorWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ClassCollaboratorListRelationFilterCopyWithImpl<$Res,
        $Val extends ClassCollaboratorListRelationFilter>
    implements $ClassCollaboratorListRelationFilterCopyWith<$Res> {
  _$ClassCollaboratorListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorListRelationFilter
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
              as ClassCollaboratorWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassCollaboratorListRelationFilterImplCopyWith<$Res>
    implements $ClassCollaboratorListRelationFilterCopyWith<$Res> {
  factory _$$ClassCollaboratorListRelationFilterImplCopyWith(
          _$ClassCollaboratorListRelationFilterImpl value,
          $Res Function(_$ClassCollaboratorListRelationFilterImpl) then) =
      __$$ClassCollaboratorListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassCollaboratorWhereInput? some,
      ClassCollaboratorWhereInput? every,
      ClassCollaboratorWhereInput? none});

  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get some;
  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get every;
  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ClassCollaboratorListRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorListRelationFilterCopyWithImpl<$Res,
        _$ClassCollaboratorListRelationFilterImpl>
    implements _$$ClassCollaboratorListRelationFilterImplCopyWith<$Res> {
  __$$ClassCollaboratorListRelationFilterImplCopyWithImpl(
      _$ClassCollaboratorListRelationFilterImpl _value,
      $Res Function(_$ClassCollaboratorListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ClassCollaboratorListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassCollaboratorListRelationFilterImpl
    implements _ClassCollaboratorListRelationFilter {
  const _$ClassCollaboratorListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ClassCollaboratorListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ClassCollaboratorWhereInput? some;

  /// All related records match
  @override
  final ClassCollaboratorWhereInput? every;

  /// No related records match
  @override
  final ClassCollaboratorWhereInput? none;

  @override
  String toString() {
    return 'ClassCollaboratorListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorListRelationFilterImplCopyWith<
          _$ClassCollaboratorListRelationFilterImpl>
      get copyWith => __$$ClassCollaboratorListRelationFilterImplCopyWithImpl<
          _$ClassCollaboratorListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorListRelationFilter
    implements ClassCollaboratorListRelationFilter {
  const factory _ClassCollaboratorListRelationFilter(
          {final ClassCollaboratorWhereInput? some,
          final ClassCollaboratorWhereInput? every,
          final ClassCollaboratorWhereInput? none}) =
      _$ClassCollaboratorListRelationFilterImpl;

  factory _ClassCollaboratorListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ClassCollaboratorListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ClassCollaboratorWhereInput? get some;

  /// All related records match
  @override
  ClassCollaboratorWhereInput? get every;

  /// No related records match
  @override
  ClassCollaboratorWhereInput? get none;

  /// Create a copy of ClassCollaboratorListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorListRelationFilterImplCopyWith<
          _$ClassCollaboratorListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorRelationFilter _$ClassCollaboratorRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassCollaboratorRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ClassCollaboratorWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ClassCollaboratorWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorRelationFilterCopyWith<ClassCollaboratorRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorRelationFilterCopyWith<$Res> {
  factory $ClassCollaboratorRelationFilterCopyWith(
          ClassCollaboratorRelationFilter value,
          $Res Function(ClassCollaboratorRelationFilter) then) =
      _$ClassCollaboratorRelationFilterCopyWithImpl<$Res,
          ClassCollaboratorRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassCollaboratorWhereInput? is_,
      ClassCollaboratorWhereInput? isNot});

  $ClassCollaboratorWhereInputCopyWith<$Res>? get is_;
  $ClassCollaboratorWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ClassCollaboratorRelationFilterCopyWithImpl<$Res,
        $Val extends ClassCollaboratorRelationFilter>
    implements $ClassCollaboratorRelationFilterCopyWith<$Res> {
  _$ClassCollaboratorRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorRelationFilter
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
              as ClassCollaboratorWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ClassCollaboratorWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassCollaboratorRelationFilterImplCopyWith<$Res>
    implements $ClassCollaboratorRelationFilterCopyWith<$Res> {
  factory _$$ClassCollaboratorRelationFilterImplCopyWith(
          _$ClassCollaboratorRelationFilterImpl value,
          $Res Function(_$ClassCollaboratorRelationFilterImpl) then) =
      __$$ClassCollaboratorRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassCollaboratorWhereInput? is_,
      ClassCollaboratorWhereInput? isNot});

  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get is_;
  @override
  $ClassCollaboratorWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ClassCollaboratorRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorRelationFilterCopyWithImpl<$Res,
        _$ClassCollaboratorRelationFilterImpl>
    implements _$$ClassCollaboratorRelationFilterImplCopyWith<$Res> {
  __$$ClassCollaboratorRelationFilterImplCopyWithImpl(
      _$ClassCollaboratorRelationFilterImpl _value,
      $Res Function(_$ClassCollaboratorRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ClassCollaboratorRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassCollaboratorRelationFilterImpl
    implements _ClassCollaboratorRelationFilter {
  const _$ClassCollaboratorRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ClassCollaboratorRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ClassCollaboratorWhereInput? is_;

  /// Related record does not match
  @override
  final ClassCollaboratorWhereInput? isNot;

  @override
  String toString() {
    return 'ClassCollaboratorRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorRelationFilterImplCopyWith<
          _$ClassCollaboratorRelationFilterImpl>
      get copyWith => __$$ClassCollaboratorRelationFilterImplCopyWithImpl<
          _$ClassCollaboratorRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorRelationFilter
    implements ClassCollaboratorRelationFilter {
  const factory _ClassCollaboratorRelationFilter(
          {@JsonKey(name: 'is') final ClassCollaboratorWhereInput? is_,
          final ClassCollaboratorWhereInput? isNot}) =
      _$ClassCollaboratorRelationFilterImpl;

  factory _ClassCollaboratorRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassCollaboratorRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ClassCollaboratorWhereInput? get is_;

  /// Related record does not match
  @override
  ClassCollaboratorWhereInput? get isNot;

  /// Create a copy of ClassCollaboratorRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorRelationFilterImplCopyWith<
          _$ClassCollaboratorRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorOrderByInput _$ClassCollaboratorOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ClassCollaboratorOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get classPlanId => throw _privateConstructorUsedError;
  SortOrder? get revenueSharePercentage => throw _privateConstructorUsedError;
  SortOrder? get invitedById => throw _privateConstructorUsedError;
  SortOrder? get respondedAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorOrderByInputCopyWith<ClassCollaboratorOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorOrderByInputCopyWith<$Res> {
  factory $ClassCollaboratorOrderByInputCopyWith(
          ClassCollaboratorOrderByInput value,
          $Res Function(ClassCollaboratorOrderByInput) then) =
      _$ClassCollaboratorOrderByInputCopyWithImpl<$Res,
          ClassCollaboratorOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? classPlanId,
      SortOrder? revenueSharePercentage,
      SortOrder? invitedById,
      SortOrder? respondedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ClassCollaboratorOrderByInputCopyWithImpl<$Res,
        $Val extends ClassCollaboratorOrderByInput>
    implements $ClassCollaboratorOrderByInputCopyWith<$Res> {
  _$ClassCollaboratorOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
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
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ClassCollaboratorOrderByInputImplCopyWith<$Res>
    implements $ClassCollaboratorOrderByInputCopyWith<$Res> {
  factory _$$ClassCollaboratorOrderByInputImplCopyWith(
          _$ClassCollaboratorOrderByInputImpl value,
          $Res Function(_$ClassCollaboratorOrderByInputImpl) then) =
      __$$ClassCollaboratorOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? classPlanId,
      SortOrder? revenueSharePercentage,
      SortOrder? invitedById,
      SortOrder? respondedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ClassCollaboratorOrderByInputImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorOrderByInputCopyWithImpl<$Res,
        _$ClassCollaboratorOrderByInputImpl>
    implements _$$ClassCollaboratorOrderByInputImplCopyWith<$Res> {
  __$$ClassCollaboratorOrderByInputImplCopyWithImpl(
      _$ClassCollaboratorOrderByInputImpl _value,
      $Res Function(_$ClassCollaboratorOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? classPlanId = freezed,
    Object? revenueSharePercentage = freezed,
    Object? invitedById = freezed,
    Object? respondedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassCollaboratorOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
class _$ClassCollaboratorOrderByInputImpl
    implements _ClassCollaboratorOrderByInput {
  const _$ClassCollaboratorOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.classPlanId,
      this.revenueSharePercentage,
      this.invitedById,
      this.respondedAt,
      this.createdAt,
      this.updatedAt});

  factory _$ClassCollaboratorOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? classPlanId;
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
    return 'ClassCollaboratorOrderByInput(id: $id, consultantProfileId: $consultantProfileId, classPlanId: $classPlanId, revenueSharePercentage: $revenueSharePercentage, invitedById: $invitedById, respondedAt: $respondedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      classPlanId,
      revenueSharePercentage,
      invitedById,
      respondedAt,
      createdAt,
      updatedAt);

  /// Create a copy of ClassCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorOrderByInputImplCopyWith<
          _$ClassCollaboratorOrderByInputImpl>
      get copyWith => __$$ClassCollaboratorOrderByInputImplCopyWithImpl<
          _$ClassCollaboratorOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorOrderByInput
    implements ClassCollaboratorOrderByInput {
  const factory _ClassCollaboratorOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultantProfileId,
      final SortOrder? classPlanId,
      final SortOrder? revenueSharePercentage,
      final SortOrder? invitedById,
      final SortOrder? respondedAt,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ClassCollaboratorOrderByInputImpl;

  factory _ClassCollaboratorOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ClassCollaboratorOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get classPlanId;
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

  /// Create a copy of ClassCollaboratorOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorOrderByInputImplCopyWith<
          _$ClassCollaboratorOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
