// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Webinar _$WebinarFromJson(Map<String, dynamic> json) {
  return _Webinar.fromJson(json);
}

/// @nodoc
mixin _$Webinar {
  String get id => throw _privateConstructorUsedError;
  WebinarStatus get status => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  List<Waitlist> get waitlist => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan => throw _privateConstructorUsedError;
  String get webinarPlanId => throw _privateConstructorUsedError;
  Appointment? get appointment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Webinar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Webinar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCopyWith<Webinar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCopyWith<$Res> {
  factory $WebinarCopyWith(Webinar value, $Res Function(Webinar) then) =
      _$WebinarCopyWithImpl<$Res, Webinar>;
  @useResult
  $Res call(
      {String id,
      WebinarStatus status,
      String? feedbackSummary,
      List<Waitlist> waitlist,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      String webinarPlanId,
      Appointment? appointment,
      DateTime createdAt,
      DateTime updatedAt});

  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$WebinarCopyWithImpl<$Res, $Val extends Webinar>
    implements $WebinarCopyWith<$Res> {
  _$WebinarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Webinar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? feedbackSummary = freezed,
    Object? waitlist = null,
    Object? webinarPlan = freezed,
    Object? webinarPlanId = null,
    Object? appointment = freezed,
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
              as WebinarStatus,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlist: null == waitlist
          ? _value.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
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

  /// Create a copy of Webinar
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

  /// Create a copy of Webinar
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
}

/// @nodoc
abstract class _$$WebinarImplCopyWith<$Res> implements $WebinarCopyWith<$Res> {
  factory _$$WebinarImplCopyWith(
          _$WebinarImpl value, $Res Function(_$WebinarImpl) then) =
      __$$WebinarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      WebinarStatus status,
      String? feedbackSummary,
      List<Waitlist> waitlist,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      String webinarPlanId,
      Appointment? appointment,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  @override
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$WebinarImplCopyWithImpl<$Res>
    extends _$WebinarCopyWithImpl<$Res, _$WebinarImpl>
    implements _$$WebinarImplCopyWith<$Res> {
  __$$WebinarImplCopyWithImpl(
      _$WebinarImpl _value, $Res Function(_$WebinarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Webinar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? feedbackSummary = freezed,
    Object? waitlist = null,
    Object? webinarPlan = freezed,
    Object? webinarPlanId = null,
    Object? appointment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WebinarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatus,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlist: null == waitlist
          ? _value._waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
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
class _$WebinarImpl implements _Webinar {
  const _$WebinarImpl(
      {required this.id,
      this.status = WebinarStatus.scheduled,
      this.feedbackSummary,
      required final List<Waitlist> waitlist,
      @JsonKey(includeFromJson: false, includeToJson: false) this.webinarPlan,
      required this.webinarPlanId,
      this.appointment,
      required this.createdAt,
      required this.updatedAt})
      : _waitlist = waitlist;

  factory _$WebinarImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final WebinarStatus status;
  @override
  final String? feedbackSummary;
  final List<Waitlist> _waitlist;
  @override
  List<Waitlist> get waitlist {
    if (_waitlist is EqualUnmodifiableListView) return _waitlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitlist);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final WebinarPlan? webinarPlan;
  @override
  final String webinarPlanId;
  @override
  final Appointment? appointment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Webinar(id: $id, status: $status, feedbackSummary: $feedbackSummary, waitlist: $waitlist, webinarPlan: $webinarPlan, webinarPlanId: $webinarPlanId, appointment: $appointment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            const DeepCollectionEquality().equals(other._waitlist, _waitlist) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
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
      feedbackSummary,
      const DeepCollectionEquality().hash(_waitlist),
      webinarPlan,
      webinarPlanId,
      appointment,
      createdAt,
      updatedAt);

  /// Create a copy of Webinar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarImplCopyWith<_$WebinarImpl> get copyWith =>
      __$$WebinarImplCopyWithImpl<_$WebinarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarImplToJson(
      this,
    );
  }
}

abstract class _Webinar implements Webinar {
  const factory _Webinar(
      {required final String id,
      final WebinarStatus status,
      final String? feedbackSummary,
      required final List<Waitlist> waitlist,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final WebinarPlan? webinarPlan,
      required final String webinarPlanId,
      final Appointment? appointment,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$WebinarImpl;

  factory _Webinar.fromJson(Map<String, dynamic> json) = _$WebinarImpl.fromJson;

  @override
  String get id;
  @override
  WebinarStatus get status;
  @override
  String? get feedbackSummary;
  @override
  List<Waitlist> get waitlist;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan;
  @override
  String get webinarPlanId;
  @override
  Appointment? get appointment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Webinar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarImplCopyWith<_$WebinarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWebinarInput _$CreateWebinarInputFromJson(Map<String, dynamic> json) {
  return _CreateWebinarInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWebinarInput {
  WebinarStatus get status => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  String get webinarPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreateWebinarInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWebinarInputCopyWith<CreateWebinarInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWebinarInputCopyWith<$Res> {
  factory $CreateWebinarInputCopyWith(
          CreateWebinarInput value, $Res Function(CreateWebinarInput) then) =
      _$CreateWebinarInputCopyWithImpl<$Res, CreateWebinarInput>;
  @useResult
  $Res call(
      {WebinarStatus status, String? feedbackSummary, String webinarPlanId});
}

/// @nodoc
class _$CreateWebinarInputCopyWithImpl<$Res, $Val extends CreateWebinarInput>
    implements $CreateWebinarInputCopyWith<$Res> {
  _$CreateWebinarInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatus,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWebinarInputImplCopyWith<$Res>
    implements $CreateWebinarInputCopyWith<$Res> {
  factory _$$CreateWebinarInputImplCopyWith(_$CreateWebinarInputImpl value,
          $Res Function(_$CreateWebinarInputImpl) then) =
      __$$CreateWebinarInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarStatus status, String? feedbackSummary, String webinarPlanId});
}

/// @nodoc
class __$$CreateWebinarInputImplCopyWithImpl<$Res>
    extends _$CreateWebinarInputCopyWithImpl<$Res, _$CreateWebinarInputImpl>
    implements _$$CreateWebinarInputImplCopyWith<$Res> {
  __$$CreateWebinarInputImplCopyWithImpl(_$CreateWebinarInputImpl _value,
      $Res Function(_$CreateWebinarInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = null,
  }) {
    return _then(_$CreateWebinarInputImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatus,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: null == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWebinarInputImpl implements _CreateWebinarInput {
  const _$CreateWebinarInputImpl(
      {this.status = WebinarStatus.scheduled,
      this.feedbackSummary,
      required this.webinarPlanId});

  factory _$CreateWebinarInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWebinarInputImplFromJson(json);

  @override
  @JsonKey()
  final WebinarStatus status;
  @override
  final String? feedbackSummary;
  @override
  final String webinarPlanId;

  @override
  String toString() {
    return 'CreateWebinarInput(status: $status, feedbackSummary: $feedbackSummary, webinarPlanId: $webinarPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWebinarInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, feedbackSummary, webinarPlanId);

  /// Create a copy of CreateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWebinarInputImplCopyWith<_$CreateWebinarInputImpl> get copyWith =>
      __$$CreateWebinarInputImplCopyWithImpl<_$CreateWebinarInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWebinarInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWebinarInput implements CreateWebinarInput {
  const factory _CreateWebinarInput(
      {final WebinarStatus status,
      final String? feedbackSummary,
      required final String webinarPlanId}) = _$CreateWebinarInputImpl;

  factory _CreateWebinarInput.fromJson(Map<String, dynamic> json) =
      _$CreateWebinarInputImpl.fromJson;

  @override
  WebinarStatus get status;
  @override
  String? get feedbackSummary;
  @override
  String get webinarPlanId;

  /// Create a copy of CreateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWebinarInputImplCopyWith<_$CreateWebinarInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateWebinarInput _$UpdateWebinarInputFromJson(Map<String, dynamic> json) {
  return _UpdateWebinarInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWebinarInput {
  WebinarStatus? get status => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  String? get webinarPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdateWebinarInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWebinarInputCopyWith<UpdateWebinarInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWebinarInputCopyWith<$Res> {
  factory $UpdateWebinarInputCopyWith(
          UpdateWebinarInput value, $Res Function(UpdateWebinarInput) then) =
      _$UpdateWebinarInputCopyWithImpl<$Res, UpdateWebinarInput>;
  @useResult
  $Res call(
      {WebinarStatus? status, String? feedbackSummary, String? webinarPlanId});
}

/// @nodoc
class _$UpdateWebinarInputCopyWithImpl<$Res, $Val extends UpdateWebinarInput>
    implements $UpdateWebinarInputCopyWith<$Res> {
  _$UpdateWebinarInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWebinarInputImplCopyWith<$Res>
    implements $UpdateWebinarInputCopyWith<$Res> {
  factory _$$UpdateWebinarInputImplCopyWith(_$UpdateWebinarInputImpl value,
          $Res Function(_$UpdateWebinarInputImpl) then) =
      __$$UpdateWebinarInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarStatus? status, String? feedbackSummary, String? webinarPlanId});
}

/// @nodoc
class __$$UpdateWebinarInputImplCopyWithImpl<$Res>
    extends _$UpdateWebinarInputCopyWithImpl<$Res, _$UpdateWebinarInputImpl>
    implements _$$UpdateWebinarInputImplCopyWith<$Res> {
  __$$UpdateWebinarInputImplCopyWithImpl(_$UpdateWebinarInputImpl _value,
      $Res Function(_$UpdateWebinarInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = freezed,
  }) {
    return _then(_$UpdateWebinarInputImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWebinarInputImpl implements _UpdateWebinarInput {
  const _$UpdateWebinarInputImpl(
      {this.status, this.feedbackSummary, this.webinarPlanId});

  factory _$UpdateWebinarInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWebinarInputImplFromJson(json);

  @override
  final WebinarStatus? status;
  @override
  final String? feedbackSummary;
  @override
  final String? webinarPlanId;

  @override
  String toString() {
    return 'UpdateWebinarInput(status: $status, feedbackSummary: $feedbackSummary, webinarPlanId: $webinarPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWebinarInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, feedbackSummary, webinarPlanId);

  /// Create a copy of UpdateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWebinarInputImplCopyWith<_$UpdateWebinarInputImpl> get copyWith =>
      __$$UpdateWebinarInputImplCopyWithImpl<_$UpdateWebinarInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWebinarInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWebinarInput implements UpdateWebinarInput {
  const factory _UpdateWebinarInput(
      {final WebinarStatus? status,
      final String? feedbackSummary,
      final String? webinarPlanId}) = _$UpdateWebinarInputImpl;

  factory _UpdateWebinarInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWebinarInputImpl.fromJson;

  @override
  WebinarStatus? get status;
  @override
  String? get feedbackSummary;
  @override
  String? get webinarPlanId;

  /// Create a copy of UpdateWebinarInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWebinarInputImplCopyWith<_$UpdateWebinarInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebinarWhereUniqueInput _$WebinarWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this WebinarWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarWhereUniqueInputCopyWith<WebinarWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarWhereUniqueInputCopyWith<$Res> {
  factory $WebinarWhereUniqueInputCopyWith(WebinarWhereUniqueInput value,
          $Res Function(WebinarWhereUniqueInput) then) =
      _$WebinarWhereUniqueInputCopyWithImpl<$Res, WebinarWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$WebinarWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WebinarWhereUniqueInput>
    implements $WebinarWhereUniqueInputCopyWith<$Res> {
  _$WebinarWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarWhereUniqueInput
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
abstract class _$$WebinarWhereUniqueInputImplCopyWith<$Res>
    implements $WebinarWhereUniqueInputCopyWith<$Res> {
  factory _$$WebinarWhereUniqueInputImplCopyWith(
          _$WebinarWhereUniqueInputImpl value,
          $Res Function(_$WebinarWhereUniqueInputImpl) then) =
      __$$WebinarWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$WebinarWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WebinarWhereUniqueInputCopyWithImpl<$Res,
        _$WebinarWhereUniqueInputImpl>
    implements _$$WebinarWhereUniqueInputImplCopyWith<$Res> {
  __$$WebinarWhereUniqueInputImplCopyWithImpl(
      _$WebinarWhereUniqueInputImpl _value,
      $Res Function(_$WebinarWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WebinarWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarWhereUniqueInputImpl implements _WebinarWhereUniqueInput {
  const _$WebinarWhereUniqueInputImpl({this.id});

  factory _$WebinarWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'WebinarWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WebinarWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarWhereUniqueInputImplCopyWith<_$WebinarWhereUniqueInputImpl>
      get copyWith => __$$WebinarWhereUniqueInputImplCopyWithImpl<
          _$WebinarWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarWhereUniqueInput implements WebinarWhereUniqueInput {
  const factory _WebinarWhereUniqueInput({final String? id}) =
      _$WebinarWhereUniqueInputImpl;

  factory _WebinarWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$WebinarWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of WebinarWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarWhereUniqueInputImplCopyWith<_$WebinarWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarWhereInput _$WebinarWhereInputFromJson(Map<String, dynamic> json) {
  return _WebinarWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  WebinarStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get feedbackSummary => throw _privateConstructorUsedError;

  /// Filter by webinarPlan relation
  WebinarPlanRelationFilter? get webinarPlan =>
      throw _privateConstructorUsedError;
  StringFilter? get webinarPlanId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<WebinarWhereInput>? get AND => throw _privateConstructorUsedError;
  List<WebinarWhereInput>? get OR => throw _privateConstructorUsedError;
  WebinarWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WebinarWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarWhereInputCopyWith<WebinarWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarWhereInputCopyWith<$Res> {
  factory $WebinarWhereInputCopyWith(
          WebinarWhereInput value, $Res Function(WebinarWhereInput) then) =
      _$WebinarWhereInputCopyWithImpl<$Res, WebinarWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      WebinarStatusFilter? status,
      StringFilter? feedbackSummary,
      WebinarPlanRelationFilter? webinarPlan,
      StringFilter? webinarPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<WebinarWhereInput>? AND,
      List<WebinarWhereInput>? OR,
      WebinarWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $WebinarStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get feedbackSummary;
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $WebinarWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WebinarWhereInputCopyWithImpl<$Res, $Val extends WebinarWhereInput>
    implements $WebinarWhereInputCopyWith<$Res> {
  _$WebinarWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlan = freezed,
    Object? webinarPlanId = freezed,
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
              as WebinarStatusFilter?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<WebinarWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarWhereInput
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

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $WebinarStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get feedbackSummary {
    if (_value.feedbackSummary == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.feedbackSummary!, (value) {
      return _then(_value.copyWith(feedbackSummary: value) as $Val);
    });
  }

  /// Create a copy of WebinarWhereInput
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

  /// Create a copy of WebinarWhereInput
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

  /// Create a copy of WebinarWhereInput
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

  /// Create a copy of WebinarWhereInput
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

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarWhereInputImplCopyWith<$Res>
    implements $WebinarWhereInputCopyWith<$Res> {
  factory _$$WebinarWhereInputImplCopyWith(_$WebinarWhereInputImpl value,
          $Res Function(_$WebinarWhereInputImpl) then) =
      __$$WebinarWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      WebinarStatusFilter? status,
      StringFilter? feedbackSummary,
      WebinarPlanRelationFilter? webinarPlan,
      StringFilter? webinarPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<WebinarWhereInput>? AND,
      List<WebinarWhereInput>? OR,
      WebinarWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $WebinarStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get feedbackSummary;
  @override
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  @override
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $WebinarWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WebinarWhereInputImplCopyWithImpl<$Res>
    extends _$WebinarWhereInputCopyWithImpl<$Res, _$WebinarWhereInputImpl>
    implements _$$WebinarWhereInputImplCopyWith<$Res> {
  __$$WebinarWhereInputImplCopyWithImpl(_$WebinarWhereInputImpl _value,
      $Res Function(_$WebinarWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlan = freezed,
    Object? webinarPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$WebinarWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WebinarStatusFilter?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<WebinarWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WebinarWhereInputImpl implements _WebinarWhereInput {
  const _$WebinarWhereInputImpl(
      {this.id,
      this.status,
      this.feedbackSummary,
      this.webinarPlan,
      this.webinarPlanId,
      this.createdAt,
      this.updatedAt,
      final List<WebinarWhereInput>? AND,
      final List<WebinarWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WebinarWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final WebinarStatusFilter? status;
  @override
  final StringFilter? feedbackSummary;

  /// Filter by webinarPlan relation
  @override
  final WebinarPlanRelationFilter? webinarPlan;
  @override
  final StringFilter? webinarPlanId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<WebinarWhereInput>? _AND;
  @override
  List<WebinarWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebinarWhereInput>? _OR;
  @override
  List<WebinarWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WebinarWhereInput? NOT;

  @override
  String toString() {
    return 'WebinarWhereInput(id: $id, status: $status, feedbackSummary: $feedbackSummary, webinarPlan: $webinarPlan, webinarPlanId: $webinarPlanId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
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
      status,
      feedbackSummary,
      webinarPlan,
      webinarPlanId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarWhereInputImplCopyWith<_$WebinarWhereInputImpl> get copyWith =>
      __$$WebinarWhereInputImplCopyWithImpl<_$WebinarWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarWhereInput implements WebinarWhereInput {
  const factory _WebinarWhereInput(
      {final StringFilter? id,
      final WebinarStatusFilter? status,
      final StringFilter? feedbackSummary,
      final WebinarPlanRelationFilter? webinarPlan,
      final StringFilter? webinarPlanId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<WebinarWhereInput>? AND,
      final List<WebinarWhereInput>? OR,
      final WebinarWhereInput? NOT}) = _$WebinarWhereInputImpl;

  factory _WebinarWhereInput.fromJson(Map<String, dynamic> json) =
      _$WebinarWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  WebinarStatusFilter? get status;
  @override
  StringFilter? get feedbackSummary;

  /// Filter by webinarPlan relation
  @override
  WebinarPlanRelationFilter? get webinarPlan;
  @override
  StringFilter? get webinarPlanId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<WebinarWhereInput>? get AND;
  @override
  List<WebinarWhereInput>? get OR;
  @override
  WebinarWhereInput? get NOT;

  /// Create a copy of WebinarWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarWhereInputImplCopyWith<_$WebinarWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebinarListRelationFilter _$WebinarListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarListRelationFilter {
  /// At least one related record matches
  WebinarWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WebinarWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  WebinarWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WebinarListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarListRelationFilterCopyWith<WebinarListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarListRelationFilterCopyWith<$Res> {
  factory $WebinarListRelationFilterCopyWith(WebinarListRelationFilter value,
          $Res Function(WebinarListRelationFilter) then) =
      _$WebinarListRelationFilterCopyWithImpl<$Res, WebinarListRelationFilter>;
  @useResult
  $Res call(
      {WebinarWhereInput? some,
      WebinarWhereInput? every,
      WebinarWhereInput? none});

  $WebinarWhereInputCopyWith<$Res>? get some;
  $WebinarWhereInputCopyWith<$Res>? get every;
  $WebinarWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WebinarListRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarListRelationFilter>
    implements $WebinarListRelationFilterCopyWith<$Res> {
  _$WebinarListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarListRelationFilter
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
              as WebinarWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarListRelationFilterImplCopyWith<$Res>
    implements $WebinarListRelationFilterCopyWith<$Res> {
  factory _$$WebinarListRelationFilterImplCopyWith(
          _$WebinarListRelationFilterImpl value,
          $Res Function(_$WebinarListRelationFilterImpl) then) =
      __$$WebinarListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarWhereInput? some,
      WebinarWhereInput? every,
      WebinarWhereInput? none});

  @override
  $WebinarWhereInputCopyWith<$Res>? get some;
  @override
  $WebinarWhereInputCopyWith<$Res>? get every;
  @override
  $WebinarWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WebinarListRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarListRelationFilterCopyWithImpl<$Res,
        _$WebinarListRelationFilterImpl>
    implements _$$WebinarListRelationFilterImplCopyWith<$Res> {
  __$$WebinarListRelationFilterImplCopyWithImpl(
      _$WebinarListRelationFilterImpl _value,
      $Res Function(_$WebinarListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WebinarListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarListRelationFilterImpl implements _WebinarListRelationFilter {
  const _$WebinarListRelationFilterImpl({this.some, this.every, this.none});

  factory _$WebinarListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WebinarWhereInput? some;

  /// All related records match
  @override
  final WebinarWhereInput? every;

  /// No related records match
  @override
  final WebinarWhereInput? none;

  @override
  String toString() {
    return 'WebinarListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarListRelationFilterImplCopyWith<_$WebinarListRelationFilterImpl>
      get copyWith => __$$WebinarListRelationFilterImplCopyWithImpl<
          _$WebinarListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarListRelationFilter implements WebinarListRelationFilter {
  const factory _WebinarListRelationFilter(
      {final WebinarWhereInput? some,
      final WebinarWhereInput? every,
      final WebinarWhereInput? none}) = _$WebinarListRelationFilterImpl;

  factory _WebinarListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WebinarWhereInput? get some;

  /// All related records match
  @override
  WebinarWhereInput? get every;

  /// No related records match
  @override
  WebinarWhereInput? get none;

  /// Create a copy of WebinarListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarListRelationFilterImplCopyWith<_$WebinarListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarRelationFilter _$WebinarRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WebinarWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WebinarWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this WebinarRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarRelationFilterCopyWith<WebinarRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarRelationFilterCopyWith<$Res> {
  factory $WebinarRelationFilterCopyWith(WebinarRelationFilter value,
          $Res Function(WebinarRelationFilter) then) =
      _$WebinarRelationFilterCopyWithImpl<$Res, WebinarRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarWhereInput? is_, WebinarWhereInput? isNot});

  $WebinarWhereInputCopyWith<$Res>? get is_;
  $WebinarWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WebinarRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarRelationFilter>
    implements $WebinarRelationFilterCopyWith<$Res> {
  _$WebinarRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarRelationFilter
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
              as WebinarWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WebinarWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarRelationFilterImplCopyWith<$Res>
    implements $WebinarRelationFilterCopyWith<$Res> {
  factory _$$WebinarRelationFilterImplCopyWith(
          _$WebinarRelationFilterImpl value,
          $Res Function(_$WebinarRelationFilterImpl) then) =
      __$$WebinarRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarWhereInput? is_, WebinarWhereInput? isNot});

  @override
  $WebinarWhereInputCopyWith<$Res>? get is_;
  @override
  $WebinarWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WebinarRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarRelationFilterCopyWithImpl<$Res,
        _$WebinarRelationFilterImpl>
    implements _$$WebinarRelationFilterImplCopyWith<$Res> {
  __$$WebinarRelationFilterImplCopyWithImpl(_$WebinarRelationFilterImpl _value,
      $Res Function(_$WebinarRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WebinarRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarRelationFilterImpl implements _WebinarRelationFilter {
  const _$WebinarRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WebinarRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WebinarWhereInput? is_;

  /// Related record does not match
  @override
  final WebinarWhereInput? isNot;

  @override
  String toString() {
    return 'WebinarRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarRelationFilterImplCopyWith<_$WebinarRelationFilterImpl>
      get copyWith => __$$WebinarRelationFilterImplCopyWithImpl<
          _$WebinarRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarRelationFilter implements WebinarRelationFilter {
  const factory _WebinarRelationFilter(
      {@JsonKey(name: 'is') final WebinarWhereInput? is_,
      final WebinarWhereInput? isNot}) = _$WebinarRelationFilterImpl;

  factory _WebinarRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WebinarWhereInput? get is_;

  /// Related record does not match
  @override
  WebinarWhereInput? get isNot;

  /// Create a copy of WebinarRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarRelationFilterImplCopyWith<_$WebinarRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarOrderByInput _$WebinarOrderByInputFromJson(Map<String, dynamic> json) {
  return _WebinarOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get feedbackSummary => throw _privateConstructorUsedError;
  SortOrder? get webinarPlanId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WebinarOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarOrderByInputCopyWith<WebinarOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarOrderByInputCopyWith<$Res> {
  factory $WebinarOrderByInputCopyWith(
          WebinarOrderByInput value, $Res Function(WebinarOrderByInput) then) =
      _$WebinarOrderByInputCopyWithImpl<$Res, WebinarOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? feedbackSummary,
      SortOrder? webinarPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$WebinarOrderByInputCopyWithImpl<$Res, $Val extends WebinarOrderByInput>
    implements $WebinarOrderByInputCopyWith<$Res> {
  _$WebinarOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WebinarOrderByInputImplCopyWith<$Res>
    implements $WebinarOrderByInputCopyWith<$Res> {
  factory _$$WebinarOrderByInputImplCopyWith(_$WebinarOrderByInputImpl value,
          $Res Function(_$WebinarOrderByInputImpl) then) =
      __$$WebinarOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? feedbackSummary,
      SortOrder? webinarPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$WebinarOrderByInputImplCopyWithImpl<$Res>
    extends _$WebinarOrderByInputCopyWithImpl<$Res, _$WebinarOrderByInputImpl>
    implements _$$WebinarOrderByInputImplCopyWith<$Res> {
  __$$WebinarOrderByInputImplCopyWithImpl(_$WebinarOrderByInputImpl _value,
      $Res Function(_$WebinarOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? feedbackSummary = freezed,
    Object? webinarPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WebinarOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
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
class _$WebinarOrderByInputImpl implements _WebinarOrderByInput {
  const _$WebinarOrderByInputImpl(
      {this.id,
      this.feedbackSummary,
      this.webinarPlanId,
      this.createdAt,
      this.updatedAt});

  factory _$WebinarOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? feedbackSummary;
  @override
  final SortOrder? webinarPlanId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'WebinarOrderByInput(id: $id, feedbackSummary: $feedbackSummary, webinarPlanId: $webinarPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, feedbackSummary, webinarPlanId, createdAt, updatedAt);

  /// Create a copy of WebinarOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarOrderByInputImplCopyWith<_$WebinarOrderByInputImpl> get copyWith =>
      __$$WebinarOrderByInputImplCopyWithImpl<_$WebinarOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarOrderByInput implements WebinarOrderByInput {
  const factory _WebinarOrderByInput(
      {final SortOrder? id,
      final SortOrder? feedbackSummary,
      final SortOrder? webinarPlanId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$WebinarOrderByInputImpl;

  factory _WebinarOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WebinarOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get feedbackSummary;
  @override
  SortOrder? get webinarPlanId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of WebinarOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarOrderByInputImplCopyWith<_$WebinarOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
