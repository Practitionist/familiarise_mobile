// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_of_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SlotOfAppointment _$SlotOfAppointmentFromJson(Map<String, dynamic> json) {
  return _SlotOfAppointment.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointment {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<User>? get user => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isTentative => throw _privateConstructorUsedError;
  SlotCompletionStatus get completionStatus =>
      throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;
  MeetingSession? get meetingSession => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentCopyWith<SlotOfAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentCopyWith<$Res> {
  factory $SlotOfAppointmentCopyWith(
          SlotOfAppointment value, $Res Function(SlotOfAppointment) then) =
      _$SlotOfAppointmentCopyWithImpl<$Res, SlotOfAppointment>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) List<User>? user,
      DateTime startsAt,
      DateTime endsAt,
      bool isTentative,
      SlotCompletionStatus completionStatus,
      DateTime? completedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String appointmentId,
      MeetingSession? meetingSession,
      DateTime createdAt,
      DateTime updatedAt});

  $AppointmentCopyWith<$Res>? get appointment;
  $MeetingSessionCopyWith<$Res>? get meetingSession;
}

/// @nodoc
class _$SlotOfAppointmentCopyWithImpl<$Res, $Val extends SlotOfAppointment>
    implements $SlotOfAppointmentCopyWith<$Res> {
  _$SlotOfAppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isTentative = null,
    Object? completionStatus = null,
    Object? completedAt = freezed,
    Object? appointment = freezed,
    Object? appointmentId = null,
    Object? meetingSession = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTentative: null == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool,
      completionStatus: null == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSession?,
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

  /// Create a copy of SlotOfAppointment
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

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionCopyWith<$Res>? get meetingSession {
    if (_value.meetingSession == null) {
      return null;
    }

    return $MeetingSessionCopyWith<$Res>(_value.meetingSession!, (value) {
      return _then(_value.copyWith(meetingSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAppointmentImplCopyWith<$Res>
    implements $SlotOfAppointmentCopyWith<$Res> {
  factory _$$SlotOfAppointmentImplCopyWith(_$SlotOfAppointmentImpl value,
          $Res Function(_$SlotOfAppointmentImpl) then) =
      __$$SlotOfAppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) List<User>? user,
      DateTime startsAt,
      DateTime endsAt,
      bool isTentative,
      SlotCompletionStatus completionStatus,
      DateTime? completedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String appointmentId,
      MeetingSession? meetingSession,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $AppointmentCopyWith<$Res>? get appointment;
  @override
  $MeetingSessionCopyWith<$Res>? get meetingSession;
}

/// @nodoc
class __$$SlotOfAppointmentImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentCopyWithImpl<$Res, _$SlotOfAppointmentImpl>
    implements _$$SlotOfAppointmentImplCopyWith<$Res> {
  __$$SlotOfAppointmentImplCopyWithImpl(_$SlotOfAppointmentImpl _value,
      $Res Function(_$SlotOfAppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isTentative = null,
    Object? completionStatus = null,
    Object? completedAt = freezed,
    Object? appointment = freezed,
    Object? appointmentId = null,
    Object? meetingSession = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SlotOfAppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTentative: null == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool,
      completionStatus: null == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSession?,
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
class _$SlotOfAppointmentImpl implements _SlotOfAppointment {
  const _$SlotOfAppointmentImpl(
      {required this.id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<User>? user,
      required this.startsAt,
      required this.endsAt,
      this.isTentative = false,
      this.completionStatus = SlotCompletionStatus.scheduled,
      this.completedAt,
      @JsonKey(includeFromJson: false, includeToJson: false) this.appointment,
      required this.appointmentId,
      this.meetingSession,
      required this.createdAt,
      required this.updatedAt})
      : _user = user;

  factory _$SlotOfAppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlotOfAppointmentImplFromJson(json);

  @override
  final String id;
  final List<User>? _user;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<User>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;
  @override
  @JsonKey()
  final bool isTentative;
  @override
  @JsonKey()
  final SlotCompletionStatus completionStatus;
  @override
  final DateTime? completedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Appointment? appointment;
  @override
  final String appointmentId;
  @override
  final MeetingSession? meetingSession;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SlotOfAppointment(id: $id, user: $user, startsAt: $startsAt, endsAt: $endsAt, isTentative: $isTentative, completionStatus: $completionStatus, completedAt: $completedAt, appointment: $appointment, appointmentId: $appointmentId, meetingSession: $meetingSession, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.meetingSession, meetingSession) ||
                other.meetingSession == meetingSession) &&
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
      const DeepCollectionEquality().hash(_user),
      startsAt,
      endsAt,
      isTentative,
      completionStatus,
      completedAt,
      appointment,
      appointmentId,
      meetingSession,
      createdAt,
      updatedAt);

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentImplCopyWith<_$SlotOfAppointmentImpl> get copyWith =>
      __$$SlotOfAppointmentImplCopyWithImpl<_$SlotOfAppointmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointment implements SlotOfAppointment {
  const factory _SlotOfAppointment(
      {required final String id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<User>? user,
      required final DateTime startsAt,
      required final DateTime endsAt,
      final bool isTentative,
      final SlotCompletionStatus completionStatus,
      final DateTime? completedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Appointment? appointment,
      required final String appointmentId,
      final MeetingSession? meetingSession,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SlotOfAppointmentImpl;

  factory _SlotOfAppointment.fromJson(Map<String, dynamic> json) =
      _$SlotOfAppointmentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<User>? get user;
  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  @override
  bool get isTentative;
  @override
  SlotCompletionStatus get completionStatus;
  @override
  DateTime? get completedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment;
  @override
  String get appointmentId;
  @override
  MeetingSession? get meetingSession;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SlotOfAppointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentImplCopyWith<_$SlotOfAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSlotOfAppointmentInput _$CreateSlotOfAppointmentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSlotOfAppointmentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSlotOfAppointmentInput {
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool? get isTentative => throw _privateConstructorUsedError;
  SlotCompletionStatus get completionStatus =>
      throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;

  /// Serializes this CreateSlotOfAppointmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSlotOfAppointmentInputCopyWith<CreateSlotOfAppointmentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSlotOfAppointmentInputCopyWith<$Res> {
  factory $CreateSlotOfAppointmentInputCopyWith(
          CreateSlotOfAppointmentInput value,
          $Res Function(CreateSlotOfAppointmentInput) then) =
      _$CreateSlotOfAppointmentInputCopyWithImpl<$Res,
          CreateSlotOfAppointmentInput>;
  @useResult
  $Res call(
      {DateTime startsAt,
      DateTime endsAt,
      bool? isTentative,
      SlotCompletionStatus completionStatus,
      DateTime? completedAt,
      String appointmentId});
}

/// @nodoc
class _$CreateSlotOfAppointmentInputCopyWithImpl<$Res,
        $Val extends CreateSlotOfAppointmentInput>
    implements $CreateSlotOfAppointmentInputCopyWith<$Res> {
  _$CreateSlotOfAppointmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isTentative = freezed,
    Object? completionStatus = null,
    Object? completedAt = freezed,
    Object? appointmentId = null,
  }) {
    return _then(_value.copyWith(
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: null == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSlotOfAppointmentInputImplCopyWith<$Res>
    implements $CreateSlotOfAppointmentInputCopyWith<$Res> {
  factory _$$CreateSlotOfAppointmentInputImplCopyWith(
          _$CreateSlotOfAppointmentInputImpl value,
          $Res Function(_$CreateSlotOfAppointmentInputImpl) then) =
      __$$CreateSlotOfAppointmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startsAt,
      DateTime endsAt,
      bool? isTentative,
      SlotCompletionStatus completionStatus,
      DateTime? completedAt,
      String appointmentId});
}

/// @nodoc
class __$$CreateSlotOfAppointmentInputImplCopyWithImpl<$Res>
    extends _$CreateSlotOfAppointmentInputCopyWithImpl<$Res,
        _$CreateSlotOfAppointmentInputImpl>
    implements _$$CreateSlotOfAppointmentInputImplCopyWith<$Res> {
  __$$CreateSlotOfAppointmentInputImplCopyWithImpl(
      _$CreateSlotOfAppointmentInputImpl _value,
      $Res Function(_$CreateSlotOfAppointmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isTentative = freezed,
    Object? completionStatus = null,
    Object? completedAt = freezed,
    Object? appointmentId = null,
  }) {
    return _then(_$CreateSlotOfAppointmentInputImpl(
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: null == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSlotOfAppointmentInputImpl
    implements _CreateSlotOfAppointmentInput {
  const _$CreateSlotOfAppointmentInputImpl(
      {required this.startsAt,
      required this.endsAt,
      this.isTentative = false,
      this.completionStatus = SlotCompletionStatus.scheduled,
      this.completedAt,
      required this.appointmentId});

  factory _$CreateSlotOfAppointmentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSlotOfAppointmentInputImplFromJson(json);

  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;
  @override
  @JsonKey()
  final bool? isTentative;
  @override
  @JsonKey()
  final SlotCompletionStatus completionStatus;
  @override
  final DateTime? completedAt;
  @override
  final String appointmentId;

  @override
  String toString() {
    return 'CreateSlotOfAppointmentInput(startsAt: $startsAt, endsAt: $endsAt, isTentative: $isTentative, completionStatus: $completionStatus, completedAt: $completedAt, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSlotOfAppointmentInputImpl &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startsAt, endsAt, isTentative,
      completionStatus, completedAt, appointmentId);

  /// Create a copy of CreateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSlotOfAppointmentInputImplCopyWith<
          _$CreateSlotOfAppointmentInputImpl>
      get copyWith => __$$CreateSlotOfAppointmentInputImplCopyWithImpl<
          _$CreateSlotOfAppointmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSlotOfAppointmentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSlotOfAppointmentInput
    implements CreateSlotOfAppointmentInput {
  const factory _CreateSlotOfAppointmentInput(
          {required final DateTime startsAt,
          required final DateTime endsAt,
          final bool? isTentative,
          final SlotCompletionStatus completionStatus,
          final DateTime? completedAt,
          required final String appointmentId}) =
      _$CreateSlotOfAppointmentInputImpl;

  factory _CreateSlotOfAppointmentInput.fromJson(Map<String, dynamic> json) =
      _$CreateSlotOfAppointmentInputImpl.fromJson;

  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  @override
  bool? get isTentative;
  @override
  SlotCompletionStatus get completionStatus;
  @override
  DateTime? get completedAt;
  @override
  String get appointmentId;

  /// Create a copy of CreateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSlotOfAppointmentInputImplCopyWith<
          _$CreateSlotOfAppointmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSlotOfAppointmentInput _$UpdateSlotOfAppointmentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSlotOfAppointmentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSlotOfAppointmentInput {
  DateTime? get startsAt => throw _privateConstructorUsedError;
  DateTime? get endsAt => throw _privateConstructorUsedError;
  bool? get isTentative => throw _privateConstructorUsedError;
  SlotCompletionStatus? get completionStatus =>
      throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSlotOfAppointmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSlotOfAppointmentInputCopyWith<UpdateSlotOfAppointmentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSlotOfAppointmentInputCopyWith<$Res> {
  factory $UpdateSlotOfAppointmentInputCopyWith(
          UpdateSlotOfAppointmentInput value,
          $Res Function(UpdateSlotOfAppointmentInput) then) =
      _$UpdateSlotOfAppointmentInputCopyWithImpl<$Res,
          UpdateSlotOfAppointmentInput>;
  @useResult
  $Res call(
      {DateTime? startsAt,
      DateTime? endsAt,
      bool? isTentative,
      SlotCompletionStatus? completionStatus,
      DateTime? completedAt,
      String? appointmentId});
}

/// @nodoc
class _$UpdateSlotOfAppointmentInputCopyWithImpl<$Res,
        $Val extends UpdateSlotOfAppointmentInput>
    implements $UpdateSlotOfAppointmentInputCopyWith<$Res> {
  _$UpdateSlotOfAppointmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completionStatus = freezed,
    Object? completedAt = freezed,
    Object? appointmentId = freezed,
  }) {
    return _then(_value.copyWith(
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: freezed == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSlotOfAppointmentInputImplCopyWith<$Res>
    implements $UpdateSlotOfAppointmentInputCopyWith<$Res> {
  factory _$$UpdateSlotOfAppointmentInputImplCopyWith(
          _$UpdateSlotOfAppointmentInputImpl value,
          $Res Function(_$UpdateSlotOfAppointmentInputImpl) then) =
      __$$UpdateSlotOfAppointmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startsAt,
      DateTime? endsAt,
      bool? isTentative,
      SlotCompletionStatus? completionStatus,
      DateTime? completedAt,
      String? appointmentId});
}

/// @nodoc
class __$$UpdateSlotOfAppointmentInputImplCopyWithImpl<$Res>
    extends _$UpdateSlotOfAppointmentInputCopyWithImpl<$Res,
        _$UpdateSlotOfAppointmentInputImpl>
    implements _$$UpdateSlotOfAppointmentInputImplCopyWith<$Res> {
  __$$UpdateSlotOfAppointmentInputImplCopyWithImpl(
      _$UpdateSlotOfAppointmentInputImpl _value,
      $Res Function(_$UpdateSlotOfAppointmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completionStatus = freezed,
    Object? completedAt = freezed,
    Object? appointmentId = freezed,
  }) {
    return _then(_$UpdateSlotOfAppointmentInputImpl(
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: freezed == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSlotOfAppointmentInputImpl
    implements _UpdateSlotOfAppointmentInput {
  const _$UpdateSlotOfAppointmentInputImpl(
      {this.startsAt,
      this.endsAt,
      this.isTentative,
      this.completionStatus,
      this.completedAt,
      this.appointmentId});

  factory _$UpdateSlotOfAppointmentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSlotOfAppointmentInputImplFromJson(json);

  @override
  final DateTime? startsAt;
  @override
  final DateTime? endsAt;
  @override
  final bool? isTentative;
  @override
  final SlotCompletionStatus? completionStatus;
  @override
  final DateTime? completedAt;
  @override
  final String? appointmentId;

  @override
  String toString() {
    return 'UpdateSlotOfAppointmentInput(startsAt: $startsAt, endsAt: $endsAt, isTentative: $isTentative, completionStatus: $completionStatus, completedAt: $completedAt, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSlotOfAppointmentInputImpl &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startsAt, endsAt, isTentative,
      completionStatus, completedAt, appointmentId);

  /// Create a copy of UpdateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSlotOfAppointmentInputImplCopyWith<
          _$UpdateSlotOfAppointmentInputImpl>
      get copyWith => __$$UpdateSlotOfAppointmentInputImplCopyWithImpl<
          _$UpdateSlotOfAppointmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSlotOfAppointmentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSlotOfAppointmentInput
    implements UpdateSlotOfAppointmentInput {
  const factory _UpdateSlotOfAppointmentInput(
      {final DateTime? startsAt,
      final DateTime? endsAt,
      final bool? isTentative,
      final SlotCompletionStatus? completionStatus,
      final DateTime? completedAt,
      final String? appointmentId}) = _$UpdateSlotOfAppointmentInputImpl;

  factory _UpdateSlotOfAppointmentInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSlotOfAppointmentInputImpl.fromJson;

  @override
  DateTime? get startsAt;
  @override
  DateTime? get endsAt;
  @override
  bool? get isTentative;
  @override
  SlotCompletionStatus? get completionStatus;
  @override
  DateTime? get completedAt;
  @override
  String? get appointmentId;

  /// Create a copy of UpdateSlotOfAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSlotOfAppointmentInputImplCopyWith<
          _$UpdateSlotOfAppointmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAppointmentWhereUniqueInput _$SlotOfAppointmentWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAppointmentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointmentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointmentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentWhereUniqueInputCopyWith<SlotOfAppointmentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentWhereUniqueInputCopyWith<$Res> {
  factory $SlotOfAppointmentWhereUniqueInputCopyWith(
          SlotOfAppointmentWhereUniqueInput value,
          $Res Function(SlotOfAppointmentWhereUniqueInput) then) =
      _$SlotOfAppointmentWhereUniqueInputCopyWithImpl<$Res,
          SlotOfAppointmentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SlotOfAppointmentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SlotOfAppointmentWhereUniqueInput>
    implements $SlotOfAppointmentWhereUniqueInputCopyWith<$Res> {
  _$SlotOfAppointmentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointmentWhereUniqueInput
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
abstract class _$$SlotOfAppointmentWhereUniqueInputImplCopyWith<$Res>
    implements $SlotOfAppointmentWhereUniqueInputCopyWith<$Res> {
  factory _$$SlotOfAppointmentWhereUniqueInputImplCopyWith(
          _$SlotOfAppointmentWhereUniqueInputImpl value,
          $Res Function(_$SlotOfAppointmentWhereUniqueInputImpl) then) =
      __$$SlotOfAppointmentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SlotOfAppointmentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentWhereUniqueInputCopyWithImpl<$Res,
        _$SlotOfAppointmentWhereUniqueInputImpl>
    implements _$$SlotOfAppointmentWhereUniqueInputImplCopyWith<$Res> {
  __$$SlotOfAppointmentWhereUniqueInputImplCopyWithImpl(
      _$SlotOfAppointmentWhereUniqueInputImpl _value,
      $Res Function(_$SlotOfAppointmentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SlotOfAppointmentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAppointmentWhereUniqueInputImpl
    implements _SlotOfAppointmentWhereUniqueInput {
  const _$SlotOfAppointmentWhereUniqueInputImpl({this.id});

  factory _$SlotOfAppointmentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAppointmentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SlotOfAppointmentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SlotOfAppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentWhereUniqueInputImplCopyWith<
          _$SlotOfAppointmentWhereUniqueInputImpl>
      get copyWith => __$$SlotOfAppointmentWhereUniqueInputImplCopyWithImpl<
          _$SlotOfAppointmentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointmentWhereUniqueInput
    implements SlotOfAppointmentWhereUniqueInput {
  const factory _SlotOfAppointmentWhereUniqueInput({final String? id}) =
      _$SlotOfAppointmentWhereUniqueInputImpl;

  factory _SlotOfAppointmentWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAppointmentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SlotOfAppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentWhereUniqueInputImplCopyWith<
          _$SlotOfAppointmentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAppointmentWhereInput _$SlotOfAppointmentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAppointmentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointmentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserListRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get startsAt => throw _privateConstructorUsedError;
  DateTimeFilter? get endsAt => throw _privateConstructorUsedError;
  BooleanFilter? get isTentative => throw _privateConstructorUsedError;
  SlotCompletionStatusFilter? get completionStatus =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get completedAt => throw _privateConstructorUsedError;

  /// Filter by appointment relation
  AppointmentRelationFilter? get appointment =>
      throw _privateConstructorUsedError;
  StringFilter? get appointmentId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SlotOfAppointmentWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SlotOfAppointmentWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SlotOfAppointmentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointmentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentWhereInputCopyWith<SlotOfAppointmentWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentWhereInputCopyWith<$Res> {
  factory $SlotOfAppointmentWhereInputCopyWith(
          SlotOfAppointmentWhereInput value,
          $Res Function(SlotOfAppointmentWhereInput) then) =
      _$SlotOfAppointmentWhereInputCopyWithImpl<$Res,
          SlotOfAppointmentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      UserListRelationFilter? user,
      DateTimeFilter? startsAt,
      DateTimeFilter? endsAt,
      BooleanFilter? isTentative,
      SlotCompletionStatusFilter? completionStatus,
      DateTimeFilter? completedAt,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SlotOfAppointmentWhereInput>? AND,
      List<SlotOfAppointmentWhereInput>? OR,
      SlotOfAppointmentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $UserListRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get startsAt;
  $DateTimeFilterCopyWith<$Res>? get endsAt;
  $BooleanFilterCopyWith<$Res>? get isTentative;
  $SlotCompletionStatusFilterCopyWith<$Res>? get completionStatus;
  $DateTimeFilterCopyWith<$Res>? get completedAt;
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  $StringFilterCopyWith<$Res>? get appointmentId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SlotOfAppointmentWhereInputCopyWithImpl<$Res,
        $Val extends SlotOfAppointmentWhereInput>
    implements $SlotOfAppointmentWhereInputCopyWith<$Res> {
  _$SlotOfAppointmentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completionStatus = freezed,
    Object? completedAt = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserListRelationFilter?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      completionStatus: freezed == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatusFilter?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
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
              as List<SlotOfAppointmentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserListRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get startsAt {
    if (_value.startsAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.startsAt!, (value) {
      return _then(_value.copyWith(startsAt: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get endsAt {
    if (_value.endsAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.endsAt!, (value) {
      return _then(_value.copyWith(endsAt: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isTentative {
    if (_value.isTentative == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isTentative!, (value) {
      return _then(_value.copyWith(isTentative: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotCompletionStatusFilterCopyWith<$Res>? get completionStatus {
    if (_value.completionStatus == null) {
      return null;
    }

    return $SlotCompletionStatusFilterCopyWith<$Res>(_value.completionStatus!,
        (value) {
      return _then(_value.copyWith(completionStatus: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
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

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAppointmentWhereInputImplCopyWith<$Res>
    implements $SlotOfAppointmentWhereInputCopyWith<$Res> {
  factory _$$SlotOfAppointmentWhereInputImplCopyWith(
          _$SlotOfAppointmentWhereInputImpl value,
          $Res Function(_$SlotOfAppointmentWhereInputImpl) then) =
      __$$SlotOfAppointmentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      UserListRelationFilter? user,
      DateTimeFilter? startsAt,
      DateTimeFilter? endsAt,
      BooleanFilter? isTentative,
      SlotCompletionStatusFilter? completionStatus,
      DateTimeFilter? completedAt,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SlotOfAppointmentWhereInput>? AND,
      List<SlotOfAppointmentWhereInput>? OR,
      SlotOfAppointmentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $UserListRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get startsAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get endsAt;
  @override
  $BooleanFilterCopyWith<$Res>? get isTentative;
  @override
  $SlotCompletionStatusFilterCopyWith<$Res>? get completionStatus;
  @override
  $DateTimeFilterCopyWith<$Res>? get completedAt;
  @override
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  @override
  $StringFilterCopyWith<$Res>? get appointmentId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SlotOfAppointmentWhereInputImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentWhereInputCopyWithImpl<$Res,
        _$SlotOfAppointmentWhereInputImpl>
    implements _$$SlotOfAppointmentWhereInputImplCopyWith<$Res> {
  __$$SlotOfAppointmentWhereInputImplCopyWithImpl(
      _$SlotOfAppointmentWhereInputImpl _value,
      $Res Function(_$SlotOfAppointmentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completionStatus = freezed,
    Object? completedAt = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SlotOfAppointmentWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserListRelationFilter?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      completionStatus: freezed == completionStatus
          ? _value.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatusFilter?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
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
              as List<SlotOfAppointmentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SlotOfAppointmentWhereInputImpl
    implements _SlotOfAppointmentWhereInput {
  const _$SlotOfAppointmentWhereInputImpl(
      {this.id,
      this.user,
      this.startsAt,
      this.endsAt,
      this.isTentative,
      this.completionStatus,
      this.completedAt,
      this.appointment,
      this.appointmentId,
      this.createdAt,
      this.updatedAt,
      final List<SlotOfAppointmentWhereInput>? AND,
      final List<SlotOfAppointmentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SlotOfAppointmentWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAppointmentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;

  /// Filter by user relation
  @override
  final UserListRelationFilter? user;
  @override
  final DateTimeFilter? startsAt;
  @override
  final DateTimeFilter? endsAt;
  @override
  final BooleanFilter? isTentative;
  @override
  final SlotCompletionStatusFilter? completionStatus;
  @override
  final DateTimeFilter? completedAt;

  /// Filter by appointment relation
  @override
  final AppointmentRelationFilter? appointment;
  @override
  final StringFilter? appointmentId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SlotOfAppointmentWhereInput>? _AND;
  @override
  List<SlotOfAppointmentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SlotOfAppointmentWhereInput>? _OR;
  @override
  List<SlotOfAppointmentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SlotOfAppointmentWhereInput? NOT;

  @override
  String toString() {
    return 'SlotOfAppointmentWhereInput(id: $id, user: $user, startsAt: $startsAt, endsAt: $endsAt, isTentative: $isTentative, completionStatus: $completionStatus, completedAt: $completedAt, appointment: $appointment, appointmentId: $appointmentId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
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
      user,
      startsAt,
      endsAt,
      isTentative,
      completionStatus,
      completedAt,
      appointment,
      appointmentId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentWhereInputImplCopyWith<_$SlotOfAppointmentWhereInputImpl>
      get copyWith => __$$SlotOfAppointmentWhereInputImplCopyWithImpl<
          _$SlotOfAppointmentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointmentWhereInput
    implements SlotOfAppointmentWhereInput {
  const factory _SlotOfAppointmentWhereInput(
          {final StringFilter? id,
          final UserListRelationFilter? user,
          final DateTimeFilter? startsAt,
          final DateTimeFilter? endsAt,
          final BooleanFilter? isTentative,
          final SlotCompletionStatusFilter? completionStatus,
          final DateTimeFilter? completedAt,
          final AppointmentRelationFilter? appointment,
          final StringFilter? appointmentId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<SlotOfAppointmentWhereInput>? AND,
          final List<SlotOfAppointmentWhereInput>? OR,
          final SlotOfAppointmentWhereInput? NOT}) =
      _$SlotOfAppointmentWhereInputImpl;

  factory _SlotOfAppointmentWhereInput.fromJson(Map<String, dynamic> json) =
      _$SlotOfAppointmentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;

  /// Filter by user relation
  @override
  UserListRelationFilter? get user;
  @override
  DateTimeFilter? get startsAt;
  @override
  DateTimeFilter? get endsAt;
  @override
  BooleanFilter? get isTentative;
  @override
  SlotCompletionStatusFilter? get completionStatus;
  @override
  DateTimeFilter? get completedAt;

  /// Filter by appointment relation
  @override
  AppointmentRelationFilter? get appointment;
  @override
  StringFilter? get appointmentId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SlotOfAppointmentWhereInput>? get AND;
  @override
  List<SlotOfAppointmentWhereInput>? get OR;
  @override
  SlotOfAppointmentWhereInput? get NOT;

  /// Create a copy of SlotOfAppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentWhereInputImplCopyWith<_$SlotOfAppointmentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAppointmentListRelationFilter
    _$SlotOfAppointmentListRelationFilterFromJson(Map<String, dynamic> json) {
  return _SlotOfAppointmentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointmentListRelationFilter {
  /// At least one related record matches
  SlotOfAppointmentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SlotOfAppointmentWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SlotOfAppointmentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointmentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentListRelationFilterCopyWith<
          SlotOfAppointmentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentListRelationFilterCopyWith<$Res> {
  factory $SlotOfAppointmentListRelationFilterCopyWith(
          SlotOfAppointmentListRelationFilter value,
          $Res Function(SlotOfAppointmentListRelationFilter) then) =
      _$SlotOfAppointmentListRelationFilterCopyWithImpl<$Res,
          SlotOfAppointmentListRelationFilter>;
  @useResult
  $Res call(
      {SlotOfAppointmentWhereInput? some,
      SlotOfAppointmentWhereInput? every,
      SlotOfAppointmentWhereInput? none});

  $SlotOfAppointmentWhereInputCopyWith<$Res>? get some;
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get every;
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SlotOfAppointmentListRelationFilterCopyWithImpl<$Res,
        $Val extends SlotOfAppointmentListRelationFilter>
    implements $SlotOfAppointmentListRelationFilterCopyWith<$Res> {
  _$SlotOfAppointmentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointmentListRelationFilter
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
              as SlotOfAppointmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAppointmentListRelationFilterImplCopyWith<$Res>
    implements $SlotOfAppointmentListRelationFilterCopyWith<$Res> {
  factory _$$SlotOfAppointmentListRelationFilterImplCopyWith(
          _$SlotOfAppointmentListRelationFilterImpl value,
          $Res Function(_$SlotOfAppointmentListRelationFilterImpl) then) =
      __$$SlotOfAppointmentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SlotOfAppointmentWhereInput? some,
      SlotOfAppointmentWhereInput? every,
      SlotOfAppointmentWhereInput? none});

  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get some;
  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get every;
  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SlotOfAppointmentListRelationFilterImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentListRelationFilterCopyWithImpl<$Res,
        _$SlotOfAppointmentListRelationFilterImpl>
    implements _$$SlotOfAppointmentListRelationFilterImplCopyWith<$Res> {
  __$$SlotOfAppointmentListRelationFilterImplCopyWithImpl(
      _$SlotOfAppointmentListRelationFilterImpl _value,
      $Res Function(_$SlotOfAppointmentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SlotOfAppointmentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAppointmentListRelationFilterImpl
    implements _SlotOfAppointmentListRelationFilter {
  const _$SlotOfAppointmentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SlotOfAppointmentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAppointmentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SlotOfAppointmentWhereInput? some;

  /// All related records match
  @override
  final SlotOfAppointmentWhereInput? every;

  /// No related records match
  @override
  final SlotOfAppointmentWhereInput? none;

  @override
  String toString() {
    return 'SlotOfAppointmentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentListRelationFilterImplCopyWith<
          _$SlotOfAppointmentListRelationFilterImpl>
      get copyWith => __$$SlotOfAppointmentListRelationFilterImplCopyWithImpl<
          _$SlotOfAppointmentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointmentListRelationFilter
    implements SlotOfAppointmentListRelationFilter {
  const factory _SlotOfAppointmentListRelationFilter(
          {final SlotOfAppointmentWhereInput? some,
          final SlotOfAppointmentWhereInput? every,
          final SlotOfAppointmentWhereInput? none}) =
      _$SlotOfAppointmentListRelationFilterImpl;

  factory _SlotOfAppointmentListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAppointmentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SlotOfAppointmentWhereInput? get some;

  /// All related records match
  @override
  SlotOfAppointmentWhereInput? get every;

  /// No related records match
  @override
  SlotOfAppointmentWhereInput? get none;

  /// Create a copy of SlotOfAppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentListRelationFilterImplCopyWith<
          _$SlotOfAppointmentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAppointmentRelationFilter _$SlotOfAppointmentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAppointmentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointmentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SlotOfAppointmentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SlotOfAppointmentWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointmentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentRelationFilterCopyWith<SlotOfAppointmentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentRelationFilterCopyWith<$Res> {
  factory $SlotOfAppointmentRelationFilterCopyWith(
          SlotOfAppointmentRelationFilter value,
          $Res Function(SlotOfAppointmentRelationFilter) then) =
      _$SlotOfAppointmentRelationFilterCopyWithImpl<$Res,
          SlotOfAppointmentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SlotOfAppointmentWhereInput? is_,
      SlotOfAppointmentWhereInput? isNot});

  $SlotOfAppointmentWhereInputCopyWith<$Res>? get is_;
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SlotOfAppointmentRelationFilterCopyWithImpl<$Res,
        $Val extends SlotOfAppointmentRelationFilter>
    implements $SlotOfAppointmentRelationFilterCopyWith<$Res> {
  _$SlotOfAppointmentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointmentRelationFilter
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
              as SlotOfAppointmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SlotOfAppointmentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAppointmentRelationFilterImplCopyWith<$Res>
    implements $SlotOfAppointmentRelationFilterCopyWith<$Res> {
  factory _$$SlotOfAppointmentRelationFilterImplCopyWith(
          _$SlotOfAppointmentRelationFilterImpl value,
          $Res Function(_$SlotOfAppointmentRelationFilterImpl) then) =
      __$$SlotOfAppointmentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SlotOfAppointmentWhereInput? is_,
      SlotOfAppointmentWhereInput? isNot});

  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get is_;
  @override
  $SlotOfAppointmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SlotOfAppointmentRelationFilterImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentRelationFilterCopyWithImpl<$Res,
        _$SlotOfAppointmentRelationFilterImpl>
    implements _$$SlotOfAppointmentRelationFilterImplCopyWith<$Res> {
  __$$SlotOfAppointmentRelationFilterImplCopyWithImpl(
      _$SlotOfAppointmentRelationFilterImpl _value,
      $Res Function(_$SlotOfAppointmentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SlotOfAppointmentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAppointmentRelationFilterImpl
    implements _SlotOfAppointmentRelationFilter {
  const _$SlotOfAppointmentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SlotOfAppointmentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAppointmentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SlotOfAppointmentWhereInput? is_;

  /// Related record does not match
  @override
  final SlotOfAppointmentWhereInput? isNot;

  @override
  String toString() {
    return 'SlotOfAppointmentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentRelationFilterImplCopyWith<
          _$SlotOfAppointmentRelationFilterImpl>
      get copyWith => __$$SlotOfAppointmentRelationFilterImplCopyWithImpl<
          _$SlotOfAppointmentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointmentRelationFilter
    implements SlotOfAppointmentRelationFilter {
  const factory _SlotOfAppointmentRelationFilter(
          {@JsonKey(name: 'is') final SlotOfAppointmentWhereInput? is_,
          final SlotOfAppointmentWhereInput? isNot}) =
      _$SlotOfAppointmentRelationFilterImpl;

  factory _SlotOfAppointmentRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SlotOfAppointmentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SlotOfAppointmentWhereInput? get is_;

  /// Related record does not match
  @override
  SlotOfAppointmentWhereInput? get isNot;

  /// Create a copy of SlotOfAppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentRelationFilterImplCopyWith<
          _$SlotOfAppointmentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAppointmentOrderByInput _$SlotOfAppointmentOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAppointmentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAppointmentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get startsAt => throw _privateConstructorUsedError;
  SortOrder? get endsAt => throw _privateConstructorUsedError;
  SortOrder? get isTentative => throw _privateConstructorUsedError;
  SortOrder? get completedAt => throw _privateConstructorUsedError;
  SortOrder? get appointmentId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAppointmentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAppointmentOrderByInputCopyWith<SlotOfAppointmentOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAppointmentOrderByInputCopyWith<$Res> {
  factory $SlotOfAppointmentOrderByInputCopyWith(
          SlotOfAppointmentOrderByInput value,
          $Res Function(SlotOfAppointmentOrderByInput) then) =
      _$SlotOfAppointmentOrderByInputCopyWithImpl<$Res,
          SlotOfAppointmentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? startsAt,
      SortOrder? endsAt,
      SortOrder? isTentative,
      SortOrder? completedAt,
      SortOrder? appointmentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SlotOfAppointmentOrderByInputCopyWithImpl<$Res,
        $Val extends SlotOfAppointmentOrderByInput>
    implements $SlotOfAppointmentOrderByInputCopyWith<$Res> {
  _$SlotOfAppointmentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completedAt = freezed,
    Object? appointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SlotOfAppointmentOrderByInputImplCopyWith<$Res>
    implements $SlotOfAppointmentOrderByInputCopyWith<$Res> {
  factory _$$SlotOfAppointmentOrderByInputImplCopyWith(
          _$SlotOfAppointmentOrderByInputImpl value,
          $Res Function(_$SlotOfAppointmentOrderByInputImpl) then) =
      __$$SlotOfAppointmentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? startsAt,
      SortOrder? endsAt,
      SortOrder? isTentative,
      SortOrder? completedAt,
      SortOrder? appointmentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SlotOfAppointmentOrderByInputImplCopyWithImpl<$Res>
    extends _$SlotOfAppointmentOrderByInputCopyWithImpl<$Res,
        _$SlotOfAppointmentOrderByInputImpl>
    implements _$$SlotOfAppointmentOrderByInputImplCopyWith<$Res> {
  __$$SlotOfAppointmentOrderByInputImplCopyWithImpl(
      _$SlotOfAppointmentOrderByInputImpl _value,
      $Res Function(_$SlotOfAppointmentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isTentative = freezed,
    Object? completedAt = freezed,
    Object? appointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SlotOfAppointmentOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isTentative: freezed == isTentative
          ? _value.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
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
class _$SlotOfAppointmentOrderByInputImpl
    implements _SlotOfAppointmentOrderByInput {
  const _$SlotOfAppointmentOrderByInputImpl(
      {this.id,
      this.startsAt,
      this.endsAt,
      this.isTentative,
      this.completedAt,
      this.appointmentId,
      this.createdAt,
      this.updatedAt});

  factory _$SlotOfAppointmentOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAppointmentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? startsAt;
  @override
  final SortOrder? endsAt;
  @override
  final SortOrder? isTentative;
  @override
  final SortOrder? completedAt;
  @override
  final SortOrder? appointmentId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SlotOfAppointmentOrderByInput(id: $id, startsAt: $startsAt, endsAt: $endsAt, isTentative: $isTentative, completedAt: $completedAt, appointmentId: $appointmentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAppointmentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startsAt, endsAt,
      isTentative, completedAt, appointmentId, createdAt, updatedAt);

  /// Create a copy of SlotOfAppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAppointmentOrderByInputImplCopyWith<
          _$SlotOfAppointmentOrderByInputImpl>
      get copyWith => __$$SlotOfAppointmentOrderByInputImplCopyWithImpl<
          _$SlotOfAppointmentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAppointmentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAppointmentOrderByInput
    implements SlotOfAppointmentOrderByInput {
  const factory _SlotOfAppointmentOrderByInput(
      {final SortOrder? id,
      final SortOrder? startsAt,
      final SortOrder? endsAt,
      final SortOrder? isTentative,
      final SortOrder? completedAt,
      final SortOrder? appointmentId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SlotOfAppointmentOrderByInputImpl;

  factory _SlotOfAppointmentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SlotOfAppointmentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get startsAt;
  @override
  SortOrder? get endsAt;
  @override
  SortOrder? get isTentative;
  @override
  SortOrder? get completedAt;
  @override
  SortOrder? get appointmentId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SlotOfAppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAppointmentOrderByInputImplCopyWith<
          _$SlotOfAppointmentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
