// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trial_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrialSession _$TrialSessionFromJson(Map<String, dynamic> json) {
  return _TrialSession.fromJson(json);
}

/// @nodoc
mixin _$TrialSession {
  String get id => throw _privateConstructorUsedError;
  TrialSessionStatus get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get consulteeProfile => throw _privateConstructorUsedError;
  String get consulteeProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan => throw _privateConstructorUsedError;
  String get subscriptionPlanId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Subscription? get convertedToSubscription =>
      throw _privateConstructorUsedError;
  String? get convertedToSubscriptionId => throw _privateConstructorUsedError;
  DateTime get requestedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TrialSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionCopyWith<TrialSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionCopyWith<$Res> {
  factory $TrialSessionCopyWith(
          TrialSession value, $Res Function(TrialSession) then) =
      _$TrialSessionCopyWithImpl<$Res, TrialSession>;
  @useResult
  $Res call(
      {String id,
      TrialSessionStatus status,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? consulteeProfile,
      String consulteeProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Subscription? convertedToSubscription,
      String? convertedToSubscriptionId,
      DateTime requestedAt,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  $AppointmentCopyWith<$Res>? get appointment;
  $SubscriptionCopyWith<$Res>? get convertedToSubscription;
}

/// @nodoc
class _$TrialSessionCopyWithImpl<$Res, $Val extends TrialSession>
    implements $TrialSessionCopyWith<$Res> {
  _$TrialSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? notes = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscription = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscription: freezed == convertedToSubscription
          ? _value.convertedToSubscription
          : convertedToSubscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile {
    if (_value.consulteeProfile == null) {
      return null;
    }

    return $ConsulteeProfileCopyWith<$Res>(_value.consulteeProfile!, (value) {
      return _then(_value.copyWith(consulteeProfile: value) as $Val);
    });
  }

  /// Create a copy of TrialSession
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

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanCopyWith<$Res>(_value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get convertedToSubscription {
    if (_value.convertedToSubscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.convertedToSubscription!,
        (value) {
      return _then(_value.copyWith(convertedToSubscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrialSessionImplCopyWith<$Res>
    implements $TrialSessionCopyWith<$Res> {
  factory _$$TrialSessionImplCopyWith(
          _$TrialSessionImpl value, $Res Function(_$TrialSessionImpl) then) =
      __$$TrialSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TrialSessionStatus status,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? consulteeProfile,
      String consulteeProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Subscription? convertedToSubscription,
      String? convertedToSubscriptionId,
      DateTime requestedAt,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  @override
  $AppointmentCopyWith<$Res>? get appointment;
  @override
  $SubscriptionCopyWith<$Res>? get convertedToSubscription;
}

/// @nodoc
class __$$TrialSessionImplCopyWithImpl<$Res>
    extends _$TrialSessionCopyWithImpl<$Res, _$TrialSessionImpl>
    implements _$$TrialSessionImplCopyWith<$Res> {
  __$$TrialSessionImplCopyWithImpl(
      _$TrialSessionImpl _value, $Res Function(_$TrialSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? notes = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscription = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TrialSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscription: freezed == convertedToSubscription
          ? _value.convertedToSubscription
          : convertedToSubscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$TrialSessionImpl implements _TrialSession {
  const _$TrialSessionImpl(
      {required this.id,
      this.status = TrialSessionStatus.pending,
      this.notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consulteeProfile,
      required this.consulteeProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.subscriptionPlan,
      required this.subscriptionPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.appointment,
      this.appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.convertedToSubscription,
      this.convertedToSubscriptionId,
      required this.requestedAt,
      this.completedAt,
      required this.createdAt,
      required this.updatedAt});

  factory _$TrialSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrialSessionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final TrialSessionStatus status;
  @override
  final String? notes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsulteeProfile? consulteeProfile;
  @override
  final String consulteeProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SubscriptionPlan? subscriptionPlan;
  @override
  final String subscriptionPlanId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Appointment? appointment;
  @override
  final String? appointmentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Subscription? convertedToSubscription;
  @override
  final String? convertedToSubscriptionId;
  @override
  final DateTime requestedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TrialSession(id: $id, status: $status, notes: $notes, consulteeProfile: $consulteeProfile, consulteeProfileId: $consulteeProfileId, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, appointment: $appointment, appointmentId: $appointmentId, convertedToSubscription: $convertedToSubscription, convertedToSubscriptionId: $convertedToSubscriptionId, requestedAt: $requestedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.consulteeProfile, consulteeProfile) ||
                other.consulteeProfile == consulteeProfile) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(
                    other.convertedToSubscription, convertedToSubscription) ||
                other.convertedToSubscription == convertedToSubscription) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
      status,
      notes,
      consulteeProfile,
      consulteeProfileId,
      consultantProfile,
      consultantProfileId,
      subscriptionPlan,
      subscriptionPlanId,
      appointment,
      appointmentId,
      convertedToSubscription,
      convertedToSubscriptionId,
      requestedAt,
      completedAt,
      createdAt,
      updatedAt);

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionImplCopyWith<_$TrialSessionImpl> get copyWith =>
      __$$TrialSessionImplCopyWithImpl<_$TrialSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionImplToJson(
      this,
    );
  }
}

abstract class _TrialSession implements TrialSession {
  const factory _TrialSession(
      {required final String id,
      final TrialSessionStatus status,
      final String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsulteeProfile? consulteeProfile,
      required final String consulteeProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SubscriptionPlan? subscriptionPlan,
      required final String subscriptionPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Appointment? appointment,
      final String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Subscription? convertedToSubscription,
      final String? convertedToSubscriptionId,
      required final DateTime requestedAt,
      final DateTime? completedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TrialSessionImpl;

  factory _TrialSession.fromJson(Map<String, dynamic> json) =
      _$TrialSessionImpl.fromJson;

  @override
  String get id;
  @override
  TrialSessionStatus get status;
  @override
  String? get notes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get consulteeProfile;
  @override
  String get consulteeProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan;
  @override
  String get subscriptionPlanId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment;
  @override
  String? get appointmentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Subscription? get convertedToSubscription;
  @override
  String? get convertedToSubscriptionId;
  @override
  DateTime get requestedAt;
  @override
  DateTime? get completedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TrialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionImplCopyWith<_$TrialSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTrialSessionInput _$CreateTrialSessionInputFromJson(
    Map<String, dynamic> json) {
  return _CreateTrialSessionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTrialSessionInput {
  TrialSessionStatus get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get consulteeProfileId => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get subscriptionPlanId => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  String? get convertedToSubscriptionId => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateTrialSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTrialSessionInputCopyWith<CreateTrialSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrialSessionInputCopyWith<$Res> {
  factory $CreateTrialSessionInputCopyWith(CreateTrialSessionInput value,
          $Res Function(CreateTrialSessionInput) then) =
      _$CreateTrialSessionInputCopyWithImpl<$Res, CreateTrialSessionInput>;
  @useResult
  $Res call(
      {TrialSessionStatus status,
      String? notes,
      String consulteeProfileId,
      String consultantProfileId,
      String subscriptionPlanId,
      String? appointmentId,
      String? convertedToSubscriptionId,
      DateTime? completedAt});
}

/// @nodoc
class _$CreateTrialSessionInputCopyWithImpl<$Res,
        $Val extends CreateTrialSessionInput>
    implements $CreateTrialSessionInputCopyWith<$Res> {
  _$CreateTrialSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? consulteeProfileId = null,
    Object? consultantProfileId = null,
    Object? subscriptionPlanId = null,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTrialSessionInputImplCopyWith<$Res>
    implements $CreateTrialSessionInputCopyWith<$Res> {
  factory _$$CreateTrialSessionInputImplCopyWith(
          _$CreateTrialSessionInputImpl value,
          $Res Function(_$CreateTrialSessionInputImpl) then) =
      __$$CreateTrialSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrialSessionStatus status,
      String? notes,
      String consulteeProfileId,
      String consultantProfileId,
      String subscriptionPlanId,
      String? appointmentId,
      String? convertedToSubscriptionId,
      DateTime? completedAt});
}

/// @nodoc
class __$$CreateTrialSessionInputImplCopyWithImpl<$Res>
    extends _$CreateTrialSessionInputCopyWithImpl<$Res,
        _$CreateTrialSessionInputImpl>
    implements _$$CreateTrialSessionInputImplCopyWith<$Res> {
  __$$CreateTrialSessionInputImplCopyWithImpl(
      _$CreateTrialSessionInputImpl _value,
      $Res Function(_$CreateTrialSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? consulteeProfileId = null,
    Object? consultantProfileId = null,
    Object? subscriptionPlanId = null,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$CreateTrialSessionInputImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTrialSessionInputImpl implements _CreateTrialSessionInput {
  const _$CreateTrialSessionInputImpl(
      {this.status = TrialSessionStatus.pending,
      this.notes,
      required this.consulteeProfileId,
      required this.consultantProfileId,
      required this.subscriptionPlanId,
      this.appointmentId,
      this.convertedToSubscriptionId,
      this.completedAt});

  factory _$CreateTrialSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTrialSessionInputImplFromJson(json);

  @override
  @JsonKey()
  final TrialSessionStatus status;
  @override
  final String? notes;
  @override
  final String consulteeProfileId;
  @override
  final String consultantProfileId;
  @override
  final String subscriptionPlanId;
  @override
  final String? appointmentId;
  @override
  final String? convertedToSubscriptionId;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'CreateTrialSessionInput(status: $status, notes: $notes, consulteeProfileId: $consulteeProfileId, consultantProfileId: $consultantProfileId, subscriptionPlanId: $subscriptionPlanId, appointmentId: $appointmentId, convertedToSubscriptionId: $convertedToSubscriptionId, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTrialSessionInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notes,
      consulteeProfileId,
      consultantProfileId,
      subscriptionPlanId,
      appointmentId,
      convertedToSubscriptionId,
      completedAt);

  /// Create a copy of CreateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTrialSessionInputImplCopyWith<_$CreateTrialSessionInputImpl>
      get copyWith => __$$CreateTrialSessionInputImplCopyWithImpl<
          _$CreateTrialSessionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTrialSessionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateTrialSessionInput implements CreateTrialSessionInput {
  const factory _CreateTrialSessionInput(
      {final TrialSessionStatus status,
      final String? notes,
      required final String consulteeProfileId,
      required final String consultantProfileId,
      required final String subscriptionPlanId,
      final String? appointmentId,
      final String? convertedToSubscriptionId,
      final DateTime? completedAt}) = _$CreateTrialSessionInputImpl;

  factory _CreateTrialSessionInput.fromJson(Map<String, dynamic> json) =
      _$CreateTrialSessionInputImpl.fromJson;

  @override
  TrialSessionStatus get status;
  @override
  String? get notes;
  @override
  String get consulteeProfileId;
  @override
  String get consultantProfileId;
  @override
  String get subscriptionPlanId;
  @override
  String? get appointmentId;
  @override
  String? get convertedToSubscriptionId;
  @override
  DateTime? get completedAt;

  /// Create a copy of CreateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTrialSessionInputImplCopyWith<_$CreateTrialSessionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateTrialSessionInput _$UpdateTrialSessionInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateTrialSessionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTrialSessionInput {
  TrialSessionStatus? get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get subscriptionPlanId => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  String? get convertedToSubscriptionId => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateTrialSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTrialSessionInputCopyWith<UpdateTrialSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTrialSessionInputCopyWith<$Res> {
  factory $UpdateTrialSessionInputCopyWith(UpdateTrialSessionInput value,
          $Res Function(UpdateTrialSessionInput) then) =
      _$UpdateTrialSessionInputCopyWithImpl<$Res, UpdateTrialSessionInput>;
  @useResult
  $Res call(
      {TrialSessionStatus? status,
      String? notes,
      String? consulteeProfileId,
      String? consultantProfileId,
      String? subscriptionPlanId,
      String? appointmentId,
      String? convertedToSubscriptionId,
      DateTime? completedAt});
}

/// @nodoc
class _$UpdateTrialSessionInputCopyWithImpl<$Res,
        $Val extends UpdateTrialSessionInput>
    implements $UpdateTrialSessionInputCopyWith<$Res> {
  _$UpdateTrialSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? notes = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTrialSessionInputImplCopyWith<$Res>
    implements $UpdateTrialSessionInputCopyWith<$Res> {
  factory _$$UpdateTrialSessionInputImplCopyWith(
          _$UpdateTrialSessionInputImpl value,
          $Res Function(_$UpdateTrialSessionInputImpl) then) =
      __$$UpdateTrialSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrialSessionStatus? status,
      String? notes,
      String? consulteeProfileId,
      String? consultantProfileId,
      String? subscriptionPlanId,
      String? appointmentId,
      String? convertedToSubscriptionId,
      DateTime? completedAt});
}

/// @nodoc
class __$$UpdateTrialSessionInputImplCopyWithImpl<$Res>
    extends _$UpdateTrialSessionInputCopyWithImpl<$Res,
        _$UpdateTrialSessionInputImpl>
    implements _$$UpdateTrialSessionInputImplCopyWith<$Res> {
  __$$UpdateTrialSessionInputImplCopyWithImpl(
      _$UpdateTrialSessionInputImpl _value,
      $Res Function(_$UpdateTrialSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? notes = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$UpdateTrialSessionInputImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTrialSessionInputImpl implements _UpdateTrialSessionInput {
  const _$UpdateTrialSessionInputImpl(
      {this.status,
      this.notes,
      this.consulteeProfileId,
      this.consultantProfileId,
      this.subscriptionPlanId,
      this.appointmentId,
      this.convertedToSubscriptionId,
      this.completedAt});

  factory _$UpdateTrialSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTrialSessionInputImplFromJson(json);

  @override
  final TrialSessionStatus? status;
  @override
  final String? notes;
  @override
  final String? consulteeProfileId;
  @override
  final String? consultantProfileId;
  @override
  final String? subscriptionPlanId;
  @override
  final String? appointmentId;
  @override
  final String? convertedToSubscriptionId;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'UpdateTrialSessionInput(status: $status, notes: $notes, consulteeProfileId: $consulteeProfileId, consultantProfileId: $consultantProfileId, subscriptionPlanId: $subscriptionPlanId, appointmentId: $appointmentId, convertedToSubscriptionId: $convertedToSubscriptionId, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTrialSessionInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notes,
      consulteeProfileId,
      consultantProfileId,
      subscriptionPlanId,
      appointmentId,
      convertedToSubscriptionId,
      completedAt);

  /// Create a copy of UpdateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTrialSessionInputImplCopyWith<_$UpdateTrialSessionInputImpl>
      get copyWith => __$$UpdateTrialSessionInputImplCopyWithImpl<
          _$UpdateTrialSessionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTrialSessionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateTrialSessionInput implements UpdateTrialSessionInput {
  const factory _UpdateTrialSessionInput(
      {final TrialSessionStatus? status,
      final String? notes,
      final String? consulteeProfileId,
      final String? consultantProfileId,
      final String? subscriptionPlanId,
      final String? appointmentId,
      final String? convertedToSubscriptionId,
      final DateTime? completedAt}) = _$UpdateTrialSessionInputImpl;

  factory _UpdateTrialSessionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTrialSessionInputImpl.fromJson;

  @override
  TrialSessionStatus? get status;
  @override
  String? get notes;
  @override
  String? get consulteeProfileId;
  @override
  String? get consultantProfileId;
  @override
  String? get subscriptionPlanId;
  @override
  String? get appointmentId;
  @override
  String? get convertedToSubscriptionId;
  @override
  DateTime? get completedAt;

  /// Create a copy of UpdateTrialSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTrialSessionInputImplCopyWith<_$UpdateTrialSessionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TrialSessionWhereUniqueInput _$TrialSessionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  String? get convertedToSubscriptionId => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionWhereUniqueInputCopyWith<TrialSessionWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionWhereUniqueInputCopyWith<$Res> {
  factory $TrialSessionWhereUniqueInputCopyWith(
          TrialSessionWhereUniqueInput value,
          $Res Function(TrialSessionWhereUniqueInput) then) =
      _$TrialSessionWhereUniqueInputCopyWithImpl<$Res,
          TrialSessionWhereUniqueInput>;
  @useResult
  $Res call(
      {String? id, String? appointmentId, String? convertedToSubscriptionId});
}

/// @nodoc
class _$TrialSessionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends TrialSessionWhereUniqueInput>
    implements $TrialSessionWhereUniqueInputCopyWith<$Res> {
  _$TrialSessionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrialSessionWhereUniqueInputImplCopyWith<$Res>
    implements $TrialSessionWhereUniqueInputCopyWith<$Res> {
  factory _$$TrialSessionWhereUniqueInputImplCopyWith(
          _$TrialSessionWhereUniqueInputImpl value,
          $Res Function(_$TrialSessionWhereUniqueInputImpl) then) =
      __$$TrialSessionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? appointmentId, String? convertedToSubscriptionId});
}

/// @nodoc
class __$$TrialSessionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$TrialSessionWhereUniqueInputCopyWithImpl<$Res,
        _$TrialSessionWhereUniqueInputImpl>
    implements _$$TrialSessionWhereUniqueInputImplCopyWith<$Res> {
  __$$TrialSessionWhereUniqueInputImplCopyWithImpl(
      _$TrialSessionWhereUniqueInputImpl _value,
      $Res Function(_$TrialSessionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
  }) {
    return _then(_$TrialSessionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrialSessionWhereUniqueInputImpl
    implements _TrialSessionWhereUniqueInput {
  const _$TrialSessionWhereUniqueInputImpl(
      {this.id, this.appointmentId, this.convertedToSubscriptionId});

  factory _$TrialSessionWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrialSessionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? appointmentId;
  @override
  final String? convertedToSubscriptionId;

  @override
  String toString() {
    return 'TrialSessionWhereUniqueInput(id: $id, appointmentId: $appointmentId, convertedToSubscriptionId: $convertedToSubscriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, appointmentId, convertedToSubscriptionId);

  /// Create a copy of TrialSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionWhereUniqueInputImplCopyWith<
          _$TrialSessionWhereUniqueInputImpl>
      get copyWith => __$$TrialSessionWhereUniqueInputImplCopyWithImpl<
          _$TrialSessionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionWhereUniqueInput
    implements TrialSessionWhereUniqueInput {
  const factory _TrialSessionWhereUniqueInput(
          {final String? id,
          final String? appointmentId,
          final String? convertedToSubscriptionId}) =
      _$TrialSessionWhereUniqueInputImpl;

  factory _TrialSessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$TrialSessionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get appointmentId;
  @override
  String? get convertedToSubscriptionId;

  /// Create a copy of TrialSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionWhereUniqueInputImplCopyWith<
          _$TrialSessionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TrialSessionWhereInput _$TrialSessionWhereInputFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  TrialSessionStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get notes => throw _privateConstructorUsedError;

  /// Filter by consulteeProfile relation
  ConsulteeProfileRelationFilter? get consulteeProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consulteeProfileId => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;

  /// Filter by subscriptionPlan relation
  SubscriptionPlanRelationFilter? get subscriptionPlan =>
      throw _privateConstructorUsedError;
  StringFilter? get subscriptionPlanId => throw _privateConstructorUsedError;

  /// Filter by appointment relation
  AppointmentRelationFilter? get appointment =>
      throw _privateConstructorUsedError;
  StringFilter? get appointmentId => throw _privateConstructorUsedError;

  /// Filter by convertedToSubscription relation
  SubscriptionRelationFilter? get convertedToSubscription =>
      throw _privateConstructorUsedError;
  StringFilter? get convertedToSubscriptionId =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get requestedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get completedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<TrialSessionWhereInput>? get AND => throw _privateConstructorUsedError;
  List<TrialSessionWhereInput>? get OR => throw _privateConstructorUsedError;
  TrialSessionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionWhereInputCopyWith<TrialSessionWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionWhereInputCopyWith<$Res> {
  factory $TrialSessionWhereInputCopyWith(TrialSessionWhereInput value,
          $Res Function(TrialSessionWhereInput) then) =
      _$TrialSessionWhereInputCopyWithImpl<$Res, TrialSessionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      TrialSessionStatusFilter? status,
      StringFilter? notes,
      ConsulteeProfileRelationFilter? consulteeProfile,
      StringFilter? consulteeProfileId,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      SubscriptionRelationFilter? convertedToSubscription,
      StringFilter? convertedToSubscriptionId,
      DateTimeFilter? requestedAt,
      DateTimeFilter? completedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TrialSessionWhereInput>? AND,
      List<TrialSessionWhereInput>? OR,
      TrialSessionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $TrialSessionStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get notes;
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile;
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  $StringFilterCopyWith<$Res>? get appointmentId;
  $SubscriptionRelationFilterCopyWith<$Res>? get convertedToSubscription;
  $StringFilterCopyWith<$Res>? get convertedToSubscriptionId;
  $DateTimeFilterCopyWith<$Res>? get requestedAt;
  $DateTimeFilterCopyWith<$Res>? get completedAt;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $TrialSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$TrialSessionWhereInputCopyWithImpl<$Res,
        $Val extends TrialSessionWhereInput>
    implements $TrialSessionWhereInputCopyWith<$Res> {
  _$TrialSessionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscription = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = freezed,
    Object? completedAt = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatusFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      convertedToSubscription: freezed == convertedToSubscription
          ? _value.convertedToSubscription
          : convertedToSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionRelationFilter?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
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
              as List<TrialSessionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $TrialSessionStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile {
    if (_value.consulteeProfile == null) {
      return null;
    }

    return $ConsulteeProfileRelationFilterCopyWith<$Res>(
        _value.consulteeProfile!, (value) {
      return _then(_value.copyWith(consulteeProfile: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consulteeProfileId {
    if (_value.consulteeProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consulteeProfileId!, (value) {
      return _then(_value.copyWith(consulteeProfileId: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanRelationFilterCopyWith<$Res>(
        _value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionPlanId {
    if (_value.subscriptionPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionPlanId!, (value) {
      return _then(_value.copyWith(subscriptionPlanId: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentRelationFilterCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentRelationFilterCopyWith<$Res>(_value.appointment!,
        (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get appointmentId {
    if (_value.appointmentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.appointmentId!, (value) {
      return _then(_value.copyWith(appointmentId: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionRelationFilterCopyWith<$Res>? get convertedToSubscription {
    if (_value.convertedToSubscription == null) {
      return null;
    }

    return $SubscriptionRelationFilterCopyWith<$Res>(
        _value.convertedToSubscription!, (value) {
      return _then(_value.copyWith(convertedToSubscription: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get convertedToSubscriptionId {
    if (_value.convertedToSubscriptionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.convertedToSubscriptionId!,
        (value) {
      return _then(_value.copyWith(convertedToSubscriptionId: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get requestedAt {
    if (_value.requestedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.requestedAt!, (value) {
      return _then(_value.copyWith(requestedAt: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get completedAt {
    if (_value.completedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.completedAt!, (value) {
      return _then(_value.copyWith(completedAt: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
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

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrialSessionWhereInputImplCopyWith<$Res>
    implements $TrialSessionWhereInputCopyWith<$Res> {
  factory _$$TrialSessionWhereInputImplCopyWith(
          _$TrialSessionWhereInputImpl value,
          $Res Function(_$TrialSessionWhereInputImpl) then) =
      __$$TrialSessionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      TrialSessionStatusFilter? status,
      StringFilter? notes,
      ConsulteeProfileRelationFilter? consulteeProfile,
      StringFilter? consulteeProfileId,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      SubscriptionRelationFilter? convertedToSubscription,
      StringFilter? convertedToSubscriptionId,
      DateTimeFilter? requestedAt,
      DateTimeFilter? completedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TrialSessionWhereInput>? AND,
      List<TrialSessionWhereInput>? OR,
      TrialSessionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $TrialSessionStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get notes;
  @override
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile;
  @override
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  @override
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  @override
  $StringFilterCopyWith<$Res>? get appointmentId;
  @override
  $SubscriptionRelationFilterCopyWith<$Res>? get convertedToSubscription;
  @override
  $StringFilterCopyWith<$Res>? get convertedToSubscriptionId;
  @override
  $DateTimeFilterCopyWith<$Res>? get requestedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get completedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $TrialSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$TrialSessionWhereInputImplCopyWithImpl<$Res>
    extends _$TrialSessionWhereInputCopyWithImpl<$Res,
        _$TrialSessionWhereInputImpl>
    implements _$$TrialSessionWhereInputImplCopyWith<$Res> {
  __$$TrialSessionWhereInputImplCopyWithImpl(
      _$TrialSessionWhereInputImpl _value,
      $Res Function(_$TrialSessionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscription = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$TrialSessionWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatusFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      convertedToSubscription: freezed == convertedToSubscription
          ? _value.convertedToSubscription
          : convertedToSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionRelationFilter?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
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
              as List<TrialSessionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TrialSessionWhereInputImpl implements _TrialSessionWhereInput {
  const _$TrialSessionWhereInputImpl(
      {this.id,
      this.status,
      this.notes,
      this.consulteeProfile,
      this.consulteeProfileId,
      this.consultantProfile,
      this.consultantProfileId,
      this.subscriptionPlan,
      this.subscriptionPlanId,
      this.appointment,
      this.appointmentId,
      this.convertedToSubscription,
      this.convertedToSubscriptionId,
      this.requestedAt,
      this.completedAt,
      this.createdAt,
      this.updatedAt,
      final List<TrialSessionWhereInput>? AND,
      final List<TrialSessionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$TrialSessionWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrialSessionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final TrialSessionStatusFilter? status;
  @override
  final StringFilter? notes;

  /// Filter by consulteeProfile relation
  @override
  final ConsulteeProfileRelationFilter? consulteeProfile;
  @override
  final StringFilter? consulteeProfileId;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;

  /// Filter by subscriptionPlan relation
  @override
  final SubscriptionPlanRelationFilter? subscriptionPlan;
  @override
  final StringFilter? subscriptionPlanId;

  /// Filter by appointment relation
  @override
  final AppointmentRelationFilter? appointment;
  @override
  final StringFilter? appointmentId;

  /// Filter by convertedToSubscription relation
  @override
  final SubscriptionRelationFilter? convertedToSubscription;
  @override
  final StringFilter? convertedToSubscriptionId;
  @override
  final DateTimeFilter? requestedAt;
  @override
  final DateTimeFilter? completedAt;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<TrialSessionWhereInput>? _AND;
  @override
  List<TrialSessionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrialSessionWhereInput>? _OR;
  @override
  List<TrialSessionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TrialSessionWhereInput? NOT;

  @override
  String toString() {
    return 'TrialSessionWhereInput(id: $id, status: $status, notes: $notes, consulteeProfile: $consulteeProfile, consulteeProfileId: $consulteeProfileId, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, appointment: $appointment, appointmentId: $appointmentId, convertedToSubscription: $convertedToSubscription, convertedToSubscriptionId: $convertedToSubscriptionId, requestedAt: $requestedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.consulteeProfile, consulteeProfile) ||
                other.consulteeProfile == consulteeProfile) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(
                    other.convertedToSubscription, convertedToSubscription) ||
                other.convertedToSubscription == convertedToSubscription) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        notes,
        consulteeProfile,
        consulteeProfileId,
        consultantProfile,
        consultantProfileId,
        subscriptionPlan,
        subscriptionPlanId,
        appointment,
        appointmentId,
        convertedToSubscription,
        convertedToSubscriptionId,
        requestedAt,
        completedAt,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionWhereInputImplCopyWith<_$TrialSessionWhereInputImpl>
      get copyWith => __$$TrialSessionWhereInputImplCopyWithImpl<
          _$TrialSessionWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionWhereInput implements TrialSessionWhereInput {
  const factory _TrialSessionWhereInput(
      {final StringFilter? id,
      final TrialSessionStatusFilter? status,
      final StringFilter? notes,
      final ConsulteeProfileRelationFilter? consulteeProfile,
      final StringFilter? consulteeProfileId,
      final ConsultantProfileRelationFilter? consultantProfile,
      final StringFilter? consultantProfileId,
      final SubscriptionPlanRelationFilter? subscriptionPlan,
      final StringFilter? subscriptionPlanId,
      final AppointmentRelationFilter? appointment,
      final StringFilter? appointmentId,
      final SubscriptionRelationFilter? convertedToSubscription,
      final StringFilter? convertedToSubscriptionId,
      final DateTimeFilter? requestedAt,
      final DateTimeFilter? completedAt,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<TrialSessionWhereInput>? AND,
      final List<TrialSessionWhereInput>? OR,
      final TrialSessionWhereInput? NOT}) = _$TrialSessionWhereInputImpl;

  factory _TrialSessionWhereInput.fromJson(Map<String, dynamic> json) =
      _$TrialSessionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  TrialSessionStatusFilter? get status;
  @override
  StringFilter? get notes;

  /// Filter by consulteeProfile relation
  @override
  ConsulteeProfileRelationFilter? get consulteeProfile;
  @override
  StringFilter? get consulteeProfileId;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;

  /// Filter by subscriptionPlan relation
  @override
  SubscriptionPlanRelationFilter? get subscriptionPlan;
  @override
  StringFilter? get subscriptionPlanId;

  /// Filter by appointment relation
  @override
  AppointmentRelationFilter? get appointment;
  @override
  StringFilter? get appointmentId;

  /// Filter by convertedToSubscription relation
  @override
  SubscriptionRelationFilter? get convertedToSubscription;
  @override
  StringFilter? get convertedToSubscriptionId;
  @override
  DateTimeFilter? get requestedAt;
  @override
  DateTimeFilter? get completedAt;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<TrialSessionWhereInput>? get AND;
  @override
  List<TrialSessionWhereInput>? get OR;
  @override
  TrialSessionWhereInput? get NOT;

  /// Create a copy of TrialSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionWhereInputImplCopyWith<_$TrialSessionWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TrialSessionListRelationFilter _$TrialSessionListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionListRelationFilter {
  /// At least one related record matches
  TrialSessionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  TrialSessionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  TrialSessionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionListRelationFilterCopyWith<TrialSessionListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionListRelationFilterCopyWith<$Res> {
  factory $TrialSessionListRelationFilterCopyWith(
          TrialSessionListRelationFilter value,
          $Res Function(TrialSessionListRelationFilter) then) =
      _$TrialSessionListRelationFilterCopyWithImpl<$Res,
          TrialSessionListRelationFilter>;
  @useResult
  $Res call(
      {TrialSessionWhereInput? some,
      TrialSessionWhereInput? every,
      TrialSessionWhereInput? none});

  $TrialSessionWhereInputCopyWith<$Res>? get some;
  $TrialSessionWhereInputCopyWith<$Res>? get every;
  $TrialSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$TrialSessionListRelationFilterCopyWithImpl<$Res,
        $Val extends TrialSessionListRelationFilter>
    implements $TrialSessionListRelationFilterCopyWith<$Res> {
  _$TrialSessionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionListRelationFilter
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
              as TrialSessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrialSessionListRelationFilterImplCopyWith<$Res>
    implements $TrialSessionListRelationFilterCopyWith<$Res> {
  factory _$$TrialSessionListRelationFilterImplCopyWith(
          _$TrialSessionListRelationFilterImpl value,
          $Res Function(_$TrialSessionListRelationFilterImpl) then) =
      __$$TrialSessionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrialSessionWhereInput? some,
      TrialSessionWhereInput? every,
      TrialSessionWhereInput? none});

  @override
  $TrialSessionWhereInputCopyWith<$Res>? get some;
  @override
  $TrialSessionWhereInputCopyWith<$Res>? get every;
  @override
  $TrialSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$TrialSessionListRelationFilterImplCopyWithImpl<$Res>
    extends _$TrialSessionListRelationFilterCopyWithImpl<$Res,
        _$TrialSessionListRelationFilterImpl>
    implements _$$TrialSessionListRelationFilterImplCopyWith<$Res> {
  __$$TrialSessionListRelationFilterImplCopyWithImpl(
      _$TrialSessionListRelationFilterImpl _value,
      $Res Function(_$TrialSessionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$TrialSessionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrialSessionListRelationFilterImpl
    implements _TrialSessionListRelationFilter {
  const _$TrialSessionListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$TrialSessionListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrialSessionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final TrialSessionWhereInput? some;

  /// All related records match
  @override
  final TrialSessionWhereInput? every;

  /// No related records match
  @override
  final TrialSessionWhereInput? none;

  @override
  String toString() {
    return 'TrialSessionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionListRelationFilterImplCopyWith<
          _$TrialSessionListRelationFilterImpl>
      get copyWith => __$$TrialSessionListRelationFilterImplCopyWithImpl<
          _$TrialSessionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionListRelationFilter
    implements TrialSessionListRelationFilter {
  const factory _TrialSessionListRelationFilter(
          {final TrialSessionWhereInput? some,
          final TrialSessionWhereInput? every,
          final TrialSessionWhereInput? none}) =
      _$TrialSessionListRelationFilterImpl;

  factory _TrialSessionListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TrialSessionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  TrialSessionWhereInput? get some;

  /// All related records match
  @override
  TrialSessionWhereInput? get every;

  /// No related records match
  @override
  TrialSessionWhereInput? get none;

  /// Create a copy of TrialSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionListRelationFilterImplCopyWith<
          _$TrialSessionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TrialSessionRelationFilter _$TrialSessionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  TrialSessionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  TrialSessionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionRelationFilterCopyWith<TrialSessionRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionRelationFilterCopyWith<$Res> {
  factory $TrialSessionRelationFilterCopyWith(TrialSessionRelationFilter value,
          $Res Function(TrialSessionRelationFilter) then) =
      _$TrialSessionRelationFilterCopyWithImpl<$Res,
          TrialSessionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TrialSessionWhereInput? is_,
      TrialSessionWhereInput? isNot});

  $TrialSessionWhereInputCopyWith<$Res>? get is_;
  $TrialSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$TrialSessionRelationFilterCopyWithImpl<$Res,
        $Val extends TrialSessionRelationFilter>
    implements $TrialSessionRelationFilterCopyWith<$Res> {
  _$TrialSessionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionRelationFilter
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
              as TrialSessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $TrialSessionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrialSessionRelationFilterImplCopyWith<$Res>
    implements $TrialSessionRelationFilterCopyWith<$Res> {
  factory _$$TrialSessionRelationFilterImplCopyWith(
          _$TrialSessionRelationFilterImpl value,
          $Res Function(_$TrialSessionRelationFilterImpl) then) =
      __$$TrialSessionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TrialSessionWhereInput? is_,
      TrialSessionWhereInput? isNot});

  @override
  $TrialSessionWhereInputCopyWith<$Res>? get is_;
  @override
  $TrialSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$TrialSessionRelationFilterImplCopyWithImpl<$Res>
    extends _$TrialSessionRelationFilterCopyWithImpl<$Res,
        _$TrialSessionRelationFilterImpl>
    implements _$$TrialSessionRelationFilterImplCopyWith<$Res> {
  __$$TrialSessionRelationFilterImplCopyWithImpl(
      _$TrialSessionRelationFilterImpl _value,
      $Res Function(_$TrialSessionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$TrialSessionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TrialSessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrialSessionRelationFilterImpl implements _TrialSessionRelationFilter {
  const _$TrialSessionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$TrialSessionRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrialSessionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final TrialSessionWhereInput? is_;

  /// Related record does not match
  @override
  final TrialSessionWhereInput? isNot;

  @override
  String toString() {
    return 'TrialSessionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionRelationFilterImplCopyWith<_$TrialSessionRelationFilterImpl>
      get copyWith => __$$TrialSessionRelationFilterImplCopyWithImpl<
          _$TrialSessionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionRelationFilter
    implements TrialSessionRelationFilter {
  const factory _TrialSessionRelationFilter(
      {@JsonKey(name: 'is') final TrialSessionWhereInput? is_,
      final TrialSessionWhereInput? isNot}) = _$TrialSessionRelationFilterImpl;

  factory _TrialSessionRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TrialSessionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  TrialSessionWhereInput? get is_;

  /// Related record does not match
  @override
  TrialSessionWhereInput? get isNot;

  /// Create a copy of TrialSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionRelationFilterImplCopyWith<_$TrialSessionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TrialSessionOrderByInput _$TrialSessionOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get notes => throw _privateConstructorUsedError;
  SortOrder? get consulteeProfileId => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get subscriptionPlanId => throw _privateConstructorUsedError;
  SortOrder? get appointmentId => throw _privateConstructorUsedError;
  SortOrder? get convertedToSubscriptionId =>
      throw _privateConstructorUsedError;
  SortOrder? get requestedAt => throw _privateConstructorUsedError;
  SortOrder? get completedAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionOrderByInputCopyWith<TrialSessionOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionOrderByInputCopyWith<$Res> {
  factory $TrialSessionOrderByInputCopyWith(TrialSessionOrderByInput value,
          $Res Function(TrialSessionOrderByInput) then) =
      _$TrialSessionOrderByInputCopyWithImpl<$Res, TrialSessionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? consulteeProfileId,
      SortOrder? consultantProfileId,
      SortOrder? subscriptionPlanId,
      SortOrder? appointmentId,
      SortOrder? convertedToSubscriptionId,
      SortOrder? requestedAt,
      SortOrder? completedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$TrialSessionOrderByInputCopyWithImpl<$Res,
        $Val extends TrialSessionOrderByInput>
    implements $TrialSessionOrderByInputCopyWith<$Res> {
  _$TrialSessionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = freezed,
    Object? completedAt = freezed,
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
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TrialSessionOrderByInputImplCopyWith<$Res>
    implements $TrialSessionOrderByInputCopyWith<$Res> {
  factory _$$TrialSessionOrderByInputImplCopyWith(
          _$TrialSessionOrderByInputImpl value,
          $Res Function(_$TrialSessionOrderByInputImpl) then) =
      __$$TrialSessionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? consulteeProfileId,
      SortOrder? consultantProfileId,
      SortOrder? subscriptionPlanId,
      SortOrder? appointmentId,
      SortOrder? convertedToSubscriptionId,
      SortOrder? requestedAt,
      SortOrder? completedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$TrialSessionOrderByInputImplCopyWithImpl<$Res>
    extends _$TrialSessionOrderByInputCopyWithImpl<$Res,
        _$TrialSessionOrderByInputImpl>
    implements _$$TrialSessionOrderByInputImplCopyWith<$Res> {
  __$$TrialSessionOrderByInputImplCopyWithImpl(
      _$TrialSessionOrderByInputImpl _value,
      $Res Function(_$TrialSessionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? consulteeProfileId = freezed,
    Object? consultantProfileId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? appointmentId = freezed,
    Object? convertedToSubscriptionId = freezed,
    Object? requestedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TrialSessionOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      convertedToSubscriptionId: freezed == convertedToSubscriptionId
          ? _value.convertedToSubscriptionId
          : convertedToSubscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
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
class _$TrialSessionOrderByInputImpl implements _TrialSessionOrderByInput {
  const _$TrialSessionOrderByInputImpl(
      {this.id,
      this.notes,
      this.consulteeProfileId,
      this.consultantProfileId,
      this.subscriptionPlanId,
      this.appointmentId,
      this.convertedToSubscriptionId,
      this.requestedAt,
      this.completedAt,
      this.createdAt,
      this.updatedAt});

  factory _$TrialSessionOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrialSessionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? notes;
  @override
  final SortOrder? consulteeProfileId;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? subscriptionPlanId;
  @override
  final SortOrder? appointmentId;
  @override
  final SortOrder? convertedToSubscriptionId;
  @override
  final SortOrder? requestedAt;
  @override
  final SortOrder? completedAt;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'TrialSessionOrderByInput(id: $id, notes: $notes, consulteeProfileId: $consulteeProfileId, consultantProfileId: $consultantProfileId, subscriptionPlanId: $subscriptionPlanId, appointmentId: $appointmentId, convertedToSubscriptionId: $convertedToSubscriptionId, requestedAt: $requestedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.convertedToSubscriptionId,
                    convertedToSubscriptionId) ||
                other.convertedToSubscriptionId == convertedToSubscriptionId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
      notes,
      consulteeProfileId,
      consultantProfileId,
      subscriptionPlanId,
      appointmentId,
      convertedToSubscriptionId,
      requestedAt,
      completedAt,
      createdAt,
      updatedAt);

  /// Create a copy of TrialSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionOrderByInputImplCopyWith<_$TrialSessionOrderByInputImpl>
      get copyWith => __$$TrialSessionOrderByInputImplCopyWithImpl<
          _$TrialSessionOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionOrderByInput implements TrialSessionOrderByInput {
  const factory _TrialSessionOrderByInput(
      {final SortOrder? id,
      final SortOrder? notes,
      final SortOrder? consulteeProfileId,
      final SortOrder? consultantProfileId,
      final SortOrder? subscriptionPlanId,
      final SortOrder? appointmentId,
      final SortOrder? convertedToSubscriptionId,
      final SortOrder? requestedAt,
      final SortOrder? completedAt,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$TrialSessionOrderByInputImpl;

  factory _TrialSessionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$TrialSessionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get notes;
  @override
  SortOrder? get consulteeProfileId;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get subscriptionPlanId;
  @override
  SortOrder? get appointmentId;
  @override
  SortOrder? get convertedToSubscriptionId;
  @override
  SortOrder? get requestedAt;
  @override
  SortOrder? get completedAt;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of TrialSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionOrderByInputImplCopyWith<_$TrialSessionOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
