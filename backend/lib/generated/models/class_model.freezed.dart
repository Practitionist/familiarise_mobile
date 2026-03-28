// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassModel _$ClassModelFromJson(Map<String, dynamic> json) {
  return _ClassModel.fromJson(json);
}

/// @nodoc
mixin _$ClassModel {
  String get id => throw _privateConstructorUsedError;
  DateTime? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String get schedulingTimezone => throw _privateConstructorUsedError;
  ClassStatus get status => throw _privateConstructorUsedError;
  List<Waitlist> get waitlist => throw _privateConstructorUsedError;
  List<String> get recordingUrls => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;
  List<Appointment> get appointments => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelCopyWith<ClassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelCopyWith<$Res> {
  factory $ClassModelCopyWith(
          ClassModel value, $Res Function(ClassModel) then) =
      _$ClassModelCopyWithImpl<$Res, ClassModel>;
  @useResult
  $Res call(
      {String id,
      DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String schedulingTimezone,
      ClassStatus status,
      List<Waitlist> waitlist,
      List<String> recordingUrls,
      String? feedbackSummary,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      String classPlanId,
      List<Appointment> appointments,
      DateTime createdAt,
      DateTime updatedAt});

  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class _$ClassModelCopyWithImpl<$Res, $Val extends ClassModel>
    implements $ClassModelCopyWith<$Res> {
  _$ClassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = null,
    Object? status = null,
    Object? waitlist = null,
    Object? recordingUrls = null,
    Object? feedbackSummary = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = null,
    Object? appointments = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: null == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus,
      waitlist: null == waitlist
          ? _value.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      recordingUrls: null == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
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

  /// Create a copy of ClassModel
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
}

/// @nodoc
abstract class _$$ClassModelImplCopyWith<$Res>
    implements $ClassModelCopyWith<$Res> {
  factory _$$ClassModelImplCopyWith(
          _$ClassModelImpl value, $Res Function(_$ClassModelImpl) then) =
      __$$ClassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String schedulingTimezone,
      ClassStatus status,
      List<Waitlist> waitlist,
      List<String> recordingUrls,
      String? feedbackSummary,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      String classPlanId,
      List<Appointment> appointments,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class __$$ClassModelImplCopyWithImpl<$Res>
    extends _$ClassModelCopyWithImpl<$Res, _$ClassModelImpl>
    implements _$$ClassModelImplCopyWith<$Res> {
  __$$ClassModelImplCopyWithImpl(
      _$ClassModelImpl _value, $Res Function(_$ClassModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = null,
    Object? status = null,
    Object? waitlist = null,
    Object? recordingUrls = null,
    Object? feedbackSummary = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = null,
    Object? appointments = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ClassModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: null == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus,
      waitlist: null == waitlist
          ? _value._waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      recordingUrls: null == recordingUrls
          ? _value._recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
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
class _$ClassModelImpl implements _ClassModel {
  const _$ClassModelImpl(
      {required this.id,
      this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone = "Asia/Kolkata",
      this.status = ClassStatus.scheduled,
      required final List<Waitlist> waitlist,
      required final List<String> recordingUrls,
      this.feedbackSummary,
      @JsonKey(includeFromJson: false, includeToJson: false) this.classPlan,
      required this.classPlanId,
      required final List<Appointment> appointments,
      required this.createdAt,
      required this.updatedAt})
      : _waitlist = waitlist,
        _recordingUrls = recordingUrls,
        _appointments = appointments;

  factory _$ClassModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassModelImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? schedulingPeriodStartsAt;
  @override
  final DateTime? schedulingPeriodEndsAt;
  @override
  @JsonKey()
  final String schedulingTimezone;
  @override
  @JsonKey()
  final ClassStatus status;
  final List<Waitlist> _waitlist;
  @override
  List<Waitlist> get waitlist {
    if (_waitlist is EqualUnmodifiableListView) return _waitlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitlist);
  }

  final List<String> _recordingUrls;
  @override
  List<String> get recordingUrls {
    if (_recordingUrls is EqualUnmodifiableListView) return _recordingUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordingUrls);
  }

  @override
  final String? feedbackSummary;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ClassPlan? classPlan;
  @override
  final String classPlanId;
  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ClassModel(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, status: $status, waitlist: $waitlist, recordingUrls: $recordingUrls, feedbackSummary: $feedbackSummary, classPlan: $classPlan, classPlanId: $classPlanId, appointments: $appointments, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._waitlist, _waitlist) &&
            const DeepCollectionEquality()
                .equals(other._recordingUrls, _recordingUrls) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
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
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
      status,
      const DeepCollectionEquality().hash(_waitlist),
      const DeepCollectionEquality().hash(_recordingUrls),
      feedbackSummary,
      classPlan,
      classPlanId,
      const DeepCollectionEquality().hash(_appointments),
      createdAt,
      updatedAt);

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelImplCopyWith<_$ClassModelImpl> get copyWith =>
      __$$ClassModelImplCopyWithImpl<_$ClassModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelImplToJson(
      this,
    );
  }
}

abstract class _ClassModel implements ClassModel {
  const factory _ClassModel(
      {required final String id,
      final DateTime? schedulingPeriodStartsAt,
      final DateTime? schedulingPeriodEndsAt,
      final String schedulingTimezone,
      final ClassStatus status,
      required final List<Waitlist> waitlist,
      required final List<String> recordingUrls,
      final String? feedbackSummary,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ClassPlan? classPlan,
      required final String classPlanId,
      required final List<Appointment> appointments,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ClassModelImpl;

  factory _ClassModel.fromJson(Map<String, dynamic> json) =
      _$ClassModelImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get schedulingPeriodStartsAt;
  @override
  DateTime? get schedulingPeriodEndsAt;
  @override
  String get schedulingTimezone;
  @override
  ClassStatus get status;
  @override
  List<Waitlist> get waitlist;
  @override
  List<String> get recordingUrls;
  @override
  String? get feedbackSummary;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan;
  @override
  String get classPlanId;
  @override
  List<Appointment> get appointments;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelImplCopyWith<_$ClassModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClassModelInput _$CreateClassModelInputFromJson(
    Map<String, dynamic> json) {
  return _CreateClassModelInput.fromJson(json);
}

/// @nodoc
mixin _$CreateClassModelInput {
  DateTime? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String? get schedulingTimezone => throw _privateConstructorUsedError;
  ClassStatus get status => throw _privateConstructorUsedError;
  List<String> get recordingUrls => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreateClassModelInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClassModelInputCopyWith<CreateClassModelInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClassModelInputCopyWith<$Res> {
  factory $CreateClassModelInputCopyWith(CreateClassModelInput value,
          $Res Function(CreateClassModelInput) then) =
      _$CreateClassModelInputCopyWithImpl<$Res, CreateClassModelInput>;
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
      ClassStatus status,
      List<String> recordingUrls,
      String? feedbackSummary,
      String classPlanId});
}

/// @nodoc
class _$CreateClassModelInputCopyWithImpl<$Res,
        $Val extends CreateClassModelInput>
    implements $CreateClassModelInputCopyWith<$Res> {
  _$CreateClassModelInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = null,
    Object? recordingUrls = null,
    Object? feedbackSummary = freezed,
    Object? classPlanId = null,
  }) {
    return _then(_value.copyWith(
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus,
      recordingUrls: null == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClassModelInputImplCopyWith<$Res>
    implements $CreateClassModelInputCopyWith<$Res> {
  factory _$$CreateClassModelInputImplCopyWith(
          _$CreateClassModelInputImpl value,
          $Res Function(_$CreateClassModelInputImpl) then) =
      __$$CreateClassModelInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
      ClassStatus status,
      List<String> recordingUrls,
      String? feedbackSummary,
      String classPlanId});
}

/// @nodoc
class __$$CreateClassModelInputImplCopyWithImpl<$Res>
    extends _$CreateClassModelInputCopyWithImpl<$Res,
        _$CreateClassModelInputImpl>
    implements _$$CreateClassModelInputImplCopyWith<$Res> {
  __$$CreateClassModelInputImplCopyWithImpl(_$CreateClassModelInputImpl _value,
      $Res Function(_$CreateClassModelInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = null,
    Object? recordingUrls = null,
    Object? feedbackSummary = freezed,
    Object? classPlanId = null,
  }) {
    return _then(_$CreateClassModelInputImpl(
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus,
      recordingUrls: null == recordingUrls
          ? _value._recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateClassModelInputImpl implements _CreateClassModelInput {
  const _$CreateClassModelInputImpl(
      {this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone = "Asia/Kolkata",
      this.status = ClassStatus.scheduled,
      required final List<String> recordingUrls,
      this.feedbackSummary,
      required this.classPlanId})
      : _recordingUrls = recordingUrls;

  factory _$CreateClassModelInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateClassModelInputImplFromJson(json);

  @override
  final DateTime? schedulingPeriodStartsAt;
  @override
  final DateTime? schedulingPeriodEndsAt;
  @override
  @JsonKey()
  final String? schedulingTimezone;
  @override
  @JsonKey()
  final ClassStatus status;
  final List<String> _recordingUrls;
  @override
  List<String> get recordingUrls {
    if (_recordingUrls is EqualUnmodifiableListView) return _recordingUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordingUrls);
  }

  @override
  final String? feedbackSummary;
  @override
  final String classPlanId;

  @override
  String toString() {
    return 'CreateClassModelInput(schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, status: $status, recordingUrls: $recordingUrls, feedbackSummary: $feedbackSummary, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClassModelInputImpl &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._recordingUrls, _recordingUrls) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
      status,
      const DeepCollectionEquality().hash(_recordingUrls),
      feedbackSummary,
      classPlanId);

  /// Create a copy of CreateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClassModelInputImplCopyWith<_$CreateClassModelInputImpl>
      get copyWith => __$$CreateClassModelInputImplCopyWithImpl<
          _$CreateClassModelInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClassModelInputImplToJson(
      this,
    );
  }
}

abstract class _CreateClassModelInput implements CreateClassModelInput {
  const factory _CreateClassModelInput(
      {final DateTime? schedulingPeriodStartsAt,
      final DateTime? schedulingPeriodEndsAt,
      final String? schedulingTimezone,
      final ClassStatus status,
      required final List<String> recordingUrls,
      final String? feedbackSummary,
      required final String classPlanId}) = _$CreateClassModelInputImpl;

  factory _CreateClassModelInput.fromJson(Map<String, dynamic> json) =
      _$CreateClassModelInputImpl.fromJson;

  @override
  DateTime? get schedulingPeriodStartsAt;
  @override
  DateTime? get schedulingPeriodEndsAt;
  @override
  String? get schedulingTimezone;
  @override
  ClassStatus get status;
  @override
  List<String> get recordingUrls;
  @override
  String? get feedbackSummary;
  @override
  String get classPlanId;

  /// Create a copy of CreateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClassModelInputImplCopyWith<_$CreateClassModelInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateClassModelInput _$UpdateClassModelInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateClassModelInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassModelInput {
  DateTime? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String? get schedulingTimezone => throw _privateConstructorUsedError;
  ClassStatus? get status => throw _privateConstructorUsedError;
  List<String>? get recordingUrls => throw _privateConstructorUsedError;
  String? get feedbackSummary => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdateClassModelInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClassModelInputCopyWith<UpdateClassModelInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassModelInputCopyWith<$Res> {
  factory $UpdateClassModelInputCopyWith(UpdateClassModelInput value,
          $Res Function(UpdateClassModelInput) then) =
      _$UpdateClassModelInputCopyWithImpl<$Res, UpdateClassModelInput>;
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
      ClassStatus? status,
      List<String>? recordingUrls,
      String? feedbackSummary,
      String? classPlanId});
}

/// @nodoc
class _$UpdateClassModelInputCopyWithImpl<$Res,
        $Val extends UpdateClassModelInput>
    implements $UpdateClassModelInputCopyWith<$Res> {
  _$UpdateClassModelInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_value.copyWith(
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      recordingUrls: freezed == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateClassModelInputImplCopyWith<$Res>
    implements $UpdateClassModelInputCopyWith<$Res> {
  factory _$$UpdateClassModelInputImplCopyWith(
          _$UpdateClassModelInputImpl value,
          $Res Function(_$UpdateClassModelInputImpl) then) =
      __$$UpdateClassModelInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
      ClassStatus? status,
      List<String>? recordingUrls,
      String? feedbackSummary,
      String? classPlanId});
}

/// @nodoc
class __$$UpdateClassModelInputImplCopyWithImpl<$Res>
    extends _$UpdateClassModelInputCopyWithImpl<$Res,
        _$UpdateClassModelInputImpl>
    implements _$$UpdateClassModelInputImplCopyWith<$Res> {
  __$$UpdateClassModelInputImplCopyWithImpl(_$UpdateClassModelInputImpl _value,
      $Res Function(_$UpdateClassModelInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_$UpdateClassModelInputImpl(
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      recordingUrls: freezed == recordingUrls
          ? _value._recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateClassModelInputImpl implements _UpdateClassModelInput {
  const _$UpdateClassModelInputImpl(
      {this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
      this.status,
      final List<String>? recordingUrls,
      this.feedbackSummary,
      this.classPlanId})
      : _recordingUrls = recordingUrls;

  factory _$UpdateClassModelInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateClassModelInputImplFromJson(json);

  @override
  final DateTime? schedulingPeriodStartsAt;
  @override
  final DateTime? schedulingPeriodEndsAt;
  @override
  final String? schedulingTimezone;
  @override
  final ClassStatus? status;
  final List<String>? _recordingUrls;
  @override
  List<String>? get recordingUrls {
    final value = _recordingUrls;
    if (value == null) return null;
    if (_recordingUrls is EqualUnmodifiableListView) return _recordingUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? feedbackSummary;
  @override
  final String? classPlanId;

  @override
  String toString() {
    return 'UpdateClassModelInput(schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, status: $status, recordingUrls: $recordingUrls, feedbackSummary: $feedbackSummary, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassModelInputImpl &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._recordingUrls, _recordingUrls) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
      status,
      const DeepCollectionEquality().hash(_recordingUrls),
      feedbackSummary,
      classPlanId);

  /// Create a copy of UpdateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassModelInputImplCopyWith<_$UpdateClassModelInputImpl>
      get copyWith => __$$UpdateClassModelInputImplCopyWithImpl<
          _$UpdateClassModelInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateClassModelInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateClassModelInput implements UpdateClassModelInput {
  const factory _UpdateClassModelInput(
      {final DateTime? schedulingPeriodStartsAt,
      final DateTime? schedulingPeriodEndsAt,
      final String? schedulingTimezone,
      final ClassStatus? status,
      final List<String>? recordingUrls,
      final String? feedbackSummary,
      final String? classPlanId}) = _$UpdateClassModelInputImpl;

  factory _UpdateClassModelInput.fromJson(Map<String, dynamic> json) =
      _$UpdateClassModelInputImpl.fromJson;

  @override
  DateTime? get schedulingPeriodStartsAt;
  @override
  DateTime? get schedulingPeriodEndsAt;
  @override
  String? get schedulingTimezone;
  @override
  ClassStatus? get status;
  @override
  List<String>? get recordingUrls;
  @override
  String? get feedbackSummary;
  @override
  String? get classPlanId;

  /// Create a copy of UpdateClassModelInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassModelInputImplCopyWith<_$UpdateClassModelInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassModelWhereUniqueInput _$ClassModelWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ClassModelWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ClassModelWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ClassModelWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModelWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelWhereUniqueInputCopyWith<ClassModelWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelWhereUniqueInputCopyWith<$Res> {
  factory $ClassModelWhereUniqueInputCopyWith(ClassModelWhereUniqueInput value,
          $Res Function(ClassModelWhereUniqueInput) then) =
      _$ClassModelWhereUniqueInputCopyWithImpl<$Res,
          ClassModelWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ClassModelWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ClassModelWhereUniqueInput>
    implements $ClassModelWhereUniqueInputCopyWith<$Res> {
  _$ClassModelWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModelWhereUniqueInput
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
abstract class _$$ClassModelWhereUniqueInputImplCopyWith<$Res>
    implements $ClassModelWhereUniqueInputCopyWith<$Res> {
  factory _$$ClassModelWhereUniqueInputImplCopyWith(
          _$ClassModelWhereUniqueInputImpl value,
          $Res Function(_$ClassModelWhereUniqueInputImpl) then) =
      __$$ClassModelWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ClassModelWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ClassModelWhereUniqueInputCopyWithImpl<$Res,
        _$ClassModelWhereUniqueInputImpl>
    implements _$$ClassModelWhereUniqueInputImplCopyWith<$Res> {
  __$$ClassModelWhereUniqueInputImplCopyWithImpl(
      _$ClassModelWhereUniqueInputImpl _value,
      $Res Function(_$ClassModelWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModelWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ClassModelWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassModelWhereUniqueInputImpl implements _ClassModelWhereUniqueInput {
  const _$ClassModelWhereUniqueInputImpl({this.id});

  factory _$ClassModelWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassModelWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ClassModelWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ClassModelWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelWhereUniqueInputImplCopyWith<_$ClassModelWhereUniqueInputImpl>
      get copyWith => __$$ClassModelWhereUniqueInputImplCopyWithImpl<
          _$ClassModelWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ClassModelWhereUniqueInput
    implements ClassModelWhereUniqueInput {
  const factory _ClassModelWhereUniqueInput({final String? id}) =
      _$ClassModelWhereUniqueInputImpl;

  factory _ClassModelWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ClassModelWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ClassModelWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelWhereUniqueInputImplCopyWith<_$ClassModelWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassModelWhereInput _$ClassModelWhereInputFromJson(Map<String, dynamic> json) {
  return _ClassModelWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ClassModelWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  DateTimeFilter? get schedulingPeriodStartsAt =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get schedulingPeriodEndsAt =>
      throw _privateConstructorUsedError;
  StringFilter? get schedulingTimezone => throw _privateConstructorUsedError;
  ClassStatusFilter? get status => throw _privateConstructorUsedError;
  StringListFilter? get recordingUrls => throw _privateConstructorUsedError;
  StringFilter? get feedbackSummary => throw _privateConstructorUsedError;

  /// Filter by classPlan relation
  ClassPlanRelationFilter? get classPlan => throw _privateConstructorUsedError;
  StringFilter? get classPlanId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ClassModelWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ClassModelWhereInput>? get OR => throw _privateConstructorUsedError;
  ClassModelWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ClassModelWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelWhereInputCopyWith<ClassModelWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelWhereInputCopyWith<$Res> {
  factory $ClassModelWhereInputCopyWith(ClassModelWhereInput value,
          $Res Function(ClassModelWhereInput) then) =
      _$ClassModelWhereInputCopyWithImpl<$Res, ClassModelWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? schedulingPeriodStartsAt,
      DateTimeFilter? schedulingPeriodEndsAt,
      StringFilter? schedulingTimezone,
      ClassStatusFilter? status,
      StringListFilter? recordingUrls,
      StringFilter? feedbackSummary,
      ClassPlanRelationFilter? classPlan,
      StringFilter? classPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassModelWhereInput>? AND,
      List<ClassModelWhereInput>? OR,
      ClassModelWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodStartsAt;
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodEndsAt;
  $StringFilterCopyWith<$Res>? get schedulingTimezone;
  $ClassStatusFilterCopyWith<$Res>? get status;
  $StringListFilterCopyWith<$Res>? get recordingUrls;
  $StringFilterCopyWith<$Res>? get feedbackSummary;
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  $StringFilterCopyWith<$Res>? get classPlanId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ClassModelWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ClassModelWhereInputCopyWithImpl<$Res,
        $Val extends ClassModelWhereInput>
    implements $ClassModelWhereInputCopyWith<$Res> {
  _$ClassModelWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = freezed,
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
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatusFilter?,
      recordingUrls: freezed == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<ClassModelWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassModelWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodStartsAt {
    if (_value.schedulingPeriodStartsAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.schedulingPeriodStartsAt!,
        (value) {
      return _then(_value.copyWith(schedulingPeriodStartsAt: value) as $Val);
    });
  }

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodEndsAt {
    if (_value.schedulingPeriodEndsAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.schedulingPeriodEndsAt!,
        (value) {
      return _then(_value.copyWith(schedulingPeriodEndsAt: value) as $Val);
    });
  }

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get schedulingTimezone {
    if (_value.schedulingTimezone == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.schedulingTimezone!, (value) {
      return _then(_value.copyWith(schedulingTimezone: value) as $Val);
    });
  }

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ClassStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get recordingUrls {
    if (_value.recordingUrls == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.recordingUrls!, (value) {
      return _then(_value.copyWith(recordingUrls: value) as $Val);
    });
  }

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
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

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassModelWhereInputImplCopyWith<$Res>
    implements $ClassModelWhereInputCopyWith<$Res> {
  factory _$$ClassModelWhereInputImplCopyWith(_$ClassModelWhereInputImpl value,
          $Res Function(_$ClassModelWhereInputImpl) then) =
      __$$ClassModelWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? schedulingPeriodStartsAt,
      DateTimeFilter? schedulingPeriodEndsAt,
      StringFilter? schedulingTimezone,
      ClassStatusFilter? status,
      StringListFilter? recordingUrls,
      StringFilter? feedbackSummary,
      ClassPlanRelationFilter? classPlan,
      StringFilter? classPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassModelWhereInput>? AND,
      List<ClassModelWhereInput>? OR,
      ClassModelWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodStartsAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodEndsAt;
  @override
  $StringFilterCopyWith<$Res>? get schedulingTimezone;
  @override
  $ClassStatusFilterCopyWith<$Res>? get status;
  @override
  $StringListFilterCopyWith<$Res>? get recordingUrls;
  @override
  $StringFilterCopyWith<$Res>? get feedbackSummary;
  @override
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  @override
  $StringFilterCopyWith<$Res>? get classPlanId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ClassModelWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ClassModelWhereInputImplCopyWithImpl<$Res>
    extends _$ClassModelWhereInputCopyWithImpl<$Res, _$ClassModelWhereInputImpl>
    implements _$$ClassModelWhereInputImplCopyWith<$Res> {
  __$$ClassModelWhereInputImplCopyWithImpl(_$ClassModelWhereInputImpl _value,
      $Res Function(_$ClassModelWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? status = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ClassModelWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassStatusFilter?,
      recordingUrls: freezed == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<ClassModelWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassModelWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClassModelWhereInputImpl implements _ClassModelWhereInput {
  const _$ClassModelWhereInputImpl(
      {this.id,
      this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
      this.status,
      this.recordingUrls,
      this.feedbackSummary,
      this.classPlan,
      this.classPlanId,
      this.createdAt,
      this.updatedAt,
      final List<ClassModelWhereInput>? AND,
      final List<ClassModelWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ClassModelWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassModelWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final DateTimeFilter? schedulingPeriodStartsAt;
  @override
  final DateTimeFilter? schedulingPeriodEndsAt;
  @override
  final StringFilter? schedulingTimezone;
  @override
  final ClassStatusFilter? status;
  @override
  final StringListFilter? recordingUrls;
  @override
  final StringFilter? feedbackSummary;

  /// Filter by classPlan relation
  @override
  final ClassPlanRelationFilter? classPlan;
  @override
  final StringFilter? classPlanId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ClassModelWhereInput>? _AND;
  @override
  List<ClassModelWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassModelWhereInput>? _OR;
  @override
  List<ClassModelWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClassModelWhereInput? NOT;

  @override
  String toString() {
    return 'ClassModelWhereInput(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, status: $status, recordingUrls: $recordingUrls, feedbackSummary: $feedbackSummary, classPlan: $classPlan, classPlanId: $classPlanId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.recordingUrls, recordingUrls) ||
                other.recordingUrls == recordingUrls) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
      status,
      recordingUrls,
      feedbackSummary,
      classPlan,
      classPlanId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelWhereInputImplCopyWith<_$ClassModelWhereInputImpl>
      get copyWith =>
          __$$ClassModelWhereInputImplCopyWithImpl<_$ClassModelWhereInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ClassModelWhereInput implements ClassModelWhereInput {
  const factory _ClassModelWhereInput(
      {final StringFilter? id,
      final DateTimeFilter? schedulingPeriodStartsAt,
      final DateTimeFilter? schedulingPeriodEndsAt,
      final StringFilter? schedulingTimezone,
      final ClassStatusFilter? status,
      final StringListFilter? recordingUrls,
      final StringFilter? feedbackSummary,
      final ClassPlanRelationFilter? classPlan,
      final StringFilter? classPlanId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ClassModelWhereInput>? AND,
      final List<ClassModelWhereInput>? OR,
      final ClassModelWhereInput? NOT}) = _$ClassModelWhereInputImpl;

  factory _ClassModelWhereInput.fromJson(Map<String, dynamic> json) =
      _$ClassModelWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  DateTimeFilter? get schedulingPeriodStartsAt;
  @override
  DateTimeFilter? get schedulingPeriodEndsAt;
  @override
  StringFilter? get schedulingTimezone;
  @override
  ClassStatusFilter? get status;
  @override
  StringListFilter? get recordingUrls;
  @override
  StringFilter? get feedbackSummary;

  /// Filter by classPlan relation
  @override
  ClassPlanRelationFilter? get classPlan;
  @override
  StringFilter? get classPlanId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ClassModelWhereInput>? get AND;
  @override
  List<ClassModelWhereInput>? get OR;
  @override
  ClassModelWhereInput? get NOT;

  /// Create a copy of ClassModelWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelWhereInputImplCopyWith<_$ClassModelWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassModelListRelationFilter _$ClassModelListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassModelListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassModelListRelationFilter {
  /// At least one related record matches
  ClassModelWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ClassModelWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ClassModelWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ClassModelListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelListRelationFilterCopyWith<ClassModelListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelListRelationFilterCopyWith<$Res> {
  factory $ClassModelListRelationFilterCopyWith(
          ClassModelListRelationFilter value,
          $Res Function(ClassModelListRelationFilter) then) =
      _$ClassModelListRelationFilterCopyWithImpl<$Res,
          ClassModelListRelationFilter>;
  @useResult
  $Res call(
      {ClassModelWhereInput? some,
      ClassModelWhereInput? every,
      ClassModelWhereInput? none});

  $ClassModelWhereInputCopyWith<$Res>? get some;
  $ClassModelWhereInputCopyWith<$Res>? get every;
  $ClassModelWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ClassModelListRelationFilterCopyWithImpl<$Res,
        $Val extends ClassModelListRelationFilter>
    implements $ClassModelListRelationFilterCopyWith<$Res> {
  _$ClassModelListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModelListRelationFilter
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
              as ClassModelWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassModelListRelationFilterImplCopyWith<$Res>
    implements $ClassModelListRelationFilterCopyWith<$Res> {
  factory _$$ClassModelListRelationFilterImplCopyWith(
          _$ClassModelListRelationFilterImpl value,
          $Res Function(_$ClassModelListRelationFilterImpl) then) =
      __$$ClassModelListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassModelWhereInput? some,
      ClassModelWhereInput? every,
      ClassModelWhereInput? none});

  @override
  $ClassModelWhereInputCopyWith<$Res>? get some;
  @override
  $ClassModelWhereInputCopyWith<$Res>? get every;
  @override
  $ClassModelWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ClassModelListRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassModelListRelationFilterCopyWithImpl<$Res,
        _$ClassModelListRelationFilterImpl>
    implements _$$ClassModelListRelationFilterImplCopyWith<$Res> {
  __$$ClassModelListRelationFilterImplCopyWithImpl(
      _$ClassModelListRelationFilterImpl _value,
      $Res Function(_$ClassModelListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ClassModelListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassModelListRelationFilterImpl
    implements _ClassModelListRelationFilter {
  const _$ClassModelListRelationFilterImpl({this.some, this.every, this.none});

  factory _$ClassModelListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassModelListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ClassModelWhereInput? some;

  /// All related records match
  @override
  final ClassModelWhereInput? every;

  /// No related records match
  @override
  final ClassModelWhereInput? none;

  @override
  String toString() {
    return 'ClassModelListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelListRelationFilterImplCopyWith<
          _$ClassModelListRelationFilterImpl>
      get copyWith => __$$ClassModelListRelationFilterImplCopyWithImpl<
          _$ClassModelListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassModelListRelationFilter
    implements ClassModelListRelationFilter {
  const factory _ClassModelListRelationFilter(
      {final ClassModelWhereInput? some,
      final ClassModelWhereInput? every,
      final ClassModelWhereInput? none}) = _$ClassModelListRelationFilterImpl;

  factory _ClassModelListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassModelListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ClassModelWhereInput? get some;

  /// All related records match
  @override
  ClassModelWhereInput? get every;

  /// No related records match
  @override
  ClassModelWhereInput? get none;

  /// Create a copy of ClassModelListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelListRelationFilterImplCopyWith<
          _$ClassModelListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassModelRelationFilter _$ClassModelRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassModelRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassModelRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ClassModelWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ClassModelWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ClassModelRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelRelationFilterCopyWith<ClassModelRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelRelationFilterCopyWith<$Res> {
  factory $ClassModelRelationFilterCopyWith(ClassModelRelationFilter value,
          $Res Function(ClassModelRelationFilter) then) =
      _$ClassModelRelationFilterCopyWithImpl<$Res, ClassModelRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassModelWhereInput? is_,
      ClassModelWhereInput? isNot});

  $ClassModelWhereInputCopyWith<$Res>? get is_;
  $ClassModelWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ClassModelRelationFilterCopyWithImpl<$Res,
        $Val extends ClassModelRelationFilter>
    implements $ClassModelRelationFilterCopyWith<$Res> {
  _$ClassModelRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModelRelationFilter
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
              as ClassModelWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ClassModelWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassModelRelationFilterImplCopyWith<$Res>
    implements $ClassModelRelationFilterCopyWith<$Res> {
  factory _$$ClassModelRelationFilterImplCopyWith(
          _$ClassModelRelationFilterImpl value,
          $Res Function(_$ClassModelRelationFilterImpl) then) =
      __$$ClassModelRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassModelWhereInput? is_,
      ClassModelWhereInput? isNot});

  @override
  $ClassModelWhereInputCopyWith<$Res>? get is_;
  @override
  $ClassModelWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ClassModelRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassModelRelationFilterCopyWithImpl<$Res,
        _$ClassModelRelationFilterImpl>
    implements _$$ClassModelRelationFilterImplCopyWith<$Res> {
  __$$ClassModelRelationFilterImplCopyWithImpl(
      _$ClassModelRelationFilterImpl _value,
      $Res Function(_$ClassModelRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ClassModelRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassModelWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassModelRelationFilterImpl implements _ClassModelRelationFilter {
  const _$ClassModelRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ClassModelRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassModelRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ClassModelWhereInput? is_;

  /// Related record does not match
  @override
  final ClassModelWhereInput? isNot;

  @override
  String toString() {
    return 'ClassModelRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelRelationFilterImplCopyWith<_$ClassModelRelationFilterImpl>
      get copyWith => __$$ClassModelRelationFilterImplCopyWithImpl<
          _$ClassModelRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassModelRelationFilter implements ClassModelRelationFilter {
  const factory _ClassModelRelationFilter(
      {@JsonKey(name: 'is') final ClassModelWhereInput? is_,
      final ClassModelWhereInput? isNot}) = _$ClassModelRelationFilterImpl;

  factory _ClassModelRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassModelRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ClassModelWhereInput? get is_;

  /// Related record does not match
  @override
  ClassModelWhereInput? get isNot;

  /// Create a copy of ClassModelRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelRelationFilterImplCopyWith<_$ClassModelRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassModelOrderByInput _$ClassModelOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ClassModelOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ClassModelOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  SortOrder? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  SortOrder? get schedulingTimezone => throw _privateConstructorUsedError;
  SortOrder? get recordingUrls => throw _privateConstructorUsedError;
  SortOrder? get feedbackSummary => throw _privateConstructorUsedError;
  SortOrder? get classPlanId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassModelOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModelOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelOrderByInputCopyWith<ClassModelOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelOrderByInputCopyWith<$Res> {
  factory $ClassModelOrderByInputCopyWith(ClassModelOrderByInput value,
          $Res Function(ClassModelOrderByInput) then) =
      _$ClassModelOrderByInputCopyWithImpl<$Res, ClassModelOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? schedulingPeriodStartsAt,
      SortOrder? schedulingPeriodEndsAt,
      SortOrder? schedulingTimezone,
      SortOrder? recordingUrls,
      SortOrder? feedbackSummary,
      SortOrder? classPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ClassModelOrderByInputCopyWithImpl<$Res,
        $Val extends ClassModelOrderByInput>
    implements $ClassModelOrderByInputCopyWith<$Res> {
  _$ClassModelOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModelOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingUrls: freezed == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ClassModelOrderByInputImplCopyWith<$Res>
    implements $ClassModelOrderByInputCopyWith<$Res> {
  factory _$$ClassModelOrderByInputImplCopyWith(
          _$ClassModelOrderByInputImpl value,
          $Res Function(_$ClassModelOrderByInputImpl) then) =
      __$$ClassModelOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? schedulingPeriodStartsAt,
      SortOrder? schedulingPeriodEndsAt,
      SortOrder? schedulingTimezone,
      SortOrder? recordingUrls,
      SortOrder? feedbackSummary,
      SortOrder? classPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ClassModelOrderByInputImplCopyWithImpl<$Res>
    extends _$ClassModelOrderByInputCopyWithImpl<$Res,
        _$ClassModelOrderByInputImpl>
    implements _$$ClassModelOrderByInputImplCopyWith<$Res> {
  __$$ClassModelOrderByInputImplCopyWithImpl(
      _$ClassModelOrderByInputImpl _value,
      $Res Function(_$ClassModelOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassModelOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
    Object? recordingUrls = freezed,
    Object? feedbackSummary = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassModelOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingPeriodStartsAt: freezed == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingPeriodEndsAt: freezed == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingUrls: freezed == recordingUrls
          ? _value.recordingUrls
          : recordingUrls // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackSummary: freezed == feedbackSummary
          ? _value.feedbackSummary
          : feedbackSummary // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
class _$ClassModelOrderByInputImpl implements _ClassModelOrderByInput {
  const _$ClassModelOrderByInputImpl(
      {this.id,
      this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
      this.recordingUrls,
      this.feedbackSummary,
      this.classPlanId,
      this.createdAt,
      this.updatedAt});

  factory _$ClassModelOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassModelOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? schedulingPeriodStartsAt;
  @override
  final SortOrder? schedulingPeriodEndsAt;
  @override
  final SortOrder? schedulingTimezone;
  @override
  final SortOrder? recordingUrls;
  @override
  final SortOrder? feedbackSummary;
  @override
  final SortOrder? classPlanId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ClassModelOrderByInput(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, recordingUrls: $recordingUrls, feedbackSummary: $feedbackSummary, classPlanId: $classPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
            (identical(other.recordingUrls, recordingUrls) ||
                other.recordingUrls == recordingUrls) &&
            (identical(other.feedbackSummary, feedbackSummary) ||
                other.feedbackSummary == feedbackSummary) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
      recordingUrls,
      feedbackSummary,
      classPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of ClassModelOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelOrderByInputImplCopyWith<_$ClassModelOrderByInputImpl>
      get copyWith => __$$ClassModelOrderByInputImplCopyWithImpl<
          _$ClassModelOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ClassModelOrderByInput implements ClassModelOrderByInput {
  const factory _ClassModelOrderByInput(
      {final SortOrder? id,
      final SortOrder? schedulingPeriodStartsAt,
      final SortOrder? schedulingPeriodEndsAt,
      final SortOrder? schedulingTimezone,
      final SortOrder? recordingUrls,
      final SortOrder? feedbackSummary,
      final SortOrder? classPlanId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ClassModelOrderByInputImpl;

  factory _ClassModelOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ClassModelOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get schedulingPeriodStartsAt;
  @override
  SortOrder? get schedulingPeriodEndsAt;
  @override
  SortOrder? get schedulingTimezone;
  @override
  SortOrder? get recordingUrls;
  @override
  SortOrder? get feedbackSummary;
  @override
  SortOrder? get classPlanId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ClassModelOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelOrderByInputImplCopyWith<_$ClassModelOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
