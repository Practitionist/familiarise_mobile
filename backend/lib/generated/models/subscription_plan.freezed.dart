// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) {
  return _SubscriptionPlan.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get durationInMonths => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceCurrency => throw _privateConstructorUsedError;
  int get callsPerWeek => throw _privateConstructorUsedError;
  double get sessionDurationInHours => throw _privateConstructorUsedError;
  int get totalSessions => throw _privateConstructorUsedError;
  double get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport get emailSupport => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get prerequisites => throw _privateConstructorUsedError;
  String get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics => throw _privateConstructorUsedError;
  bool get freeTrialEnabled => throw _privateConstructorUsedError;
  int get freeTrialDurationMinutes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  List<Subscription> get subscriptions => throw _privateConstructorUsedError;
  List<SubscriptionContent> get subscriptionContents =>
      throw _privateConstructorUsedError;
  List<TrialSession> get trialSessions => throw _privateConstructorUsedError;
  List<PlanMaterial> get materials => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanCopyWith<$Res> {
  factory $SubscriptionPlanCopyWith(
          SubscriptionPlan value, $Res Function(SubscriptionPlan) then) =
      _$SubscriptionPlanCopyWithImpl<$Res, SubscriptionPlan>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      int durationInMonths,
      int price,
      String priceCurrency,
      int callsPerWeek,
      double sessionDurationInHours,
      int totalSessions,
      double totalHours,
      PlanEmailSupport emailSupport,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      bool freeTrialEnabled,
      int freeTrialDurationMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      List<Subscription> subscriptions,
      List<SubscriptionContent> subscriptionContents,
      List<TrialSession> trialSessions,
      List<PlanMaterial> materials,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res, $Val extends SubscriptionPlan>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? durationInMonths = null,
    Object? price = null,
    Object? priceCurrency = null,
    Object? callsPerWeek = null,
    Object? sessionDurationInHours = null,
    Object? totalSessions = null,
    Object? totalHours = null,
    Object? emailSupport = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? freeTrialEnabled = null,
    Object? freeTrialDurationMinutes = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? subscriptions = null,
    Object? subscriptionContents = null,
    Object? trialSessions = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: null == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      callsPerWeek: null == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDurationInHours: null == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String,
      materialProvided: null == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      freeTrialEnabled: null == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      freeTrialDurationMinutes: null == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
      subscriptionContents: null == subscriptionContents
          ? _value.subscriptionContents
          : subscriptionContents // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionContent>,
      trialSessions: null == trialSessions
          ? _value.trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
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

  /// Create a copy of SubscriptionPlan
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
}

