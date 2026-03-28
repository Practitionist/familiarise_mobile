// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Consultation _$ConsultationFromJson(Map<String, dynamic> json) {
  return _Consultation.fromJson(json);
}

/// @nodoc
mixin _$Consultation {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultationPlan? get consultationPlan => throw _privateConstructorUsedError;
  String get consultationPlanId => throw _privateConstructorUsedError;
  RequestStatus get requestStatus => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get requestedBy => throw _privateConstructorUsedError;
  String get requestedById => throw _privateConstructorUsedError;
  DateTime get requestedAt => throw _privateConstructorUsedError;
  String? get requestNotes => throw _privateConstructorUsedError;
  String? get pendingPaymentUrl => throw _privateConstructorUsedError;
  BookingSource get bookingSource => throw _privateConstructorUsedError;
  String? get feedbackFromConsultee => throw _privateConstructorUsedError;
  String? get feedbackFromConsultant => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  CancellationReason? get cancellationReason =>
      throw _privateConstructorUsedError;
  String? get cancellationNotes => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  Appointment? get appointment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Consultation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationCopyWith<Consultation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationCopyWith<$Res> {
  factory $ConsultationCopyWith(
          Consultation value, $Res Function(Consultation) then) =
      _$ConsultationCopyWithImpl<$Res, Consultation>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultationPlan? consultationPlan,
      String consultationPlanId,
      RequestStatus requestStatus,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? requestedBy,
      String requestedById,
      DateTime requestedAt,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy,
      Appointment? appointment,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultationPlanCopyWith<$Res>? get consultationPlan;
  $ConsulteeProfileCopyWith<$Res>? get requestedBy;
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$ConsultationCopyWithImpl<$Res, $Val extends Consultation>
    implements $ConsultationCopyWith<$Res> {
  _$ConsultationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationPlan = freezed,
    Object? consultationPlanId = null,
    Object? requestStatus = null,
    Object? requestedBy = freezed,
    Object? requestedById = null,
    Object? requestedAt = null,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = null,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
    Object? appointment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlan?,
      consultationPlanId: null == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      requestedById: null == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: null == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanCopyWith<$Res>? get consultationPlan {
    if (_value.consultationPlan == null) {
      return null;
    }

    return $ConsultationPlanCopyWith<$Res>(_value.consultationPlan!, (value) {
      return _then(_value.copyWith(consultationPlan: value) as $Val);
    });
  }

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileCopyWith<$Res>? get requestedBy {
    if (_value.requestedBy == null) {
      return null;
    }

    return $ConsulteeProfileCopyWith<$Res>(_value.requestedBy!, (value) {
      return _then(_value.copyWith(requestedBy: value) as $Val);
    });
  }

  /// Create a copy of Consultation
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
abstract class _$$ConsultationImplCopyWith<$Res>
    implements $ConsultationCopyWith<$Res> {
  factory _$$ConsultationImplCopyWith(
          _$ConsultationImpl value, $Res Function(_$ConsultationImpl) then) =
      __$$ConsultationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultationPlan? consultationPlan,
      String consultationPlanId,
      RequestStatus requestStatus,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? requestedBy,
      String requestedById,
      DateTime requestedAt,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy,
      Appointment? appointment,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultationPlanCopyWith<$Res>? get consultationPlan;
  @override
  $ConsulteeProfileCopyWith<$Res>? get requestedBy;
  @override
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$ConsultationImplCopyWithImpl<$Res>
    extends _$ConsultationCopyWithImpl<$Res, _$ConsultationImpl>
    implements _$$ConsultationImplCopyWith<$Res> {
  __$$ConsultationImplCopyWithImpl(
      _$ConsultationImpl _value, $Res Function(_$ConsultationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationPlan = freezed,
    Object? consultationPlanId = null,
    Object? requestStatus = null,
    Object? requestedBy = freezed,
    Object? requestedById = null,
    Object? requestedAt = null,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = null,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
    Object? appointment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlan?,
      consultationPlanId: null == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      requestedById: null == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: null == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ConsultationImpl implements _Consultation {
  const _$ConsultationImpl(
      {required this.id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultationPlan,
      required this.consultationPlanId,
      this.requestStatus = RequestStatus.pending,
      @JsonKey(includeFromJson: false, includeToJson: false) this.requestedBy,
      required this.requestedById,
      required this.requestedAt,
      this.requestNotes,
      this.pendingPaymentUrl,
      this.bookingSource = BookingSource.requestSubmitted,
      this.feedbackFromConsultee,
      this.feedbackFromConsultant,
      this.rating,
      this.cancellationReason,
      this.cancellationNotes,
      this.cancelledAt,
      this.cancelledBy,
      this.appointment,
      required this.createdAt,
      required this.updatedAt});

  factory _$ConsultationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultationPlan? consultationPlan;
  @override
  final String consultationPlanId;
  @override
  @JsonKey()
  final RequestStatus requestStatus;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsulteeProfile? requestedBy;
  @override
  final String requestedById;
  @override
  final DateTime requestedAt;
  @override
  final String? requestNotes;
  @override
  final String? pendingPaymentUrl;
  @override
  @JsonKey()
  final BookingSource bookingSource;
  @override
  final String? feedbackFromConsultee;
  @override
  final String? feedbackFromConsultant;
  @override
  final double? rating;
  @override
  final CancellationReason? cancellationReason;
  @override
  final String? cancellationNotes;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancelledBy;
  @override
  final Appointment? appointment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Consultation(id: $id, consultationPlan: $consultationPlan, consultationPlanId: $consultationPlanId, requestStatus: $requestStatus, requestedBy: $requestedBy, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, appointment: $appointment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationPlan, consultationPlan) ||
                other.consultationPlan == consultationPlan) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.requestedById, requestedById) ||
                other.requestedById == requestedById) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.requestNotes, requestNotes) ||
                other.requestNotes == requestNotes) &&
            (identical(other.pendingPaymentUrl, pendingPaymentUrl) ||
                other.pendingPaymentUrl == pendingPaymentUrl) &&
            (identical(other.bookingSource, bookingSource) ||
                other.bookingSource == bookingSource) &&
            (identical(other.feedbackFromConsultee, feedbackFromConsultee) ||
                other.feedbackFromConsultee == feedbackFromConsultee) &&
            (identical(other.feedbackFromConsultant, feedbackFromConsultant) ||
                other.feedbackFromConsultant == feedbackFromConsultant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancellationNotes, cancellationNotes) ||
                other.cancellationNotes == cancellationNotes) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consultationPlan,
        consultationPlanId,
        requestStatus,
        requestedBy,
        requestedById,
        requestedAt,
        requestNotes,
        pendingPaymentUrl,
        bookingSource,
        feedbackFromConsultee,
        feedbackFromConsultant,
        rating,
        cancellationReason,
        cancellationNotes,
        cancelledAt,
        cancelledBy,
        appointment,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationImplCopyWith<_$ConsultationImpl> get copyWith =>
      __$$ConsultationImplCopyWithImpl<_$ConsultationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationImplToJson(
      this,
    );
  }
}

