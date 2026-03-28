// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultee_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsulteeProfile _$ConsulteeProfileFromJson(Map<String, dynamic> json) {
  return _ConsulteeProfile.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfile {
  String get id => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  String? get preferredLanguage => throw _privateConstructorUsedError;
  String? get goals => throw _privateConstructorUsedError;
  CareerStage? get careerStage => throw _privateConstructorUsedError;
  List<String>? get skillsToDevelop => throw _privateConstructorUsedError;
  BudgetPreference? get budgetPreference => throw _privateConstructorUsedError;
  List<Consultation> get consultationRequests =>
      throw _privateConstructorUsedError;
  List<Subscription> get subscriptionRequests =>
      throw _privateConstructorUsedError;
  List<ConsultantReview> get consultantReviews =>
      throw _privateConstructorUsedError;
  List<TrialSession> get trialSessions => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileCopyWith<ConsulteeProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileCopyWith<$Res> {
  factory $ConsulteeProfileCopyWith(
          ConsulteeProfile value, $Res Function(ConsulteeProfile) then) =
      _$ConsulteeProfileCopyWithImpl<$Res, ConsulteeProfile>;
  @useResult
  $Res call(
      {String id,
      String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      List<Consultation> consultationRequests,
      List<Subscription> subscriptionRequests,
      List<ConsultantReview> consultantReviews,
      List<TrialSession> trialSessions,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ConsulteeProfileCopyWithImpl<$Res, $Val extends ConsulteeProfile>
    implements $ConsulteeProfileCopyWith<$Res> {
  _$ConsulteeProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? consultationRequests = null,
    Object? subscriptionRequests = null,
    Object? consultantReviews = null,
    Object? trialSessions = null,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      consultationRequests: null == consultationRequests
          ? _value.consultationRequests
          : consultationRequests // ignore: cast_nullable_to_non_nullable
              as List<Consultation>,
      subscriptionRequests: null == subscriptionRequests
          ? _value.subscriptionRequests
          : subscriptionRequests // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
      consultantReviews: null == consultantReviews
          ? _value.consultantReviews
          : consultantReviews // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReview>,
      trialSessions: null == trialSessions
          ? _value.trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsulteeProfileImplCopyWith<$Res>
    implements $ConsulteeProfileCopyWith<$Res> {
  factory _$$ConsulteeProfileImplCopyWith(_$ConsulteeProfileImpl value,
          $Res Function(_$ConsulteeProfileImpl) then) =
      __$$ConsulteeProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      List<Consultation> consultationRequests,
      List<Subscription> subscriptionRequests,
      List<ConsultantReview> consultantReviews,
      List<TrialSession> trialSessions,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ConsulteeProfileImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileCopyWithImpl<$Res, _$ConsulteeProfileImpl>
    implements _$$ConsulteeProfileImplCopyWith<$Res> {
  __$$ConsulteeProfileImplCopyWithImpl(_$ConsulteeProfileImpl _value,
      $Res Function(_$ConsulteeProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? consultationRequests = null,
    Object? subscriptionRequests = null,
    Object? consultantReviews = null,
    Object? trialSessions = null,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsulteeProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value._skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      consultationRequests: null == consultationRequests
          ? _value._consultationRequests
          : consultationRequests // ignore: cast_nullable_to_non_nullable
              as List<Consultation>,
      subscriptionRequests: null == subscriptionRequests
          ? _value._subscriptionRequests
          : subscriptionRequests // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
      consultantReviews: null == consultantReviews
          ? _value._consultantReviews
          : consultantReviews // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReview>,
      trialSessions: null == trialSessions
          ? _value._trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ConsulteeProfileImpl implements _ConsulteeProfile {
  const _$ConsulteeProfileImpl(
      {required this.id,
      this.aboutMe,
      this.preferredLanguage,
      this.goals,
      this.careerStage,
      final List<String>? skillsToDevelop = const <String>[],
      this.budgetPreference,
      required final List<Consultation> consultationRequests,
      required final List<Subscription> subscriptionRequests,
      required final List<ConsultantReview> consultantReviews,
      required final List<TrialSession> trialSessions,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt})
      : _skillsToDevelop = skillsToDevelop,
        _consultationRequests = consultationRequests,
        _subscriptionRequests = subscriptionRequests,
        _consultantReviews = consultantReviews,
        _trialSessions = trialSessions;

  factory _$ConsulteeProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsulteeProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String? aboutMe;
  @override
  final String? preferredLanguage;
  @override
  final String? goals;
  @override
  final CareerStage? careerStage;
  final List<String>? _skillsToDevelop;
  @override
  @JsonKey()
  List<String>? get skillsToDevelop {
    final value = _skillsToDevelop;
    if (value == null) return null;
    if (_skillsToDevelop is EqualUnmodifiableListView) return _skillsToDevelop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BudgetPreference? budgetPreference;
  final List<Consultation> _consultationRequests;
  @override
  List<Consultation> get consultationRequests {
    if (_consultationRequests is EqualUnmodifiableListView)
      return _consultationRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultationRequests);
  }

  final List<Subscription> _subscriptionRequests;
  @override
  List<Subscription> get subscriptionRequests {
    if (_subscriptionRequests is EqualUnmodifiableListView)
      return _subscriptionRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptionRequests);
  }

  final List<ConsultantReview> _consultantReviews;
  @override
  List<ConsultantReview> get consultantReviews {
    if (_consultantReviews is EqualUnmodifiableListView)
      return _consultantReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultantReviews);
  }

  final List<TrialSession> _trialSessions;
  @override
  List<TrialSession> get trialSessions {
    if (_trialSessions is EqualUnmodifiableListView) return _trialSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trialSessions);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsulteeProfile(id: $id, aboutMe: $aboutMe, preferredLanguage: $preferredLanguage, goals: $goals, careerStage: $careerStage, skillsToDevelop: $skillsToDevelop, budgetPreference: $budgetPreference, consultationRequests: $consultationRequests, subscriptionRequests: $subscriptionRequests, consultantReviews: $consultantReviews, trialSessions: $trialSessions, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.careerStage, careerStage) ||
                other.careerStage == careerStage) &&
            const DeepCollectionEquality()
                .equals(other._skillsToDevelop, _skillsToDevelop) &&
            (identical(other.budgetPreference, budgetPreference) ||
                other.budgetPreference == budgetPreference) &&
            const DeepCollectionEquality()
                .equals(other._consultationRequests, _consultationRequests) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionRequests, _subscriptionRequests) &&
            const DeepCollectionEquality()
                .equals(other._consultantReviews, _consultantReviews) &&
            const DeepCollectionEquality()
                .equals(other._trialSessions, _trialSessions) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      aboutMe,
      preferredLanguage,
      goals,
      careerStage,
      const DeepCollectionEquality().hash(_skillsToDevelop),
      budgetPreference,
      const DeepCollectionEquality().hash(_consultationRequests),
      const DeepCollectionEquality().hash(_subscriptionRequests),
      const DeepCollectionEquality().hash(_consultantReviews),
      const DeepCollectionEquality().hash(_trialSessions),
      user,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileImplCopyWith<_$ConsulteeProfileImpl> get copyWith =>
      __$$ConsulteeProfileImplCopyWithImpl<_$ConsulteeProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfile implements ConsulteeProfile {
  const factory _ConsulteeProfile(
      {required final String id,
      final String? aboutMe,
      final String? preferredLanguage,
      final String? goals,
      final CareerStage? careerStage,
      final List<String>? skillsToDevelop,
      final BudgetPreference? budgetPreference,
      required final List<Consultation> consultationRequests,
      required final List<Subscription> subscriptionRequests,
      required final List<ConsultantReview> consultantReviews,
      required final List<TrialSession> trialSessions,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsulteeProfileImpl;

  factory _ConsulteeProfile.fromJson(Map<String, dynamic> json) =
      _$ConsulteeProfileImpl.fromJson;

  @override
  String get id;
  @override
  String? get aboutMe;
  @override
  String? get preferredLanguage;
  @override
  String? get goals;
  @override
  CareerStage? get careerStage;
  @override
  List<String>? get skillsToDevelop;
  @override
  BudgetPreference? get budgetPreference;
  @override
  List<Consultation> get consultationRequests;
  @override
  List<Subscription> get subscriptionRequests;
  @override
  List<ConsultantReview> get consultantReviews;
  @override
  List<TrialSession> get trialSessions;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsulteeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileImplCopyWith<_$ConsulteeProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsulteeProfileInput _$CreateConsulteeProfileInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsulteeProfileInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsulteeProfileInput {
  String? get aboutMe => throw _privateConstructorUsedError;
  String? get preferredLanguage => throw _privateConstructorUsedError;
  String? get goals => throw _privateConstructorUsedError;
  CareerStage? get careerStage => throw _privateConstructorUsedError;
  List<String>? get skillsToDevelop => throw _privateConstructorUsedError;
  BudgetPreference? get budgetPreference => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateConsulteeProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsulteeProfileInputCopyWith<CreateConsulteeProfileInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsulteeProfileInputCopyWith<$Res> {
  factory $CreateConsulteeProfileInputCopyWith(
          CreateConsulteeProfileInput value,
          $Res Function(CreateConsulteeProfileInput) then) =
      _$CreateConsulteeProfileInputCopyWithImpl<$Res,
          CreateConsulteeProfileInput>;
  @useResult
  $Res call(
      {String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      String userId});
}

/// @nodoc
class _$CreateConsulteeProfileInputCopyWithImpl<$Res,
        $Val extends CreateConsulteeProfileInput>
    implements $CreateConsulteeProfileInputCopyWith<$Res> {
  _$CreateConsulteeProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsulteeProfileInputImplCopyWith<$Res>
    implements $CreateConsulteeProfileInputCopyWith<$Res> {
  factory _$$CreateConsulteeProfileInputImplCopyWith(
          _$CreateConsulteeProfileInputImpl value,
          $Res Function(_$CreateConsulteeProfileInputImpl) then) =
      __$$CreateConsulteeProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      String userId});
}

/// @nodoc
class __$$CreateConsulteeProfileInputImplCopyWithImpl<$Res>
    extends _$CreateConsulteeProfileInputCopyWithImpl<$Res,
        _$CreateConsulteeProfileInputImpl>
    implements _$$CreateConsulteeProfileInputImplCopyWith<$Res> {
  __$$CreateConsulteeProfileInputImplCopyWithImpl(
      _$CreateConsulteeProfileInputImpl _value,
      $Res Function(_$CreateConsulteeProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateConsulteeProfileInputImpl(
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value._skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsulteeProfileInputImpl
    implements _CreateConsulteeProfileInput {
  const _$CreateConsulteeProfileInputImpl(
      {this.aboutMe,
      this.preferredLanguage,
      this.goals,
      this.careerStage,
      final List<String>? skillsToDevelop = const <String>[],
      this.budgetPreference,
      required this.userId})
      : _skillsToDevelop = skillsToDevelop;

  factory _$CreateConsulteeProfileInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsulteeProfileInputImplFromJson(json);

  @override
  final String? aboutMe;
  @override
  final String? preferredLanguage;
  @override
  final String? goals;
  @override
  final CareerStage? careerStage;
  final List<String>? _skillsToDevelop;
  @override
  @JsonKey()
  List<String>? get skillsToDevelop {
    final value = _skillsToDevelop;
    if (value == null) return null;
    if (_skillsToDevelop is EqualUnmodifiableListView) return _skillsToDevelop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BudgetPreference? budgetPreference;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateConsulteeProfileInput(aboutMe: $aboutMe, preferredLanguage: $preferredLanguage, goals: $goals, careerStage: $careerStage, skillsToDevelop: $skillsToDevelop, budgetPreference: $budgetPreference, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsulteeProfileInputImpl &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.careerStage, careerStage) ||
                other.careerStage == careerStage) &&
            const DeepCollectionEquality()
                .equals(other._skillsToDevelop, _skillsToDevelop) &&
            (identical(other.budgetPreference, budgetPreference) ||
                other.budgetPreference == budgetPreference) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutMe,
      preferredLanguage,
      goals,
      careerStage,
      const DeepCollectionEquality().hash(_skillsToDevelop),
      budgetPreference,
      userId);

  /// Create a copy of CreateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsulteeProfileInputImplCopyWith<_$CreateConsulteeProfileInputImpl>
      get copyWith => __$$CreateConsulteeProfileInputImplCopyWithImpl<
          _$CreateConsulteeProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsulteeProfileInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsulteeProfileInput
    implements CreateConsulteeProfileInput {
  const factory _CreateConsulteeProfileInput(
      {final String? aboutMe,
      final String? preferredLanguage,
      final String? goals,
      final CareerStage? careerStage,
      final List<String>? skillsToDevelop,
      final BudgetPreference? budgetPreference,
      required final String userId}) = _$CreateConsulteeProfileInputImpl;

  factory _CreateConsulteeProfileInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsulteeProfileInputImpl.fromJson;

  @override
  String? get aboutMe;
  @override
  String? get preferredLanguage;
  @override
  String? get goals;
  @override
  CareerStage? get careerStage;
  @override
  List<String>? get skillsToDevelop;
  @override
  BudgetPreference? get budgetPreference;
  @override
  String get userId;

  /// Create a copy of CreateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsulteeProfileInputImplCopyWith<_$CreateConsulteeProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsulteeProfileInput _$UpdateConsulteeProfileInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsulteeProfileInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsulteeProfileInput {
  String? get aboutMe => throw _privateConstructorUsedError;
  String? get preferredLanguage => throw _privateConstructorUsedError;
  String? get goals => throw _privateConstructorUsedError;
  CareerStage? get careerStage => throw _privateConstructorUsedError;
  List<String>? get skillsToDevelop => throw _privateConstructorUsedError;
  BudgetPreference? get budgetPreference => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsulteeProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsulteeProfileInputCopyWith<UpdateConsulteeProfileInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsulteeProfileInputCopyWith<$Res> {
  factory $UpdateConsulteeProfileInputCopyWith(
          UpdateConsulteeProfileInput value,
          $Res Function(UpdateConsulteeProfileInput) then) =
      _$UpdateConsulteeProfileInputCopyWithImpl<$Res,
          UpdateConsulteeProfileInput>;
  @useResult
  $Res call(
      {String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      String? userId});
}

/// @nodoc
class _$UpdateConsulteeProfileInputCopyWithImpl<$Res,
        $Val extends UpdateConsulteeProfileInput>
    implements $UpdateConsulteeProfileInputCopyWith<$Res> {
  _$UpdateConsulteeProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsulteeProfileInputImplCopyWith<$Res>
    implements $UpdateConsulteeProfileInputCopyWith<$Res> {
  factory _$$UpdateConsulteeProfileInputImplCopyWith(
          _$UpdateConsulteeProfileInputImpl value,
          $Res Function(_$UpdateConsulteeProfileInputImpl) then) =
      __$$UpdateConsulteeProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? aboutMe,
      String? preferredLanguage,
      String? goals,
      CareerStage? careerStage,
      List<String>? skillsToDevelop,
      BudgetPreference? budgetPreference,
      String? userId});
}

/// @nodoc
class __$$UpdateConsulteeProfileInputImplCopyWithImpl<$Res>
    extends _$UpdateConsulteeProfileInputCopyWithImpl<$Res,
        _$UpdateConsulteeProfileInputImpl>
    implements _$$UpdateConsulteeProfileInputImplCopyWith<$Res> {
  __$$UpdateConsulteeProfileInputImplCopyWithImpl(
      _$UpdateConsulteeProfileInputImpl _value,
      $Res Function(_$UpdateConsulteeProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateConsulteeProfileInputImpl(
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as String?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value._skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsulteeProfileInputImpl
    implements _UpdateConsulteeProfileInput {
  const _$UpdateConsulteeProfileInputImpl(
      {this.aboutMe,
      this.preferredLanguage,
      this.goals,
      this.careerStage,
      final List<String>? skillsToDevelop,
      this.budgetPreference,
      this.userId})
      : _skillsToDevelop = skillsToDevelop;

  factory _$UpdateConsulteeProfileInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsulteeProfileInputImplFromJson(json);

  @override
  final String? aboutMe;
  @override
  final String? preferredLanguage;
  @override
  final String? goals;
  @override
  final CareerStage? careerStage;
  final List<String>? _skillsToDevelop;
  @override
  List<String>? get skillsToDevelop {
    final value = _skillsToDevelop;
    if (value == null) return null;
    if (_skillsToDevelop is EqualUnmodifiableListView) return _skillsToDevelop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BudgetPreference? budgetPreference;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateConsulteeProfileInput(aboutMe: $aboutMe, preferredLanguage: $preferredLanguage, goals: $goals, careerStage: $careerStage, skillsToDevelop: $skillsToDevelop, budgetPreference: $budgetPreference, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsulteeProfileInputImpl &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.careerStage, careerStage) ||
                other.careerStage == careerStage) &&
            const DeepCollectionEquality()
                .equals(other._skillsToDevelop, _skillsToDevelop) &&
            (identical(other.budgetPreference, budgetPreference) ||
                other.budgetPreference == budgetPreference) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutMe,
      preferredLanguage,
      goals,
      careerStage,
      const DeepCollectionEquality().hash(_skillsToDevelop),
      budgetPreference,
      userId);

  /// Create a copy of UpdateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsulteeProfileInputImplCopyWith<_$UpdateConsulteeProfileInputImpl>
      get copyWith => __$$UpdateConsulteeProfileInputImplCopyWithImpl<
          _$UpdateConsulteeProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsulteeProfileInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsulteeProfileInput
    implements UpdateConsulteeProfileInput {
  const factory _UpdateConsulteeProfileInput(
      {final String? aboutMe,
      final String? preferredLanguage,
      final String? goals,
      final CareerStage? careerStage,
      final List<String>? skillsToDevelop,
      final BudgetPreference? budgetPreference,
      final String? userId}) = _$UpdateConsulteeProfileInputImpl;

  factory _UpdateConsulteeProfileInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsulteeProfileInputImpl.fromJson;

  @override
  String? get aboutMe;
  @override
  String? get preferredLanguage;
  @override
  String? get goals;
  @override
  CareerStage? get careerStage;
  @override
  List<String>? get skillsToDevelop;
  @override
  BudgetPreference? get budgetPreference;
  @override
  String? get userId;

  /// Create a copy of UpdateConsulteeProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsulteeProfileInputImplCopyWith<_$UpdateConsulteeProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsulteeProfileWhereUniqueInput _$ConsulteeProfileWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsulteeProfileWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfileWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfileWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileWhereUniqueInputCopyWith<ConsulteeProfileWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileWhereUniqueInputCopyWith<$Res> {
  factory $ConsulteeProfileWhereUniqueInputCopyWith(
          ConsulteeProfileWhereUniqueInput value,
          $Res Function(ConsulteeProfileWhereUniqueInput) then) =
      _$ConsulteeProfileWhereUniqueInputCopyWithImpl<$Res,
          ConsulteeProfileWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$ConsulteeProfileWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsulteeProfileWhereUniqueInput>
    implements $ConsulteeProfileWhereUniqueInputCopyWith<$Res> {
  _$ConsulteeProfileWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsulteeProfileWhereUniqueInputImplCopyWith<$Res>
    implements $ConsulteeProfileWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsulteeProfileWhereUniqueInputImplCopyWith(
          _$ConsulteeProfileWhereUniqueInputImpl value,
          $Res Function(_$ConsulteeProfileWhereUniqueInputImpl) then) =
      __$$ConsulteeProfileWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class __$$ConsulteeProfileWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileWhereUniqueInputCopyWithImpl<$Res,
        _$ConsulteeProfileWhereUniqueInputImpl>
    implements _$$ConsulteeProfileWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsulteeProfileWhereUniqueInputImplCopyWithImpl(
      _$ConsulteeProfileWhereUniqueInputImpl _value,
      $Res Function(_$ConsulteeProfileWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ConsulteeProfileWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsulteeProfileWhereUniqueInputImpl
    implements _ConsulteeProfileWhereUniqueInput {
  const _$ConsulteeProfileWhereUniqueInputImpl({this.id, this.userId});

  factory _$ConsulteeProfileWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsulteeProfileWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'ConsulteeProfileWhereUniqueInput(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of ConsulteeProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileWhereUniqueInputImplCopyWith<
          _$ConsulteeProfileWhereUniqueInputImpl>
      get copyWith => __$$ConsulteeProfileWhereUniqueInputImplCopyWithImpl<
          _$ConsulteeProfileWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfileWhereUniqueInput
    implements ConsulteeProfileWhereUniqueInput {
  const factory _ConsulteeProfileWhereUniqueInput(
      {final String? id,
      final String? userId}) = _$ConsulteeProfileWhereUniqueInputImpl;

  factory _ConsulteeProfileWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsulteeProfileWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;

  /// Create a copy of ConsulteeProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileWhereUniqueInputImplCopyWith<
          _$ConsulteeProfileWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsulteeProfileWhereInput _$ConsulteeProfileWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsulteeProfileWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfileWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get aboutMe => throw _privateConstructorUsedError;
  StringFilter? get preferredLanguage => throw _privateConstructorUsedError;
  StringFilter? get goals => throw _privateConstructorUsedError;
  CareerStageFilter? get careerStage => throw _privateConstructorUsedError;
  StringListFilter? get skillsToDevelop => throw _privateConstructorUsedError;
  BudgetPreferenceFilter? get budgetPreference =>
      throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsulteeProfileWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsulteeProfileWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsulteeProfileWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfileWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileWhereInputCopyWith<ConsulteeProfileWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileWhereInputCopyWith<$Res> {
  factory $ConsulteeProfileWhereInputCopyWith(ConsulteeProfileWhereInput value,
          $Res Function(ConsulteeProfileWhereInput) then) =
      _$ConsulteeProfileWhereInputCopyWithImpl<$Res,
          ConsulteeProfileWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? aboutMe,
      StringFilter? preferredLanguage,
      StringFilter? goals,
      CareerStageFilter? careerStage,
      StringListFilter? skillsToDevelop,
      BudgetPreferenceFilter? budgetPreference,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsulteeProfileWhereInput>? AND,
      List<ConsulteeProfileWhereInput>? OR,
      ConsulteeProfileWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get aboutMe;
  $StringFilterCopyWith<$Res>? get preferredLanguage;
  $StringFilterCopyWith<$Res>? get goals;
  $CareerStageFilterCopyWith<$Res>? get careerStage;
  $StringListFilterCopyWith<$Res>? get skillsToDevelop;
  $BudgetPreferenceFilterCopyWith<$Res>? get budgetPreference;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsulteeProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsulteeProfileWhereInputCopyWithImpl<$Res,
        $Val extends ConsulteeProfileWhereInput>
    implements $ConsulteeProfileWhereInputCopyWith<$Res> {
  _$ConsulteeProfileWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? user = freezed,
    Object? userId = freezed,
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
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStageFilter?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreferenceFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsulteeProfileWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsulteeProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsulteeProfileWhereInput
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

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get aboutMe {
    if (_value.aboutMe == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.aboutMe!, (value) {
      return _then(_value.copyWith(aboutMe: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get preferredLanguage {
    if (_value.preferredLanguage == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.preferredLanguage!, (value) {
      return _then(_value.copyWith(preferredLanguage: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get goals {
    if (_value.goals == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.goals!, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareerStageFilterCopyWith<$Res>? get careerStage {
    if (_value.careerStage == null) {
      return null;
    }

    return $CareerStageFilterCopyWith<$Res>(_value.careerStage!, (value) {
      return _then(_value.copyWith(careerStage: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get skillsToDevelop {
    if (_value.skillsToDevelop == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.skillsToDevelop!, (value) {
      return _then(_value.copyWith(skillsToDevelop: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetPreferenceFilterCopyWith<$Res>? get budgetPreference {
    if (_value.budgetPreference == null) {
      return null;
    }

    return $BudgetPreferenceFilterCopyWith<$Res>(_value.budgetPreference!,
        (value) {
      return _then(_value.copyWith(budgetPreference: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileWhereInput
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

  /// Create a copy of ConsulteeProfileWhereInput
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

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsulteeProfileWhereInputImplCopyWith<$Res>
    implements $ConsulteeProfileWhereInputCopyWith<$Res> {
  factory _$$ConsulteeProfileWhereInputImplCopyWith(
          _$ConsulteeProfileWhereInputImpl value,
          $Res Function(_$ConsulteeProfileWhereInputImpl) then) =
      __$$ConsulteeProfileWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? aboutMe,
      StringFilter? preferredLanguage,
      StringFilter? goals,
      CareerStageFilter? careerStage,
      StringListFilter? skillsToDevelop,
      BudgetPreferenceFilter? budgetPreference,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsulteeProfileWhereInput>? AND,
      List<ConsulteeProfileWhereInput>? OR,
      ConsulteeProfileWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get aboutMe;
  @override
  $StringFilterCopyWith<$Res>? get preferredLanguage;
  @override
  $StringFilterCopyWith<$Res>? get goals;
  @override
  $CareerStageFilterCopyWith<$Res>? get careerStage;
  @override
  $StringListFilterCopyWith<$Res>? get skillsToDevelop;
  @override
  $BudgetPreferenceFilterCopyWith<$Res>? get budgetPreference;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsulteeProfileWhereInputImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileWhereInputCopyWithImpl<$Res,
        _$ConsulteeProfileWhereInputImpl>
    implements _$$ConsulteeProfileWhereInputImplCopyWith<$Res> {
  __$$ConsulteeProfileWhereInputImplCopyWithImpl(
      _$ConsulteeProfileWhereInputImpl _value,
      $Res Function(_$ConsulteeProfileWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? careerStage = freezed,
    Object? skillsToDevelop = freezed,
    Object? budgetPreference = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsulteeProfileWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      careerStage: freezed == careerStage
          ? _value.careerStage
          : careerStage // ignore: cast_nullable_to_non_nullable
              as CareerStageFilter?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      budgetPreference: freezed == budgetPreference
          ? _value.budgetPreference
          : budgetPreference // ignore: cast_nullable_to_non_nullable
              as BudgetPreferenceFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsulteeProfileWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsulteeProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsulteeProfileWhereInputImpl implements _ConsulteeProfileWhereInput {
  const _$ConsulteeProfileWhereInputImpl(
      {this.id,
      this.aboutMe,
      this.preferredLanguage,
      this.goals,
      this.careerStage,
      this.skillsToDevelop,
      this.budgetPreference,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<ConsulteeProfileWhereInput>? AND,
      final List<ConsulteeProfileWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsulteeProfileWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsulteeProfileWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? aboutMe;
  @override
  final StringFilter? preferredLanguage;
  @override
  final StringFilter? goals;
  @override
  final CareerStageFilter? careerStage;
  @override
  final StringListFilter? skillsToDevelop;
  @override
  final BudgetPreferenceFilter? budgetPreference;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsulteeProfileWhereInput>? _AND;
  @override
  List<ConsulteeProfileWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsulteeProfileWhereInput>? _OR;
  @override
  List<ConsulteeProfileWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsulteeProfileWhereInput? NOT;

  @override
  String toString() {
    return 'ConsulteeProfileWhereInput(id: $id, aboutMe: $aboutMe, preferredLanguage: $preferredLanguage, goals: $goals, careerStage: $careerStage, skillsToDevelop: $skillsToDevelop, budgetPreference: $budgetPreference, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.careerStage, careerStage) ||
                other.careerStage == careerStage) &&
            (identical(other.skillsToDevelop, skillsToDevelop) ||
                other.skillsToDevelop == skillsToDevelop) &&
            (identical(other.budgetPreference, budgetPreference) ||
                other.budgetPreference == budgetPreference) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      aboutMe,
      preferredLanguage,
      goals,
      careerStage,
      skillsToDevelop,
      budgetPreference,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileWhereInputImplCopyWith<_$ConsulteeProfileWhereInputImpl>
      get copyWith => __$$ConsulteeProfileWhereInputImplCopyWithImpl<
          _$ConsulteeProfileWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfileWhereInput
    implements ConsulteeProfileWhereInput {
  const factory _ConsulteeProfileWhereInput(
          {final StringFilter? id,
          final StringFilter? aboutMe,
          final StringFilter? preferredLanguage,
          final StringFilter? goals,
          final CareerStageFilter? careerStage,
          final StringListFilter? skillsToDevelop,
          final BudgetPreferenceFilter? budgetPreference,
          final UserRelationFilter? user,
          final StringFilter? userId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsulteeProfileWhereInput>? AND,
          final List<ConsulteeProfileWhereInput>? OR,
          final ConsulteeProfileWhereInput? NOT}) =
      _$ConsulteeProfileWhereInputImpl;

  factory _ConsulteeProfileWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsulteeProfileWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get aboutMe;
  @override
  StringFilter? get preferredLanguage;
  @override
  StringFilter? get goals;
  @override
  CareerStageFilter? get careerStage;
  @override
  StringListFilter? get skillsToDevelop;
  @override
  BudgetPreferenceFilter? get budgetPreference;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsulteeProfileWhereInput>? get AND;
  @override
  List<ConsulteeProfileWhereInput>? get OR;
  @override
  ConsulteeProfileWhereInput? get NOT;

  /// Create a copy of ConsulteeProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileWhereInputImplCopyWith<_$ConsulteeProfileWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsulteeProfileListRelationFilter _$ConsulteeProfileListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsulteeProfileListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfileListRelationFilter {
  /// At least one related record matches
  ConsulteeProfileWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsulteeProfileWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsulteeProfileWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfileListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileListRelationFilterCopyWith<
          ConsulteeProfileListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileListRelationFilterCopyWith<$Res> {
  factory $ConsulteeProfileListRelationFilterCopyWith(
          ConsulteeProfileListRelationFilter value,
          $Res Function(ConsulteeProfileListRelationFilter) then) =
      _$ConsulteeProfileListRelationFilterCopyWithImpl<$Res,
          ConsulteeProfileListRelationFilter>;
  @useResult
  $Res call(
      {ConsulteeProfileWhereInput? some,
      ConsulteeProfileWhereInput? every,
      ConsulteeProfileWhereInput? none});

  $ConsulteeProfileWhereInputCopyWith<$Res>? get some;
  $ConsulteeProfileWhereInputCopyWith<$Res>? get every;
  $ConsulteeProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsulteeProfileListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsulteeProfileListRelationFilter>
    implements $ConsulteeProfileListRelationFilterCopyWith<$Res> {
  _$ConsulteeProfileListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfileListRelationFilter
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
              as ConsulteeProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsulteeProfileListRelationFilterImplCopyWith<$Res>
    implements $ConsulteeProfileListRelationFilterCopyWith<$Res> {
  factory _$$ConsulteeProfileListRelationFilterImplCopyWith(
          _$ConsulteeProfileListRelationFilterImpl value,
          $Res Function(_$ConsulteeProfileListRelationFilterImpl) then) =
      __$$ConsulteeProfileListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsulteeProfileWhereInput? some,
      ConsulteeProfileWhereInput? every,
      ConsulteeProfileWhereInput? none});

  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get some;
  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get every;
  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsulteeProfileListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileListRelationFilterCopyWithImpl<$Res,
        _$ConsulteeProfileListRelationFilterImpl>
    implements _$$ConsulteeProfileListRelationFilterImplCopyWith<$Res> {
  __$$ConsulteeProfileListRelationFilterImplCopyWithImpl(
      _$ConsulteeProfileListRelationFilterImpl _value,
      $Res Function(_$ConsulteeProfileListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsulteeProfileListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsulteeProfileListRelationFilterImpl
    implements _ConsulteeProfileListRelationFilter {
  const _$ConsulteeProfileListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsulteeProfileListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsulteeProfileListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsulteeProfileWhereInput? some;

  /// All related records match
  @override
  final ConsulteeProfileWhereInput? every;

  /// No related records match
  @override
  final ConsulteeProfileWhereInput? none;

  @override
  String toString() {
    return 'ConsulteeProfileListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileListRelationFilterImplCopyWith<
          _$ConsulteeProfileListRelationFilterImpl>
      get copyWith => __$$ConsulteeProfileListRelationFilterImplCopyWithImpl<
          _$ConsulteeProfileListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfileListRelationFilter
    implements ConsulteeProfileListRelationFilter {
  const factory _ConsulteeProfileListRelationFilter(
          {final ConsulteeProfileWhereInput? some,
          final ConsulteeProfileWhereInput? every,
          final ConsulteeProfileWhereInput? none}) =
      _$ConsulteeProfileListRelationFilterImpl;

  factory _ConsulteeProfileListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsulteeProfileListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsulteeProfileWhereInput? get some;

  /// All related records match
  @override
  ConsulteeProfileWhereInput? get every;

  /// No related records match
  @override
  ConsulteeProfileWhereInput? get none;

  /// Create a copy of ConsulteeProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileListRelationFilterImplCopyWith<
          _$ConsulteeProfileListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsulteeProfileRelationFilter _$ConsulteeProfileRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsulteeProfileRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfileRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsulteeProfileWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsulteeProfileWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfileRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileRelationFilterCopyWith<ConsulteeProfileRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileRelationFilterCopyWith<$Res> {
  factory $ConsulteeProfileRelationFilterCopyWith(
          ConsulteeProfileRelationFilter value,
          $Res Function(ConsulteeProfileRelationFilter) then) =
      _$ConsulteeProfileRelationFilterCopyWithImpl<$Res,
          ConsulteeProfileRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsulteeProfileWhereInput? is_,
      ConsulteeProfileWhereInput? isNot});

  $ConsulteeProfileWhereInputCopyWith<$Res>? get is_;
  $ConsulteeProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsulteeProfileRelationFilterCopyWithImpl<$Res,
        $Val extends ConsulteeProfileRelationFilter>
    implements $ConsulteeProfileRelationFilterCopyWith<$Res> {
  _$ConsulteeProfileRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfileRelationFilter
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
              as ConsulteeProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsulteeProfileWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsulteeProfileRelationFilterImplCopyWith<$Res>
    implements $ConsulteeProfileRelationFilterCopyWith<$Res> {
  factory _$$ConsulteeProfileRelationFilterImplCopyWith(
          _$ConsulteeProfileRelationFilterImpl value,
          $Res Function(_$ConsulteeProfileRelationFilterImpl) then) =
      __$$ConsulteeProfileRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsulteeProfileWhereInput? is_,
      ConsulteeProfileWhereInput? isNot});

  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsulteeProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsulteeProfileRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileRelationFilterCopyWithImpl<$Res,
        _$ConsulteeProfileRelationFilterImpl>
    implements _$$ConsulteeProfileRelationFilterImplCopyWith<$Res> {
  __$$ConsulteeProfileRelationFilterImplCopyWithImpl(
      _$ConsulteeProfileRelationFilterImpl _value,
      $Res Function(_$ConsulteeProfileRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsulteeProfileRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsulteeProfileRelationFilterImpl
    implements _ConsulteeProfileRelationFilter {
  const _$ConsulteeProfileRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsulteeProfileRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsulteeProfileRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsulteeProfileWhereInput? is_;

  /// Related record does not match
  @override
  final ConsulteeProfileWhereInput? isNot;

  @override
  String toString() {
    return 'ConsulteeProfileRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileRelationFilterImplCopyWith<
          _$ConsulteeProfileRelationFilterImpl>
      get copyWith => __$$ConsulteeProfileRelationFilterImplCopyWithImpl<
          _$ConsulteeProfileRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfileRelationFilter
    implements ConsulteeProfileRelationFilter {
  const factory _ConsulteeProfileRelationFilter(
          {@JsonKey(name: 'is') final ConsulteeProfileWhereInput? is_,
          final ConsulteeProfileWhereInput? isNot}) =
      _$ConsulteeProfileRelationFilterImpl;

  factory _ConsulteeProfileRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsulteeProfileRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsulteeProfileWhereInput? get is_;

  /// Related record does not match
  @override
  ConsulteeProfileWhereInput? get isNot;

  /// Create a copy of ConsulteeProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileRelationFilterImplCopyWith<
          _$ConsulteeProfileRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsulteeProfileOrderByInput _$ConsulteeProfileOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsulteeProfileOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsulteeProfileOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get aboutMe => throw _privateConstructorUsedError;
  SortOrder? get preferredLanguage => throw _privateConstructorUsedError;
  SortOrder? get goals => throw _privateConstructorUsedError;
  SortOrder? get skillsToDevelop => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsulteeProfileOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsulteeProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsulteeProfileOrderByInputCopyWith<ConsulteeProfileOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsulteeProfileOrderByInputCopyWith<$Res> {
  factory $ConsulteeProfileOrderByInputCopyWith(
          ConsulteeProfileOrderByInput value,
          $Res Function(ConsulteeProfileOrderByInput) then) =
      _$ConsulteeProfileOrderByInputCopyWithImpl<$Res,
          ConsulteeProfileOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? aboutMe,
      SortOrder? preferredLanguage,
      SortOrder? goals,
      SortOrder? skillsToDevelop,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsulteeProfileOrderByInputCopyWithImpl<$Res,
        $Val extends ConsulteeProfileOrderByInput>
    implements $ConsulteeProfileOrderByInputCopyWith<$Res> {
  _$ConsulteeProfileOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsulteeProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? skillsToDevelop = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsulteeProfileOrderByInputImplCopyWith<$Res>
    implements $ConsulteeProfileOrderByInputCopyWith<$Res> {
  factory _$$ConsulteeProfileOrderByInputImplCopyWith(
          _$ConsulteeProfileOrderByInputImpl value,
          $Res Function(_$ConsulteeProfileOrderByInputImpl) then) =
      __$$ConsulteeProfileOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? aboutMe,
      SortOrder? preferredLanguage,
      SortOrder? goals,
      SortOrder? skillsToDevelop,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsulteeProfileOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsulteeProfileOrderByInputCopyWithImpl<$Res,
        _$ConsulteeProfileOrderByInputImpl>
    implements _$$ConsulteeProfileOrderByInputImplCopyWith<$Res> {
  __$$ConsulteeProfileOrderByInputImplCopyWithImpl(
      _$ConsulteeProfileOrderByInputImpl _value,
      $Res Function(_$ConsulteeProfileOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsulteeProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aboutMe = freezed,
    Object? preferredLanguage = freezed,
    Object? goals = freezed,
    Object? skillsToDevelop = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsulteeProfileOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      preferredLanguage: freezed == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      skillsToDevelop: freezed == skillsToDevelop
          ? _value.skillsToDevelop
          : skillsToDevelop // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$ConsulteeProfileOrderByInputImpl
    implements _ConsulteeProfileOrderByInput {
  const _$ConsulteeProfileOrderByInputImpl(
      {this.id,
      this.aboutMe,
      this.preferredLanguage,
      this.goals,
      this.skillsToDevelop,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$ConsulteeProfileOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsulteeProfileOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? aboutMe;
  @override
  final SortOrder? preferredLanguage;
  @override
  final SortOrder? goals;
  @override
  final SortOrder? skillsToDevelop;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsulteeProfileOrderByInput(id: $id, aboutMe: $aboutMe, preferredLanguage: $preferredLanguage, goals: $goals, skillsToDevelop: $skillsToDevelop, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsulteeProfileOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.skillsToDevelop, skillsToDevelop) ||
                other.skillsToDevelop == skillsToDevelop) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, aboutMe, preferredLanguage,
      goals, skillsToDevelop, userId, createdAt, updatedAt);

  /// Create a copy of ConsulteeProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsulteeProfileOrderByInputImplCopyWith<
          _$ConsulteeProfileOrderByInputImpl>
      get copyWith => __$$ConsulteeProfileOrderByInputImplCopyWithImpl<
          _$ConsulteeProfileOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsulteeProfileOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsulteeProfileOrderByInput
    implements ConsulteeProfileOrderByInput {
  const factory _ConsulteeProfileOrderByInput(
      {final SortOrder? id,
      final SortOrder? aboutMe,
      final SortOrder? preferredLanguage,
      final SortOrder? goals,
      final SortOrder? skillsToDevelop,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsulteeProfileOrderByInputImpl;

  factory _ConsulteeProfileOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsulteeProfileOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get aboutMe;
  @override
  SortOrder? get preferredLanguage;
  @override
  SortOrder? get goals;
  @override
  SortOrder? get skillsToDevelop;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsulteeProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsulteeProfileOrderByInputImplCopyWith<
          _$ConsulteeProfileOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