/// @nodoc
abstract class _$$SubscriptionPlanImplCopyWith<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  factory _$$SubscriptionPlanImplCopyWith(_$SubscriptionPlanImpl value,
          $Res Function(_$SubscriptionPlanImpl) then) =
      __$$SubscriptionPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      int durationInMonths,
      int price,
      String priceCurrency,
      int callsPerWeek,
      double sessionDurationInHours,
      int totalSessions,
      double totalHours,
      PlanEmailSupport emailSupport,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      bool freeTrialEnabled,
      int freeTrialDurationMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      List<Subscription> subscriptions,
      List<SubscriptionContent> subscriptionContents,
      List<TrialSession> trialSessions,
      List<PlanMaterial> materials,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$SubscriptionPlanImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanCopyWithImpl<$Res, _$SubscriptionPlanImpl>
    implements _$$SubscriptionPlanImplCopyWith<$Res> {
  __$$SubscriptionPlanImplCopyWithImpl(_$SubscriptionPlanImpl _value,
      $Res Function(_$SubscriptionPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? durationInMonths = null,
    Object? price = null,
    Object? priceCurrency = null,
    Object? callsPerWeek = null,
    Object? sessionDurationInHours = null,
    Object? totalSessions = null,
    Object? totalHours = null,
    Object? emailSupport = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? freeTrialEnabled = null,
    Object? freeTrialDurationMinutes = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? subscriptions = null,
    Object? subscriptionContents = null,
    Object? trialSessions = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubscriptionPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: null == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      callsPerWeek: null == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDurationInHours: null == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String,
      materialProvided: null == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      freeTrialEnabled: null == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      freeTrialDurationMinutes: null == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptions: null == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
      subscriptionContents: null == subscriptionContents
          ? _value._subscriptionContents
          : subscriptionContents // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionContent>,
      trialSessions: null == trialSessions
          ? _value._trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
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
class _$SubscriptionPlanImpl implements _SubscriptionPlan {
  const _$SubscriptionPlanImpl(
      {required this.id,
      required this.title,
      this.description,
      this.durationInMonths = 1,
      required this.price,
      this.priceCurrency = "INR",
      this.callsPerWeek = 1,
      this.sessionDurationInHours = 1.0,
      this.totalSessions = 4,
      this.totalHours = 4.0,
      this.emailSupport = PlanEmailSupport.general,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      this.freeTrialEnabled = false,
      this.freeTrialDurationMinutes = 30,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      required final List<Subscription> subscriptions,
      required final List<SubscriptionContent> subscriptionContents,
      required final List<TrialSession> trialSessions,
      required final List<PlanMaterial> materials,
      required this.createdAt,
      required this.updatedAt})
      : _learningOutcomes = learningOutcomes,
        _topics = topics,
        _subscriptions = subscriptions,
        _subscriptionContents = subscriptionContents,
        _trialSessions = trialSessions,
        _materials = materials;

  factory _$SubscriptionPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final int durationInMonths;
  @override
  final int price;
  @override
  @JsonKey()
  final String priceCurrency;
  @override
  @JsonKey()
  final int callsPerWeek;
  @override
  @JsonKey()
  final double sessionDurationInHours;
  @override
  @JsonKey()
  final int totalSessions;
  @override
  @JsonKey()
  final double totalHours;
  @override
  @JsonKey()
  final PlanEmailSupport emailSupport;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final String prerequisites;
  @override
  @JsonKey()
  final String materialProvided;
  final List<String>? _learningOutcomes;
  @override
  @JsonKey()
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Topic>? _topics;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool freeTrialEnabled;
  @override
  @JsonKey()
  final int freeTrialDurationMinutes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  final List<Subscription> _subscriptions;
  @override
  List<Subscription> get subscriptions {
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptions);
  }

  final List<SubscriptionContent> _subscriptionContents;
  @override
  List<SubscriptionContent> get subscriptionContents {
    if (_subscriptionContents is EqualUnmodifiableListView)
      return _subscriptionContents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptionContents);
  }

  final List<TrialSession> _trialSessions;
  @override
  List<TrialSession> get trialSessions {
    if (_trialSessions is EqualUnmodifiableListView) return _trialSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trialSessions);
  }

  final List<PlanMaterial> _materials;
  @override
  List<PlanMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SubscriptionPlan(id: $id, title: $title, description: $description, durationInMonths: $durationInMonths, price: $price, priceCurrency: $priceCurrency, callsPerWeek: $callsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, topics: $topics, freeTrialEnabled: $freeTrialEnabled, freeTrialDurationMinutes: $freeTrialDurationMinutes, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, subscriptions: $subscriptions, subscriptionContents: $subscriptionContents, trialSessions: $trialSessions, materials: $materials, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.callsPerWeek, callsPerWeek) ||
                other.callsPerWeek == callsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.freeTrialEnabled, freeTrialEnabled) ||
                other.freeTrialEnabled == freeTrialEnabled) &&
            (identical(
                    other.freeTrialDurationMinutes, freeTrialDurationMinutes) ||
                other.freeTrialDurationMinutes == freeTrialDurationMinutes) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionContents, _subscriptionContents) &&
            const DeepCollectionEquality()
                .equals(other._trialSessions, _trialSessions) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
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
        title,
        description,
        durationInMonths,
        price,
        priceCurrency,
        callsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        language,
        level,
        prerequisites,
        materialProvided,
        const DeepCollectionEquality().hash(_learningOutcomes),
        const DeepCollectionEquality().hash(_topics),
        freeTrialEnabled,
        freeTrialDurationMinutes,
        consultantProfile,
        consultantProfileId,
        const DeepCollectionEquality().hash(_subscriptions),
        const DeepCollectionEquality().hash(_subscriptionContents),
        const DeepCollectionEquality().hash(_trialSessions),
        const DeepCollectionEquality().hash(_materials),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanImplCopyWith<_$SubscriptionPlanImpl> get copyWith =>
      __$$SubscriptionPlanImplCopyWithImpl<_$SubscriptionPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlan implements SubscriptionPlan {
  const factory _SubscriptionPlan(
      {required final String id,
      required final String title,
      final String? description,
      final int durationInMonths,
      required final int price,
      final String priceCurrency,
      final int callsPerWeek,
      final double sessionDurationInHours,
      final int totalSessions,
      final double totalHours,
      final PlanEmailSupport emailSupport,
      final String language,
      final String level,
      final String prerequisites,
      final String materialProvided,
      final List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      final bool freeTrialEnabled,
      final int freeTrialDurationMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      required final List<Subscription> subscriptions,
      required final List<SubscriptionContent> subscriptionContents,
      required final List<TrialSession> trialSessions,
      required final List<PlanMaterial> materials,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SubscriptionPlanImpl;

  factory _SubscriptionPlan.fromJson(Map<String, dynamic> json) =
      _$SubscriptionPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  int get durationInMonths;
  @override
  int get price;
  @override
  String get priceCurrency;
  @override
  int get callsPerWeek;
  @override
  double get sessionDurationInHours;
  @override
  int get totalSessions;
  @override
  double get totalHours;
  @override
  PlanEmailSupport get emailSupport;
  @override
  String get language;
  @override
  String get level;
  @override
  String get prerequisites;
  @override
  String get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics;
  @override
  bool get freeTrialEnabled;
  @override
  int get freeTrialDurationMinutes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  List<Subscription> get subscriptions;
  @override
  List<SubscriptionContent> get subscriptionContents;
  @override
  List<TrialSession> get trialSessions;
  @override
  List<PlanMaterial> get materials;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanImplCopyWith<_$SubscriptionPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSubscriptionPlanInput _$CreateSubscriptionPlanInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSubscriptionPlanInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSubscriptionPlanInput {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationInMonths => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  int? get callsPerWeek => throw _privateConstructorUsedError;
  double? get sessionDurationInHours => throw _privateConstructorUsedError;
  int? get totalSessions => throw _privateConstructorUsedError;
  double? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport get emailSupport => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  bool? get freeTrialEnabled => throw _privateConstructorUsedError;
  int? get freeTrialDurationMinutes => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateSubscriptionPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSubscriptionPlanInputCopyWith<CreateSubscriptionPlanInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubscriptionPlanInputCopyWith<$Res> {
  factory $CreateSubscriptionPlanInputCopyWith(
          CreateSubscriptionPlanInput value,
          $Res Function(CreateSubscriptionPlanInput) then) =
      _$CreateSubscriptionPlanInputCopyWithImpl<$Res,
          CreateSubscriptionPlanInput>;
  @useResult
  $Res call(
      {String title,
      String? description,
      int? durationInMonths,
      int price,
      String? priceCurrency,
      int? callsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport emailSupport,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      bool? freeTrialEnabled,
      int? freeTrialDurationMinutes,
      String consultantProfileId});
}

/// @nodoc
class _$CreateSubscriptionPlanInputCopyWithImpl<$Res,
        $Val extends CreateSubscriptionPlanInput>
    implements $CreateSubscriptionPlanInputCopyWith<$Res> {
  _$CreateSubscriptionPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = null,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSubscriptionPlanInputImplCopyWith<$Res>
    implements $CreateSubscriptionPlanInputCopyWith<$Res> {
  factory _$$CreateSubscriptionPlanInputImplCopyWith(
          _$CreateSubscriptionPlanInputImpl value,
          $Res Function(_$CreateSubscriptionPlanInputImpl) then) =
      __$$CreateSubscriptionPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      int? durationInMonths,
      int price,
      String? priceCurrency,
      int? callsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport emailSupport,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      bool? freeTrialEnabled,
      int? freeTrialDurationMinutes,
      String consultantProfileId});
}

/// @nodoc
class __$$CreateSubscriptionPlanInputImplCopyWithImpl<$Res>
    extends _$CreateSubscriptionPlanInputCopyWithImpl<$Res,
        _$CreateSubscriptionPlanInputImpl>
    implements _$$CreateSubscriptionPlanInputImplCopyWith<$Res> {
  __$$CreateSubscriptionPlanInputImplCopyWithImpl(
      _$CreateSubscriptionPlanInputImpl _value,
      $Res Function(_$CreateSubscriptionPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = null,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_$CreateSubscriptionPlanInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSubscriptionPlanInputImpl
    implements _CreateSubscriptionPlanInput {
  const _$CreateSubscriptionPlanInputImpl(
      {required this.title,
      this.description,
      this.durationInMonths = 1,
      required this.price,
      this.priceCurrency = "INR",
      this.callsPerWeek = 1,
      this.sessionDurationInHours = 1.0,
      this.totalSessions = 4,
      this.totalHours = 4.0,
      this.emailSupport = PlanEmailSupport.general,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      this.freeTrialEnabled = false,
      this.freeTrialDurationMinutes = 30,
      required this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$CreateSubscriptionPlanInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSubscriptionPlanInputImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final int? durationInMonths;
  @override
  final int price;
  @override
  @JsonKey()
  final String? priceCurrency;
  @override
  @JsonKey()
  final int? callsPerWeek;
  @override
  @JsonKey()
  final double? sessionDurationInHours;
  @override
  @JsonKey()
  final int? totalSessions;
  @override
  @JsonKey()
  final double? totalHours;
  @override
  @JsonKey()
  final PlanEmailSupport emailSupport;
  @override
  @JsonKey()
  final String? language;
  @override
  @JsonKey()
  final String? level;
  @override
  @JsonKey()
  final String? prerequisites;
  @override
  @JsonKey()
  final String? materialProvided;
  final List<String>? _learningOutcomes;
  @override
  @JsonKey()
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? freeTrialEnabled;
  @override
  @JsonKey()
  final int? freeTrialDurationMinutes;
  @override
  final String consultantProfileId;

  @override
  String toString() {
    return 'CreateSubscriptionPlanInput(title: $title, description: $description, durationInMonths: $durationInMonths, price: $price, priceCurrency: $priceCurrency, callsPerWeek: $callsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, freeTrialEnabled: $freeTrialEnabled, freeTrialDurationMinutes: $freeTrialDurationMinutes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubscriptionPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.callsPerWeek, callsPerWeek) ||
                other.callsPerWeek == callsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.freeTrialEnabled, freeTrialEnabled) ||
                other.freeTrialEnabled == freeTrialEnabled) &&
            (identical(
                    other.freeTrialDurationMinutes, freeTrialDurationMinutes) ||
                other.freeTrialDurationMinutes == freeTrialDurationMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      durationInMonths,
      price,
      priceCurrency,
      callsPerWeek,
      sessionDurationInHours,
      totalSessions,
      totalHours,
      emailSupport,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      freeTrialEnabled,
      freeTrialDurationMinutes,
      consultantProfileId);

  /// Create a copy of CreateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubscriptionPlanInputImplCopyWith<_$CreateSubscriptionPlanInputImpl>
      get copyWith => __$$CreateSubscriptionPlanInputImplCopyWithImpl<
          _$CreateSubscriptionPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSubscriptionPlanInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSubscriptionPlanInput
    implements CreateSubscriptionPlanInput {
  const factory _CreateSubscriptionPlanInput(
          {required final String title,
          final String? description,
          final int? durationInMonths,
          required final int price,
          final String? priceCurrency,
          final int? callsPerWeek,
          final double? sessionDurationInHours,
          final int? totalSessions,
          final double? totalHours,
          final PlanEmailSupport emailSupport,
          final String? language,
          final String? level,
          final String? prerequisites,
          final String? materialProvided,
          final List<String>? learningOutcomes,
          final bool? freeTrialEnabled,
          final int? freeTrialDurationMinutes,
          required final String consultantProfileId}) =
      _$CreateSubscriptionPlanInputImpl;

  factory _CreateSubscriptionPlanInput.fromJson(Map<String, dynamic> json) =
      _$CreateSubscriptionPlanInputImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  int? get durationInMonths;
  @override
  int get price;
  @override
  String? get priceCurrency;
  @override
  int? get callsPerWeek;
  @override
  double? get sessionDurationInHours;
  @override
  int? get totalSessions;
  @override
  double? get totalHours;
  @override
  PlanEmailSupport get emailSupport;
  @override
  String? get language;
  @override
  String? get level;
  @override
  String? get prerequisites;
  @override
  String? get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  bool? get freeTrialEnabled;
  @override
  int? get freeTrialDurationMinutes;
  @override
  String get consultantProfileId;

  /// Create a copy of CreateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubscriptionPlanInputImplCopyWith<_$CreateSubscriptionPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSubscriptionPlanInput _$UpdateSubscriptionPlanInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSubscriptionPlanInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSubscriptionPlanInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationInMonths => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  int? get callsPerWeek => throw _privateConstructorUsedError;
  double? get sessionDurationInHours => throw _privateConstructorUsedError;
  int? get totalSessions => throw _privateConstructorUsedError;
  double? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport? get emailSupport => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  bool? get freeTrialEnabled => throw _privateConstructorUsedError;
  int? get freeTrialDurationMinutes => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSubscriptionPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSubscriptionPlanInputCopyWith<UpdateSubscriptionPlanInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSubscriptionPlanInputCopyWith<$Res> {
  factory $UpdateSubscriptionPlanInputCopyWith(
          UpdateSubscriptionPlanInput value,
          $Res Function(UpdateSubscriptionPlanInput) then) =
      _$UpdateSubscriptionPlanInputCopyWithImpl<$Res,
          UpdateSubscriptionPlanInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? durationInMonths,
      int? price,
      String? priceCurrency,
      int? callsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport? emailSupport,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      bool? freeTrialEnabled,
      int? freeTrialDurationMinutes,
      String? consultantProfileId});
}

/// @nodoc
class _$UpdateSubscriptionPlanInputCopyWithImpl<$Res,
        $Val extends UpdateSubscriptionPlanInput>
    implements $UpdateSubscriptionPlanInputCopyWith<$Res> {
  _$UpdateSubscriptionPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSubscriptionPlanInputImplCopyWith<$Res>
    implements $UpdateSubscriptionPlanInputCopyWith<$Res> {
  factory _$$UpdateSubscriptionPlanInputImplCopyWith(
          _$UpdateSubscriptionPlanInputImpl value,
          $Res Function(_$UpdateSubscriptionPlanInputImpl) then) =
      __$$UpdateSubscriptionPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? durationInMonths,
      int? price,
      String? priceCurrency,
      int? callsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport? emailSupport,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      bool? freeTrialEnabled,
      int? freeTrialDurationMinutes,
      String? consultantProfileId});
}

/// @nodoc
class __$$UpdateSubscriptionPlanInputImplCopyWithImpl<$Res>
    extends _$UpdateSubscriptionPlanInputCopyWithImpl<$Res,
        _$UpdateSubscriptionPlanInputImpl>
    implements _$$UpdateSubscriptionPlanInputImplCopyWith<$Res> {
  __$$UpdateSubscriptionPlanInputImplCopyWithImpl(
      _$UpdateSubscriptionPlanInputImpl _value,
      $Res Function(_$UpdateSubscriptionPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateSubscriptionPlanInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSubscriptionPlanInputImpl
    implements _UpdateSubscriptionPlanInput {
  const _$UpdateSubscriptionPlanInputImpl(
      {this.title,
      this.description,
      this.durationInMonths,
      this.price,
      this.priceCurrency,
      this.callsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.emailSupport,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      final List<String>? learningOutcomes,
      this.freeTrialEnabled,
      this.freeTrialDurationMinutes,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$UpdateSubscriptionPlanInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSubscriptionPlanInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? durationInMonths;
  @override
  final int? price;
  @override
  final String? priceCurrency;
  @override
  final int? callsPerWeek;
  @override
  final double? sessionDurationInHours;
  @override
  final int? totalSessions;
  @override
  final double? totalHours;
  @override
  final PlanEmailSupport? emailSupport;
  @override
  final String? language;
  @override
  final String? level;
  @override
  final String? prerequisites;
  @override
  final String? materialProvided;
  final List<String>? _learningOutcomes;
  @override
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? freeTrialEnabled;
  @override
  final int? freeTrialDurationMinutes;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'UpdateSubscriptionPlanInput(title: $title, description: $description, durationInMonths: $durationInMonths, price: $price, priceCurrency: $priceCurrency, callsPerWeek: $callsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, freeTrialEnabled: $freeTrialEnabled, freeTrialDurationMinutes: $freeTrialDurationMinutes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubscriptionPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.callsPerWeek, callsPerWeek) ||
                other.callsPerWeek == callsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.freeTrialEnabled, freeTrialEnabled) ||
                other.freeTrialEnabled == freeTrialEnabled) &&
            (identical(
                    other.freeTrialDurationMinutes, freeTrialDurationMinutes) ||
                other.freeTrialDurationMinutes == freeTrialDurationMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      durationInMonths,
      price,
      priceCurrency,
      callsPerWeek,
      sessionDurationInHours,
      totalSessions,
      totalHours,
      emailSupport,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      freeTrialEnabled,
      freeTrialDurationMinutes,
      consultantProfileId);

  /// Create a copy of UpdateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubscriptionPlanInputImplCopyWith<_$UpdateSubscriptionPlanInputImpl>
      get copyWith => __$$UpdateSubscriptionPlanInputImplCopyWithImpl<
          _$UpdateSubscriptionPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSubscriptionPlanInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSubscriptionPlanInput
    implements UpdateSubscriptionPlanInput {
  const factory _UpdateSubscriptionPlanInput(
      {final String? title,
      final String? description,
      final int? durationInMonths,
      final int? price,
      final String? priceCurrency,
      final int? callsPerWeek,
      final double? sessionDurationInHours,
      final int? totalSessions,
      final double? totalHours,
      final PlanEmailSupport? emailSupport,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final bool? freeTrialEnabled,
      final int? freeTrialDurationMinutes,
      final String? consultantProfileId}) = _$UpdateSubscriptionPlanInputImpl;

  factory _UpdateSubscriptionPlanInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSubscriptionPlanInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get durationInMonths;
  @override
  int? get price;
  @override
  String? get priceCurrency;
  @override
  int? get callsPerWeek;
  @override
  double? get sessionDurationInHours;
  @override
  int? get totalSessions;
  @override
  double? get totalHours;
  @override
  PlanEmailSupport? get emailSupport;
  @override
  String? get language;
  @override
  String? get level;
  @override
  String? get prerequisites;
  @override
  String? get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  bool? get freeTrialEnabled;
  @override
  int? get freeTrialDurationMinutes;
  @override
  String? get consultantProfileId;

  /// Create a copy of UpdateSubscriptionPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubscriptionPlanInputImplCopyWith<_$UpdateSubscriptionPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionPlanWhereUniqueInput _$SubscriptionPlanWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionPlanWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlanWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlanWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanWhereUniqueInputCopyWith<SubscriptionPlanWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanWhereUniqueInputCopyWith<$Res> {
  factory $SubscriptionPlanWhereUniqueInputCopyWith(
          SubscriptionPlanWhereUniqueInput value,
          $Res Function(SubscriptionPlanWhereUniqueInput) then) =
      _$SubscriptionPlanWhereUniqueInputCopyWithImpl<$Res,
          SubscriptionPlanWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SubscriptionPlanWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SubscriptionPlanWhereUniqueInput>
    implements $SubscriptionPlanWhereUniqueInputCopyWith<$Res> {
  _$SubscriptionPlanWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlanWhereUniqueInput
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
abstract class _$$SubscriptionPlanWhereUniqueInputImplCopyWith<$Res>
    implements $SubscriptionPlanWhereUniqueInputCopyWith<$Res> {
  factory _$$SubscriptionPlanWhereUniqueInputImplCopyWith(
          _$SubscriptionPlanWhereUniqueInputImpl value,
          $Res Function(_$SubscriptionPlanWhereUniqueInputImpl) then) =
      __$$SubscriptionPlanWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SubscriptionPlanWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanWhereUniqueInputCopyWithImpl<$Res,
        _$SubscriptionPlanWhereUniqueInputImpl>
    implements _$$SubscriptionPlanWhereUniqueInputImplCopyWith<$Res> {
  __$$SubscriptionPlanWhereUniqueInputImplCopyWithImpl(
      _$SubscriptionPlanWhereUniqueInputImpl _value,
      $Res Function(_$SubscriptionPlanWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SubscriptionPlanWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionPlanWhereUniqueInputImpl
    implements _SubscriptionPlanWhereUniqueInput {
  const _$SubscriptionPlanWhereUniqueInputImpl({this.id});

  factory _$SubscriptionPlanWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionPlanWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SubscriptionPlanWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubscriptionPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanWhereUniqueInputImplCopyWith<
          _$SubscriptionPlanWhereUniqueInputImpl>
      get copyWith => __$$SubscriptionPlanWhereUniqueInputImplCopyWithImpl<
          _$SubscriptionPlanWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlanWhereUniqueInput
    implements SubscriptionPlanWhereUniqueInput {
  const factory _SubscriptionPlanWhereUniqueInput({final String? id}) =
      _$SubscriptionPlanWhereUniqueInputImpl;

  factory _SubscriptionPlanWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionPlanWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SubscriptionPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanWhereUniqueInputImplCopyWith<
          _$SubscriptionPlanWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionPlanWhereInput _$SubscriptionPlanWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionPlanWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlanWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  IntFilter? get durationInMonths => throw _privateConstructorUsedError;
  IntFilter? get price => throw _privateConstructorUsedError;
  StringFilter? get priceCurrency => throw _privateConstructorUsedError;
  IntFilter? get callsPerWeek => throw _privateConstructorUsedError;
  FloatFilter? get sessionDurationInHours => throw _privateConstructorUsedError;
  IntFilter? get totalSessions => throw _privateConstructorUsedError;
  FloatFilter? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupportFilter? get emailSupport =>
      throw _privateConstructorUsedError;
  StringFilter? get language => throw _privateConstructorUsedError;
  StringFilter? get level => throw _privateConstructorUsedError;
  StringFilter? get prerequisites => throw _privateConstructorUsedError;
  StringFilter? get materialProvided => throw _privateConstructorUsedError;
  StringListFilter? get learningOutcomes => throw _privateConstructorUsedError;

  /// Filter by topics relation
  TopicListRelationFilter? get topics => throw _privateConstructorUsedError;
  BooleanFilter? get freeTrialEnabled => throw _privateConstructorUsedError;
  IntFilter? get freeTrialDurationMinutes => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SubscriptionPlanWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SubscriptionPlanWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SubscriptionPlanWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlanWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanWhereInputCopyWith<SubscriptionPlanWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanWhereInputCopyWith<$Res> {
  factory $SubscriptionPlanWhereInputCopyWith(SubscriptionPlanWhereInput value,
          $Res Function(SubscriptionPlanWhereInput) then) =
      _$SubscriptionPlanWhereInputCopyWithImpl<$Res,
          SubscriptionPlanWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      IntFilter? durationInMonths,
      IntFilter? price,
      StringFilter? priceCurrency,
      IntFilter? callsPerWeek,
      FloatFilter? sessionDurationInHours,
      IntFilter? totalSessions,
      FloatFilter? totalHours,
      PlanEmailSupportFilter? emailSupport,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      TopicListRelationFilter? topics,
      BooleanFilter? freeTrialEnabled,
      IntFilter? freeTrialDurationMinutes,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionPlanWhereInput>? AND,
      List<SubscriptionPlanWhereInput>? OR,
      SubscriptionPlanWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $IntFilterCopyWith<$Res>? get durationInMonths;
  $IntFilterCopyWith<$Res>? get price;
  $StringFilterCopyWith<$Res>? get priceCurrency;
  $IntFilterCopyWith<$Res>? get callsPerWeek;
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours;
  $IntFilterCopyWith<$Res>? get totalSessions;
  $FloatFilterCopyWith<$Res>? get totalHours;
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport;
  $StringFilterCopyWith<$Res>? get language;
  $StringFilterCopyWith<$Res>? get level;
  $StringFilterCopyWith<$Res>? get prerequisites;
  $StringFilterCopyWith<$Res>? get materialProvided;
  $StringListFilterCopyWith<$Res>? get learningOutcomes;
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  $BooleanFilterCopyWith<$Res>? get freeTrialEnabled;
  $IntFilterCopyWith<$Res>? get freeTrialDurationMinutes;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SubscriptionPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SubscriptionPlanWhereInputCopyWithImpl<$Res,
        $Val extends SubscriptionPlanWhereInput>
    implements $SubscriptionPlanWhereInputCopyWith<$Res> {
  _$SubscriptionPlanWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupportFilter?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionPlanWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionPlanWhereInput
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

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get durationInMonths {
    if (_value.durationInMonths == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.durationInMonths!, (value) {
      return _then(_value.copyWith(durationInMonths: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get priceCurrency {
    if (_value.priceCurrency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.priceCurrency!, (value) {
      return _then(_value.copyWith(priceCurrency: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get callsPerWeek {
    if (_value.callsPerWeek == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.callsPerWeek!, (value) {
      return _then(_value.copyWith(callsPerWeek: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours {
    if (_value.sessionDurationInHours == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.sessionDurationInHours!, (value) {
      return _then(_value.copyWith(sessionDurationInHours: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalSessions {
    if (_value.totalSessions == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalSessions!, (value) {
      return _then(_value.copyWith(totalSessions: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get totalHours {
    if (_value.totalHours == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.totalHours!, (value) {
      return _then(_value.copyWith(totalHours: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport {
    if (_value.emailSupport == null) {
      return null;
    }

    return $PlanEmailSupportFilterCopyWith<$Res>(_value.emailSupport!, (value) {
      return _then(_value.copyWith(emailSupport: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get prerequisites {
    if (_value.prerequisites == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.prerequisites!, (value) {
      return _then(_value.copyWith(prerequisites: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get materialProvided {
    if (_value.materialProvided == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.materialProvided!, (value) {
      return _then(_value.copyWith(materialProvided: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get learningOutcomes {
    if (_value.learningOutcomes == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.learningOutcomes!, (value) {
      return _then(_value.copyWith(learningOutcomes: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicListRelationFilterCopyWith<$Res>? get topics {
    if (_value.topics == null) {
      return null;
    }

    return $TopicListRelationFilterCopyWith<$Res>(_value.topics!, (value) {
      return _then(_value.copyWith(topics: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get freeTrialEnabled {
    if (_value.freeTrialEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.freeTrialEnabled!, (value) {
      return _then(_value.copyWith(freeTrialEnabled: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get freeTrialDurationMinutes {
    if (_value.freeTrialDurationMinutes == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.freeTrialDurationMinutes!, (value) {
      return _then(_value.copyWith(freeTrialDurationMinutes: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanWhereInput
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

  /// Create a copy of SubscriptionPlanWhereInput
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

  /// Create a copy of SubscriptionPlanWhereInput
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

  /// Create a copy of SubscriptionPlanWhereInput
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

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionPlanWhereInputImplCopyWith<$Res>
    implements $SubscriptionPlanWhereInputCopyWith<$Res> {
  factory _$$SubscriptionPlanWhereInputImplCopyWith(
          _$SubscriptionPlanWhereInputImpl value,
          $Res Function(_$SubscriptionPlanWhereInputImpl) then) =
      __$$SubscriptionPlanWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      IntFilter? durationInMonths,
      IntFilter? price,
      StringFilter? priceCurrency,
      IntFilter? callsPerWeek,
      FloatFilter? sessionDurationInHours,
      IntFilter? totalSessions,
      FloatFilter? totalHours,
      PlanEmailSupportFilter? emailSupport,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      TopicListRelationFilter? topics,
      BooleanFilter? freeTrialEnabled,
      IntFilter? freeTrialDurationMinutes,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionPlanWhereInput>? AND,
      List<SubscriptionPlanWhereInput>? OR,
      SubscriptionPlanWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $IntFilterCopyWith<$Res>? get durationInMonths;
  @override
  $IntFilterCopyWith<$Res>? get price;
  @override
  $StringFilterCopyWith<$Res>? get priceCurrency;
  @override
  $IntFilterCopyWith<$Res>? get callsPerWeek;
  @override
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours;
  @override
  $IntFilterCopyWith<$Res>? get totalSessions;
  @override
  $FloatFilterCopyWith<$Res>? get totalHours;
  @override
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport;
  @override
  $StringFilterCopyWith<$Res>? get language;
  @override
  $StringFilterCopyWith<$Res>? get level;
  @override
  $StringFilterCopyWith<$Res>? get prerequisites;
  @override
  $StringFilterCopyWith<$Res>? get materialProvided;
  @override
  $StringListFilterCopyWith<$Res>? get learningOutcomes;
  @override
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  @override
  $BooleanFilterCopyWith<$Res>? get freeTrialEnabled;
  @override
  $IntFilterCopyWith<$Res>? get freeTrialDurationMinutes;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SubscriptionPlanWhereInputImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanWhereInputCopyWithImpl<$Res,
        _$SubscriptionPlanWhereInputImpl>
    implements _$$SubscriptionPlanWhereInputImplCopyWith<$Res> {
  __$$SubscriptionPlanWhereInputImplCopyWithImpl(
      _$SubscriptionPlanWhereInputImpl _value,
      $Res Function(_$SubscriptionPlanWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SubscriptionPlanWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupportFilter?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionPlanWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubscriptionPlanWhereInputImpl implements _SubscriptionPlanWhereInput {
  const _$SubscriptionPlanWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.durationInMonths,
      this.price,
      this.priceCurrency,
      this.callsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.emailSupport,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.topics,
      this.freeTrialEnabled,
      this.freeTrialDurationMinutes,
      this.consultantProfile,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt,
      final List<SubscriptionPlanWhereInput>? AND,
      final List<SubscriptionPlanWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SubscriptionPlanWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionPlanWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final IntFilter? durationInMonths;
  @override
  final IntFilter? price;
  @override
  final StringFilter? priceCurrency;
  @override
  final IntFilter? callsPerWeek;
  @override
  final FloatFilter? sessionDurationInHours;
  @override
  final IntFilter? totalSessions;
  @override
  final FloatFilter? totalHours;
  @override
  final PlanEmailSupportFilter? emailSupport;
  @override
  final StringFilter? language;
  @override
  final StringFilter? level;
  @override
  final StringFilter? prerequisites;
  @override
  final StringFilter? materialProvided;
  @override
  final StringListFilter? learningOutcomes;

  /// Filter by topics relation
  @override
  final TopicListRelationFilter? topics;
  @override
  final BooleanFilter? freeTrialEnabled;
  @override
  final IntFilter? freeTrialDurationMinutes;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SubscriptionPlanWhereInput>? _AND;
  @override
  List<SubscriptionPlanWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionPlanWhereInput>? _OR;
  @override
  List<SubscriptionPlanWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubscriptionPlanWhereInput? NOT;

  @override
  String toString() {
    return 'SubscriptionPlanWhereInput(id: $id, title: $title, description: $description, durationInMonths: $durationInMonths, price: $price, priceCurrency: $priceCurrency, callsPerWeek: $callsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, topics: $topics, freeTrialEnabled: $freeTrialEnabled, freeTrialDurationMinutes: $freeTrialDurationMinutes, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.callsPerWeek, callsPerWeek) ||
                other.callsPerWeek == callsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.topics, topics) || other.topics == topics) &&
            (identical(other.freeTrialEnabled, freeTrialEnabled) ||
                other.freeTrialEnabled == freeTrialEnabled) &&
            (identical(
                    other.freeTrialDurationMinutes, freeTrialDurationMinutes) ||
                other.freeTrialDurationMinutes == freeTrialDurationMinutes) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
        title,
        description,
        durationInMonths,
        price,
        priceCurrency,
        callsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        language,
        level,
        prerequisites,
        materialProvided,
        learningOutcomes,
        topics,
        freeTrialEnabled,
        freeTrialDurationMinutes,
        consultantProfile,
        consultantProfileId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanWhereInputImplCopyWith<_$SubscriptionPlanWhereInputImpl>
      get copyWith => __$$SubscriptionPlanWhereInputImplCopyWithImpl<
          _$SubscriptionPlanWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlanWhereInput
    implements SubscriptionPlanWhereInput {
  const factory _SubscriptionPlanWhereInput(
          {final StringFilter? id,
          final StringFilter? title,
          final StringFilter? description,
          final IntFilter? durationInMonths,
          final IntFilter? price,
          final StringFilter? priceCurrency,
          final IntFilter? callsPerWeek,
          final FloatFilter? sessionDurationInHours,
          final IntFilter? totalSessions,
          final FloatFilter? totalHours,
          final PlanEmailSupportFilter? emailSupport,
          final StringFilter? language,
          final StringFilter? level,
          final StringFilter? prerequisites,
          final StringFilter? materialProvided,
          final StringListFilter? learningOutcomes,
          final TopicListRelationFilter? topics,
          final BooleanFilter? freeTrialEnabled,
          final IntFilter? freeTrialDurationMinutes,
          final ConsultantProfileRelationFilter? consultantProfile,
          final StringFilter? consultantProfileId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<SubscriptionPlanWhereInput>? AND,
          final List<SubscriptionPlanWhereInput>? OR,
          final SubscriptionPlanWhereInput? NOT}) =
      _$SubscriptionPlanWhereInputImpl;

  factory _SubscriptionPlanWhereInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionPlanWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  IntFilter? get durationInMonths;
  @override
  IntFilter? get price;
  @override
  StringFilter? get priceCurrency;
  @override
  IntFilter? get callsPerWeek;
  @override
  FloatFilter? get sessionDurationInHours;
  @override
  IntFilter? get totalSessions;
  @override
  FloatFilter? get totalHours;
  @override
  PlanEmailSupportFilter? get emailSupport;
  @override
  StringFilter? get language;
  @override
  StringFilter? get level;
  @override
  StringFilter? get prerequisites;
  @override
  StringFilter? get materialProvided;
  @override
  StringListFilter? get learningOutcomes;

  /// Filter by topics relation
  @override
  TopicListRelationFilter? get topics;
  @override
  BooleanFilter? get freeTrialEnabled;
  @override
  IntFilter? get freeTrialDurationMinutes;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SubscriptionPlanWhereInput>? get AND;
  @override
  List<SubscriptionPlanWhereInput>? get OR;
  @override
  SubscriptionPlanWhereInput? get NOT;

  /// Create a copy of SubscriptionPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanWhereInputImplCopyWith<_$SubscriptionPlanWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionPlanListRelationFilter _$SubscriptionPlanListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionPlanListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlanListRelationFilter {
  /// At least one related record matches
  SubscriptionPlanWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SubscriptionPlanWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SubscriptionPlanWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlanListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanListRelationFilterCopyWith<
          SubscriptionPlanListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanListRelationFilterCopyWith<$Res> {
  factory $SubscriptionPlanListRelationFilterCopyWith(
          SubscriptionPlanListRelationFilter value,
          $Res Function(SubscriptionPlanListRelationFilter) then) =
      _$SubscriptionPlanListRelationFilterCopyWithImpl<$Res,
          SubscriptionPlanListRelationFilter>;
  @useResult
  $Res call(
      {SubscriptionPlanWhereInput? some,
      SubscriptionPlanWhereInput? every,
      SubscriptionPlanWhereInput? none});

  $SubscriptionPlanWhereInputCopyWith<$Res>? get some;
  $SubscriptionPlanWhereInputCopyWith<$Res>? get every;
  $SubscriptionPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SubscriptionPlanListRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionPlanListRelationFilter>
    implements $SubscriptionPlanListRelationFilterCopyWith<$Res> {
  _$SubscriptionPlanListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlanListRelationFilter
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
              as SubscriptionPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionPlanListRelationFilterImplCopyWith<$Res>
    implements $SubscriptionPlanListRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionPlanListRelationFilterImplCopyWith(
          _$SubscriptionPlanListRelationFilterImpl value,
          $Res Function(_$SubscriptionPlanListRelationFilterImpl) then) =
      __$$SubscriptionPlanListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubscriptionPlanWhereInput? some,
      SubscriptionPlanWhereInput? every,
      SubscriptionPlanWhereInput? none});

  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get some;
  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get every;
  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SubscriptionPlanListRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanListRelationFilterCopyWithImpl<$Res,
        _$SubscriptionPlanListRelationFilterImpl>
    implements _$$SubscriptionPlanListRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionPlanListRelationFilterImplCopyWithImpl(
      _$SubscriptionPlanListRelationFilterImpl _value,
      $Res Function(_$SubscriptionPlanListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SubscriptionPlanListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionPlanListRelationFilterImpl
    implements _SubscriptionPlanListRelationFilter {
  const _$SubscriptionPlanListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SubscriptionPlanListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionPlanListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SubscriptionPlanWhereInput? some;

  /// All related records match
  @override
  final SubscriptionPlanWhereInput? every;

  /// No related records match
  @override
  final SubscriptionPlanWhereInput? none;

  @override
  String toString() {
    return 'SubscriptionPlanListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanListRelationFilterImplCopyWith<
          _$SubscriptionPlanListRelationFilterImpl>
      get copyWith => __$$SubscriptionPlanListRelationFilterImplCopyWithImpl<
          _$SubscriptionPlanListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlanListRelationFilter
    implements SubscriptionPlanListRelationFilter {
  const factory _SubscriptionPlanListRelationFilter(
          {final SubscriptionPlanWhereInput? some,
          final SubscriptionPlanWhereInput? every,
          final SubscriptionPlanWhereInput? none}) =
      _$SubscriptionPlanListRelationFilterImpl;

  factory _SubscriptionPlanListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionPlanListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SubscriptionPlanWhereInput? get some;

  /// All related records match
  @override
  SubscriptionPlanWhereInput? get every;

  /// No related records match
  @override
  SubscriptionPlanWhereInput? get none;

  /// Create a copy of SubscriptionPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanListRelationFilterImplCopyWith<
          _$SubscriptionPlanListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionPlanRelationFilter _$SubscriptionPlanRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionPlanRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlanRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SubscriptionPlanWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SubscriptionPlanWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlanRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanRelationFilterCopyWith<SubscriptionPlanRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanRelationFilterCopyWith<$Res> {
  factory $SubscriptionPlanRelationFilterCopyWith(
          SubscriptionPlanRelationFilter value,
          $Res Function(SubscriptionPlanRelationFilter) then) =
      _$SubscriptionPlanRelationFilterCopyWithImpl<$Res,
          SubscriptionPlanRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionPlanWhereInput? is_,
      SubscriptionPlanWhereInput? isNot});

  $SubscriptionPlanWhereInputCopyWith<$Res>? get is_;
  $SubscriptionPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SubscriptionPlanRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionPlanRelationFilter>
    implements $SubscriptionPlanRelationFilterCopyWith<$Res> {
  _$SubscriptionPlanRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlanRelationFilter
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
              as SubscriptionPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SubscriptionPlanWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionPlanRelationFilterImplCopyWith<$Res>
    implements $SubscriptionPlanRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionPlanRelationFilterImplCopyWith(
          _$SubscriptionPlanRelationFilterImpl value,
          $Res Function(_$SubscriptionPlanRelationFilterImpl) then) =
      __$$SubscriptionPlanRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionPlanWhereInput? is_,
      SubscriptionPlanWhereInput? isNot});

  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get is_;
  @override
  $SubscriptionPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SubscriptionPlanRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanRelationFilterCopyWithImpl<$Res,
        _$SubscriptionPlanRelationFilterImpl>
    implements _$$SubscriptionPlanRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionPlanRelationFilterImplCopyWithImpl(
      _$SubscriptionPlanRelationFilterImpl _value,
      $Res Function(_$SubscriptionPlanRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SubscriptionPlanRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionPlanRelationFilterImpl
    implements _SubscriptionPlanRelationFilter {
  const _$SubscriptionPlanRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SubscriptionPlanRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionPlanRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SubscriptionPlanWhereInput? is_;

  /// Related record does not match
  @override
  final SubscriptionPlanWhereInput? isNot;

  @override
  String toString() {
    return 'SubscriptionPlanRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanRelationFilterImplCopyWith<
          _$SubscriptionPlanRelationFilterImpl>
      get copyWith => __$$SubscriptionPlanRelationFilterImplCopyWithImpl<
          _$SubscriptionPlanRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlanRelationFilter
    implements SubscriptionPlanRelationFilter {
  const factory _SubscriptionPlanRelationFilter(
          {@JsonKey(name: 'is') final SubscriptionPlanWhereInput? is_,
          final SubscriptionPlanWhereInput? isNot}) =
      _$SubscriptionPlanRelationFilterImpl;

  factory _SubscriptionPlanRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SubscriptionPlanRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SubscriptionPlanWhereInput? get is_;

  /// Related record does not match
  @override
  SubscriptionPlanWhereInput? get isNot;

  /// Create a copy of SubscriptionPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanRelationFilterImplCopyWith<
          _$SubscriptionPlanRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionPlanOrderByInput _$SubscriptionPlanOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionPlanOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPlanOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get durationInMonths => throw _privateConstructorUsedError;
  SortOrder? get price => throw _privateConstructorUsedError;
  SortOrder? get priceCurrency => throw _privateConstructorUsedError;
  SortOrder? get callsPerWeek => throw _privateConstructorUsedError;
  SortOrder? get sessionDurationInHours => throw _privateConstructorUsedError;
  SortOrder? get totalSessions => throw _privateConstructorUsedError;
  SortOrder? get totalHours => throw _privateConstructorUsedError;
  SortOrder? get language => throw _privateConstructorUsedError;
  SortOrder? get level => throw _privateConstructorUsedError;
  SortOrder? get prerequisites => throw _privateConstructorUsedError;
  SortOrder? get materialProvided => throw _privateConstructorUsedError;
  SortOrder? get learningOutcomes => throw _privateConstructorUsedError;
  SortOrder? get freeTrialEnabled => throw _privateConstructorUsedError;
  SortOrder? get freeTrialDurationMinutes => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionPlanOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanOrderByInputCopyWith<SubscriptionPlanOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanOrderByInputCopyWith<$Res> {
  factory $SubscriptionPlanOrderByInputCopyWith(
          SubscriptionPlanOrderByInput value,
          $Res Function(SubscriptionPlanOrderByInput) then) =
      _$SubscriptionPlanOrderByInputCopyWithImpl<$Res,
          SubscriptionPlanOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? durationInMonths,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? callsPerWeek,
      SortOrder? sessionDurationInHours,
      SortOrder? totalSessions,
      SortOrder? totalHours,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? freeTrialEnabled,
      SortOrder? freeTrialDurationMinutes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SubscriptionPlanOrderByInputCopyWithImpl<$Res,
        $Val extends SubscriptionPlanOrderByInput>
    implements $SubscriptionPlanOrderByInputCopyWith<$Res> {
  _$SubscriptionPlanOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubscriptionPlanOrderByInputImplCopyWith<$Res>
    implements $SubscriptionPlanOrderByInputCopyWith<$Res> {
  factory _$$SubscriptionPlanOrderByInputImplCopyWith(
          _$SubscriptionPlanOrderByInputImpl value,
          $Res Function(_$SubscriptionPlanOrderByInputImpl) then) =
      __$$SubscriptionPlanOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? durationInMonths,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? callsPerWeek,
      SortOrder? sessionDurationInHours,
      SortOrder? totalSessions,
      SortOrder? totalHours,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? freeTrialEnabled,
      SortOrder? freeTrialDurationMinutes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SubscriptionPlanOrderByInputImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanOrderByInputCopyWithImpl<$Res,
        _$SubscriptionPlanOrderByInputImpl>
    implements _$$SubscriptionPlanOrderByInputImplCopyWith<$Res> {
  __$$SubscriptionPlanOrderByInputImplCopyWithImpl(
      _$SubscriptionPlanOrderByInputImpl _value,
      $Res Function(_$SubscriptionPlanOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInMonths = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? callsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? freeTrialEnabled = freezed,
    Object? freeTrialDurationMinutes = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubscriptionPlanOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      callsPerWeek: freezed == callsPerWeek
          ? _value.callsPerWeek
          : callsPerWeek // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      freeTrialEnabled: freezed == freeTrialEnabled
          ? _value.freeTrialEnabled
          : freeTrialEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      freeTrialDurationMinutes: freezed == freeTrialDurationMinutes
          ? _value.freeTrialDurationMinutes
          : freeTrialDurationMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
class _$SubscriptionPlanOrderByInputImpl
    implements _SubscriptionPlanOrderByInput {
  const _$SubscriptionPlanOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.durationInMonths,
      this.price,
      this.priceCurrency,
      this.callsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.freeTrialEnabled,
      this.freeTrialDurationMinutes,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$SubscriptionPlanOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionPlanOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? durationInMonths;
  @override
  final SortOrder? price;
  @override
  final SortOrder? priceCurrency;
  @override
  final SortOrder? callsPerWeek;
  @override
  final SortOrder? sessionDurationInHours;
  @override
  final SortOrder? totalSessions;
  @override
  final SortOrder? totalHours;
  @override
  final SortOrder? language;
  @override
  final SortOrder? level;
  @override
  final SortOrder? prerequisites;
  @override
  final SortOrder? materialProvided;
  @override
  final SortOrder? learningOutcomes;
  @override
  final SortOrder? freeTrialEnabled;
  @override
  final SortOrder? freeTrialDurationMinutes;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SubscriptionPlanOrderByInput(id: $id, title: $title, description: $description, durationInMonths: $durationInMonths, price: $price, priceCurrency: $priceCurrency, callsPerWeek: $callsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, freeTrialEnabled: $freeTrialEnabled, freeTrialDurationMinutes: $freeTrialDurationMinutes, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.callsPerWeek, callsPerWeek) ||
                other.callsPerWeek == callsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.freeTrialEnabled, freeTrialEnabled) ||
                other.freeTrialEnabled == freeTrialEnabled) &&
            (identical(
                    other.freeTrialDurationMinutes, freeTrialDurationMinutes) ||
                other.freeTrialDurationMinutes == freeTrialDurationMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
        title,
        description,
        durationInMonths,
        price,
        priceCurrency,
        callsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        language,
        level,
        prerequisites,
        materialProvided,
        learningOutcomes,
        freeTrialEnabled,
        freeTrialDurationMinutes,
        consultantProfileId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of SubscriptionPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanOrderByInputImplCopyWith<
          _$SubscriptionPlanOrderByInputImpl>
      get copyWith => __$$SubscriptionPlanOrderByInputImplCopyWithImpl<
          _$SubscriptionPlanOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionPlanOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionPlanOrderByInput
    implements SubscriptionPlanOrderByInput {
  const factory _SubscriptionPlanOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? durationInMonths,
      final SortOrder? price,
      final SortOrder? priceCurrency,
      final SortOrder? callsPerWeek,
      final SortOrder? sessionDurationInHours,
      final SortOrder? totalSessions,
      final SortOrder? totalHours,
      final SortOrder? language,
      final SortOrder? level,
      final SortOrder? prerequisites,
      final SortOrder? materialProvided,
      final SortOrder? learningOutcomes,
      final SortOrder? freeTrialEnabled,
      final SortOrder? freeTrialDurationMinutes,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SubscriptionPlanOrderByInputImpl;

  factory _SubscriptionPlanOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionPlanOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get durationInMonths;
  @override
  SortOrder? get price;
  @override
  SortOrder? get priceCurrency;
  @override
  SortOrder? get callsPerWeek;
  @override
  SortOrder? get sessionDurationInHours;
  @override
  SortOrder? get totalSessions;
  @override
  SortOrder? get totalHours;
  @override
  SortOrder? get language;
  @override
  SortOrder? get level;
  @override
  SortOrder? get prerequisites;
  @override
  SortOrder? get materialProvided;
  @override
  SortOrder? get learningOutcomes;
  @override
  SortOrder? get freeTrialEnabled;
  @override
  SortOrder? get freeTrialDurationMinutes;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SubscriptionPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanOrderByInputImplCopyWith<
          _$SubscriptionPlanOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