abstract class _Consultation implements Consultation {
  const factory _Consultation(
      {required final String id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultationPlan? consultationPlan,
      required final String consultationPlanId,
      final RequestStatus requestStatus,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsulteeProfile? requestedBy,
      required final String requestedById,
      required final DateTime requestedAt,
      final String? requestNotes,
      final String? pendingPaymentUrl,
      final BookingSource bookingSource,
      final String? feedbackFromConsultee,
      final String? feedbackFromConsultant,
      final double? rating,
      final CancellationReason? cancellationReason,
      final String? cancellationNotes,
      final DateTime? cancelledAt,
      final String? cancelledBy,
      final Appointment? appointment,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultationImpl;

  factory _Consultation.fromJson(Map<String, dynamic> json) =
      _$ConsultationImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultationPlan? get consultationPlan;
  @override
  String get consultationPlanId;
  @override
  RequestStatus get requestStatus;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get requestedBy;
  @override
  String get requestedById;
  @override
  DateTime get requestedAt;
  @override
  String? get requestNotes;
  @override
  String? get pendingPaymentUrl;
  @override
  BookingSource get bookingSource;
  @override
  String? get feedbackFromConsultee;
  @override
  String? get feedbackFromConsultant;
  @override
  double? get rating;
  @override
  CancellationReason? get cancellationReason;
  @override
  String? get cancellationNotes;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancelledBy;
  @override
  Appointment? get appointment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationImplCopyWith<_$ConsultationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultationInput _$CreateConsultationInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultationInput {
  String get consultationPlanId => throw _privateConstructorUsedError;
  RequestStatus get requestStatus => throw _privateConstructorUsedError;
  String get requestedById => throw _privateConstructorUsedError;
  String? get requestNotes => throw _privateConstructorUsedError;
  String? get pendingPaymentUrl => throw _privateConstructorUsedError;
  BookingSource get bookingSource => throw _privateConstructorUsedError;
  String? get feedbackFromConsultee => throw _privateConstructorUsedError;
  String? get feedbackFromConsultant => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  CancellationReason? get cancellationReason =>
      throw _privateConstructorUsedError;
  String? get cancellationNotes => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultationInputCopyWith<CreateConsultationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultationInputCopyWith<$Res> {
  factory $CreateConsultationInputCopyWith(CreateConsultationInput value,
          $Res Function(CreateConsultationInput) then) =
      _$CreateConsultationInputCopyWithImpl<$Res, CreateConsultationInput>;
  @useResult
  $Res call(
      {String consultationPlanId,
      RequestStatus requestStatus,
      String requestedById,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy});
}

/// @nodoc
class _$CreateConsultationInputCopyWithImpl<$Res,
        $Val extends CreateConsultationInput>
    implements $CreateConsultationInputCopyWith<$Res> {
  _$CreateConsultationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationPlanId = null,
    Object? requestStatus = null,
    Object? requestedById = null,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = null,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
  }) {
    return _then(_value.copyWith(
      consultationPlanId: null == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      requestedById: null == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: null == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultationInputImplCopyWith<$Res>
    implements $CreateConsultationInputCopyWith<$Res> {
  factory _$$CreateConsultationInputImplCopyWith(
          _$CreateConsultationInputImpl value,
          $Res Function(_$CreateConsultationInputImpl) then) =
      __$$CreateConsultationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String consultationPlanId,
      RequestStatus requestStatus,
      String requestedById,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy});
}

/// @nodoc
class __$$CreateConsultationInputImplCopyWithImpl<$Res>
    extends _$CreateConsultationInputCopyWithImpl<$Res,
        _$CreateConsultationInputImpl>
    implements _$$CreateConsultationInputImplCopyWith<$Res> {
  __$$CreateConsultationInputImplCopyWithImpl(
      _$CreateConsultationInputImpl _value,
      $Res Function(_$CreateConsultationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationPlanId = null,
    Object? requestStatus = null,
    Object? requestedById = null,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = null,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
  }) {
    return _then(_$CreateConsultationInputImpl(
      consultationPlanId: null == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      requestedById: null == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: null == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultationInputImpl implements _CreateConsultationInput {
  const _$CreateConsultationInputImpl(
      {required this.consultationPlanId,
      this.requestStatus = RequestStatus.pending,
      required this.requestedById,
      this.requestNotes,
      this.pendingPaymentUrl,
      this.bookingSource = BookingSource.requestSubmitted,
      this.feedbackFromConsultee,
      this.feedbackFromConsultant,
      this.rating,
      this.cancellationReason,
      this.cancellationNotes,
      this.cancelledAt,
      this.cancelledBy});

  factory _$CreateConsultationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateConsultationInputImplFromJson(json);

  @override
  final String consultationPlanId;
  @override
  @JsonKey()
  final RequestStatus requestStatus;
  @override
  final String requestedById;
  @override
  final String? requestNotes;
  @override
  final String? pendingPaymentUrl;
  @override
  @JsonKey()
  final BookingSource bookingSource;
  @override
  final String? feedbackFromConsultee;
  @override
  final String? feedbackFromConsultant;
  @override
  final double? rating;
  @override
  final CancellationReason? cancellationReason;
  @override
  final String? cancellationNotes;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancelledBy;

  @override
  String toString() {
    return 'CreateConsultationInput(consultationPlanId: $consultationPlanId, requestStatus: $requestStatus, requestedById: $requestedById, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultationInputImpl &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.requestedById, requestedById) ||
                other.requestedById == requestedById) &&
            (identical(other.requestNotes, requestNotes) ||
                other.requestNotes == requestNotes) &&
            (identical(other.pendingPaymentUrl, pendingPaymentUrl) ||
                other.pendingPaymentUrl == pendingPaymentUrl) &&
            (identical(other.bookingSource, bookingSource) ||
                other.bookingSource == bookingSource) &&
            (identical(other.feedbackFromConsultee, feedbackFromConsultee) ||
                other.feedbackFromConsultee == feedbackFromConsultee) &&
            (identical(other.feedbackFromConsultant, feedbackFromConsultant) ||
                other.feedbackFromConsultant == feedbackFromConsultant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancellationNotes, cancellationNotes) ||
                other.cancellationNotes == cancellationNotes) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultationPlanId,
      requestStatus,
      requestedById,
      requestNotes,
      pendingPaymentUrl,
      bookingSource,
      feedbackFromConsultee,
      feedbackFromConsultant,
      rating,
      cancellationReason,
      cancellationNotes,
      cancelledAt,
      cancelledBy);

  /// Create a copy of CreateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultationInputImplCopyWith<_$CreateConsultationInputImpl>
      get copyWith => __$$CreateConsultationInputImplCopyWithImpl<
          _$CreateConsultationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultationInput implements CreateConsultationInput {
  const factory _CreateConsultationInput(
      {required final String consultationPlanId,
      final RequestStatus requestStatus,
      required final String requestedById,
      final String? requestNotes,
      final String? pendingPaymentUrl,
      final BookingSource bookingSource,
      final String? feedbackFromConsultee,
      final String? feedbackFromConsultant,
      final double? rating,
      final CancellationReason? cancellationReason,
      final String? cancellationNotes,
      final DateTime? cancelledAt,
      final String? cancelledBy}) = _$CreateConsultationInputImpl;

  factory _CreateConsultationInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultationInputImpl.fromJson;

  @override
  String get consultationPlanId;
  @override
  RequestStatus get requestStatus;
  @override
  String get requestedById;
  @override
  String? get requestNotes;
  @override
  String? get pendingPaymentUrl;
  @override
  BookingSource get bookingSource;
  @override
  String? get feedbackFromConsultee;
  @override
  String? get feedbackFromConsultant;
  @override
  double? get rating;
  @override
  CancellationReason? get cancellationReason;
  @override
  String? get cancellationNotes;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancelledBy;

  /// Create a copy of CreateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultationInputImplCopyWith<_$CreateConsultationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultationInput _$UpdateConsultationInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultationInput {
  String? get consultationPlanId => throw _privateConstructorUsedError;
  RequestStatus? get requestStatus => throw _privateConstructorUsedError;
  String? get requestedById => throw _privateConstructorUsedError;
  String? get requestNotes => throw _privateConstructorUsedError;
  String? get pendingPaymentUrl => throw _privateConstructorUsedError;
  BookingSource? get bookingSource => throw _privateConstructorUsedError;
  String? get feedbackFromConsultee => throw _privateConstructorUsedError;
  String? get feedbackFromConsultant => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  CancellationReason? get cancellationReason =>
      throw _privateConstructorUsedError;
  String? get cancellationNotes => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultationInputCopyWith<UpdateConsultationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultationInputCopyWith<$Res> {
  factory $UpdateConsultationInputCopyWith(UpdateConsultationInput value,
          $Res Function(UpdateConsultationInput) then) =
      _$UpdateConsultationInputCopyWithImpl<$Res, UpdateConsultationInput>;
  @useResult
  $Res call(
      {String? consultationPlanId,
      RequestStatus? requestStatus,
      String? requestedById,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource? bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy});
}

/// @nodoc
class _$UpdateConsultationInputCopyWithImpl<$Res,
        $Val extends UpdateConsultationInput>
    implements $UpdateConsultationInputCopyWith<$Res> {
  _$UpdateConsultationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationPlanId = freezed,
    Object? requestStatus = freezed,
    Object? requestedById = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
  }) {
    return _then(_value.copyWith(
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultationInputImplCopyWith<$Res>
    implements $UpdateConsultationInputCopyWith<$Res> {
  factory _$$UpdateConsultationInputImplCopyWith(
          _$UpdateConsultationInputImpl value,
          $Res Function(_$UpdateConsultationInputImpl) then) =
      __$$UpdateConsultationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? consultationPlanId,
      RequestStatus? requestStatus,
      String? requestedById,
      String? requestNotes,
      String? pendingPaymentUrl,
      BookingSource? bookingSource,
      String? feedbackFromConsultee,
      String? feedbackFromConsultant,
      double? rating,
      CancellationReason? cancellationReason,
      String? cancellationNotes,
      DateTime? cancelledAt,
      String? cancelledBy});
}

/// @nodoc
class __$$UpdateConsultationInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultationInputCopyWithImpl<$Res,
        _$UpdateConsultationInputImpl>
    implements _$$UpdateConsultationInputImplCopyWith<$Res> {
  __$$UpdateConsultationInputImplCopyWithImpl(
      _$UpdateConsultationInputImpl _value,
      $Res Function(_$UpdateConsultationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationPlanId = freezed,
    Object? requestStatus = freezed,
    Object? requestedById = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
  }) {
    return _then(_$UpdateConsultationInputImpl(
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as String?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultationInputImpl implements _UpdateConsultationInput {
  const _$UpdateConsultationInputImpl(
      {this.consultationPlanId,
      this.requestStatus,
      this.requestedById,
      this.requestNotes,
      this.pendingPaymentUrl,
      this.bookingSource,
      this.feedbackFromConsultee,
      this.feedbackFromConsultant,
      this.rating,
      this.cancellationReason,
      this.cancellationNotes,
      this.cancelledAt,
      this.cancelledBy});

  factory _$UpdateConsultationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateConsultationInputImplFromJson(json);

  @override
  final String? consultationPlanId;
  @override
  final RequestStatus? requestStatus;
  @override
  final String? requestedById;
  @override
  final String? requestNotes;
  @override
  final String? pendingPaymentUrl;
  @override
  final BookingSource? bookingSource;
  @override
  final String? feedbackFromConsultee;
  @override
  final String? feedbackFromConsultant;
  @override
  final double? rating;
  @override
  final CancellationReason? cancellationReason;
  @override
  final String? cancellationNotes;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancelledBy;

  @override
  String toString() {
    return 'UpdateConsultationInput(consultationPlanId: $consultationPlanId, requestStatus: $requestStatus, requestedById: $requestedById, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultationInputImpl &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.requestedById, requestedById) ||
                other.requestedById == requestedById) &&
            (identical(other.requestNotes, requestNotes) ||
                other.requestNotes == requestNotes) &&
            (identical(other.pendingPaymentUrl, pendingPaymentUrl) ||
                other.pendingPaymentUrl == pendingPaymentUrl) &&
            (identical(other.bookingSource, bookingSource) ||
                other.bookingSource == bookingSource) &&
            (identical(other.feedbackFromConsultee, feedbackFromConsultee) ||
                other.feedbackFromConsultee == feedbackFromConsultee) &&
            (identical(other.feedbackFromConsultant, feedbackFromConsultant) ||
                other.feedbackFromConsultant == feedbackFromConsultant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancellationNotes, cancellationNotes) ||
                other.cancellationNotes == cancellationNotes) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultationPlanId,
      requestStatus,
      requestedById,
      requestNotes,
      pendingPaymentUrl,
      bookingSource,
      feedbackFromConsultee,
      feedbackFromConsultant,
      rating,
      cancellationReason,
      cancellationNotes,
      cancelledAt,
      cancelledBy);

  /// Create a copy of UpdateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultationInputImplCopyWith<_$UpdateConsultationInputImpl>
      get copyWith => __$$UpdateConsultationInputImplCopyWithImpl<
          _$UpdateConsultationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultationInput implements UpdateConsultationInput {
  const factory _UpdateConsultationInput(
      {final String? consultationPlanId,
      final RequestStatus? requestStatus,
      final String? requestedById,
      final String? requestNotes,
      final String? pendingPaymentUrl,
      final BookingSource? bookingSource,
      final String? feedbackFromConsultee,
      final String? feedbackFromConsultant,
      final double? rating,
      final CancellationReason? cancellationReason,
      final String? cancellationNotes,
      final DateTime? cancelledAt,
      final String? cancelledBy}) = _$UpdateConsultationInputImpl;

  factory _UpdateConsultationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultationInputImpl.fromJson;

  @override
  String? get consultationPlanId;
  @override
  RequestStatus? get requestStatus;
  @override
  String? get requestedById;
  @override
  String? get requestNotes;
  @override
  String? get pendingPaymentUrl;
  @override
  BookingSource? get bookingSource;
  @override
  String? get feedbackFromConsultee;
  @override
  String? get feedbackFromConsultant;
  @override
  double? get rating;
  @override
  CancellationReason? get cancellationReason;
  @override
  String? get cancellationNotes;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancelledBy;

  /// Create a copy of UpdateConsultationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultationInputImplCopyWith<_$UpdateConsultationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationWhereUniqueInput _$ConsultationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ConsultationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationWhereUniqueInputCopyWith<ConsultationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationWhereUniqueInputCopyWith<$Res> {
  factory $ConsultationWhereUniqueInputCopyWith(
          ConsultationWhereUniqueInput value,
          $Res Function(ConsultationWhereUniqueInput) then) =
      _$ConsultationWhereUniqueInputCopyWithImpl<$Res,
          ConsultationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ConsultationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultationWhereUniqueInput>
    implements $ConsultationWhereUniqueInputCopyWith<$Res> {
  _$ConsultationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationWhereUniqueInput
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
abstract class _$$ConsultationWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultationWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultationWhereUniqueInputImplCopyWith(
          _$ConsultationWhereUniqueInputImpl value,
          $Res Function(_$ConsultationWhereUniqueInputImpl) then) =
      __$$ConsultationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ConsultationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultationWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultationWhereUniqueInputImpl>
    implements _$$ConsultationWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultationWhereUniqueInputImplCopyWithImpl(
      _$ConsultationWhereUniqueInputImpl _value,
      $Res Function(_$ConsultationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ConsultationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationWhereUniqueInputImpl
    implements _ConsultationWhereUniqueInput {
  const _$ConsultationWhereUniqueInputImpl({this.id});

  factory _$ConsultationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ConsultationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ConsultationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationWhereUniqueInputImplCopyWith<
          _$ConsultationWhereUniqueInputImpl>
      get copyWith => __$$ConsultationWhereUniqueInputImplCopyWithImpl<
          _$ConsultationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationWhereUniqueInput
    implements ConsultationWhereUniqueInput {
  const factory _ConsultationWhereUniqueInput({final String? id}) =
      _$ConsultationWhereUniqueInputImpl;

  factory _ConsultationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ConsultationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ConsultationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationWhereUniqueInputImplCopyWith<
          _$ConsultationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationWhereInput _$ConsultationWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;

  /// Filter by consultationPlan relation
  ConsultationPlanRelationFilter? get consultationPlan =>
      throw _privateConstructorUsedError;
  StringFilter? get consultationPlanId => throw _privateConstructorUsedError;
  RequestStatusFilter? get requestStatus => throw _privateConstructorUsedError;

  /// Filter by requestedBy relation
  ConsulteeProfileRelationFilter? get requestedBy =>
      throw _privateConstructorUsedError;
  StringFilter? get requestedById => throw _privateConstructorUsedError;
  DateTimeFilter? get requestedAt => throw _privateConstructorUsedError;
  StringFilter? get requestNotes => throw _privateConstructorUsedError;
  StringFilter? get pendingPaymentUrl => throw _privateConstructorUsedError;
  BookingSourceFilter? get bookingSource => throw _privateConstructorUsedError;
  StringFilter? get feedbackFromConsultee => throw _privateConstructorUsedError;
  StringFilter? get feedbackFromConsultant =>
      throw _privateConstructorUsedError;
  FloatFilter? get rating => throw _privateConstructorUsedError;
  CancellationReasonFilter? get cancellationReason =>
      throw _privateConstructorUsedError;
  StringFilter? get cancellationNotes => throw _privateConstructorUsedError;
  DateTimeFilter? get cancelledAt => throw _privateConstructorUsedError;
  StringFilter? get cancelledBy => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ConsultationWhereInput>? get OR => throw _privateConstructorUsedError;
  ConsultationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationWhereInputCopyWith<ConsultationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationWhereInputCopyWith<$Res> {
  factory $ConsultationWhereInputCopyWith(ConsultationWhereInput value,
          $Res Function(ConsultationWhereInput) then) =
      _$ConsultationWhereInputCopyWithImpl<$Res, ConsultationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      ConsultationPlanRelationFilter? consultationPlan,
      StringFilter? consultationPlanId,
      RequestStatusFilter? requestStatus,
      ConsulteeProfileRelationFilter? requestedBy,
      StringFilter? requestedById,
      DateTimeFilter? requestedAt,
      StringFilter? requestNotes,
      StringFilter? pendingPaymentUrl,
      BookingSourceFilter? bookingSource,
      StringFilter? feedbackFromConsultee,
      StringFilter? feedbackFromConsultant,
      FloatFilter? rating,
      CancellationReasonFilter? cancellationReason,
      StringFilter? cancellationNotes,
      DateTimeFilter? cancelledAt,
      StringFilter? cancelledBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultationWhereInput>? AND,
      List<ConsultationWhereInput>? OR,
      ConsultationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan;
  $StringFilterCopyWith<$Res>? get consultationPlanId;
  $RequestStatusFilterCopyWith<$Res>? get requestStatus;
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get requestedBy;
  $StringFilterCopyWith<$Res>? get requestedById;
  $DateTimeFilterCopyWith<$Res>? get requestedAt;
  $StringFilterCopyWith<$Res>? get requestNotes;
  $StringFilterCopyWith<$Res>? get pendingPaymentUrl;
  $BookingSourceFilterCopyWith<$Res>? get bookingSource;
  $StringFilterCopyWith<$Res>? get feedbackFromConsultee;
  $StringFilterCopyWith<$Res>? get feedbackFromConsultant;
  $FloatFilterCopyWith<$Res>? get rating;
  $CancellationReasonFilterCopyWith<$Res>? get cancellationReason;
  $StringFilterCopyWith<$Res>? get cancellationNotes;
  $DateTimeFilterCopyWith<$Res>? get cancelledAt;
  $StringFilterCopyWith<$Res>? get cancelledBy;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultationWhereInputCopyWithImpl<$Res,
        $Val extends ConsultationWhereInput>
    implements $ConsultationWhereInputCopyWith<$Res> {
  _$ConsultationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationPlan = freezed,
    Object? consultationPlanId = freezed,
    Object? requestStatus = freezed,
    Object? requestedBy = freezed,
    Object? requestedById = freezed,
    Object? requestedAt = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
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
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanRelationFilter?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatusFilter?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSourceFilter?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReasonFilter?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationWhereInput
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

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan {
    if (_value.consultationPlan == null) {
      return null;
    }

    return $ConsultationPlanRelationFilterCopyWith<$Res>(
        _value.consultationPlan!, (value) {
      return _then(_value.copyWith(consultationPlan: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultationPlanId {
    if (_value.consultationPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultationPlanId!, (value) {
      return _then(_value.copyWith(consultationPlanId: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStatusFilterCopyWith<$Res>? get requestStatus {
    if (_value.requestStatus == null) {
      return null;
    }

    return $RequestStatusFilterCopyWith<$Res>(_value.requestStatus!, (value) {
      return _then(_value.copyWith(requestStatus: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get requestedBy {
    if (_value.requestedBy == null) {
      return null;
    }

    return $ConsulteeProfileRelationFilterCopyWith<$Res>(_value.requestedBy!,
        (value) {
      return _then(_value.copyWith(requestedBy: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get requestedById {
    if (_value.requestedById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.requestedById!, (value) {
      return _then(_value.copyWith(requestedById: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
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

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get requestNotes {
    if (_value.requestNotes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.requestNotes!, (value) {
      return _then(_value.copyWith(requestNotes: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get pendingPaymentUrl {
    if (_value.pendingPaymentUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.pendingPaymentUrl!, (value) {
      return _then(_value.copyWith(pendingPaymentUrl: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingSourceFilterCopyWith<$Res>? get bookingSource {
    if (_value.bookingSource == null) {
      return null;
    }

    return $BookingSourceFilterCopyWith<$Res>(_value.bookingSource!, (value) {
      return _then(_value.copyWith(bookingSource: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get feedbackFromConsultee {
    if (_value.feedbackFromConsultee == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.feedbackFromConsultee!, (value) {
      return _then(_value.copyWith(feedbackFromConsultee: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get feedbackFromConsultant {
    if (_value.feedbackFromConsultant == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.feedbackFromConsultant!, (value) {
      return _then(_value.copyWith(feedbackFromConsultant: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CancellationReasonFilterCopyWith<$Res>? get cancellationReason {
    if (_value.cancellationReason == null) {
      return null;
    }

    return $CancellationReasonFilterCopyWith<$Res>(_value.cancellationReason!,
        (value) {
      return _then(_value.copyWith(cancellationReason: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get cancellationNotes {
    if (_value.cancellationNotes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.cancellationNotes!, (value) {
      return _then(_value.copyWith(cancellationNotes: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get cancelledAt {
    if (_value.cancelledAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.cancelledAt!, (value) {
      return _then(_value.copyWith(cancelledAt: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get cancelledBy {
    if (_value.cancelledBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.cancelledBy!, (value) {
      return _then(_value.copyWith(cancelledBy: value) as $Val);
    });
  }

  /// Create a copy of ConsultationWhereInput
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

  /// Create a copy of ConsultationWhereInput
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

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationWhereInputImplCopyWith<$Res>
    implements $ConsultationWhereInputCopyWith<$Res> {
  factory _$$ConsultationWhereInputImplCopyWith(
          _$ConsultationWhereInputImpl value,
          $Res Function(_$ConsultationWhereInputImpl) then) =
      __$$ConsultationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      ConsultationPlanRelationFilter? consultationPlan,
      StringFilter? consultationPlanId,
      RequestStatusFilter? requestStatus,
      ConsulteeProfileRelationFilter? requestedBy,
      StringFilter? requestedById,
      DateTimeFilter? requestedAt,
      StringFilter? requestNotes,
      StringFilter? pendingPaymentUrl,
      BookingSourceFilter? bookingSource,
      StringFilter? feedbackFromConsultee,
      StringFilter? feedbackFromConsultant,
      FloatFilter? rating,
      CancellationReasonFilter? cancellationReason,
      StringFilter? cancellationNotes,
      DateTimeFilter? cancelledAt,
      StringFilter? cancelledBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultationWhereInput>? AND,
      List<ConsultationWhereInput>? OR,
      ConsultationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan;
  @override
  $StringFilterCopyWith<$Res>? get consultationPlanId;
  @override
  $RequestStatusFilterCopyWith<$Res>? get requestStatus;
  @override
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get requestedBy;
  @override
  $StringFilterCopyWith<$Res>? get requestedById;
  @override
  $DateTimeFilterCopyWith<$Res>? get requestedAt;
  @override
  $StringFilterCopyWith<$Res>? get requestNotes;
  @override
  $StringFilterCopyWith<$Res>? get pendingPaymentUrl;
  @override
  $BookingSourceFilterCopyWith<$Res>? get bookingSource;
  @override
  $StringFilterCopyWith<$Res>? get feedbackFromConsultee;
  @override
  $StringFilterCopyWith<$Res>? get feedbackFromConsultant;
  @override
  $FloatFilterCopyWith<$Res>? get rating;
  @override
  $CancellationReasonFilterCopyWith<$Res>? get cancellationReason;
  @override
  $StringFilterCopyWith<$Res>? get cancellationNotes;
  @override
  $DateTimeFilterCopyWith<$Res>? get cancelledAt;
  @override
  $StringFilterCopyWith<$Res>? get cancelledBy;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultationWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultationWhereInputCopyWithImpl<$Res,
        _$ConsultationWhereInputImpl>
    implements _$$ConsultationWhereInputImplCopyWith<$Res> {
  __$$ConsultationWhereInputImplCopyWithImpl(
      _$ConsultationWhereInputImpl _value,
      $Res Function(_$ConsultationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationPlan = freezed,
    Object? consultationPlanId = freezed,
    Object? requestStatus = freezed,
    Object? requestedBy = freezed,
    Object? requestedById = freezed,
    Object? requestedAt = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? bookingSource = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationReason = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanRelationFilter?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatusFilter?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as BookingSourceFilter?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as CancellationReasonFilter?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultationWhereInputImpl implements _ConsultationWhereInput {
  const _$ConsultationWhereInputImpl(
      {this.id,
      this.consultationPlan,
      this.consultationPlanId,
      this.requestStatus,
      this.requestedBy,
      this.requestedById,
      this.requestedAt,
      this.requestNotes,
      this.pendingPaymentUrl,
      this.bookingSource,
      this.feedbackFromConsultee,
      this.feedbackFromConsultant,
      this.rating,
      this.cancellationReason,
      this.cancellationNotes,
      this.cancelledAt,
      this.cancelledBy,
      this.createdAt,
      this.updatedAt,
      final List<ConsultationWhereInput>? AND,
      final List<ConsultationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;

  /// Filter by consultationPlan relation
  @override
  final ConsultationPlanRelationFilter? consultationPlan;
  @override
  final StringFilter? consultationPlanId;
  @override
  final RequestStatusFilter? requestStatus;

  /// Filter by requestedBy relation
  @override
  final ConsulteeProfileRelationFilter? requestedBy;
  @override
  final StringFilter? requestedById;
  @override
  final DateTimeFilter? requestedAt;
  @override
  final StringFilter? requestNotes;
  @override
  final StringFilter? pendingPaymentUrl;
  @override
  final BookingSourceFilter? bookingSource;
  @override
  final StringFilter? feedbackFromConsultee;
  @override
  final StringFilter? feedbackFromConsultant;
  @override
  final FloatFilter? rating;
  @override
  final CancellationReasonFilter? cancellationReason;
  @override
  final StringFilter? cancellationNotes;
  @override
  final DateTimeFilter? cancelledAt;
  @override
  final StringFilter? cancelledBy;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultationWhereInput>? _AND;
  @override
  List<ConsultationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultationWhereInput>? _OR;
  @override
  List<ConsultationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultationWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultationWhereInput(id: $id, consultationPlan: $consultationPlan, consultationPlanId: $consultationPlanId, requestStatus: $requestStatus, requestedBy: $requestedBy, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationPlan, consultationPlan) ||
                other.consultationPlan == consultationPlan) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.requestedById, requestedById) ||
                other.requestedById == requestedById) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.requestNotes, requestNotes) ||
                other.requestNotes == requestNotes) &&
            (identical(other.pendingPaymentUrl, pendingPaymentUrl) ||
                other.pendingPaymentUrl == pendingPaymentUrl) &&
            (identical(other.bookingSource, bookingSource) ||
                other.bookingSource == bookingSource) &&
            (identical(other.feedbackFromConsultee, feedbackFromConsultee) ||
                other.feedbackFromConsultee == feedbackFromConsultee) &&
            (identical(other.feedbackFromConsultant, feedbackFromConsultant) ||
                other.feedbackFromConsultant == feedbackFromConsultant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancellationNotes, cancellationNotes) ||
                other.cancellationNotes == cancellationNotes) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
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
        consultationPlan,
        consultationPlanId,
        requestStatus,
        requestedBy,
        requestedById,
        requestedAt,
        requestNotes,
        pendingPaymentUrl,
        bookingSource,
        feedbackFromConsultee,
        feedbackFromConsultant,
        rating,
        cancellationReason,
        cancellationNotes,
        cancelledAt,
        cancelledBy,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationWhereInputImplCopyWith<_$ConsultationWhereInputImpl>
      get copyWith => __$$ConsultationWhereInputImplCopyWithImpl<
          _$ConsultationWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationWhereInput implements ConsultationWhereInput {
  const factory _ConsultationWhereInput(
      {final StringFilter? id,
      final ConsultationPlanRelationFilter? consultationPlan,
      final StringFilter? consultationPlanId,
      final RequestStatusFilter? requestStatus,
      final ConsulteeProfileRelationFilter? requestedBy,
      final StringFilter? requestedById,
      final DateTimeFilter? requestedAt,
      final StringFilter? requestNotes,
      final StringFilter? pendingPaymentUrl,
      final BookingSourceFilter? bookingSource,
      final StringFilter? feedbackFromConsultee,
      final StringFilter? feedbackFromConsultant,
      final FloatFilter? rating,
      final CancellationReasonFilter? cancellationReason,
      final StringFilter? cancellationNotes,
      final DateTimeFilter? cancelledAt,
      final StringFilter? cancelledBy,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ConsultationWhereInput>? AND,
      final List<ConsultationWhereInput>? OR,
      final ConsultationWhereInput? NOT}) = _$ConsultationWhereInputImpl;

  factory _ConsultationWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;

  /// Filter by consultationPlan relation
  @override
  ConsultationPlanRelationFilter? get consultationPlan;
  @override
  StringFilter? get consultationPlanId;
  @override
  RequestStatusFilter? get requestStatus;

  /// Filter by requestedBy relation
  @override
  ConsulteeProfileRelationFilter? get requestedBy;
  @override
  StringFilter? get requestedById;
  @override
  DateTimeFilter? get requestedAt;
  @override
  StringFilter? get requestNotes;
  @override
  StringFilter? get pendingPaymentUrl;
  @override
  BookingSourceFilter? get bookingSource;
  @override
  StringFilter? get feedbackFromConsultee;
  @override
  StringFilter? get feedbackFromConsultant;
  @override
  FloatFilter? get rating;
  @override
  CancellationReasonFilter? get cancellationReason;
  @override
  StringFilter? get cancellationNotes;
  @override
  DateTimeFilter? get cancelledAt;
  @override
  StringFilter? get cancelledBy;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultationWhereInput>? get AND;
  @override
  List<ConsultationWhereInput>? get OR;
  @override
  ConsultationWhereInput? get NOT;

  /// Create a copy of ConsultationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationWhereInputImplCopyWith<_$ConsultationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationListRelationFilter _$ConsultationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultationListRelationFilter {
  /// At least one related record matches
  ConsultationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationListRelationFilterCopyWith<ConsultationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationListRelationFilterCopyWith<$Res> {
  factory $ConsultationListRelationFilterCopyWith(
          ConsultationListRelationFilter value,
          $Res Function(ConsultationListRelationFilter) then) =
      _$ConsultationListRelationFilterCopyWithImpl<$Res,
          ConsultationListRelationFilter>;
  @useResult
  $Res call(
      {ConsultationWhereInput? some,
      ConsultationWhereInput? every,
      ConsultationWhereInput? none});

  $ConsultationWhereInputCopyWith<$Res>? get some;
  $ConsultationWhereInputCopyWith<$Res>? get every;
  $ConsultationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultationListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultationListRelationFilter>
    implements $ConsultationListRelationFilterCopyWith<$Res> {
  _$ConsultationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationListRelationFilter
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
              as ConsultationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationListRelationFilterImplCopyWith<$Res>
    implements $ConsultationListRelationFilterCopyWith<$Res> {
  factory _$$ConsultationListRelationFilterImplCopyWith(
          _$ConsultationListRelationFilterImpl value,
          $Res Function(_$ConsultationListRelationFilterImpl) then) =
      __$$ConsultationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultationWhereInput? some,
      ConsultationWhereInput? every,
      ConsultationWhereInput? none});

  @override
  $ConsultationWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultationWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultationListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultationListRelationFilterCopyWithImpl<$Res,
        _$ConsultationListRelationFilterImpl>
    implements _$$ConsultationListRelationFilterImplCopyWith<$Res> {
  __$$ConsultationListRelationFilterImplCopyWithImpl(
      _$ConsultationListRelationFilterImpl _value,
      $Res Function(_$ConsultationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationListRelationFilterImpl
    implements _ConsultationListRelationFilter {
  const _$ConsultationListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultationWhereInput? some;

  /// All related records match
  @override
  final ConsultationWhereInput? every;

  /// No related records match
  @override
  final ConsultationWhereInput? none;

  @override
  String toString() {
    return 'ConsultationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationListRelationFilterImplCopyWith<
          _$ConsultationListRelationFilterImpl>
      get copyWith => __$$ConsultationListRelationFilterImplCopyWithImpl<
          _$ConsultationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultationListRelationFilter
    implements ConsultationListRelationFilter {
  const factory _ConsultationListRelationFilter(
          {final ConsultationWhereInput? some,
          final ConsultationWhereInput? every,
          final ConsultationWhereInput? none}) =
      _$ConsultationListRelationFilterImpl;

  factory _ConsultationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultationWhereInput? get some;

  /// All related records match
  @override
  ConsultationWhereInput? get every;

  /// No related records match
  @override
  ConsultationWhereInput? get none;

  /// Create a copy of ConsultationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationListRelationFilterImplCopyWith<
          _$ConsultationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationRelationFilter _$ConsultationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationRelationFilterCopyWith<ConsultationRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationRelationFilterCopyWith<$Res> {
  factory $ConsultationRelationFilterCopyWith(ConsultationRelationFilter value,
          $Res Function(ConsultationRelationFilter) then) =
      _$ConsultationRelationFilterCopyWithImpl<$Res,
          ConsultationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultationWhereInput? is_,
      ConsultationWhereInput? isNot});

  $ConsultationWhereInputCopyWith<$Res>? get is_;
  $ConsultationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultationRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultationRelationFilter>
    implements $ConsultationRelationFilterCopyWith<$Res> {
  _$ConsultationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationRelationFilter
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
              as ConsultationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationRelationFilterImplCopyWith<$Res>
    implements $ConsultationRelationFilterCopyWith<$Res> {
  factory _$$ConsultationRelationFilterImplCopyWith(
          _$ConsultationRelationFilterImpl value,
          $Res Function(_$ConsultationRelationFilterImpl) then) =
      __$$ConsultationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultationWhereInput? is_,
      ConsultationWhereInput? isNot});

  @override
  $ConsultationWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultationRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultationRelationFilterCopyWithImpl<$Res,
        _$ConsultationRelationFilterImpl>
    implements _$$ConsultationRelationFilterImplCopyWith<$Res> {
  __$$ConsultationRelationFilterImplCopyWithImpl(
      _$ConsultationRelationFilterImpl _value,
      $Res Function(_$ConsultationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationRelationFilterImpl implements _ConsultationRelationFilter {
  const _$ConsultationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultationRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultationWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultationWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationRelationFilterImplCopyWith<_$ConsultationRelationFilterImpl>
      get copyWith => __$$ConsultationRelationFilterImplCopyWithImpl<
          _$ConsultationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultationRelationFilter
    implements ConsultationRelationFilter {
  const factory _ConsultationRelationFilter(
      {@JsonKey(name: 'is') final ConsultationWhereInput? is_,
      final ConsultationWhereInput? isNot}) = _$ConsultationRelationFilterImpl;

  factory _ConsultationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultationWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultationWhereInput? get isNot;

  /// Create a copy of ConsultationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationRelationFilterImplCopyWith<_$ConsultationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationOrderByInput _$ConsultationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultationPlanId => throw _privateConstructorUsedError;
  SortOrder? get requestedById => throw _privateConstructorUsedError;
  SortOrder? get requestedAt => throw _privateConstructorUsedError;
  SortOrder? get requestNotes => throw _privateConstructorUsedError;
  SortOrder? get pendingPaymentUrl => throw _privateConstructorUsedError;
  SortOrder? get feedbackFromConsultee => throw _privateConstructorUsedError;
  SortOrder? get feedbackFromConsultant => throw _privateConstructorUsedError;
  SortOrder? get rating => throw _privateConstructorUsedError;
  SortOrder? get cancellationNotes => throw _privateConstructorUsedError;
  SortOrder? get cancelledAt => throw _privateConstructorUsedError;
  SortOrder? get cancelledBy => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationOrderByInputCopyWith<ConsultationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationOrderByInputCopyWith<$Res> {
  factory $ConsultationOrderByInputCopyWith(ConsultationOrderByInput value,
          $Res Function(ConsultationOrderByInput) then) =
      _$ConsultationOrderByInputCopyWithImpl<$Res, ConsultationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultationPlanId,
      SortOrder? requestedById,
      SortOrder? requestedAt,
      SortOrder? requestNotes,
      SortOrder? pendingPaymentUrl,
      SortOrder? feedbackFromConsultee,
      SortOrder? feedbackFromConsultant,
      SortOrder? rating,
      SortOrder? cancellationNotes,
      SortOrder? cancelledAt,
      SortOrder? cancelledBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultationOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultationOrderByInput>
    implements $ConsultationOrderByInputCopyWith<$Res> {
  _$ConsultationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationPlanId = freezed,
    Object? requestedById = freezed,
    Object? requestedAt = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultationOrderByInputImplCopyWith<$Res>
    implements $ConsultationOrderByInputCopyWith<$Res> {
  factory _$$ConsultationOrderByInputImplCopyWith(
          _$ConsultationOrderByInputImpl value,
          $Res Function(_$ConsultationOrderByInputImpl) then) =
      __$$ConsultationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultationPlanId,
      SortOrder? requestedById,
      SortOrder? requestedAt,
      SortOrder? requestNotes,
      SortOrder? pendingPaymentUrl,
      SortOrder? feedbackFromConsultee,
      SortOrder? feedbackFromConsultant,
      SortOrder? rating,
      SortOrder? cancellationNotes,
      SortOrder? cancelledAt,
      SortOrder? cancelledBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultationOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultationOrderByInputCopyWithImpl<$Res,
        _$ConsultationOrderByInputImpl>
    implements _$$ConsultationOrderByInputImplCopyWith<$Res> {
  __$$ConsultationOrderByInputImplCopyWithImpl(
      _$ConsultationOrderByInputImpl _value,
      $Res Function(_$ConsultationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultationPlanId = freezed,
    Object? requestedById = freezed,
    Object? requestedAt = freezed,
    Object? requestNotes = freezed,
    Object? pendingPaymentUrl = freezed,
    Object? feedbackFromConsultee = freezed,
    Object? feedbackFromConsultant = freezed,
    Object? rating = freezed,
    Object? cancellationNotes = freezed,
    Object? cancelledAt = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedById: freezed == requestedById
          ? _value.requestedById
          : requestedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      requestNotes: freezed == requestNotes
          ? _value.requestNotes
          : requestNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pendingPaymentUrl: freezed == pendingPaymentUrl
          ? _value.pendingPaymentUrl
          : pendingPaymentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackFromConsultee: freezed == feedbackFromConsultee
          ? _value.feedbackFromConsultee
          : feedbackFromConsultee // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackFromConsultant: freezed == feedbackFromConsultant
          ? _value.feedbackFromConsultant
          : feedbackFromConsultant // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancellationNotes: freezed == cancellationNotes
          ? _value.cancellationNotes
          : cancellationNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
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
class _$ConsultationOrderByInputImpl implements _ConsultationOrderByInput {
  const _$ConsultationOrderByInputImpl(
      {this.id,
      this.consultationPlanId,
      this.requestedById,
      this.requestedAt,
      this.requestNotes,
      this.pendingPaymentUrl,
      this.feedbackFromConsultee,
      this.feedbackFromConsultant,
      this.rating,
      this.cancellationNotes,
      this.cancelledAt,
      this.cancelledBy,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultationPlanId;
  @override
  final SortOrder? requestedById;
  @override
  final SortOrder? requestedAt;
  @override
  final SortOrder? requestNotes;
  @override
  final SortOrder? pendingPaymentUrl;
  @override
  final SortOrder? feedbackFromConsultee;
  @override
  final SortOrder? feedbackFromConsultant;
  @override
  final SortOrder? rating;
  @override
  final SortOrder? cancellationNotes;
  @override
  final SortOrder? cancelledAt;
  @override
  final SortOrder? cancelledBy;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultationOrderByInput(id: $id, consultationPlanId: $consultationPlanId, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.requestedById, requestedById) ||
                other.requestedById == requestedById) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.requestNotes, requestNotes) ||
                other.requestNotes == requestNotes) &&
            (identical(other.pendingPaymentUrl, pendingPaymentUrl) ||
                other.pendingPaymentUrl == pendingPaymentUrl) &&
            (identical(other.feedbackFromConsultee, feedbackFromConsultee) ||
                other.feedbackFromConsultee == feedbackFromConsultee) &&
            (identical(other.feedbackFromConsultant, feedbackFromConsultant) ||
                other.feedbackFromConsultant == feedbackFromConsultant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancellationNotes, cancellationNotes) ||
                other.cancellationNotes == cancellationNotes) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
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
      consultationPlanId,
      requestedById,
      requestedAt,
      requestNotes,
      pendingPaymentUrl,
      feedbackFromConsultee,
      feedbackFromConsultant,
      rating,
      cancellationNotes,
      cancelledAt,
      cancelledBy,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationOrderByInputImplCopyWith<_$ConsultationOrderByInputImpl>
      get copyWith => __$$ConsultationOrderByInputImplCopyWithImpl<
          _$ConsultationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationOrderByInput implements ConsultationOrderByInput {
  const factory _ConsultationOrderByInput(
      {final SortOrder? id,
      final SortOrder? consultationPlanId,
      final SortOrder? requestedById,
      final SortOrder? requestedAt,
      final SortOrder? requestNotes,
      final SortOrder? pendingPaymentUrl,
      final SortOrder? feedbackFromConsultee,
      final SortOrder? feedbackFromConsultant,
      final SortOrder? rating,
      final SortOrder? cancellationNotes,
      final SortOrder? cancelledAt,
      final SortOrder? cancelledBy,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultationOrderByInputImpl;

  factory _ConsultationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultationPlanId;
  @override
  SortOrder? get requestedById;
  @override
  SortOrder? get requestedAt;
  @override
  SortOrder? get requestNotes;
  @override
  SortOrder? get pendingPaymentUrl;
  @override
  SortOrder? get feedbackFromConsultee;
  @override
  SortOrder? get feedbackFromConsultant;
  @override
  SortOrder? get rating;
  @override
  SortOrder? get cancellationNotes;
  @override
  SortOrder? get cancelledAt;
  @override
  SortOrder? get cancelledBy;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationOrderByInputImplCopyWith<_$ConsultationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
