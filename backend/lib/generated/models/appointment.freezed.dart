// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  AppointmentsType get appointmentType => throw _privateConstructorUsedError;
  List<SlotOfAppointment> get slotsOfAppointment =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Consultation? get consultation => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Subscription? get subscription => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Webinar? get webinar => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassModel? get classRef => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  TrialSession? get trialSession => throw _privateConstructorUsedError;
  List<Payment> get payment => throw _privateConstructorUsedError;
  List<AppointmentDocument> get documents => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {String id,
      AppointmentsType appointmentType,
      List<SlotOfAppointment> slotsOfAppointment,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Consultation? consultation,
      String? consultationId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Subscription? subscription,
      String? subscriptionId,
      @JsonKey(includeFromJson: false, includeToJson: false) Webinar? webinar,
      String? webinarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassModel? classRef,
      String? classId,
      TrialSession? trialSession,
      List<Payment> payment,
      List<AppointmentDocument> documents,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultationCopyWith<$Res>? get consultation;
  $SubscriptionCopyWith<$Res>? get subscription;
  $WebinarCopyWith<$Res>? get webinar;
  $ClassModelCopyWith<$Res>? get classRef;
  $TrialSessionCopyWith<$Res>? get trialSession;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentType = null,
    Object? slotsOfAppointment = null,
    Object? consultation = freezed,
    Object? consultationId = freezed,
    Object? subscription = freezed,
    Object? subscriptionId = freezed,
    Object? webinar = freezed,
    Object? webinarId = freezed,
    Object? classRef = freezed,
    Object? classId = freezed,
    Object? trialSession = freezed,
    Object? payment = null,
    Object? documents = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType,
      slotsOfAppointment: null == slotsOfAppointment
          ? _value.slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointment>,
      consultation: freezed == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as Consultation?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinar: freezed == webinar
          ? _value.webinar
          : webinar // ignore: cast_nullable_to_non_nullable
              as Webinar?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classRef: freezed == classRef
          ? _value.classRef
          : classRef // ignore: cast_nullable_to_non_nullable
              as ClassModel?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSession: freezed == trialSession
          ? _value.trialSession
          : trialSession // ignore: cast_nullable_to_non_nullable
              as TrialSession?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocument>,
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

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationCopyWith<$Res>? get consultation {
    if (_value.consultation == null) {
      return null;
    }

    return $ConsultationCopyWith<$Res>(_value.consultation!, (value) {
      return _then(_value.copyWith(consultation: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCopyWith<$Res>? get webinar {
    if (_value.webinar == null) {
      return null;
    }

    return $WebinarCopyWith<$Res>(_value.webinar!, (value) {
      return _then(_value.copyWith(webinar: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelCopyWith<$Res>? get classRef {
    if (_value.classRef == null) {
      return null;
    }

    return $ClassModelCopyWith<$Res>(_value.classRef!, (value) {
      return _then(_value.copyWith(classRef: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionCopyWith<$Res>? get trialSession {
    if (_value.trialSession == null) {
      return null;
    }

    return $TrialSessionCopyWith<$Res>(_value.trialSession!, (value) {
      return _then(_value.copyWith(trialSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppointmentsType appointmentType,
      List<SlotOfAppointment> slotsOfAppointment,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Consultation? consultation,
      String? consultationId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Subscription? subscription,
      String? subscriptionId,
      @JsonKey(includeFromJson: false, includeToJson: false) Webinar? webinar,
      String? webinarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassModel? classRef,
      String? classId,
      TrialSession? trialSession,
      List<Payment> payment,
      List<AppointmentDocument> documents,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultationCopyWith<$Res>? get consultation;
  @override
  $SubscriptionCopyWith<$Res>? get subscription;
  @override
  $WebinarCopyWith<$Res>? get webinar;
  @override
  $ClassModelCopyWith<$Res>? get classRef;
  @override
  $TrialSessionCopyWith<$Res>? get trialSession;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentType = null,
    Object? slotsOfAppointment = null,
    Object? consultation = freezed,
    Object? consultationId = freezed,
    Object? subscription = freezed,
    Object? subscriptionId = freezed,
    Object? webinar = freezed,
    Object? webinarId = freezed,
    Object? classRef = freezed,
    Object? classId = freezed,
    Object? trialSession = freezed,
    Object? payment = null,
    Object? documents = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType,
      slotsOfAppointment: null == slotsOfAppointment
          ? _value._slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointment>,
      consultation: freezed == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as Consultation?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinar: freezed == webinar
          ? _value.webinar
          : webinar // ignore: cast_nullable_to_non_nullable
              as Webinar?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classRef: freezed == classRef
          ? _value.classRef
          : classRef // ignore: cast_nullable_to_non_nullable
              as ClassModel?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSession: freezed == trialSession
          ? _value.trialSession
          : trialSession // ignore: cast_nullable_to_non_nullable
              as TrialSession?,
      payment: null == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocument>,
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
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      required this.appointmentType,
      required final List<SlotOfAppointment> slotsOfAppointment,
      @JsonKey(includeFromJson: false, includeToJson: false) this.consultation,
      this.consultationId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.subscription,
      this.subscriptionId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.webinar,
      this.webinarId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.classRef,
      this.classId,
      this.trialSession,
      required final List<Payment> payment,
      required final List<AppointmentDocument> documents,
      required this.createdAt,
      required this.updatedAt})
      : _slotsOfAppointment = slotsOfAppointment,
        _payment = payment,
        _documents = documents;

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final String id;
  @override
  final AppointmentsType appointmentType;
  final List<SlotOfAppointment> _slotsOfAppointment;
  @override
  List<SlotOfAppointment> get slotsOfAppointment {
    if (_slotsOfAppointment is EqualUnmodifiableListView)
      return _slotsOfAppointment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slotsOfAppointment);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Consultation? consultation;
  @override
  final String? consultationId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Subscription? subscription;
  @override
  final String? subscriptionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Webinar? webinar;
  @override
  final String? webinarId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ClassModel? classRef;
  @override
  final String? classId;
  @override
  final TrialSession? trialSession;
  final List<Payment> _payment;
  @override
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  final List<AppointmentDocument> _documents;
  @override
  List<AppointmentDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Appointment(id: $id, appointmentType: $appointmentType, slotsOfAppointment: $slotsOfAppointment, consultation: $consultation, consultationId: $consultationId, subscription: $subscription, subscriptionId: $subscriptionId, webinar: $webinar, webinarId: $webinarId, classRef: $classRef, classId: $classId, trialSession: $trialSession, payment: $payment, documents: $documents, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            const DeepCollectionEquality()
                .equals(other._slotsOfAppointment, _slotsOfAppointment) &&
            (identical(other.consultation, consultation) ||
                other.consultation == consultation) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinar, webinar) || other.webinar == webinar) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classRef, classRef) ||
                other.classRef == classRef) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSession, trialSession) ||
                other.trialSession == trialSession) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
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
      appointmentType,
      const DeepCollectionEquality().hash(_slotsOfAppointment),
      consultation,
      consultationId,
      subscription,
      subscriptionId,
      webinar,
      webinarId,
      classRef,
      classId,
      trialSession,
      const DeepCollectionEquality().hash(_payment),
      const DeepCollectionEquality().hash(_documents),
      createdAt,
      updatedAt);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required final String id,
      required final AppointmentsType appointmentType,
      required final List<SlotOfAppointment> slotsOfAppointment,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Consultation? consultation,
      final String? consultationId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Subscription? subscription,
      final String? subscriptionId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Webinar? webinar,
      final String? webinarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ClassModel? classRef,
      final String? classId,
      final TrialSession? trialSession,
      required final List<Payment> payment,
      required final List<AppointmentDocument> documents,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  String get id;
  @override
  AppointmentsType get appointmentType;
  @override
  List<SlotOfAppointment> get slotsOfAppointment;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Consultation? get consultation;
  @override
  String? get consultationId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Subscription? get subscription;
  @override
  String? get subscriptionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Webinar? get webinar;
  @override
  String? get webinarId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassModel? get classRef;
  @override
  String? get classId;
  @override
  TrialSession? get trialSession;
  @override
  List<Payment> get payment;
  @override
  List<AppointmentDocument> get documents;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAppointmentInput _$CreateAppointmentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateAppointmentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAppointmentInput {
  AppointmentsType get appointmentType => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;

  /// Serializes this CreateAppointmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAppointmentInputCopyWith<CreateAppointmentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppointmentInputCopyWith<$Res> {
  factory $CreateAppointmentInputCopyWith(CreateAppointmentInput value,
          $Res Function(CreateAppointmentInput) then) =
      _$CreateAppointmentInputCopyWithImpl<$Res, CreateAppointmentInput>;
  @useResult
  $Res call(
      {AppointmentsType appointmentType,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId});
}

/// @nodoc
class _$CreateAppointmentInputCopyWithImpl<$Res,
        $Val extends CreateAppointmentInput>
    implements $CreateAppointmentInputCopyWith<$Res> {
  _$CreateAppointmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentType = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAppointmentInputImplCopyWith<$Res>
    implements $CreateAppointmentInputCopyWith<$Res> {
  factory _$$CreateAppointmentInputImplCopyWith(
          _$CreateAppointmentInputImpl value,
          $Res Function(_$CreateAppointmentInputImpl) then) =
      __$$CreateAppointmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentsType appointmentType,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId});
}

/// @nodoc
class __$$CreateAppointmentInputImplCopyWithImpl<$Res>
    extends _$CreateAppointmentInputCopyWithImpl<$Res,
        _$CreateAppointmentInputImpl>
    implements _$$CreateAppointmentInputImplCopyWith<$Res> {
  __$$CreateAppointmentInputImplCopyWithImpl(
      _$CreateAppointmentInputImpl _value,
      $Res Function(_$CreateAppointmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentType = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
  }) {
    return _then(_$CreateAppointmentInputImpl(
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAppointmentInputImpl implements _CreateAppointmentInput {
  const _$CreateAppointmentInputImpl(
      {required this.appointmentType,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId});

  factory _$CreateAppointmentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAppointmentInputImplFromJson(json);

  @override
  final AppointmentsType appointmentType;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? webinarId;
  @override
  final String? classId;

  @override
  String toString() {
    return 'CreateAppointmentInput(appointmentType: $appointmentType, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppointmentInputImpl &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appointmentType, consultationId,
      subscriptionId, webinarId, classId);

  /// Create a copy of CreateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppointmentInputImplCopyWith<_$CreateAppointmentInputImpl>
      get copyWith => __$$CreateAppointmentInputImplCopyWithImpl<
          _$CreateAppointmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAppointmentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAppointmentInput implements CreateAppointmentInput {
  const factory _CreateAppointmentInput(
      {required final AppointmentsType appointmentType,
      final String? consultationId,
      final String? subscriptionId,
      final String? webinarId,
      final String? classId}) = _$CreateAppointmentInputImpl;

  factory _CreateAppointmentInput.fromJson(Map<String, dynamic> json) =
      _$CreateAppointmentInputImpl.fromJson;

  @override
  AppointmentsType get appointmentType;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get webinarId;
  @override
  String? get classId;

  /// Create a copy of CreateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAppointmentInputImplCopyWith<_$CreateAppointmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAppointmentInput _$UpdateAppointmentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateAppointmentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppointmentInput {
  AppointmentsType? get appointmentType => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;

  /// Serializes this UpdateAppointmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppointmentInputCopyWith<UpdateAppointmentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppointmentInputCopyWith<$Res> {
  factory $UpdateAppointmentInputCopyWith(UpdateAppointmentInput value,
          $Res Function(UpdateAppointmentInput) then) =
      _$UpdateAppointmentInputCopyWithImpl<$Res, UpdateAppointmentInput>;
  @useResult
  $Res call(
      {AppointmentsType? appointmentType,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId});
}

/// @nodoc
class _$UpdateAppointmentInputCopyWithImpl<$Res,
        $Val extends UpdateAppointmentInput>
    implements $UpdateAppointmentInputCopyWith<$Res> {
  _$UpdateAppointmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentType = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentType: freezed == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAppointmentInputImplCopyWith<$Res>
    implements $UpdateAppointmentInputCopyWith<$Res> {
  factory _$$UpdateAppointmentInputImplCopyWith(
          _$UpdateAppointmentInputImpl value,
          $Res Function(_$UpdateAppointmentInputImpl) then) =
      __$$UpdateAppointmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentsType? appointmentType,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId});
}

/// @nodoc
class __$$UpdateAppointmentInputImplCopyWithImpl<$Res>
    extends _$UpdateAppointmentInputCopyWithImpl<$Res,
        _$UpdateAppointmentInputImpl>
    implements _$$UpdateAppointmentInputImplCopyWith<$Res> {
  __$$UpdateAppointmentInputImplCopyWithImpl(
      _$UpdateAppointmentInputImpl _value,
      $Res Function(_$UpdateAppointmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentType = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
  }) {
    return _then(_$UpdateAppointmentInputImpl(
      appointmentType: freezed == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppointmentInputImpl implements _UpdateAppointmentInput {
  const _$UpdateAppointmentInputImpl(
      {this.appointmentType,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId});

  factory _$UpdateAppointmentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppointmentInputImplFromJson(json);

  @override
  final AppointmentsType? appointmentType;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? webinarId;
  @override
  final String? classId;

  @override
  String toString() {
    return 'UpdateAppointmentInput(appointmentType: $appointmentType, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppointmentInputImpl &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appointmentType, consultationId,
      subscriptionId, webinarId, classId);

  /// Create a copy of UpdateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppointmentInputImplCopyWith<_$UpdateAppointmentInputImpl>
      get copyWith => __$$UpdateAppointmentInputImplCopyWithImpl<
          _$UpdateAppointmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppointmentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAppointmentInput implements UpdateAppointmentInput {
  const factory _UpdateAppointmentInput(
      {final AppointmentsType? appointmentType,
      final String? consultationId,
      final String? subscriptionId,
      final String? webinarId,
      final String? classId}) = _$UpdateAppointmentInputImpl;

  factory _UpdateAppointmentInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAppointmentInputImpl.fromJson;

  @override
  AppointmentsType? get appointmentType;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get webinarId;
  @override
  String? get classId;

  /// Create a copy of UpdateAppointmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppointmentInputImplCopyWith<_$UpdateAppointmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentWhereUniqueInput _$AppointmentWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _AppointmentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;

  /// Serializes this AppointmentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentWhereUniqueInputCopyWith<AppointmentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentWhereUniqueInputCopyWith<$Res> {
  factory $AppointmentWhereUniqueInputCopyWith(
          AppointmentWhereUniqueInput value,
          $Res Function(AppointmentWhereUniqueInput) then) =
      _$AppointmentWhereUniqueInputCopyWithImpl<$Res,
          AppointmentWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? consultationId, String? webinarId});
}

/// @nodoc
class _$AppointmentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AppointmentWhereUniqueInput>
    implements $AppointmentWhereUniqueInputCopyWith<$Res> {
  _$AppointmentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationId = freezed,
    Object? webinarId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentWhereUniqueInputImplCopyWith<$Res>
    implements $AppointmentWhereUniqueInputCopyWith<$Res> {
  factory _$$AppointmentWhereUniqueInputImplCopyWith(
          _$AppointmentWhereUniqueInputImpl value,
          $Res Function(_$AppointmentWhereUniqueInputImpl) then) =
      __$$AppointmentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? consultationId, String? webinarId});
}

/// @nodoc
class __$$AppointmentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AppointmentWhereUniqueInputCopyWithImpl<$Res,
        _$AppointmentWhereUniqueInputImpl>
    implements _$$AppointmentWhereUniqueInputImplCopyWith<$Res> {
  __$$AppointmentWhereUniqueInputImplCopyWithImpl(
      _$AppointmentWhereUniqueInputImpl _value,
      $Res Function(_$AppointmentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationId = freezed,
    Object? webinarId = freezed,
  }) {
    return _then(_$AppointmentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentWhereUniqueInputImpl
    implements _AppointmentWhereUniqueInput {
  const _$AppointmentWhereUniqueInputImpl(
      {this.id, this.consultationId, this.webinarId});

  factory _$AppointmentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? consultationId;
  @override
  final String? webinarId;

  @override
  String toString() {
    return 'AppointmentWhereUniqueInput(id: $id, consultationId: $consultationId, webinarId: $webinarId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, consultationId, webinarId);

  /// Create a copy of AppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentWhereUniqueInputImplCopyWith<_$AppointmentWhereUniqueInputImpl>
      get copyWith => __$$AppointmentWhereUniqueInputImplCopyWithImpl<
          _$AppointmentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentWhereUniqueInput
    implements AppointmentWhereUniqueInput {
  const factory _AppointmentWhereUniqueInput(
      {final String? id,
      final String? consultationId,
      final String? webinarId}) = _$AppointmentWhereUniqueInputImpl;

  factory _AppointmentWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$AppointmentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get consultationId;
  @override
  String? get webinarId;

  /// Create a copy of AppointmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentWhereUniqueInputImplCopyWith<_$AppointmentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentWhereInput _$AppointmentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _AppointmentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  AppointmentsTypeFilter? get appointmentType =>
      throw _privateConstructorUsedError;

  /// Filter by consultation relation
  ConsultationRelationFilter? get consultation =>
      throw _privateConstructorUsedError;
  StringFilter? get consultationId => throw _privateConstructorUsedError;

  /// Filter by subscription relation
  SubscriptionRelationFilter? get subscription =>
      throw _privateConstructorUsedError;
  StringFilter? get subscriptionId => throw _privateConstructorUsedError;

  /// Filter by webinar relation
  WebinarRelationFilter? get webinar => throw _privateConstructorUsedError;
  StringFilter? get webinarId => throw _privateConstructorUsedError;

  /// Filter by classRef relation
  ClassModelRelationFilter? get classRef => throw _privateConstructorUsedError;
  StringFilter? get classId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AppointmentWhereInput>? get AND => throw _privateConstructorUsedError;
  List<AppointmentWhereInput>? get OR => throw _privateConstructorUsedError;
  AppointmentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AppointmentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentWhereInputCopyWith<AppointmentWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentWhereInputCopyWith<$Res> {
  factory $AppointmentWhereInputCopyWith(AppointmentWhereInput value,
          $Res Function(AppointmentWhereInput) then) =
      _$AppointmentWhereInputCopyWithImpl<$Res, AppointmentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      AppointmentsTypeFilter? appointmentType,
      ConsultationRelationFilter? consultation,
      StringFilter? consultationId,
      SubscriptionRelationFilter? subscription,
      StringFilter? subscriptionId,
      WebinarRelationFilter? webinar,
      StringFilter? webinarId,
      ClassModelRelationFilter? classRef,
      StringFilter? classId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AppointmentWhereInput>? AND,
      List<AppointmentWhereInput>? OR,
      AppointmentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $AppointmentsTypeFilterCopyWith<$Res>? get appointmentType;
  $ConsultationRelationFilterCopyWith<$Res>? get consultation;
  $StringFilterCopyWith<$Res>? get consultationId;
  $SubscriptionRelationFilterCopyWith<$Res>? get subscription;
  $StringFilterCopyWith<$Res>? get subscriptionId;
  $WebinarRelationFilterCopyWith<$Res>? get webinar;
  $StringFilterCopyWith<$Res>? get webinarId;
  $ClassModelRelationFilterCopyWith<$Res>? get classRef;
  $StringFilterCopyWith<$Res>? get classId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AppointmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AppointmentWhereInputCopyWithImpl<$Res,
        $Val extends AppointmentWhereInput>
    implements $AppointmentWhereInputCopyWith<$Res> {
  _$AppointmentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentType = freezed,
    Object? consultation = freezed,
    Object? consultationId = freezed,
    Object? subscription = freezed,
    Object? subscriptionId = freezed,
    Object? webinar = freezed,
    Object? webinarId = freezed,
    Object? classRef = freezed,
    Object? classId = freezed,
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
      appointmentType: freezed == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsTypeFilter?,
      consultation: freezed == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as ConsultationRelationFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionRelationFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinar: freezed == webinar
          ? _value.webinar
          : webinar // ignore: cast_nullable_to_non_nullable
              as WebinarRelationFilter?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classRef: freezed == classRef
          ? _value.classRef
          : classRef // ignore: cast_nullable_to_non_nullable
              as ClassModelRelationFilter?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
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
              as List<AppointmentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AppointmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentWhereInput
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

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentsTypeFilterCopyWith<$Res>? get appointmentType {
    if (_value.appointmentType == null) {
      return null;
    }

    return $AppointmentsTypeFilterCopyWith<$Res>(_value.appointmentType!,
        (value) {
      return _then(_value.copyWith(appointmentType: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationRelationFilterCopyWith<$Res>? get consultation {
    if (_value.consultation == null) {
      return null;
    }

    return $ConsultationRelationFilterCopyWith<$Res>(_value.consultation!,
        (value) {
      return _then(_value.copyWith(consultation: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultationId {
    if (_value.consultationId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultationId!, (value) {
      return _then(_value.copyWith(consultationId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionRelationFilterCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionRelationFilterCopyWith<$Res>(_value.subscription!,
        (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionId {
    if (_value.subscriptionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionId!, (value) {
      return _then(_value.copyWith(subscriptionId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarRelationFilterCopyWith<$Res>? get webinar {
    if (_value.webinar == null) {
      return null;
    }

    return $WebinarRelationFilterCopyWith<$Res>(_value.webinar!, (value) {
      return _then(_value.copyWith(webinar: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get webinarId {
    if (_value.webinarId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.webinarId!, (value) {
      return _then(_value.copyWith(webinarId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelRelationFilterCopyWith<$Res>? get classRef {
    if (_value.classRef == null) {
      return null;
    }

    return $ClassModelRelationFilterCopyWith<$Res>(_value.classRef!, (value) {
      return _then(_value.copyWith(classRef: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get classId {
    if (_value.classId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.classId!, (value) {
      return _then(_value.copyWith(classId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentWhereInput
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

  /// Create a copy of AppointmentWhereInput
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

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentWhereInputImplCopyWith<$Res>
    implements $AppointmentWhereInputCopyWith<$Res> {
  factory _$$AppointmentWhereInputImplCopyWith(
          _$AppointmentWhereInputImpl value,
          $Res Function(_$AppointmentWhereInputImpl) then) =
      __$$AppointmentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      AppointmentsTypeFilter? appointmentType,
      ConsultationRelationFilter? consultation,
      StringFilter? consultationId,
      SubscriptionRelationFilter? subscription,
      StringFilter? subscriptionId,
      WebinarRelationFilter? webinar,
      StringFilter? webinarId,
      ClassModelRelationFilter? classRef,
      StringFilter? classId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AppointmentWhereInput>? AND,
      List<AppointmentWhereInput>? OR,
      AppointmentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $AppointmentsTypeFilterCopyWith<$Res>? get appointmentType;
  @override
  $ConsultationRelationFilterCopyWith<$Res>? get consultation;
  @override
  $StringFilterCopyWith<$Res>? get consultationId;
  @override
  $SubscriptionRelationFilterCopyWith<$Res>? get subscription;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionId;
  @override
  $WebinarRelationFilterCopyWith<$Res>? get webinar;
  @override
  $StringFilterCopyWith<$Res>? get webinarId;
  @override
  $ClassModelRelationFilterCopyWith<$Res>? get classRef;
  @override
  $StringFilterCopyWith<$Res>? get classId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AppointmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AppointmentWhereInputImplCopyWithImpl<$Res>
    extends _$AppointmentWhereInputCopyWithImpl<$Res,
        _$AppointmentWhereInputImpl>
    implements _$$AppointmentWhereInputImplCopyWith<$Res> {
  __$$AppointmentWhereInputImplCopyWithImpl(_$AppointmentWhereInputImpl _value,
      $Res Function(_$AppointmentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentType = freezed,
    Object? consultation = freezed,
    Object? consultationId = freezed,
    Object? subscription = freezed,
    Object? subscriptionId = freezed,
    Object? webinar = freezed,
    Object? webinarId = freezed,
    Object? classRef = freezed,
    Object? classId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AppointmentWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      appointmentType: freezed == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as AppointmentsTypeFilter?,
      consultation: freezed == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as ConsultationRelationFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionRelationFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinar: freezed == webinar
          ? _value.webinar
          : webinar // ignore: cast_nullable_to_non_nullable
              as WebinarRelationFilter?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classRef: freezed == classRef
          ? _value.classRef
          : classRef // ignore: cast_nullable_to_non_nullable
              as ClassModelRelationFilter?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
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
              as List<AppointmentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AppointmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppointmentWhereInputImpl implements _AppointmentWhereInput {
  const _$AppointmentWhereInputImpl(
      {this.id,
      this.appointmentType,
      this.consultation,
      this.consultationId,
      this.subscription,
      this.subscriptionId,
      this.webinar,
      this.webinarId,
      this.classRef,
      this.classId,
      this.createdAt,
      this.updatedAt,
      final List<AppointmentWhereInput>? AND,
      final List<AppointmentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AppointmentWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final AppointmentsTypeFilter? appointmentType;

  /// Filter by consultation relation
  @override
  final ConsultationRelationFilter? consultation;
  @override
  final StringFilter? consultationId;

  /// Filter by subscription relation
  @override
  final SubscriptionRelationFilter? subscription;
  @override
  final StringFilter? subscriptionId;

  /// Filter by webinar relation
  @override
  final WebinarRelationFilter? webinar;
  @override
  final StringFilter? webinarId;

  /// Filter by classRef relation
  @override
  final ClassModelRelationFilter? classRef;
  @override
  final StringFilter? classId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AppointmentWhereInput>? _AND;
  @override
  List<AppointmentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AppointmentWhereInput>? _OR;
  @override
  List<AppointmentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AppointmentWhereInput? NOT;

  @override
  String toString() {
    return 'AppointmentWhereInput(id: $id, appointmentType: $appointmentType, consultation: $consultation, consultationId: $consultationId, subscription: $subscription, subscriptionId: $subscriptionId, webinar: $webinar, webinarId: $webinarId, classRef: $classRef, classId: $classId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            (identical(other.consultation, consultation) ||
                other.consultation == consultation) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinar, webinar) || other.webinar == webinar) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classRef, classRef) ||
                other.classRef == classRef) &&
            (identical(other.classId, classId) || other.classId == classId) &&
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
      appointmentType,
      consultation,
      consultationId,
      subscription,
      subscriptionId,
      webinar,
      webinarId,
      classRef,
      classId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentWhereInputImplCopyWith<_$AppointmentWhereInputImpl>
      get copyWith => __$$AppointmentWhereInputImplCopyWithImpl<
          _$AppointmentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentWhereInput implements AppointmentWhereInput {
  const factory _AppointmentWhereInput(
      {final StringFilter? id,
      final AppointmentsTypeFilter? appointmentType,
      final ConsultationRelationFilter? consultation,
      final StringFilter? consultationId,
      final SubscriptionRelationFilter? subscription,
      final StringFilter? subscriptionId,
      final WebinarRelationFilter? webinar,
      final StringFilter? webinarId,
      final ClassModelRelationFilter? classRef,
      final StringFilter? classId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<AppointmentWhereInput>? AND,
      final List<AppointmentWhereInput>? OR,
      final AppointmentWhereInput? NOT}) = _$AppointmentWhereInputImpl;

  factory _AppointmentWhereInput.fromJson(Map<String, dynamic> json) =
      _$AppointmentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  AppointmentsTypeFilter? get appointmentType;

  /// Filter by consultation relation
  @override
  ConsultationRelationFilter? get consultation;
  @override
  StringFilter? get consultationId;

  /// Filter by subscription relation
  @override
  SubscriptionRelationFilter? get subscription;
  @override
  StringFilter? get subscriptionId;

  /// Filter by webinar relation
  @override
  WebinarRelationFilter? get webinar;
  @override
  StringFilter? get webinarId;

  /// Filter by classRef relation
  @override
  ClassModelRelationFilter? get classRef;
  @override
  StringFilter? get classId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<AppointmentWhereInput>? get AND;
  @override
  List<AppointmentWhereInput>? get OR;
  @override
  AppointmentWhereInput? get NOT;

  /// Create a copy of AppointmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentWhereInputImplCopyWith<_$AppointmentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentListRelationFilter _$AppointmentListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AppointmentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AppointmentListRelationFilter {
  /// At least one related record matches
  AppointmentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AppointmentWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  AppointmentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AppointmentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentListRelationFilterCopyWith<AppointmentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentListRelationFilterCopyWith<$Res> {
  factory $AppointmentListRelationFilterCopyWith(
          AppointmentListRelationFilter value,
          $Res Function(AppointmentListRelationFilter) then) =
      _$AppointmentListRelationFilterCopyWithImpl<$Res,
          AppointmentListRelationFilter>;
  @useResult
  $Res call(
      {AppointmentWhereInput? some,
      AppointmentWhereInput? every,
      AppointmentWhereInput? none});

  $AppointmentWhereInputCopyWith<$Res>? get some;
  $AppointmentWhereInputCopyWith<$Res>? get every;
  $AppointmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AppointmentListRelationFilterCopyWithImpl<$Res,
        $Val extends AppointmentListRelationFilter>
    implements $AppointmentListRelationFilterCopyWith<$Res> {
  _$AppointmentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentListRelationFilter
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
              as AppointmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentListRelationFilterImplCopyWith<$Res>
    implements $AppointmentListRelationFilterCopyWith<$Res> {
  factory _$$AppointmentListRelationFilterImplCopyWith(
          _$AppointmentListRelationFilterImpl value,
          $Res Function(_$AppointmentListRelationFilterImpl) then) =
      __$$AppointmentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentWhereInput? some,
      AppointmentWhereInput? every,
      AppointmentWhereInput? none});

  @override
  $AppointmentWhereInputCopyWith<$Res>? get some;
  @override
  $AppointmentWhereInputCopyWith<$Res>? get every;
  @override
  $AppointmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AppointmentListRelationFilterImplCopyWithImpl<$Res>
    extends _$AppointmentListRelationFilterCopyWithImpl<$Res,
        _$AppointmentListRelationFilterImpl>
    implements _$$AppointmentListRelationFilterImplCopyWith<$Res> {
  __$$AppointmentListRelationFilterImplCopyWithImpl(
      _$AppointmentListRelationFilterImpl _value,
      $Res Function(_$AppointmentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AppointmentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentListRelationFilterImpl
    implements _AppointmentListRelationFilter {
  const _$AppointmentListRelationFilterImpl({this.some, this.every, this.none});

  factory _$AppointmentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AppointmentWhereInput? some;

  /// All related records match
  @override
  final AppointmentWhereInput? every;

  /// No related records match
  @override
  final AppointmentWhereInput? none;

  @override
  String toString() {
    return 'AppointmentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentListRelationFilterImplCopyWith<
          _$AppointmentListRelationFilterImpl>
      get copyWith => __$$AppointmentListRelationFilterImplCopyWithImpl<
          _$AppointmentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AppointmentListRelationFilter
    implements AppointmentListRelationFilter {
  const factory _AppointmentListRelationFilter(
      {final AppointmentWhereInput? some,
      final AppointmentWhereInput? every,
      final AppointmentWhereInput? none}) = _$AppointmentListRelationFilterImpl;

  factory _AppointmentListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AppointmentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AppointmentWhereInput? get some;

  /// All related records match
  @override
  AppointmentWhereInput? get every;

  /// No related records match
  @override
  AppointmentWhereInput? get none;

  /// Create a copy of AppointmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentListRelationFilterImplCopyWith<
          _$AppointmentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentRelationFilter _$AppointmentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AppointmentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AppointmentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AppointmentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AppointmentWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this AppointmentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentRelationFilterCopyWith<AppointmentRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentRelationFilterCopyWith<$Res> {
  factory $AppointmentRelationFilterCopyWith(AppointmentRelationFilter value,
          $Res Function(AppointmentRelationFilter) then) =
      _$AppointmentRelationFilterCopyWithImpl<$Res, AppointmentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AppointmentWhereInput? is_,
      AppointmentWhereInput? isNot});

  $AppointmentWhereInputCopyWith<$Res>? get is_;
  $AppointmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AppointmentRelationFilterCopyWithImpl<$Res,
        $Val extends AppointmentRelationFilter>
    implements $AppointmentRelationFilterCopyWith<$Res> {
  _$AppointmentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentRelationFilter
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
              as AppointmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AppointmentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentRelationFilterImplCopyWith<$Res>
    implements $AppointmentRelationFilterCopyWith<$Res> {
  factory _$$AppointmentRelationFilterImplCopyWith(
          _$AppointmentRelationFilterImpl value,
          $Res Function(_$AppointmentRelationFilterImpl) then) =
      __$$AppointmentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AppointmentWhereInput? is_,
      AppointmentWhereInput? isNot});

  @override
  $AppointmentWhereInputCopyWith<$Res>? get is_;
  @override
  $AppointmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AppointmentRelationFilterImplCopyWithImpl<$Res>
    extends _$AppointmentRelationFilterCopyWithImpl<$Res,
        _$AppointmentRelationFilterImpl>
    implements _$$AppointmentRelationFilterImplCopyWith<$Res> {
  __$$AppointmentRelationFilterImplCopyWithImpl(
      _$AppointmentRelationFilterImpl _value,
      $Res Function(_$AppointmentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AppointmentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AppointmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentRelationFilterImpl implements _AppointmentRelationFilter {
  const _$AppointmentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AppointmentRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AppointmentWhereInput? is_;

  /// Related record does not match
  @override
  final AppointmentWhereInput? isNot;

  @override
  String toString() {
    return 'AppointmentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentRelationFilterImplCopyWith<_$AppointmentRelationFilterImpl>
      get copyWith => __$$AppointmentRelationFilterImplCopyWithImpl<
          _$AppointmentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AppointmentRelationFilter implements AppointmentRelationFilter {
  const factory _AppointmentRelationFilter(
      {@JsonKey(name: 'is') final AppointmentWhereInput? is_,
      final AppointmentWhereInput? isNot}) = _$AppointmentRelationFilterImpl;

  factory _AppointmentRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AppointmentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AppointmentWhereInput? get is_;

  /// Related record does not match
  @override
  AppointmentWhereInput? get isNot;

  /// Create a copy of AppointmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentRelationFilterImplCopyWith<_$AppointmentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentOrderByInput _$AppointmentOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _AppointmentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultationId => throw _privateConstructorUsedError;
  SortOrder? get subscriptionId => throw _privateConstructorUsedError;
  SortOrder? get webinarId => throw _privateConstructorUsedError;
  SortOrder? get classId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppointmentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentOrderByInputCopyWith<AppointmentOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentOrderByInputCopyWith<$Res> {
  factory $AppointmentOrderByInputCopyWith(AppointmentOrderByInput value,
          $Res Function(AppointmentOrderByInput) then) =
      _$AppointmentOrderByInputCopyWithImpl<$Res, AppointmentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? webinarId,
      SortOrder? classId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AppointmentOrderByInputCopyWithImpl<$Res,
        $Val extends AppointmentOrderByInput>
    implements $AppointmentOrderByInputCopyWith<$Res> {
  _$AppointmentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AppointmentOrderByInputImplCopyWith<$Res>
    implements $AppointmentOrderByInputCopyWith<$Res> {
  factory _$$AppointmentOrderByInputImplCopyWith(
          _$AppointmentOrderByInputImpl value,
          $Res Function(_$AppointmentOrderByInputImpl) then) =
      __$$AppointmentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? webinarId,
      SortOrder? classId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AppointmentOrderByInputImplCopyWithImpl<$Res>
    extends _$AppointmentOrderByInputCopyWithImpl<$Res,
        _$AppointmentOrderByInputImpl>
    implements _$$AppointmentOrderByInputImplCopyWith<$Res> {
  __$$AppointmentOrderByInputImplCopyWithImpl(
      _$AppointmentOrderByInputImpl _value,
      $Res Function(_$AppointmentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppointmentOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
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
class _$AppointmentOrderByInputImpl implements _AppointmentOrderByInput {
  const _$AppointmentOrderByInputImpl(
      {this.id,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.createdAt,
      this.updatedAt});

  factory _$AppointmentOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultationId;
  @override
  final SortOrder? subscriptionId;
  @override
  final SortOrder? webinarId;
  @override
  final SortOrder? classId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AppointmentOrderByInput(id: $id, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, consultationId,
      subscriptionId, webinarId, classId, createdAt, updatedAt);

  /// Create a copy of AppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentOrderByInputImplCopyWith<_$AppointmentOrderByInputImpl>
      get copyWith => __$$AppointmentOrderByInputImplCopyWithImpl<
          _$AppointmentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentOrderByInput implements AppointmentOrderByInput {
  const factory _AppointmentOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultationId,
      final SortOrder? subscriptionId,
      final SortOrder? webinarId,
      final SortOrder? classId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$AppointmentOrderByInputImpl;

  factory _AppointmentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AppointmentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultationId;
  @override
  SortOrder? get subscriptionId;
  @override
  SortOrder? get webinarId;
  @override
  SortOrder? get classId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AppointmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentOrderByInputImplCopyWith<_$AppointmentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
