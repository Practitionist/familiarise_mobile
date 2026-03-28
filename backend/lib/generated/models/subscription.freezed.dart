// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  String get id => throw _privateConstructorUsedError;
  DateTime get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String get schedulingTimezone => throw _privateConstructorUsedError;
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan => throw _privateConstructorUsedError;
  String get subscriptionPlanId => throw _privateConstructorUsedError;
  List<Appointment> get appointments => throw _privateConstructorUsedError;
  TrialSession? get convertedFromTrial => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {String id,
      DateTime schedulingPeriodStartsAt,
      DateTime schedulingPeriodEndsAt,
      String schedulingTimezone,
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
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      List<Appointment> appointments,
      TrialSession? convertedFromTrial,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsulteeProfileCopyWith<$Res>? get requestedBy;
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  $TrialSessionCopyWith<$Res>? get convertedFromTrial;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedulingPeriodStartsAt = null,
    Object? schedulingPeriodEndsAt = null,
    Object? schedulingTimezone = null,
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
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
    Object? appointments = null,
    Object? convertedFromTrial = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingPeriodStartsAt: null == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingPeriodEndsAt: null == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingTimezone: null == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
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
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      convertedFromTrial: freezed == convertedFromTrial
          ? _value.convertedFromTrial
          : convertedFromTrial // ignore: cast_nullable_to_non_nullable
              as TrialSession?,
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

  /// Create a copy of Subscription
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

  /// Create a copy of Subscription
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

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrialSessionCopyWith<$Res>? get convertedFromTrial {
    if (_value.convertedFromTrial == null) {
      return null;
    }

    return $TrialSessionCopyWith<$Res>(_value.convertedFromTrial!, (value) {
      return _then(_value.copyWith(convertedFromTrial: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime schedulingPeriodStartsAt,
      DateTime schedulingPeriodEndsAt,
      String schedulingTimezone,
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
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      List<Appointment> appointments,
      TrialSession? convertedFromTrial,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsulteeProfileCopyWith<$Res>? get requestedBy;
  @override
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  @override
  $TrialSessionCopyWith<$Res>? get convertedFromTrial;
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedulingPeriodStartsAt = null,
    Object? schedulingPeriodEndsAt = null,
    Object? schedulingTimezone = null,
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
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
    Object? appointments = null,
    Object? convertedFromTrial = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubscriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingPeriodStartsAt: null == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingPeriodEndsAt: null == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingTimezone: null == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
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
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      convertedFromTrial: freezed == convertedFromTrial
          ? _value.convertedFromTrial
          : convertedFromTrial // ignore: cast_nullable_to_non_nullable
              as TrialSession?,
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
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {required this.id,
      required this.schedulingPeriodStartsAt,
      required this.schedulingPeriodEndsAt,
      this.schedulingTimezone = "Asia/Kolkata",
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
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.subscriptionPlan,
      required this.subscriptionPlanId,
      required final List<Appointment> appointments,
      this.convertedFromTrial,
      required this.createdAt,
      required this.updatedAt})
      : _appointments = appointments;

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime schedulingPeriodStartsAt;
  @override
  final DateTime schedulingPeriodEndsAt;
  @override
  @JsonKey()
  final String schedulingTimezone;
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SubscriptionPlan? subscriptionPlan;
  @override
  final String subscriptionPlanId;
  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final TrialSession? convertedFromTrial;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Subscription(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, requestStatus: $requestStatus, requestedBy: $requestedBy, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, appointments: $appointments, convertedFromTrial: $convertedFromTrial, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
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
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.convertedFromTrial, convertedFromTrial) ||
                other.convertedFromTrial == convertedFromTrial) &&
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
        schedulingPeriodStartsAt,
        schedulingPeriodEndsAt,
        schedulingTimezone,
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
        subscriptionPlan,
        subscriptionPlanId,
        const DeepCollectionEquality().hash(_appointments),
        convertedFromTrial,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      {required final String id,
      required final DateTime schedulingPeriodStartsAt,
      required final DateTime schedulingPeriodEndsAt,
      final String schedulingTimezone,
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
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SubscriptionPlan? subscriptionPlan,
      required final String subscriptionPlanId,
      required final List<Appointment> appointments,
      final TrialSession? convertedFromTrial,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get schedulingPeriodStartsAt;
  @override
  DateTime get schedulingPeriodEndsAt;
  @override
  String get schedulingTimezone;
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan;
  @override
  String get subscriptionPlanId;
  @override
  List<Appointment> get appointments;
  @override
  TrialSession? get convertedFromTrial;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSubscriptionInput _$CreateSubscriptionInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSubscriptionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSubscriptionInput {
  DateTime get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String? get schedulingTimezone => throw _privateConstructorUsedError;
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
  String get subscriptionPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreateSubscriptionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSubscriptionInputCopyWith<CreateSubscriptionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubscriptionInputCopyWith<$Res> {
  factory $CreateSubscriptionInputCopyWith(CreateSubscriptionInput value,
          $Res Function(CreateSubscriptionInput) then) =
      _$CreateSubscriptionInputCopyWithImpl<$Res, CreateSubscriptionInput>;
  @useResult
  $Res call(
      {DateTime schedulingPeriodStartsAt,
      DateTime schedulingPeriodEndsAt,
      String? schedulingTimezone,
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
      String? cancelledBy,
      String subscriptionPlanId});
}

/// @nodoc
class _$CreateSubscriptionInputCopyWithImpl<$Res,
        $Val extends CreateSubscriptionInput>
    implements $CreateSubscriptionInputCopyWith<$Res> {
  _$CreateSubscriptionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = null,
    Object? schedulingPeriodEndsAt = null,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = null,
  }) {
    return _then(_value.copyWith(
      schedulingPeriodStartsAt: null == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingPeriodEndsAt: null == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSubscriptionInputImplCopyWith<$Res>
    implements $CreateSubscriptionInputCopyWith<$Res> {
  factory _$$CreateSubscriptionInputImplCopyWith(
          _$CreateSubscriptionInputImpl value,
          $Res Function(_$CreateSubscriptionInputImpl) then) =
      __$$CreateSubscriptionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime schedulingPeriodStartsAt,
      DateTime schedulingPeriodEndsAt,
      String? schedulingTimezone,
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
      String? cancelledBy,
      String subscriptionPlanId});
}

/// @nodoc
class __$$CreateSubscriptionInputImplCopyWithImpl<$Res>
    extends _$CreateSubscriptionInputCopyWithImpl<$Res,
        _$CreateSubscriptionInputImpl>
    implements _$$CreateSubscriptionInputImplCopyWith<$Res> {
  __$$CreateSubscriptionInputImplCopyWithImpl(
      _$CreateSubscriptionInputImpl _value,
      $Res Function(_$CreateSubscriptionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = null,
    Object? schedulingPeriodEndsAt = null,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = null,
  }) {
    return _then(_$CreateSubscriptionInputImpl(
      schedulingPeriodStartsAt: null == schedulingPeriodStartsAt
          ? _value.schedulingPeriodStartsAt
          : schedulingPeriodStartsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingPeriodEndsAt: null == schedulingPeriodEndsAt
          ? _value.schedulingPeriodEndsAt
          : schedulingPeriodEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulingTimezone: freezed == schedulingTimezone
          ? _value.schedulingTimezone
          : schedulingTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSubscriptionInputImpl implements _CreateSubscriptionInput {
  const _$CreateSubscriptionInputImpl(
      {required this.schedulingPeriodStartsAt,
      required this.schedulingPeriodEndsAt,
      this.schedulingTimezone = "Asia/Kolkata",
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
      this.cancelledBy,
      required this.subscriptionPlanId});

  factory _$CreateSubscriptionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSubscriptionInputImplFromJson(json);

  @override
  final DateTime schedulingPeriodStartsAt;
  @override
  final DateTime schedulingPeriodEndsAt;
  @override
  @JsonKey()
  final String? schedulingTimezone;
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
  final String subscriptionPlanId;

  @override
  String toString() {
    return 'CreateSubscriptionInput(schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, requestStatus: $requestStatus, requestedById: $requestedById, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, subscriptionPlanId: $subscriptionPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubscriptionInputImpl &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
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
                other.cancelledBy == cancelledBy) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
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
      cancelledBy,
      subscriptionPlanId);

  /// Create a copy of CreateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubscriptionInputImplCopyWith<_$CreateSubscriptionInputImpl>
      get copyWith => __$$CreateSubscriptionInputImplCopyWithImpl<
          _$CreateSubscriptionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSubscriptionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSubscriptionInput implements CreateSubscriptionInput {
  const factory _CreateSubscriptionInput(
          {required final DateTime schedulingPeriodStartsAt,
          required final DateTime schedulingPeriodEndsAt,
          final String? schedulingTimezone,
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
          final String? cancelledBy,
          required final String subscriptionPlanId}) =
      _$CreateSubscriptionInputImpl;

  factory _CreateSubscriptionInput.fromJson(Map<String, dynamic> json) =
      _$CreateSubscriptionInputImpl.fromJson;

  @override
  DateTime get schedulingPeriodStartsAt;
  @override
  DateTime get schedulingPeriodEndsAt;
  @override
  String? get schedulingTimezone;
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
  @override
  String get subscriptionPlanId;

  /// Create a copy of CreateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubscriptionInputImplCopyWith<_$CreateSubscriptionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSubscriptionInput _$UpdateSubscriptionInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSubscriptionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSubscriptionInput {
  DateTime? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  DateTime? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  String? get schedulingTimezone => throw _privateConstructorUsedError;
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
  String? get subscriptionPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSubscriptionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSubscriptionInputCopyWith<UpdateSubscriptionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSubscriptionInputCopyWith<$Res> {
  factory $UpdateSubscriptionInputCopyWith(UpdateSubscriptionInput value,
          $Res Function(UpdateSubscriptionInput) then) =
      _$UpdateSubscriptionInputCopyWithImpl<$Res, UpdateSubscriptionInput>;
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
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
      String? cancelledBy,
      String? subscriptionPlanId});
}

/// @nodoc
class _$UpdateSubscriptionInputCopyWithImpl<$Res,
        $Val extends UpdateSubscriptionInput>
    implements $UpdateSubscriptionInputCopyWith<$Res> {
  _$UpdateSubscriptionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = freezed,
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
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSubscriptionInputImplCopyWith<$Res>
    implements $UpdateSubscriptionInputCopyWith<$Res> {
  factory _$$UpdateSubscriptionInputImplCopyWith(
          _$UpdateSubscriptionInputImpl value,
          $Res Function(_$UpdateSubscriptionInputImpl) then) =
      __$$UpdateSubscriptionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? schedulingPeriodStartsAt,
      DateTime? schedulingPeriodEndsAt,
      String? schedulingTimezone,
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
      String? cancelledBy,
      String? subscriptionPlanId});
}

/// @nodoc
class __$$UpdateSubscriptionInputImplCopyWithImpl<$Res>
    extends _$UpdateSubscriptionInputCopyWithImpl<$Res,
        _$UpdateSubscriptionInputImpl>
    implements _$$UpdateSubscriptionInputImplCopyWith<$Res> {
  __$$UpdateSubscriptionInputImplCopyWithImpl(
      _$UpdateSubscriptionInputImpl _value,
      $Res Function(_$UpdateSubscriptionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = freezed,
  }) {
    return _then(_$UpdateSubscriptionInputImpl(
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
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSubscriptionInputImpl implements _UpdateSubscriptionInput {
  const _$UpdateSubscriptionInputImpl(
      {this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
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
      this.cancelledBy,
      this.subscriptionPlanId});

  factory _$UpdateSubscriptionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSubscriptionInputImplFromJson(json);

  @override
  final DateTime? schedulingPeriodStartsAt;
  @override
  final DateTime? schedulingPeriodEndsAt;
  @override
  final String? schedulingTimezone;
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
  final String? subscriptionPlanId;

  @override
  String toString() {
    return 'UpdateSubscriptionInput(schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, requestStatus: $requestStatus, requestedById: $requestedById, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, subscriptionPlanId: $subscriptionPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubscriptionInputImpl &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
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
                other.cancelledBy == cancelledBy) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schedulingPeriodStartsAt,
      schedulingPeriodEndsAt,
      schedulingTimezone,
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
      cancelledBy,
      subscriptionPlanId);

  /// Create a copy of UpdateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubscriptionInputImplCopyWith<_$UpdateSubscriptionInputImpl>
      get copyWith => __$$UpdateSubscriptionInputImplCopyWithImpl<
          _$UpdateSubscriptionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSubscriptionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSubscriptionInput implements UpdateSubscriptionInput {
  const factory _UpdateSubscriptionInput(
      {final DateTime? schedulingPeriodStartsAt,
      final DateTime? schedulingPeriodEndsAt,
      final String? schedulingTimezone,
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
      final String? cancelledBy,
      final String? subscriptionPlanId}) = _$UpdateSubscriptionInputImpl;

  factory _UpdateSubscriptionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSubscriptionInputImpl.fromJson;

  @override
  DateTime? get schedulingPeriodStartsAt;
  @override
  DateTime? get schedulingPeriodEndsAt;
  @override
  String? get schedulingTimezone;
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
  @override
  String? get subscriptionPlanId;

  /// Create a copy of UpdateSubscriptionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubscriptionInputImplCopyWith<_$UpdateSubscriptionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionWhereUniqueInput _$SubscriptionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionWhereUniqueInputCopyWith<SubscriptionWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionWhereUniqueInputCopyWith<$Res> {
  factory $SubscriptionWhereUniqueInputCopyWith(
          SubscriptionWhereUniqueInput value,
          $Res Function(SubscriptionWhereUniqueInput) then) =
      _$SubscriptionWhereUniqueInputCopyWithImpl<$Res,
          SubscriptionWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SubscriptionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SubscriptionWhereUniqueInput>
    implements $SubscriptionWhereUniqueInputCopyWith<$Res> {
  _$SubscriptionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionWhereUniqueInput
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
abstract class _$$SubscriptionWhereUniqueInputImplCopyWith<$Res>
    implements $SubscriptionWhereUniqueInputCopyWith<$Res> {
  factory _$$SubscriptionWhereUniqueInputImplCopyWith(
          _$SubscriptionWhereUniqueInputImpl value,
          $Res Function(_$SubscriptionWhereUniqueInputImpl) then) =
      __$$SubscriptionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SubscriptionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SubscriptionWhereUniqueInputCopyWithImpl<$Res,
        _$SubscriptionWhereUniqueInputImpl>
    implements _$$SubscriptionWhereUniqueInputImplCopyWith<$Res> {
  __$$SubscriptionWhereUniqueInputImplCopyWithImpl(
      _$SubscriptionWhereUniqueInputImpl _value,
      $Res Function(_$SubscriptionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SubscriptionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionWhereUniqueInputImpl
    implements _SubscriptionWhereUniqueInput {
  const _$SubscriptionWhereUniqueInputImpl({this.id});

  factory _$SubscriptionWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SubscriptionWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubscriptionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionWhereUniqueInputImplCopyWith<
          _$SubscriptionWhereUniqueInputImpl>
      get copyWith => __$$SubscriptionWhereUniqueInputImplCopyWithImpl<
          _$SubscriptionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionWhereUniqueInput
    implements SubscriptionWhereUniqueInput {
  const factory _SubscriptionWhereUniqueInput({final String? id}) =
      _$SubscriptionWhereUniqueInputImpl;

  factory _SubscriptionWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SubscriptionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionWhereUniqueInputImplCopyWith<
          _$SubscriptionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionWhereInput _$SubscriptionWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  DateTimeFilter? get schedulingPeriodStartsAt =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get schedulingPeriodEndsAt =>
      throw _privateConstructorUsedError;
  StringFilter? get schedulingTimezone => throw _privateConstructorUsedError;
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

  /// Filter by subscriptionPlan relation
  SubscriptionPlanRelationFilter? get subscriptionPlan =>
      throw _privateConstructorUsedError;
  StringFilter? get subscriptionPlanId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SubscriptionWhereInput>? get AND => throw _privateConstructorUsedError;
  List<SubscriptionWhereInput>? get OR => throw _privateConstructorUsedError;
  SubscriptionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionWhereInputCopyWith<SubscriptionWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionWhereInputCopyWith<$Res> {
  factory $SubscriptionWhereInputCopyWith(SubscriptionWhereInput value,
          $Res Function(SubscriptionWhereInput) then) =
      _$SubscriptionWhereInputCopyWithImpl<$Res, SubscriptionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? schedulingPeriodStartsAt,
      DateTimeFilter? schedulingPeriodEndsAt,
      StringFilter? schedulingTimezone,
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
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionWhereInput>? AND,
      List<SubscriptionWhereInput>? OR,
      SubscriptionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodStartsAt;
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodEndsAt;
  $StringFilterCopyWith<$Res>? get schedulingTimezone;
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
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SubscriptionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SubscriptionWhereInputCopyWithImpl<$Res,
        $Val extends SubscriptionWhereInput>
    implements $SubscriptionWhereInputCopyWith<$Res> {
  _$SubscriptionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
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
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
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

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionWhereInputImplCopyWith<$Res>
    implements $SubscriptionWhereInputCopyWith<$Res> {
  factory _$$SubscriptionWhereInputImplCopyWith(
          _$SubscriptionWhereInputImpl value,
          $Res Function(_$SubscriptionWhereInputImpl) then) =
      __$$SubscriptionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? schedulingPeriodStartsAt,
      DateTimeFilter? schedulingPeriodEndsAt,
      StringFilter? schedulingTimezone,
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
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionWhereInput>? AND,
      List<SubscriptionWhereInput>? OR,
      SubscriptionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodStartsAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get schedulingPeriodEndsAt;
  @override
  $StringFilterCopyWith<$Res>? get schedulingTimezone;
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
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SubscriptionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SubscriptionWhereInputImplCopyWithImpl<$Res>
    extends _$SubscriptionWhereInputCopyWithImpl<$Res,
        _$SubscriptionWhereInputImpl>
    implements _$$SubscriptionWhereInputImplCopyWith<$Res> {
  __$$SubscriptionWhereInputImplCopyWithImpl(
      _$SubscriptionWhereInputImpl _value,
      $Res Function(_$SubscriptionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SubscriptionWhereInputImpl(
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
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubscriptionWhereInputImpl implements _SubscriptionWhereInput {
  const _$SubscriptionWhereInputImpl(
      {this.id,
      this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
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
      this.subscriptionPlan,
      this.subscriptionPlanId,
      this.createdAt,
      this.updatedAt,
      final List<SubscriptionWhereInput>? AND,
      final List<SubscriptionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SubscriptionWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final DateTimeFilter? schedulingPeriodStartsAt;
  @override
  final DateTimeFilter? schedulingPeriodEndsAt;
  @override
  final StringFilter? schedulingTimezone;
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

  /// Filter by subscriptionPlan relation
  @override
  final SubscriptionPlanRelationFilter? subscriptionPlan;
  @override
  final StringFilter? subscriptionPlanId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SubscriptionWhereInput>? _AND;
  @override
  List<SubscriptionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionWhereInput>? _OR;
  @override
  List<SubscriptionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubscriptionWhereInput? NOT;

  @override
  String toString() {
    return 'SubscriptionWhereInput(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, requestStatus: $requestStatus, requestedBy: $requestedBy, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, bookingSource: $bookingSource, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationReason: $cancellationReason, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
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
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
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
        schedulingPeriodStartsAt,
        schedulingPeriodEndsAt,
        schedulingTimezone,
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
        subscriptionPlan,
        subscriptionPlanId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionWhereInputImplCopyWith<_$SubscriptionWhereInputImpl>
      get copyWith => __$$SubscriptionWhereInputImplCopyWithImpl<
          _$SubscriptionWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionWhereInput implements SubscriptionWhereInput {
  const factory _SubscriptionWhereInput(
      {final StringFilter? id,
      final DateTimeFilter? schedulingPeriodStartsAt,
      final DateTimeFilter? schedulingPeriodEndsAt,
      final StringFilter? schedulingTimezone,
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
      final SubscriptionPlanRelationFilter? subscriptionPlan,
      final StringFilter? subscriptionPlanId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<SubscriptionWhereInput>? AND,
      final List<SubscriptionWhereInput>? OR,
      final SubscriptionWhereInput? NOT}) = _$SubscriptionWhereInputImpl;

  factory _SubscriptionWhereInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  DateTimeFilter? get schedulingPeriodStartsAt;
  @override
  DateTimeFilter? get schedulingPeriodEndsAt;
  @override
  StringFilter? get schedulingTimezone;
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

  /// Filter by subscriptionPlan relation
  @override
  SubscriptionPlanRelationFilter? get subscriptionPlan;
  @override
  StringFilter? get subscriptionPlanId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SubscriptionWhereInput>? get AND;
  @override
  List<SubscriptionWhereInput>? get OR;
  @override
  SubscriptionWhereInput? get NOT;

  /// Create a copy of SubscriptionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionWhereInputImplCopyWith<_$SubscriptionWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionListRelationFilter _$SubscriptionListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionListRelationFilter {
  /// At least one related record matches
  SubscriptionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SubscriptionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SubscriptionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionListRelationFilterCopyWith<SubscriptionListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionListRelationFilterCopyWith<$Res> {
  factory $SubscriptionListRelationFilterCopyWith(
          SubscriptionListRelationFilter value,
          $Res Function(SubscriptionListRelationFilter) then) =
      _$SubscriptionListRelationFilterCopyWithImpl<$Res,
          SubscriptionListRelationFilter>;
  @useResult
  $Res call(
      {SubscriptionWhereInput? some,
      SubscriptionWhereInput? every,
      SubscriptionWhereInput? none});

  $SubscriptionWhereInputCopyWith<$Res>? get some;
  $SubscriptionWhereInputCopyWith<$Res>? get every;
  $SubscriptionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SubscriptionListRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionListRelationFilter>
    implements $SubscriptionListRelationFilterCopyWith<$Res> {
  _$SubscriptionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionListRelationFilter
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
              as SubscriptionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionListRelationFilterImplCopyWith<$Res>
    implements $SubscriptionListRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionListRelationFilterImplCopyWith(
          _$SubscriptionListRelationFilterImpl value,
          $Res Function(_$SubscriptionListRelationFilterImpl) then) =
      __$$SubscriptionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubscriptionWhereInput? some,
      SubscriptionWhereInput? every,
      SubscriptionWhereInput? none});

  @override
  $SubscriptionWhereInputCopyWith<$Res>? get some;
  @override
  $SubscriptionWhereInputCopyWith<$Res>? get every;
  @override
  $SubscriptionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SubscriptionListRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionListRelationFilterCopyWithImpl<$Res,
        _$SubscriptionListRelationFilterImpl>
    implements _$$SubscriptionListRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionListRelationFilterImplCopyWithImpl(
      _$SubscriptionListRelationFilterImpl _value,
      $Res Function(_$SubscriptionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SubscriptionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionListRelationFilterImpl
    implements _SubscriptionListRelationFilter {
  const _$SubscriptionListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SubscriptionListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SubscriptionWhereInput? some;

  /// All related records match
  @override
  final SubscriptionWhereInput? every;

  /// No related records match
  @override
  final SubscriptionWhereInput? none;

  @override
  String toString() {
    return 'SubscriptionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionListRelationFilterImplCopyWith<
          _$SubscriptionListRelationFilterImpl>
      get copyWith => __$$SubscriptionListRelationFilterImplCopyWithImpl<
          _$SubscriptionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionListRelationFilter
    implements SubscriptionListRelationFilter {
  const factory _SubscriptionListRelationFilter(
          {final SubscriptionWhereInput? some,
          final SubscriptionWhereInput? every,
          final SubscriptionWhereInput? none}) =
      _$SubscriptionListRelationFilterImpl;

  factory _SubscriptionListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SubscriptionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SubscriptionWhereInput? get some;

  /// All related records match
  @override
  SubscriptionWhereInput? get every;

  /// No related records match
  @override
  SubscriptionWhereInput? get none;

  /// Create a copy of SubscriptionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionListRelationFilterImplCopyWith<
          _$SubscriptionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionRelationFilter _$SubscriptionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SubscriptionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SubscriptionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionRelationFilterCopyWith<SubscriptionRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionRelationFilterCopyWith<$Res> {
  factory $SubscriptionRelationFilterCopyWith(SubscriptionRelationFilter value,
          $Res Function(SubscriptionRelationFilter) then) =
      _$SubscriptionRelationFilterCopyWithImpl<$Res,
          SubscriptionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionWhereInput? is_,
      SubscriptionWhereInput? isNot});

  $SubscriptionWhereInputCopyWith<$Res>? get is_;
  $SubscriptionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SubscriptionRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionRelationFilter>
    implements $SubscriptionRelationFilterCopyWith<$Res> {
  _$SubscriptionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionRelationFilter
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
              as SubscriptionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SubscriptionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionRelationFilterImplCopyWith<$Res>
    implements $SubscriptionRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionRelationFilterImplCopyWith(
          _$SubscriptionRelationFilterImpl value,
          $Res Function(_$SubscriptionRelationFilterImpl) then) =
      __$$SubscriptionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionWhereInput? is_,
      SubscriptionWhereInput? isNot});

  @override
  $SubscriptionWhereInputCopyWith<$Res>? get is_;
  @override
  $SubscriptionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SubscriptionRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionRelationFilterCopyWithImpl<$Res,
        _$SubscriptionRelationFilterImpl>
    implements _$$SubscriptionRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionRelationFilterImplCopyWithImpl(
      _$SubscriptionRelationFilterImpl _value,
      $Res Function(_$SubscriptionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SubscriptionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionRelationFilterImpl implements _SubscriptionRelationFilter {
  const _$SubscriptionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SubscriptionRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SubscriptionWhereInput? is_;

  /// Related record does not match
  @override
  final SubscriptionWhereInput? isNot;

  @override
  String toString() {
    return 'SubscriptionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionRelationFilterImplCopyWith<_$SubscriptionRelationFilterImpl>
      get copyWith => __$$SubscriptionRelationFilterImplCopyWithImpl<
          _$SubscriptionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionRelationFilter
    implements SubscriptionRelationFilter {
  const factory _SubscriptionRelationFilter(
      {@JsonKey(name: 'is') final SubscriptionWhereInput? is_,
      final SubscriptionWhereInput? isNot}) = _$SubscriptionRelationFilterImpl;

  factory _SubscriptionRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SubscriptionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SubscriptionWhereInput? get is_;

  /// Related record does not match
  @override
  SubscriptionWhereInput? get isNot;

  /// Create a copy of SubscriptionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionRelationFilterImplCopyWith<_$SubscriptionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionOrderByInput _$SubscriptionOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get schedulingPeriodStartsAt => throw _privateConstructorUsedError;
  SortOrder? get schedulingPeriodEndsAt => throw _privateConstructorUsedError;
  SortOrder? get schedulingTimezone => throw _privateConstructorUsedError;
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
  SortOrder? get subscriptionPlanId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionOrderByInputCopyWith<SubscriptionOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionOrderByInputCopyWith<$Res> {
  factory $SubscriptionOrderByInputCopyWith(SubscriptionOrderByInput value,
          $Res Function(SubscriptionOrderByInput) then) =
      _$SubscriptionOrderByInputCopyWithImpl<$Res, SubscriptionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? schedulingPeriodStartsAt,
      SortOrder? schedulingPeriodEndsAt,
      SortOrder? schedulingTimezone,
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
      SortOrder? subscriptionPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SubscriptionOrderByInputCopyWithImpl<$Res,
        $Val extends SubscriptionOrderByInput>
    implements $SubscriptionOrderByInputCopyWith<$Res> {
  _$SubscriptionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = freezed,
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
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubscriptionOrderByInputImplCopyWith<$Res>
    implements $SubscriptionOrderByInputCopyWith<$Res> {
  factory _$$SubscriptionOrderByInputImplCopyWith(
          _$SubscriptionOrderByInputImpl value,
          $Res Function(_$SubscriptionOrderByInputImpl) then) =
      __$$SubscriptionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? schedulingPeriodStartsAt,
      SortOrder? schedulingPeriodEndsAt,
      SortOrder? schedulingTimezone,
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
      SortOrder? subscriptionPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SubscriptionOrderByInputImplCopyWithImpl<$Res>
    extends _$SubscriptionOrderByInputCopyWithImpl<$Res,
        _$SubscriptionOrderByInputImpl>
    implements _$$SubscriptionOrderByInputImplCopyWith<$Res> {
  __$$SubscriptionOrderByInputImplCopyWithImpl(
      _$SubscriptionOrderByInputImpl _value,
      $Res Function(_$SubscriptionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schedulingPeriodStartsAt = freezed,
    Object? schedulingPeriodEndsAt = freezed,
    Object? schedulingTimezone = freezed,
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
    Object? subscriptionPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubscriptionOrderByInputImpl(
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
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
class _$SubscriptionOrderByInputImpl implements _SubscriptionOrderByInput {
  const _$SubscriptionOrderByInputImpl(
      {this.id,
      this.schedulingPeriodStartsAt,
      this.schedulingPeriodEndsAt,
      this.schedulingTimezone,
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
      this.subscriptionPlanId,
      this.createdAt,
      this.updatedAt});

  factory _$SubscriptionOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? schedulingPeriodStartsAt;
  @override
  final SortOrder? schedulingPeriodEndsAt;
  @override
  final SortOrder? schedulingTimezone;
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
  final SortOrder? subscriptionPlanId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SubscriptionOrderByInput(id: $id, schedulingPeriodStartsAt: $schedulingPeriodStartsAt, schedulingPeriodEndsAt: $schedulingPeriodEndsAt, schedulingTimezone: $schedulingTimezone, requestedById: $requestedById, requestedAt: $requestedAt, requestNotes: $requestNotes, pendingPaymentUrl: $pendingPaymentUrl, feedbackFromConsultee: $feedbackFromConsultee, feedbackFromConsultant: $feedbackFromConsultant, rating: $rating, cancellationNotes: $cancellationNotes, cancelledAt: $cancelledAt, cancelledBy: $cancelledBy, subscriptionPlanId: $subscriptionPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.schedulingPeriodStartsAt, schedulingPeriodStartsAt) ||
                other.schedulingPeriodStartsAt == schedulingPeriodStartsAt) &&
            (identical(other.schedulingPeriodEndsAt, schedulingPeriodEndsAt) ||
                other.schedulingPeriodEndsAt == schedulingPeriodEndsAt) &&
            (identical(other.schedulingTimezone, schedulingTimezone) ||
                other.schedulingTimezone == schedulingTimezone) &&
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
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
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
      subscriptionPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of SubscriptionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionOrderByInputImplCopyWith<_$SubscriptionOrderByInputImpl>
      get copyWith => __$$SubscriptionOrderByInputImplCopyWithImpl<
          _$SubscriptionOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionOrderByInput implements SubscriptionOrderByInput {
  const factory _SubscriptionOrderByInput(
      {final SortOrder? id,
      final SortOrder? schedulingPeriodStartsAt,
      final SortOrder? schedulingPeriodEndsAt,
      final SortOrder? schedulingTimezone,
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
      final SortOrder? subscriptionPlanId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SubscriptionOrderByInputImpl;

  factory _SubscriptionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get schedulingPeriodStartsAt;
  @override
  SortOrder? get schedulingPeriodEndsAt;
  @override
  SortOrder? get schedulingTimezone;
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
  SortOrder? get subscriptionPlanId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SubscriptionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionOrderByInputImplCopyWith<_$SubscriptionOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
