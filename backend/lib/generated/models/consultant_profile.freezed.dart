// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultant_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultantProfile _$ConsultantProfileFromJson(Map<String, dynamic> json) {
  return _ConsultantProfile.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfile {
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get experience => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;
  String? get websiteUrl => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get githubUrl => throw _privateConstructorUsedError;
  String? get videoIntroUrl => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  List<String>? get toolsAndTechnologies => throw _privateConstructorUsedError;
  String? get mentoringStyle => throw _privateConstructorUsedError;
  List<SessionType>? get sessionTypes => throw _privateConstructorUsedError;
  int get profileCompletionPercentage => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  ConsultantVerificationStatus get verificationStatus =>
      throw _privateConstructorUsedError;
  int get totalMenteesHelped => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Domain? get domain => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubDomain>? get subDomains => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Tag>? get tags => throw _privateConstructorUsedError;
  List<ConsultantReview> get reviews => throw _privateConstructorUsedError;
  ScheduleType get scheduleType => throw _privateConstructorUsedError;
  List<SlotOfAvailabilityWeekly> get slotsOfAvailabilityWeekly =>
      throw _privateConstructorUsedError;
  List<SlotOfAvailabilityCustom> get slotsOfAvailabilityCustom =>
      throw _privateConstructorUsedError;
  List<ConsultationPlan> get consultationPlans =>
      throw _privateConstructorUsedError;
  List<SubscriptionPlan> get subscriptionPlans =>
      throw _privateConstructorUsedError;
  List<WebinarPlan> get webinarPlans => throw _privateConstructorUsedError;
  List<ClassPlan> get classPlans => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get webinarCollaborations =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get classCollaborations =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get invitedWebinarCollabs =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get invitedClassCollabs =>
      throw _privateConstructorUsedError;
  List<TrialSession> get trialSessions => throw _privateConstructorUsedError;
  List<ActivityLog> get activityLogs => throw _privateConstructorUsedError;
  List<Achievement> get achievements => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<ConsultantEarnings> get earnings => throw _privateConstructorUsedError;
  List<Payout> get payouts => throw _privateConstructorUsedError;
  List<PayoutAccount> get payoutAccounts => throw _privateConstructorUsedError;
  ConsultantTaxInfo? get taxInfo => throw _privateConstructorUsedError;
  List<TDSRecord> get tdsRecords => throw _privateConstructorUsedError;
  List<ConsultantProfileVerification> get verificationRequests =>
      throw _privateConstructorUsedError;
  int get totalRevenue => throw _privateConstructorUsedError;
  int get pendingRevenue => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileCopyWith<ConsultantProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileCopyWith<$Res> {
  factory $ConsultantProfileCopyWith(
          ConsultantProfile value, $Res Function(ConsultantProfile) then) =
      _$ConsultantProfileCopyWithImpl<$Res, ConsultantProfile>;
  @useResult
  $Res call(
      {String id,
      String? description,
      double? experience,
      double rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int profileCompletionPercentage,
      bool isVerified,
      ConsultantVerificationStatus verificationStatus,
      int totalMenteesHelped,
      @JsonKey(includeFromJson: false, includeToJson: false) Domain? domain,
      String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SubDomain>? subDomains,
      @JsonKey(includeFromJson: false, includeToJson: false) List<Tag>? tags,
      List<ConsultantReview> reviews,
      ScheduleType scheduleType,
      List<SlotOfAvailabilityWeekly> slotsOfAvailabilityWeekly,
      List<SlotOfAvailabilityCustom> slotsOfAvailabilityCustom,
      List<ConsultationPlan> consultationPlans,
      List<SubscriptionPlan> subscriptionPlans,
      List<WebinarPlan> webinarPlans,
      List<ClassPlan> classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarCollaborator>? webinarCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? classCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarCollaborator>? invitedWebinarCollabs,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? invitedClassCollabs,
      List<TrialSession> trialSessions,
      List<ActivityLog> activityLogs,
      List<Achievement> achievements,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      List<ConsultantEarnings> earnings,
      List<Payout> payouts,
      List<PayoutAccount> payoutAccounts,
      ConsultantTaxInfo? taxInfo,
      List<TDSRecord> tdsRecords,
      List<ConsultantProfileVerification> verificationRequests,
      int totalRevenue,
      int pendingRevenue,
      DateTime createdAt,
      DateTime updatedAt});

  $DomainCopyWith<$Res>? get domain;
  $UserCopyWith<$Res>? get user;
  $ConsultantTaxInfoCopyWith<$Res>? get taxInfo;
}

/// @nodoc
class _$ConsultantProfileCopyWithImpl<$Res, $Val extends ConsultantProfile>
    implements $ConsultantProfileCopyWith<$Res> {
  _$ConsultantProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = null,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = null,
    Object? isVerified = null,
    Object? verificationStatus = null,
    Object? totalMenteesHelped = null,
    Object? domain = freezed,
    Object? domainId = null,
    Object? subDomains = freezed,
    Object? tags = freezed,
    Object? reviews = null,
    Object? scheduleType = null,
    Object? slotsOfAvailabilityWeekly = null,
    Object? slotsOfAvailabilityCustom = null,
    Object? consultationPlans = null,
    Object? subscriptionPlans = null,
    Object? webinarPlans = null,
    Object? classPlans = null,
    Object? webinarCollaborations = freezed,
    Object? classCollaborations = freezed,
    Object? invitedWebinarCollabs = freezed,
    Object? invitedClassCollabs = freezed,
    Object? trialSessions = null,
    Object? activityLogs = null,
    Object? achievements = null,
    Object? user = freezed,
    Object? userId = null,
    Object? earnings = null,
    Object? payouts = null,
    Object? payoutAccounts = null,
    Object? taxInfo = freezed,
    Object? tdsRecords = null,
    Object? verificationRequests = null,
    Object? totalRevenue = null,
    Object? pendingRevenue = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value.sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: null == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus,
      totalMenteesHelped: null == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      subDomains: freezed == subDomains
          ? _value.subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as List<SubDomain>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReview>,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      slotsOfAvailabilityWeekly: null == slotsOfAvailabilityWeekly
          ? _value.slotsOfAvailabilityWeekly
          : slotsOfAvailabilityWeekly // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeekly>,
      slotsOfAvailabilityCustom: null == slotsOfAvailabilityCustom
          ? _value.slotsOfAvailabilityCustom
          : slotsOfAvailabilityCustom // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityCustom>,
      consultationPlans: null == consultationPlans
          ? _value.consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlan>,
      subscriptionPlans: null == subscriptionPlans
          ? _value.subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlan>,
      webinarPlans: null == webinarPlans
          ? _value.webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlan>,
      classPlans: null == classPlans
          ? _value.classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as List<ClassPlan>,
      webinarCollaborations: freezed == webinarCollaborations
          ? _value.webinarCollaborations
          : webinarCollaborations // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>?,
      classCollaborations: freezed == classCollaborations
          ? _value.classCollaborations
          : classCollaborations // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
      invitedWebinarCollabs: freezed == invitedWebinarCollabs
          ? _value.invitedWebinarCollabs
          : invitedWebinarCollabs // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>?,
      invitedClassCollabs: freezed == invitedClassCollabs
          ? _value.invitedClassCollabs
          : invitedClassCollabs // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
      trialSessions: null == trialSessions
          ? _value.trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      activityLogs: null == activityLogs
          ? _value.activityLogs
          : activityLogs // ignore: cast_nullable_to_non_nullable
              as List<ActivityLog>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      payouts: null == payouts
          ? _value.payouts
          : payouts // ignore: cast_nullable_to_non_nullable
              as List<Payout>,
      payoutAccounts: null == payoutAccounts
          ? _value.payoutAccounts
          : payoutAccounts // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccount>,
      taxInfo: freezed == taxInfo
          ? _value.taxInfo
          : taxInfo // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfo?,
      tdsRecords: null == tdsRecords
          ? _value.tdsRecords
          : tdsRecords // ignore: cast_nullable_to_non_nullable
              as List<TDSRecord>,
      verificationRequests: null == verificationRequests
          ? _value.verificationRequests
          : verificationRequests // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileVerification>,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
      pendingRevenue: null == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int,
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

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $DomainCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfile
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

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantTaxInfoCopyWith<$Res>? get taxInfo {
    if (_value.taxInfo == null) {
      return null;
    }

    return $ConsultantTaxInfoCopyWith<$Res>(_value.taxInfo!, (value) {
      return _then(_value.copyWith(taxInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileImplCopyWith<$Res>
    implements $ConsultantProfileCopyWith<$Res> {
  factory _$$ConsultantProfileImplCopyWith(_$ConsultantProfileImpl value,
          $Res Function(_$ConsultantProfileImpl) then) =
      __$$ConsultantProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? description,
      double? experience,
      double rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int profileCompletionPercentage,
      bool isVerified,
      ConsultantVerificationStatus verificationStatus,
      int totalMenteesHelped,
      @JsonKey(includeFromJson: false, includeToJson: false) Domain? domain,
      String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SubDomain>? subDomains,
      @JsonKey(includeFromJson: false, includeToJson: false) List<Tag>? tags,
      List<ConsultantReview> reviews,
      ScheduleType scheduleType,
      List<SlotOfAvailabilityWeekly> slotsOfAvailabilityWeekly,
      List<SlotOfAvailabilityCustom> slotsOfAvailabilityCustom,
      List<ConsultationPlan> consultationPlans,
      List<SubscriptionPlan> subscriptionPlans,
      List<WebinarPlan> webinarPlans,
      List<ClassPlan> classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarCollaborator>? webinarCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? classCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarCollaborator>? invitedWebinarCollabs,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? invitedClassCollabs,
      List<TrialSession> trialSessions,
      List<ActivityLog> activityLogs,
      List<Achievement> achievements,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      List<ConsultantEarnings> earnings,
      List<Payout> payouts,
      List<PayoutAccount> payoutAccounts,
      ConsultantTaxInfo? taxInfo,
      List<TDSRecord> tdsRecords,
      List<ConsultantProfileVerification> verificationRequests,
      int totalRevenue,
      int pendingRevenue,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $DomainCopyWith<$Res>? get domain;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ConsultantTaxInfoCopyWith<$Res>? get taxInfo;
}

/// @nodoc
class __$$ConsultantProfileImplCopyWithImpl<$Res>
    extends _$ConsultantProfileCopyWithImpl<$Res, _$ConsultantProfileImpl>
    implements _$$ConsultantProfileImplCopyWith<$Res> {
  __$$ConsultantProfileImplCopyWithImpl(_$ConsultantProfileImpl _value,
      $Res Function(_$ConsultantProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = null,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = null,
    Object? isVerified = null,
    Object? verificationStatus = null,
    Object? totalMenteesHelped = null,
    Object? domain = freezed,
    Object? domainId = null,
    Object? subDomains = freezed,
    Object? tags = freezed,
    Object? reviews = null,
    Object? scheduleType = null,
    Object? slotsOfAvailabilityWeekly = null,
    Object? slotsOfAvailabilityCustom = null,
    Object? consultationPlans = null,
    Object? subscriptionPlans = null,
    Object? webinarPlans = null,
    Object? classPlans = null,
    Object? webinarCollaborations = freezed,
    Object? classCollaborations = freezed,
    Object? invitedWebinarCollabs = freezed,
    Object? invitedClassCollabs = freezed,
    Object? trialSessions = null,
    Object? activityLogs = null,
    Object? achievements = null,
    Object? user = freezed,
    Object? userId = null,
    Object? earnings = null,
    Object? payouts = null,
    Object? payoutAccounts = null,
    Object? taxInfo = freezed,
    Object? tdsRecords = null,
    Object? verificationRequests = null,
    Object? totalRevenue = null,
    Object? pendingRevenue = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultantProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value._toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value._sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: null == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus,
      totalMenteesHelped: null == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      subDomains: freezed == subDomains
          ? _value._subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as List<SubDomain>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReview>,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      slotsOfAvailabilityWeekly: null == slotsOfAvailabilityWeekly
          ? _value._slotsOfAvailabilityWeekly
          : slotsOfAvailabilityWeekly // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeekly>,
      slotsOfAvailabilityCustom: null == slotsOfAvailabilityCustom
          ? _value._slotsOfAvailabilityCustom
          : slotsOfAvailabilityCustom // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityCustom>,
      consultationPlans: null == consultationPlans
          ? _value._consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlan>,
      subscriptionPlans: null == subscriptionPlans
          ? _value._subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlan>,
      webinarPlans: null == webinarPlans
          ? _value._webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlan>,
      classPlans: null == classPlans
          ? _value._classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as List<ClassPlan>,
      webinarCollaborations: freezed == webinarCollaborations
          ? _value._webinarCollaborations
          : webinarCollaborations // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>?,
      classCollaborations: freezed == classCollaborations
          ? _value._classCollaborations
          : classCollaborations // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
      invitedWebinarCollabs: freezed == invitedWebinarCollabs
          ? _value._invitedWebinarCollabs
          : invitedWebinarCollabs // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>?,
      invitedClassCollabs: freezed == invitedClassCollabs
          ? _value._invitedClassCollabs
          : invitedClassCollabs // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
      trialSessions: null == trialSessions
          ? _value._trialSessions
          : trialSessions // ignore: cast_nullable_to_non_nullable
              as List<TrialSession>,
      activityLogs: null == activityLogs
          ? _value._activityLogs
          : activityLogs // ignore: cast_nullable_to_non_nullable
              as List<ActivityLog>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: null == earnings
          ? _value._earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      payouts: null == payouts
          ? _value._payouts
          : payouts // ignore: cast_nullable_to_non_nullable
              as List<Payout>,
      payoutAccounts: null == payoutAccounts
          ? _value._payoutAccounts
          : payoutAccounts // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccount>,
      taxInfo: freezed == taxInfo
          ? _value.taxInfo
          : taxInfo // ignore: cast_nullable_to_non_nullable
              as ConsultantTaxInfo?,
      tdsRecords: null == tdsRecords
          ? _value._tdsRecords
          : tdsRecords // ignore: cast_nullable_to_non_nullable
              as List<TDSRecord>,
      verificationRequests: null == verificationRequests
          ? _value._verificationRequests
          : verificationRequests // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileVerification>,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
      pendingRevenue: null == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ConsultantProfileImpl implements _ConsultantProfile {
  const _$ConsultantProfileImpl(
      {required this.id,
      this.description,
      this.experience,
      this.rating = 0,
      this.headline,
      this.websiteUrl,
      this.twitterUrl,
      this.githubUrl,
      this.videoIntroUrl,
      final List<String>? languages = const <String>[],
      final List<String>? toolsAndTechnologies = const <String>[],
      this.mentoringStyle,
      final List<SessionType>? sessionTypes = const <SessionType>[],
      this.profileCompletionPercentage = 0,
      this.isVerified = false,
      this.verificationStatus =
          ConsultantVerificationStatus.pendingVerification,
      this.totalMenteesHelped = 0,
      @JsonKey(includeFromJson: false, includeToJson: false) this.domain,
      required this.domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SubDomain>? subDomains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Tag>? tags,
      required final List<ConsultantReview> reviews,
      required this.scheduleType,
      required final List<SlotOfAvailabilityWeekly> slotsOfAvailabilityWeekly,
      required final List<SlotOfAvailabilityCustom> slotsOfAvailabilityCustom,
      required final List<ConsultationPlan> consultationPlans,
      required final List<SubscriptionPlan> subscriptionPlans,
      required final List<WebinarPlan> webinarPlans,
      required final List<ClassPlan> classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarCollaborator>? webinarCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? classCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarCollaborator>? invitedWebinarCollabs,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? invitedClassCollabs,
      required final List<TrialSession> trialSessions,
      required final List<ActivityLog> activityLogs,
      required final List<Achievement> achievements,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required final List<ConsultantEarnings> earnings,
      required final List<Payout> payouts,
      required final List<PayoutAccount> payoutAccounts,
      this.taxInfo,
      required final List<TDSRecord> tdsRecords,
      required final List<ConsultantProfileVerification> verificationRequests,
      this.totalRevenue = 0,
      this.pendingRevenue = 0,
      required this.createdAt,
      required this.updatedAt})
      : _languages = languages,
        _toolsAndTechnologies = toolsAndTechnologies,
        _sessionTypes = sessionTypes,
        _subDomains = subDomains,
        _tags = tags,
        _reviews = reviews,
        _slotsOfAvailabilityWeekly = slotsOfAvailabilityWeekly,
        _slotsOfAvailabilityCustom = slotsOfAvailabilityCustom,
        _consultationPlans = consultationPlans,
        _subscriptionPlans = subscriptionPlans,
        _webinarPlans = webinarPlans,
        _classPlans = classPlans,
        _webinarCollaborations = webinarCollaborations,
        _classCollaborations = classCollaborations,
        _invitedWebinarCollabs = invitedWebinarCollabs,
        _invitedClassCollabs = invitedClassCollabs,
        _trialSessions = trialSessions,
        _activityLogs = activityLogs,
        _achievements = achievements,
        _earnings = earnings,
        _payouts = payouts,
        _payoutAccounts = payoutAccounts,
        _tdsRecords = tdsRecords,
        _verificationRequests = verificationRequests;

  factory _$ConsultantProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultantProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String? description;
  @override
  final double? experience;
  @override
  @JsonKey()
  final double rating;
  @override
  final String? headline;
  @override
  final String? websiteUrl;
  @override
  final String? twitterUrl;
  @override
  final String? githubUrl;
  @override
  final String? videoIntroUrl;
  final List<String>? _languages;
  @override
  @JsonKey()
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _toolsAndTechnologies;
  @override
  @JsonKey()
  List<String>? get toolsAndTechnologies {
    final value = _toolsAndTechnologies;
    if (value == null) return null;
    if (_toolsAndTechnologies is EqualUnmodifiableListView)
      return _toolsAndTechnologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mentoringStyle;
  final List<SessionType>? _sessionTypes;
  @override
  @JsonKey()
  List<SessionType>? get sessionTypes {
    final value = _sessionTypes;
    if (value == null) return null;
    if (_sessionTypes is EqualUnmodifiableListView) return _sessionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int profileCompletionPercentage;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final ConsultantVerificationStatus verificationStatus;
  @override
  @JsonKey()
  final int totalMenteesHelped;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Domain? domain;
  @override
  final String domainId;
  final List<SubDomain>? _subDomains;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubDomain>? get subDomains {
    final value = _subDomains;
    if (value == null) return null;
    if (_subDomains is EqualUnmodifiableListView) return _subDomains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tag>? _tags;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantReview> _reviews;
  @override
  List<ConsultantReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final ScheduleType scheduleType;
  final List<SlotOfAvailabilityWeekly> _slotsOfAvailabilityWeekly;
  @override
  List<SlotOfAvailabilityWeekly> get slotsOfAvailabilityWeekly {
    if (_slotsOfAvailabilityWeekly is EqualUnmodifiableListView)
      return _slotsOfAvailabilityWeekly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slotsOfAvailabilityWeekly);
  }

  final List<SlotOfAvailabilityCustom> _slotsOfAvailabilityCustom;
  @override
  List<SlotOfAvailabilityCustom> get slotsOfAvailabilityCustom {
    if (_slotsOfAvailabilityCustom is EqualUnmodifiableListView)
      return _slotsOfAvailabilityCustom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slotsOfAvailabilityCustom);
  }

  final List<ConsultationPlan> _consultationPlans;
  @override
  List<ConsultationPlan> get consultationPlans {
    if (_consultationPlans is EqualUnmodifiableListView)
      return _consultationPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultationPlans);
  }

  final List<SubscriptionPlan> _subscriptionPlans;
  @override
  List<SubscriptionPlan> get subscriptionPlans {
    if (_subscriptionPlans is EqualUnmodifiableListView)
      return _subscriptionPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptionPlans);
  }

  final List<WebinarPlan> _webinarPlans;
  @override
  List<WebinarPlan> get webinarPlans {
    if (_webinarPlans is EqualUnmodifiableListView) return _webinarPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webinarPlans);
  }

  final List<ClassPlan> _classPlans;
  @override
  List<ClassPlan> get classPlans {
    if (_classPlans is EqualUnmodifiableListView) return _classPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classPlans);
  }

  final List<WebinarCollaborator>? _webinarCollaborations;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get webinarCollaborations {
    final value = _webinarCollaborations;
    if (value == null) return null;
    if (_webinarCollaborations is EqualUnmodifiableListView)
      return _webinarCollaborations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassCollaborator>? _classCollaborations;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get classCollaborations {
    final value = _classCollaborations;
    if (value == null) return null;
    if (_classCollaborations is EqualUnmodifiableListView)
      return _classCollaborations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebinarCollaborator>? _invitedWebinarCollabs;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get invitedWebinarCollabs {
    final value = _invitedWebinarCollabs;
    if (value == null) return null;
    if (_invitedWebinarCollabs is EqualUnmodifiableListView)
      return _invitedWebinarCollabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassCollaborator>? _invitedClassCollabs;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get invitedClassCollabs {
    final value = _invitedClassCollabs;
    if (value == null) return null;
    if (_invitedClassCollabs is EqualUnmodifiableListView)
      return _invitedClassCollabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrialSession> _trialSessions;
  @override
  List<TrialSession> get trialSessions {
    if (_trialSessions is EqualUnmodifiableListView) return _trialSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trialSessions);
  }

  final List<ActivityLog> _activityLogs;
  @override
  List<ActivityLog> get activityLogs {
    if (_activityLogs is EqualUnmodifiableListView) return _activityLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityLogs);
  }

  final List<Achievement> _achievements;
  @override
  List<Achievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  final List<ConsultantEarnings> _earnings;
  @override
  List<ConsultantEarnings> get earnings {
    if (_earnings is EqualUnmodifiableListView) return _earnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earnings);
  }

  final List<Payout> _payouts;
  @override
  List<Payout> get payouts {
    if (_payouts is EqualUnmodifiableListView) return _payouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payouts);
  }

  final List<PayoutAccount> _payoutAccounts;
  @override
  List<PayoutAccount> get payoutAccounts {
    if (_payoutAccounts is EqualUnmodifiableListView) return _payoutAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payoutAccounts);
  }

  @override
  final ConsultantTaxInfo? taxInfo;
  final List<TDSRecord> _tdsRecords;
  @override
  List<TDSRecord> get tdsRecords {
    if (_tdsRecords is EqualUnmodifiableListView) return _tdsRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tdsRecords);
  }

  final List<ConsultantProfileVerification> _verificationRequests;
  @override
  List<ConsultantProfileVerification> get verificationRequests {
    if (_verificationRequests is EqualUnmodifiableListView)
      return _verificationRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verificationRequests);
  }

  @override
  @JsonKey()
  final int totalRevenue;
  @override
  @JsonKey()
  final int pendingRevenue;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsultantProfile(id: $id, description: $description, experience: $experience, rating: $rating, headline: $headline, websiteUrl: $websiteUrl, twitterUrl: $twitterUrl, githubUrl: $githubUrl, videoIntroUrl: $videoIntroUrl, languages: $languages, toolsAndTechnologies: $toolsAndTechnologies, mentoringStyle: $mentoringStyle, sessionTypes: $sessionTypes, profileCompletionPercentage: $profileCompletionPercentage, isVerified: $isVerified, verificationStatus: $verificationStatus, totalMenteesHelped: $totalMenteesHelped, domain: $domain, domainId: $domainId, subDomains: $subDomains, tags: $tags, reviews: $reviews, scheduleType: $scheduleType, slotsOfAvailabilityWeekly: $slotsOfAvailabilityWeekly, slotsOfAvailabilityCustom: $slotsOfAvailabilityCustom, consultationPlans: $consultationPlans, subscriptionPlans: $subscriptionPlans, webinarPlans: $webinarPlans, classPlans: $classPlans, webinarCollaborations: $webinarCollaborations, classCollaborations: $classCollaborations, invitedWebinarCollabs: $invitedWebinarCollabs, invitedClassCollabs: $invitedClassCollabs, trialSessions: $trialSessions, activityLogs: $activityLogs, achievements: $achievements, user: $user, userId: $userId, earnings: $earnings, payouts: $payouts, payoutAccounts: $payoutAccounts, taxInfo: $taxInfo, tdsRecords: $tdsRecords, verificationRequests: $verificationRequests, totalRevenue: $totalRevenue, pendingRevenue: $pendingRevenue, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.videoIntroUrl, videoIntroUrl) ||
                other.videoIntroUrl == videoIntroUrl) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._toolsAndTechnologies, _toolsAndTechnologies) &&
            (identical(other.mentoringStyle, mentoringStyle) ||
                other.mentoringStyle == mentoringStyle) &&
            const DeepCollectionEquality()
                .equals(other._sessionTypes, _sessionTypes) &&
            (identical(other.profileCompletionPercentage, profileCompletionPercentage) ||
                other.profileCompletionPercentage ==
                    profileCompletionPercentage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.totalMenteesHelped, totalMenteesHelped) ||
                other.totalMenteesHelped == totalMenteesHelped) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            const DeepCollectionEquality()
                .equals(other._subDomains, _subDomains) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            const DeepCollectionEquality().equals(
                other._slotsOfAvailabilityWeekly, _slotsOfAvailabilityWeekly) &&
            const DeepCollectionEquality().equals(
                other._slotsOfAvailabilityCustom, _slotsOfAvailabilityCustom) &&
            const DeepCollectionEquality()
                .equals(other._consultationPlans, _consultationPlans) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionPlans, _subscriptionPlans) &&
            const DeepCollectionEquality()
                .equals(other._webinarPlans, _webinarPlans) &&
            const DeepCollectionEquality()
                .equals(other._classPlans, _classPlans) &&
            const DeepCollectionEquality()
                .equals(other._webinarCollaborations, _webinarCollaborations) &&
            const DeepCollectionEquality()
                .equals(other._classCollaborations, _classCollaborations) &&
            const DeepCollectionEquality()
                .equals(other._invitedWebinarCollabs, _invitedWebinarCollabs) &&
            const DeepCollectionEquality()
                .equals(other._invitedClassCollabs, _invitedClassCollabs) &&
            const DeepCollectionEquality()
                .equals(other._trialSessions, _trialSessions) &&
            const DeepCollectionEquality()
                .equals(other._activityLogs, _activityLogs) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._earnings, _earnings) &&
            const DeepCollectionEquality().equals(other._payouts, _payouts) &&
            const DeepCollectionEquality()
                .equals(other._payoutAccounts, _payoutAccounts) &&
            (identical(other.taxInfo, taxInfo) || other.taxInfo == taxInfo) &&
            const DeepCollectionEquality()
                .equals(other._tdsRecords, _tdsRecords) &&
            const DeepCollectionEquality()
                .equals(other._verificationRequests, _verificationRequests) &&
            (identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue) &&
            (identical(other.pendingRevenue, pendingRevenue) || other.pendingRevenue == pendingRevenue) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        description,
        experience,
        rating,
        headline,
        websiteUrl,
        twitterUrl,
        githubUrl,
        videoIntroUrl,
        const DeepCollectionEquality().hash(_languages),
        const DeepCollectionEquality().hash(_toolsAndTechnologies),
        mentoringStyle,
        const DeepCollectionEquality().hash(_sessionTypes),
        profileCompletionPercentage,
        isVerified,
        verificationStatus,
        totalMenteesHelped,
        domain,
        domainId,
        const DeepCollectionEquality().hash(_subDomains),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_reviews),
        scheduleType,
        const DeepCollectionEquality().hash(_slotsOfAvailabilityWeekly),
        const DeepCollectionEquality().hash(_slotsOfAvailabilityCustom),
        const DeepCollectionEquality().hash(_consultationPlans),
        const DeepCollectionEquality().hash(_subscriptionPlans),
        const DeepCollectionEquality().hash(_webinarPlans),
        const DeepCollectionEquality().hash(_classPlans),
        const DeepCollectionEquality().hash(_webinarCollaborations),
        const DeepCollectionEquality().hash(_classCollaborations),
        const DeepCollectionEquality().hash(_invitedWebinarCollabs),
        const DeepCollectionEquality().hash(_invitedClassCollabs),
        const DeepCollectionEquality().hash(_trialSessions),
        const DeepCollectionEquality().hash(_activityLogs),
        const DeepCollectionEquality().hash(_achievements),
        user,
        userId,
        const DeepCollectionEquality().hash(_earnings),
        const DeepCollectionEquality().hash(_payouts),
        const DeepCollectionEquality().hash(_payoutAccounts),
        taxInfo,
        const DeepCollectionEquality().hash(_tdsRecords),
        const DeepCollectionEquality().hash(_verificationRequests),
        totalRevenue,
        pendingRevenue,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileImplCopyWith<_$ConsultantProfileImpl> get copyWith =>
      __$$ConsultantProfileImplCopyWithImpl<_$ConsultantProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfile implements ConsultantProfile {
  const factory _ConsultantProfile(
      {required final String id,
      final String? description,
      final double? experience,
      final double rating,
      final String? headline,
      final String? websiteUrl,
      final String? twitterUrl,
      final String? githubUrl,
      final String? videoIntroUrl,
      final List<String>? languages,
      final List<String>? toolsAndTechnologies,
      final String? mentoringStyle,
      final List<SessionType>? sessionTypes,
      final int profileCompletionPercentage,
      final bool isVerified,
      final ConsultantVerificationStatus verificationStatus,
      final int totalMenteesHelped,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Domain? domain,
      required final String domainId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SubDomain>? subDomains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Tag>? tags,
      required final List<ConsultantReview> reviews,
      required final ScheduleType scheduleType,
      required final List<SlotOfAvailabilityWeekly> slotsOfAvailabilityWeekly,
      required final List<SlotOfAvailabilityCustom> slotsOfAvailabilityCustom,
      required final List<ConsultationPlan> consultationPlans,
      required final List<SubscriptionPlan> subscriptionPlans,
      required final List<WebinarPlan> webinarPlans,
      required final List<ClassPlan> classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarCollaborator>? webinarCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? classCollaborations,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarCollaborator>? invitedWebinarCollabs,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? invitedClassCollabs,
      required final List<TrialSession> trialSessions,
      required final List<ActivityLog> activityLogs,
      required final List<Achievement> achievements,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final List<ConsultantEarnings> earnings,
      required final List<Payout> payouts,
      required final List<PayoutAccount> payoutAccounts,
      final ConsultantTaxInfo? taxInfo,
      required final List<TDSRecord> tdsRecords,
      required final List<ConsultantProfileVerification> verificationRequests,
      final int totalRevenue,
      final int pendingRevenue,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultantProfileImpl;

  factory _ConsultantProfile.fromJson(Map<String, dynamic> json) =
      _$ConsultantProfileImpl.fromJson;

  @override
  String get id;
  @override
  String? get description;
  @override
  double? get experience;
  @override
  double get rating;
  @override
  String? get headline;
  @override
  String? get websiteUrl;
  @override
  String? get twitterUrl;
  @override
  String? get githubUrl;
  @override
  String? get videoIntroUrl;
  @override
  List<String>? get languages;
  @override
  List<String>? get toolsAndTechnologies;
  @override
  String? get mentoringStyle;
  @override
  List<SessionType>? get sessionTypes;
  @override
  int get profileCompletionPercentage;
  @override
  bool get isVerified;
  @override
  ConsultantVerificationStatus get verificationStatus;
  @override
  int get totalMenteesHelped;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Domain? get domain;
  @override
  String get domainId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubDomain>? get subDomains;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Tag>? get tags;
  @override
  List<ConsultantReview> get reviews;
  @override
  ScheduleType get scheduleType;
  @override
  List<SlotOfAvailabilityWeekly> get slotsOfAvailabilityWeekly;
  @override
  List<SlotOfAvailabilityCustom> get slotsOfAvailabilityCustom;
  @override
  List<ConsultationPlan> get consultationPlans;
  @override
  List<SubscriptionPlan> get subscriptionPlans;
  @override
  List<WebinarPlan> get webinarPlans;
  @override
  List<ClassPlan> get classPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get webinarCollaborations;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get classCollaborations;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarCollaborator>? get invitedWebinarCollabs;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get invitedClassCollabs;
  @override
  List<TrialSession> get trialSessions;
  @override
  List<ActivityLog> get activityLogs;
  @override
  List<Achievement> get achievements;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  List<ConsultantEarnings> get earnings;
  @override
  List<Payout> get payouts;
  @override
  List<PayoutAccount> get payoutAccounts;
  @override
  ConsultantTaxInfo? get taxInfo;
  @override
  List<TDSRecord> get tdsRecords;
  @override
  List<ConsultantProfileVerification> get verificationRequests;
  @override
  int get totalRevenue;
  @override
  int get pendingRevenue;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsultantProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileImplCopyWith<_$ConsultantProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultantProfileInput _$CreateConsultantProfileInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultantProfileInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultantProfileInput {
  String? get description => throw _privateConstructorUsedError;
  double? get experience => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;
  String? get websiteUrl => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get githubUrl => throw _privateConstructorUsedError;
  String? get videoIntroUrl => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  List<String>? get toolsAndTechnologies => throw _privateConstructorUsedError;
  String? get mentoringStyle => throw _privateConstructorUsedError;
  List<SessionType>? get sessionTypes => throw _privateConstructorUsedError;
  int? get profileCompletionPercentage => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  ConsultantVerificationStatus get verificationStatus =>
      throw _privateConstructorUsedError;
  int? get totalMenteesHelped => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;
  ScheduleType get scheduleType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int? get totalRevenue => throw _privateConstructorUsedError;
  int? get pendingRevenue => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultantProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultantProfileInputCopyWith<CreateConsultantProfileInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultantProfileInputCopyWith<$Res> {
  factory $CreateConsultantProfileInputCopyWith(
          CreateConsultantProfileInput value,
          $Res Function(CreateConsultantProfileInput) then) =
      _$CreateConsultantProfileInputCopyWithImpl<$Res,
          CreateConsultantProfileInput>;
  @useResult
  $Res call(
      {String? description,
      double? experience,
      double? rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int? profileCompletionPercentage,
      bool? isVerified,
      ConsultantVerificationStatus verificationStatus,
      int? totalMenteesHelped,
      String domainId,
      ScheduleType scheduleType,
      String userId,
      int? totalRevenue,
      int? pendingRevenue});
}

/// @nodoc
class _$CreateConsultantProfileInputCopyWithImpl<$Res,
        $Val extends CreateConsultantProfileInput>
    implements $CreateConsultantProfileInputCopyWith<$Res> {
  _$CreateConsultantProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = null,
    Object? totalMenteesHelped = freezed,
    Object? domainId = null,
    Object? scheduleType = null,
    Object? userId = null,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value.sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultantProfileInputImplCopyWith<$Res>
    implements $CreateConsultantProfileInputCopyWith<$Res> {
  factory _$$CreateConsultantProfileInputImplCopyWith(
          _$CreateConsultantProfileInputImpl value,
          $Res Function(_$CreateConsultantProfileInputImpl) then) =
      __$$CreateConsultantProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      double? experience,
      double? rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int? profileCompletionPercentage,
      bool? isVerified,
      ConsultantVerificationStatus verificationStatus,
      int? totalMenteesHelped,
      String domainId,
      ScheduleType scheduleType,
      String userId,
      int? totalRevenue,
      int? pendingRevenue});
}

/// @nodoc
class __$$CreateConsultantProfileInputImplCopyWithImpl<$Res>
    extends _$CreateConsultantProfileInputCopyWithImpl<$Res,
        _$CreateConsultantProfileInputImpl>
    implements _$$CreateConsultantProfileInputImplCopyWith<$Res> {
  __$$CreateConsultantProfileInputImplCopyWithImpl(
      _$CreateConsultantProfileInputImpl _value,
      $Res Function(_$CreateConsultantProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = null,
    Object? totalMenteesHelped = freezed,
    Object? domainId = null,
    Object? scheduleType = null,
    Object? userId = null,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
  }) {
    return _then(_$CreateConsultantProfileInputImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value._toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value._sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int?,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultantProfileInputImpl
    implements _CreateConsultantProfileInput {
  const _$CreateConsultantProfileInputImpl(
      {this.description,
      this.experience,
      this.rating = 0,
      this.headline,
      this.websiteUrl,
      this.twitterUrl,
      this.githubUrl,
      this.videoIntroUrl,
      final List<String>? languages = const <String>[],
      final List<String>? toolsAndTechnologies = const <String>[],
      this.mentoringStyle,
      final List<SessionType>? sessionTypes = const <SessionType>[],
      this.profileCompletionPercentage = 0,
      this.isVerified = false,
      this.verificationStatus =
          ConsultantVerificationStatus.pendingVerification,
      this.totalMenteesHelped = 0,
      required this.domainId,
      required this.scheduleType,
      required this.userId,
      this.totalRevenue = 0,
      this.pendingRevenue = 0})
      : _languages = languages,
        _toolsAndTechnologies = toolsAndTechnologies,
        _sessionTypes = sessionTypes;

  factory _$CreateConsultantProfileInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultantProfileInputImplFromJson(json);

  @override
  final String? description;
  @override
  final double? experience;
  @override
  @JsonKey()
  final double? rating;
  @override
  final String? headline;
  @override
  final String? websiteUrl;
  @override
  final String? twitterUrl;
  @override
  final String? githubUrl;
  @override
  final String? videoIntroUrl;
  final List<String>? _languages;
  @override
  @JsonKey()
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _toolsAndTechnologies;
  @override
  @JsonKey()
  List<String>? get toolsAndTechnologies {
    final value = _toolsAndTechnologies;
    if (value == null) return null;
    if (_toolsAndTechnologies is EqualUnmodifiableListView)
      return _toolsAndTechnologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mentoringStyle;
  final List<SessionType>? _sessionTypes;
  @override
  @JsonKey()
  List<SessionType>? get sessionTypes {
    final value = _sessionTypes;
    if (value == null) return null;
    if (_sessionTypes is EqualUnmodifiableListView) return _sessionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? profileCompletionPercentage;
  @override
  @JsonKey()
  final bool? isVerified;
  @override
  @JsonKey()
  final ConsultantVerificationStatus verificationStatus;
  @override
  @JsonKey()
  final int? totalMenteesHelped;
  @override
  final String domainId;
  @override
  final ScheduleType scheduleType;
  @override
  final String userId;
  @override
  @JsonKey()
  final int? totalRevenue;
  @override
  @JsonKey()
  final int? pendingRevenue;

  @override
  String toString() {
    return 'CreateConsultantProfileInput(description: $description, experience: $experience, rating: $rating, headline: $headline, websiteUrl: $websiteUrl, twitterUrl: $twitterUrl, githubUrl: $githubUrl, videoIntroUrl: $videoIntroUrl, languages: $languages, toolsAndTechnologies: $toolsAndTechnologies, mentoringStyle: $mentoringStyle, sessionTypes: $sessionTypes, profileCompletionPercentage: $profileCompletionPercentage, isVerified: $isVerified, verificationStatus: $verificationStatus, totalMenteesHelped: $totalMenteesHelped, domainId: $domainId, scheduleType: $scheduleType, userId: $userId, totalRevenue: $totalRevenue, pendingRevenue: $pendingRevenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultantProfileInputImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.videoIntroUrl, videoIntroUrl) ||
                other.videoIntroUrl == videoIntroUrl) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._toolsAndTechnologies, _toolsAndTechnologies) &&
            (identical(other.mentoringStyle, mentoringStyle) ||
                other.mentoringStyle == mentoringStyle) &&
            const DeepCollectionEquality()
                .equals(other._sessionTypes, _sessionTypes) &&
            (identical(other.profileCompletionPercentage,
                    profileCompletionPercentage) ||
                other.profileCompletionPercentage ==
                    profileCompletionPercentage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.totalMenteesHelped, totalMenteesHelped) ||
                other.totalMenteesHelped == totalMenteesHelped) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.pendingRevenue, pendingRevenue) ||
                other.pendingRevenue == pendingRevenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        description,
        experience,
        rating,
        headline,
        websiteUrl,
        twitterUrl,
        githubUrl,
        videoIntroUrl,
        const DeepCollectionEquality().hash(_languages),
        const DeepCollectionEquality().hash(_toolsAndTechnologies),
        mentoringStyle,
        const DeepCollectionEquality().hash(_sessionTypes),
        profileCompletionPercentage,
        isVerified,
        verificationStatus,
        totalMenteesHelped,
        domainId,
        scheduleType,
        userId,
        totalRevenue,
        pendingRevenue
      ]);

  /// Create a copy of CreateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultantProfileInputImplCopyWith<
          _$CreateConsultantProfileInputImpl>
      get copyWith => __$$CreateConsultantProfileInputImplCopyWithImpl<
          _$CreateConsultantProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultantProfileInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultantProfileInput
    implements CreateConsultantProfileInput {
  const factory _CreateConsultantProfileInput(
      {final String? description,
      final double? experience,
      final double? rating,
      final String? headline,
      final String? websiteUrl,
      final String? twitterUrl,
      final String? githubUrl,
      final String? videoIntroUrl,
      final List<String>? languages,
      final List<String>? toolsAndTechnologies,
      final String? mentoringStyle,
      final List<SessionType>? sessionTypes,
      final int? profileCompletionPercentage,
      final bool? isVerified,
      final ConsultantVerificationStatus verificationStatus,
      final int? totalMenteesHelped,
      required final String domainId,
      required final ScheduleType scheduleType,
      required final String userId,
      final int? totalRevenue,
      final int? pendingRevenue}) = _$CreateConsultantProfileInputImpl;

  factory _CreateConsultantProfileInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultantProfileInputImpl.fromJson;

  @override
  String? get description;
  @override
  double? get experience;
  @override
  double? get rating;
  @override
  String? get headline;
  @override
  String? get websiteUrl;
  @override
  String? get twitterUrl;
  @override
  String? get githubUrl;
  @override
  String? get videoIntroUrl;
  @override
  List<String>? get languages;
  @override
  List<String>? get toolsAndTechnologies;
  @override
  String? get mentoringStyle;
  @override
  List<SessionType>? get sessionTypes;
  @override
  int? get profileCompletionPercentage;
  @override
  bool? get isVerified;
  @override
  ConsultantVerificationStatus get verificationStatus;
  @override
  int? get totalMenteesHelped;
  @override
  String get domainId;
  @override
  ScheduleType get scheduleType;
  @override
  String get userId;
  @override
  int? get totalRevenue;
  @override
  int? get pendingRevenue;

  /// Create a copy of CreateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultantProfileInputImplCopyWith<
          _$CreateConsultantProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultantProfileInput _$UpdateConsultantProfileInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultantProfileInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultantProfileInput {
  String? get description => throw _privateConstructorUsedError;
  double? get experience => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;
  String? get websiteUrl => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get githubUrl => throw _privateConstructorUsedError;
  String? get videoIntroUrl => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  List<String>? get toolsAndTechnologies => throw _privateConstructorUsedError;
  String? get mentoringStyle => throw _privateConstructorUsedError;
  List<SessionType>? get sessionTypes => throw _privateConstructorUsedError;
  int? get profileCompletionPercentage => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  ConsultantVerificationStatus? get verificationStatus =>
      throw _privateConstructorUsedError;
  int? get totalMenteesHelped => throw _privateConstructorUsedError;
  String? get domainId => throw _privateConstructorUsedError;
  ScheduleType? get scheduleType => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get totalRevenue => throw _privateConstructorUsedError;
  int? get pendingRevenue => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultantProfileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultantProfileInputCopyWith<UpdateConsultantProfileInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultantProfileInputCopyWith<$Res> {
  factory $UpdateConsultantProfileInputCopyWith(
          UpdateConsultantProfileInput value,
          $Res Function(UpdateConsultantProfileInput) then) =
      _$UpdateConsultantProfileInputCopyWithImpl<$Res,
          UpdateConsultantProfileInput>;
  @useResult
  $Res call(
      {String? description,
      double? experience,
      double? rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int? profileCompletionPercentage,
      bool? isVerified,
      ConsultantVerificationStatus? verificationStatus,
      int? totalMenteesHelped,
      String? domainId,
      ScheduleType? scheduleType,
      String? userId,
      int? totalRevenue,
      int? pendingRevenue});
}

/// @nodoc
class _$UpdateConsultantProfileInputCopyWithImpl<$Res,
        $Val extends UpdateConsultantProfileInput>
    implements $UpdateConsultantProfileInputCopyWith<$Res> {
  _$UpdateConsultantProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domainId = freezed,
    Object? scheduleType = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value.sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultantProfileInputImplCopyWith<$Res>
    implements $UpdateConsultantProfileInputCopyWith<$Res> {
  factory _$$UpdateConsultantProfileInputImplCopyWith(
          _$UpdateConsultantProfileInputImpl value,
          $Res Function(_$UpdateConsultantProfileInputImpl) then) =
      __$$UpdateConsultantProfileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      double? experience,
      double? rating,
      String? headline,
      String? websiteUrl,
      String? twitterUrl,
      String? githubUrl,
      String? videoIntroUrl,
      List<String>? languages,
      List<String>? toolsAndTechnologies,
      String? mentoringStyle,
      List<SessionType>? sessionTypes,
      int? profileCompletionPercentage,
      bool? isVerified,
      ConsultantVerificationStatus? verificationStatus,
      int? totalMenteesHelped,
      String? domainId,
      ScheduleType? scheduleType,
      String? userId,
      int? totalRevenue,
      int? pendingRevenue});
}

/// @nodoc
class __$$UpdateConsultantProfileInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultantProfileInputCopyWithImpl<$Res,
        _$UpdateConsultantProfileInputImpl>
    implements _$$UpdateConsultantProfileInputImplCopyWith<$Res> {
  __$$UpdateConsultantProfileInputImplCopyWithImpl(
      _$UpdateConsultantProfileInputImpl _value,
      $Res Function(_$UpdateConsultantProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? sessionTypes = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domainId = freezed,
    Object? scheduleType = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
  }) {
    return _then(_$UpdateConsultantProfileInputImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value._toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionTypes: freezed == sessionTypes
          ? _value._sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as int?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultantProfileInputImpl
    implements _UpdateConsultantProfileInput {
  const _$UpdateConsultantProfileInputImpl(
      {this.description,
      this.experience,
      this.rating,
      this.headline,
      this.websiteUrl,
      this.twitterUrl,
      this.githubUrl,
      this.videoIntroUrl,
      final List<String>? languages,
      final List<String>? toolsAndTechnologies,
      this.mentoringStyle,
      final List<SessionType>? sessionTypes,
      this.profileCompletionPercentage,
      this.isVerified,
      this.verificationStatus,
      this.totalMenteesHelped,
      this.domainId,
      this.scheduleType,
      this.userId,
      this.totalRevenue,
      this.pendingRevenue})
      : _languages = languages,
        _toolsAndTechnologies = toolsAndTechnologies,
        _sessionTypes = sessionTypes;

  factory _$UpdateConsultantProfileInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultantProfileInputImplFromJson(json);

  @override
  final String? description;
  @override
  final double? experience;
  @override
  final double? rating;
  @override
  final String? headline;
  @override
  final String? websiteUrl;
  @override
  final String? twitterUrl;
  @override
  final String? githubUrl;
  @override
  final String? videoIntroUrl;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _toolsAndTechnologies;
  @override
  List<String>? get toolsAndTechnologies {
    final value = _toolsAndTechnologies;
    if (value == null) return null;
    if (_toolsAndTechnologies is EqualUnmodifiableListView)
      return _toolsAndTechnologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mentoringStyle;
  final List<SessionType>? _sessionTypes;
  @override
  List<SessionType>? get sessionTypes {
    final value = _sessionTypes;
    if (value == null) return null;
    if (_sessionTypes is EqualUnmodifiableListView) return _sessionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? profileCompletionPercentage;
  @override
  final bool? isVerified;
  @override
  final ConsultantVerificationStatus? verificationStatus;
  @override
  final int? totalMenteesHelped;
  @override
  final String? domainId;
  @override
  final ScheduleType? scheduleType;
  @override
  final String? userId;
  @override
  final int? totalRevenue;
  @override
  final int? pendingRevenue;

  @override
  String toString() {
    return 'UpdateConsultantProfileInput(description: $description, experience: $experience, rating: $rating, headline: $headline, websiteUrl: $websiteUrl, twitterUrl: $twitterUrl, githubUrl: $githubUrl, videoIntroUrl: $videoIntroUrl, languages: $languages, toolsAndTechnologies: $toolsAndTechnologies, mentoringStyle: $mentoringStyle, sessionTypes: $sessionTypes, profileCompletionPercentage: $profileCompletionPercentage, isVerified: $isVerified, verificationStatus: $verificationStatus, totalMenteesHelped: $totalMenteesHelped, domainId: $domainId, scheduleType: $scheduleType, userId: $userId, totalRevenue: $totalRevenue, pendingRevenue: $pendingRevenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultantProfileInputImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.videoIntroUrl, videoIntroUrl) ||
                other.videoIntroUrl == videoIntroUrl) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._toolsAndTechnologies, _toolsAndTechnologies) &&
            (identical(other.mentoringStyle, mentoringStyle) ||
                other.mentoringStyle == mentoringStyle) &&
            const DeepCollectionEquality()
                .equals(other._sessionTypes, _sessionTypes) &&
            (identical(other.profileCompletionPercentage,
                    profileCompletionPercentage) ||
                other.profileCompletionPercentage ==
                    profileCompletionPercentage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.totalMenteesHelped, totalMenteesHelped) ||
                other.totalMenteesHelped == totalMenteesHelped) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.pendingRevenue, pendingRevenue) ||
                other.pendingRevenue == pendingRevenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        description,
        experience,
        rating,
        headline,
        websiteUrl,
        twitterUrl,
        githubUrl,
        videoIntroUrl,
        const DeepCollectionEquality().hash(_languages),
        const DeepCollectionEquality().hash(_toolsAndTechnologies),
        mentoringStyle,
        const DeepCollectionEquality().hash(_sessionTypes),
        profileCompletionPercentage,
        isVerified,
        verificationStatus,
        totalMenteesHelped,
        domainId,
        scheduleType,
        userId,
        totalRevenue,
        pendingRevenue
      ]);

  /// Create a copy of UpdateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultantProfileInputImplCopyWith<
          _$UpdateConsultantProfileInputImpl>
      get copyWith => __$$UpdateConsultantProfileInputImplCopyWithImpl<
          _$UpdateConsultantProfileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultantProfileInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultantProfileInput
    implements UpdateConsultantProfileInput {
  const factory _UpdateConsultantProfileInput(
      {final String? description,
      final double? experience,
      final double? rating,
      final String? headline,
      final String? websiteUrl,
      final String? twitterUrl,
      final String? githubUrl,
      final String? videoIntroUrl,
      final List<String>? languages,
      final List<String>? toolsAndTechnologies,
      final String? mentoringStyle,
      final List<SessionType>? sessionTypes,
      final int? profileCompletionPercentage,
      final bool? isVerified,
      final ConsultantVerificationStatus? verificationStatus,
      final int? totalMenteesHelped,
      final String? domainId,
      final ScheduleType? scheduleType,
      final String? userId,
      final int? totalRevenue,
      final int? pendingRevenue}) = _$UpdateConsultantProfileInputImpl;

  factory _UpdateConsultantProfileInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultantProfileInputImpl.fromJson;

  @override
  String? get description;
  @override
  double? get experience;
  @override
  double? get rating;
  @override
  String? get headline;
  @override
  String? get websiteUrl;
  @override
  String? get twitterUrl;
  @override
  String? get githubUrl;
  @override
  String? get videoIntroUrl;
  @override
  List<String>? get languages;
  @override
  List<String>? get toolsAndTechnologies;
  @override
  String? get mentoringStyle;
  @override
  List<SessionType>? get sessionTypes;
  @override
  int? get profileCompletionPercentage;
  @override
  bool? get isVerified;
  @override
  ConsultantVerificationStatus? get verificationStatus;
  @override
  int? get totalMenteesHelped;
  @override
  String? get domainId;
  @override
  ScheduleType? get scheduleType;
  @override
  String? get userId;
  @override
  int? get totalRevenue;
  @override
  int? get pendingRevenue;

  /// Create a copy of UpdateConsultantProfileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultantProfileInputImplCopyWith<
          _$UpdateConsultantProfileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileWhereUniqueInput _$ConsultantProfileWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantProfileWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileWhereUniqueInputCopyWith<ConsultantProfileWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileWhereUniqueInputCopyWith<$Res> {
  factory $ConsultantProfileWhereUniqueInputCopyWith(
          ConsultantProfileWhereUniqueInput value,
          $Res Function(ConsultantProfileWhereUniqueInput) then) =
      _$ConsultantProfileWhereUniqueInputCopyWithImpl<$Res,
          ConsultantProfileWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$ConsultantProfileWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileWhereUniqueInput>
    implements $ConsultantProfileWhereUniqueInputCopyWith<$Res> {
  _$ConsultantProfileWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileWhereUniqueInput
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
abstract class _$$ConsultantProfileWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultantProfileWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultantProfileWhereUniqueInputImplCopyWith(
          _$ConsultantProfileWhereUniqueInputImpl value,
          $Res Function(_$ConsultantProfileWhereUniqueInputImpl) then) =
      __$$ConsultantProfileWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class __$$ConsultantProfileWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultantProfileWhereUniqueInputImpl>
    implements _$$ConsultantProfileWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultantProfileWhereUniqueInputImplCopyWithImpl(
      _$ConsultantProfileWhereUniqueInputImpl _value,
      $Res Function(_$ConsultantProfileWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ConsultantProfileWhereUniqueInputImpl(
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
class _$ConsultantProfileWhereUniqueInputImpl
    implements _ConsultantProfileWhereUniqueInput {
  const _$ConsultantProfileWhereUniqueInputImpl({this.id, this.userId});

  factory _$ConsultantProfileWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'ConsultantProfileWhereUniqueInput(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of ConsultantProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileWhereUniqueInputImplCopyWith<
          _$ConsultantProfileWhereUniqueInputImpl>
      get copyWith => __$$ConsultantProfileWhereUniqueInputImplCopyWithImpl<
          _$ConsultantProfileWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileWhereUniqueInput
    implements ConsultantProfileWhereUniqueInput {
  const factory _ConsultantProfileWhereUniqueInput(
      {final String? id,
      final String? userId}) = _$ConsultantProfileWhereUniqueInputImpl;

  factory _ConsultantProfileWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;

  /// Create a copy of ConsultantProfileWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileWhereUniqueInputImplCopyWith<
          _$ConsultantProfileWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileWhereInput _$ConsultantProfileWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantProfileWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  FloatFilter? get experience => throw _privateConstructorUsedError;
  FloatFilter? get rating => throw _privateConstructorUsedError;
  StringFilter? get headline => throw _privateConstructorUsedError;
  StringFilter? get websiteUrl => throw _privateConstructorUsedError;
  StringFilter? get twitterUrl => throw _privateConstructorUsedError;
  StringFilter? get githubUrl => throw _privateConstructorUsedError;
  StringFilter? get videoIntroUrl => throw _privateConstructorUsedError;
  StringListFilter? get languages => throw _privateConstructorUsedError;
  StringListFilter? get toolsAndTechnologies =>
      throw _privateConstructorUsedError;
  StringFilter? get mentoringStyle => throw _privateConstructorUsedError;
  IntFilter? get profileCompletionPercentage =>
      throw _privateConstructorUsedError;
  BooleanFilter? get isVerified => throw _privateConstructorUsedError;
  ConsultantVerificationStatusFilter? get verificationStatus =>
      throw _privateConstructorUsedError;
  IntFilter? get totalMenteesHelped => throw _privateConstructorUsedError;

  /// Filter by domain relation
  DomainRelationFilter? get domain => throw _privateConstructorUsedError;
  StringFilter? get domainId => throw _privateConstructorUsedError;

  /// Filter by subDomains relation
  SubDomainListRelationFilter? get subDomains =>
      throw _privateConstructorUsedError;

  /// Filter by tags relation
  TagListRelationFilter? get tags => throw _privateConstructorUsedError;
  ScheduleTypeFilter? get scheduleType => throw _privateConstructorUsedError;

  /// Filter by webinarCollaborations relation
  WebinarCollaboratorListRelationFilter? get webinarCollaborations =>
      throw _privateConstructorUsedError;

  /// Filter by classCollaborations relation
  ClassCollaboratorListRelationFilter? get classCollaborations =>
      throw _privateConstructorUsedError;

  /// Filter by invitedWebinarCollabs relation
  WebinarCollaboratorListRelationFilter? get invitedWebinarCollabs =>
      throw _privateConstructorUsedError;

  /// Filter by invitedClassCollabs relation
  ClassCollaboratorListRelationFilter? get invitedClassCollabs =>
      throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  IntFilter? get totalRevenue => throw _privateConstructorUsedError;
  IntFilter? get pendingRevenue => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultantProfileWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultantProfileWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultantProfileWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileWhereInputCopyWith<ConsultantProfileWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileWhereInputCopyWith<$Res> {
  factory $ConsultantProfileWhereInputCopyWith(
          ConsultantProfileWhereInput value,
          $Res Function(ConsultantProfileWhereInput) then) =
      _$ConsultantProfileWhereInputCopyWithImpl<$Res,
          ConsultantProfileWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? description,
      FloatFilter? experience,
      FloatFilter? rating,
      StringFilter? headline,
      StringFilter? websiteUrl,
      StringFilter? twitterUrl,
      StringFilter? githubUrl,
      StringFilter? videoIntroUrl,
      StringListFilter? languages,
      StringListFilter? toolsAndTechnologies,
      StringFilter? mentoringStyle,
      IntFilter? profileCompletionPercentage,
      BooleanFilter? isVerified,
      ConsultantVerificationStatusFilter? verificationStatus,
      IntFilter? totalMenteesHelped,
      DomainRelationFilter? domain,
      StringFilter? domainId,
      SubDomainListRelationFilter? subDomains,
      TagListRelationFilter? tags,
      ScheduleTypeFilter? scheduleType,
      WebinarCollaboratorListRelationFilter? webinarCollaborations,
      ClassCollaboratorListRelationFilter? classCollaborations,
      WebinarCollaboratorListRelationFilter? invitedWebinarCollabs,
      ClassCollaboratorListRelationFilter? invitedClassCollabs,
      UserRelationFilter? user,
      StringFilter? userId,
      IntFilter? totalRevenue,
      IntFilter? pendingRevenue,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantProfileWhereInput>? AND,
      List<ConsultantProfileWhereInput>? OR,
      ConsultantProfileWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get description;
  $FloatFilterCopyWith<$Res>? get experience;
  $FloatFilterCopyWith<$Res>? get rating;
  $StringFilterCopyWith<$Res>? get headline;
  $StringFilterCopyWith<$Res>? get websiteUrl;
  $StringFilterCopyWith<$Res>? get twitterUrl;
  $StringFilterCopyWith<$Res>? get githubUrl;
  $StringFilterCopyWith<$Res>? get videoIntroUrl;
  $StringListFilterCopyWith<$Res>? get languages;
  $StringListFilterCopyWith<$Res>? get toolsAndTechnologies;
  $StringFilterCopyWith<$Res>? get mentoringStyle;
  $IntFilterCopyWith<$Res>? get profileCompletionPercentage;
  $BooleanFilterCopyWith<$Res>? get isVerified;
  $ConsultantVerificationStatusFilterCopyWith<$Res>? get verificationStatus;
  $IntFilterCopyWith<$Res>? get totalMenteesHelped;
  $DomainRelationFilterCopyWith<$Res>? get domain;
  $StringFilterCopyWith<$Res>? get domainId;
  $SubDomainListRelationFilterCopyWith<$Res>? get subDomains;
  $TagListRelationFilterCopyWith<$Res>? get tags;
  $ScheduleTypeFilterCopyWith<$Res>? get scheduleType;
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get webinarCollaborations;
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get classCollaborations;
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get invitedWebinarCollabs;
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get invitedClassCollabs;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $IntFilterCopyWith<$Res>? get totalRevenue;
  $IntFilterCopyWith<$Res>? get pendingRevenue;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultantProfileWhereInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileWhereInput>
    implements $ConsultantProfileWhereInputCopyWith<$Res> {
  _$ConsultantProfileWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domain = freezed,
    Object? domainId = freezed,
    Object? subDomains = freezed,
    Object? tags = freezed,
    Object? scheduleType = freezed,
    Object? webinarCollaborations = freezed,
    Object? classCollaborations = freezed,
    Object? invitedWebinarCollabs = freezed,
    Object? invitedClassCollabs = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatusFilter?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as DomainRelationFilter?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subDomains: freezed == subDomains
          ? _value.subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as SubDomainListRelationFilter?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagListRelationFilter?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleTypeFilter?,
      webinarCollaborations: freezed == webinarCollaborations
          ? _value.webinarCollaborations
          : webinarCollaborations // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorListRelationFilter?,
      classCollaborations: freezed == classCollaborations
          ? _value.classCollaborations
          : classCollaborations // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorListRelationFilter?,
      invitedWebinarCollabs: freezed == invitedWebinarCollabs
          ? _value.invitedWebinarCollabs
          : invitedWebinarCollabs // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorListRelationFilter?,
      invitedClassCollabs: freezed == invitedClassCollabs
          ? _value.invitedClassCollabs
          : invitedClassCollabs // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorListRelationFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
              as List<ConsultantProfileWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get experience {
    if (_value.experience == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.experience!, (value) {
      return _then(_value.copyWith(experience: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get headline {
    if (_value.headline == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.headline!, (value) {
      return _then(_value.copyWith(headline: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get websiteUrl {
    if (_value.websiteUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.websiteUrl!, (value) {
      return _then(_value.copyWith(websiteUrl: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get twitterUrl {
    if (_value.twitterUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.twitterUrl!, (value) {
      return _then(_value.copyWith(twitterUrl: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get githubUrl {
    if (_value.githubUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.githubUrl!, (value) {
      return _then(_value.copyWith(githubUrl: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get videoIntroUrl {
    if (_value.videoIntroUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.videoIntroUrl!, (value) {
      return _then(_value.copyWith(videoIntroUrl: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get languages {
    if (_value.languages == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.languages!, (value) {
      return _then(_value.copyWith(languages: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get toolsAndTechnologies {
    if (_value.toolsAndTechnologies == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.toolsAndTechnologies!,
        (value) {
      return _then(_value.copyWith(toolsAndTechnologies: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get mentoringStyle {
    if (_value.mentoringStyle == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.mentoringStyle!, (value) {
      return _then(_value.copyWith(mentoringStyle: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get profileCompletionPercentage {
    if (_value.profileCompletionPercentage == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.profileCompletionPercentage!,
        (value) {
      return _then(_value.copyWith(profileCompletionPercentage: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isVerified {
    if (_value.isVerified == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isVerified!, (value) {
      return _then(_value.copyWith(isVerified: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantVerificationStatusFilterCopyWith<$Res>? get verificationStatus {
    if (_value.verificationStatus == null) {
      return null;
    }

    return $ConsultantVerificationStatusFilterCopyWith<$Res>(
        _value.verificationStatus!, (value) {
      return _then(_value.copyWith(verificationStatus: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalMenteesHelped {
    if (_value.totalMenteesHelped == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalMenteesHelped!, (value) {
      return _then(_value.copyWith(totalMenteesHelped: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainRelationFilterCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $DomainRelationFilterCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get domainId {
    if (_value.domainId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.domainId!, (value) {
      return _then(_value.copyWith(domainId: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubDomainListRelationFilterCopyWith<$Res>? get subDomains {
    if (_value.subDomains == null) {
      return null;
    }

    return $SubDomainListRelationFilterCopyWith<$Res>(_value.subDomains!,
        (value) {
      return _then(_value.copyWith(subDomains: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagListRelationFilterCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $TagListRelationFilterCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleTypeFilterCopyWith<$Res>? get scheduleType {
    if (_value.scheduleType == null) {
      return null;
    }

    return $ScheduleTypeFilterCopyWith<$Res>(_value.scheduleType!, (value) {
      return _then(_value.copyWith(scheduleType: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get webinarCollaborations {
    if (_value.webinarCollaborations == null) {
      return null;
    }

    return $WebinarCollaboratorListRelationFilterCopyWith<$Res>(
        _value.webinarCollaborations!, (value) {
      return _then(_value.copyWith(webinarCollaborations: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get classCollaborations {
    if (_value.classCollaborations == null) {
      return null;
    }

    return $ClassCollaboratorListRelationFilterCopyWith<$Res>(
        _value.classCollaborations!, (value) {
      return _then(_value.copyWith(classCollaborations: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get invitedWebinarCollabs {
    if (_value.invitedWebinarCollabs == null) {
      return null;
    }

    return $WebinarCollaboratorListRelationFilterCopyWith<$Res>(
        _value.invitedWebinarCollabs!, (value) {
      return _then(_value.copyWith(invitedWebinarCollabs: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get invitedClassCollabs {
    if (_value.invitedClassCollabs == null) {
      return null;
    }

    return $ClassCollaboratorListRelationFilterCopyWith<$Res>(
        _value.invitedClassCollabs!, (value) {
      return _then(_value.copyWith(invitedClassCollabs: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalRevenue {
    if (_value.totalRevenue == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalRevenue!, (value) {
      return _then(_value.copyWith(totalRevenue: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get pendingRevenue {
    if (_value.pendingRevenue == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.pendingRevenue!, (value) {
      return _then(_value.copyWith(pendingRevenue: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
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

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileWhereInputImplCopyWith<$Res>
    implements $ConsultantProfileWhereInputCopyWith<$Res> {
  factory _$$ConsultantProfileWhereInputImplCopyWith(
          _$ConsultantProfileWhereInputImpl value,
          $Res Function(_$ConsultantProfileWhereInputImpl) then) =
      __$$ConsultantProfileWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? description,
      FloatFilter? experience,
      FloatFilter? rating,
      StringFilter? headline,
      StringFilter? websiteUrl,
      StringFilter? twitterUrl,
      StringFilter? githubUrl,
      StringFilter? videoIntroUrl,
      StringListFilter? languages,
      StringListFilter? toolsAndTechnologies,
      StringFilter? mentoringStyle,
      IntFilter? profileCompletionPercentage,
      BooleanFilter? isVerified,
      ConsultantVerificationStatusFilter? verificationStatus,
      IntFilter? totalMenteesHelped,
      DomainRelationFilter? domain,
      StringFilter? domainId,
      SubDomainListRelationFilter? subDomains,
      TagListRelationFilter? tags,
      ScheduleTypeFilter? scheduleType,
      WebinarCollaboratorListRelationFilter? webinarCollaborations,
      ClassCollaboratorListRelationFilter? classCollaborations,
      WebinarCollaboratorListRelationFilter? invitedWebinarCollabs,
      ClassCollaboratorListRelationFilter? invitedClassCollabs,
      UserRelationFilter? user,
      StringFilter? userId,
      IntFilter? totalRevenue,
      IntFilter? pendingRevenue,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantProfileWhereInput>? AND,
      List<ConsultantProfileWhereInput>? OR,
      ConsultantProfileWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $FloatFilterCopyWith<$Res>? get experience;
  @override
  $FloatFilterCopyWith<$Res>? get rating;
  @override
  $StringFilterCopyWith<$Res>? get headline;
  @override
  $StringFilterCopyWith<$Res>? get websiteUrl;
  @override
  $StringFilterCopyWith<$Res>? get twitterUrl;
  @override
  $StringFilterCopyWith<$Res>? get githubUrl;
  @override
  $StringFilterCopyWith<$Res>? get videoIntroUrl;
  @override
  $StringListFilterCopyWith<$Res>? get languages;
  @override
  $StringListFilterCopyWith<$Res>? get toolsAndTechnologies;
  @override
  $StringFilterCopyWith<$Res>? get mentoringStyle;
  @override
  $IntFilterCopyWith<$Res>? get profileCompletionPercentage;
  @override
  $BooleanFilterCopyWith<$Res>? get isVerified;
  @override
  $ConsultantVerificationStatusFilterCopyWith<$Res>? get verificationStatus;
  @override
  $IntFilterCopyWith<$Res>? get totalMenteesHelped;
  @override
  $DomainRelationFilterCopyWith<$Res>? get domain;
  @override
  $StringFilterCopyWith<$Res>? get domainId;
  @override
  $SubDomainListRelationFilterCopyWith<$Res>? get subDomains;
  @override
  $TagListRelationFilterCopyWith<$Res>? get tags;
  @override
  $ScheduleTypeFilterCopyWith<$Res>? get scheduleType;
  @override
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get webinarCollaborations;
  @override
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get classCollaborations;
  @override
  $WebinarCollaboratorListRelationFilterCopyWith<$Res>?
      get invitedWebinarCollabs;
  @override
  $ClassCollaboratorListRelationFilterCopyWith<$Res>? get invitedClassCollabs;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $IntFilterCopyWith<$Res>? get totalRevenue;
  @override
  $IntFilterCopyWith<$Res>? get pendingRevenue;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultantProfileWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileWhereInputCopyWithImpl<$Res,
        _$ConsultantProfileWhereInputImpl>
    implements _$$ConsultantProfileWhereInputImplCopyWith<$Res> {
  __$$ConsultantProfileWhereInputImplCopyWithImpl(
      _$ConsultantProfileWhereInputImpl _value,
      $Res Function(_$ConsultantProfileWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? verificationStatus = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domain = freezed,
    Object? domainId = freezed,
    Object? subDomains = freezed,
    Object? tags = freezed,
    Object? scheduleType = freezed,
    Object? webinarCollaborations = freezed,
    Object? classCollaborations = freezed,
    Object? invitedWebinarCollabs = freezed,
    Object? invitedClassCollabs = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultantProfileWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatusFilter?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as DomainRelationFilter?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subDomains: freezed == subDomains
          ? _value.subDomains
          : subDomains // ignore: cast_nullable_to_non_nullable
              as SubDomainListRelationFilter?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagListRelationFilter?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleTypeFilter?,
      webinarCollaborations: freezed == webinarCollaborations
          ? _value.webinarCollaborations
          : webinarCollaborations // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorListRelationFilter?,
      classCollaborations: freezed == classCollaborations
          ? _value.classCollaborations
          : classCollaborations // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorListRelationFilter?,
      invitedWebinarCollabs: freezed == invitedWebinarCollabs
          ? _value.invitedWebinarCollabs
          : invitedWebinarCollabs // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorListRelationFilter?,
      invitedClassCollabs: freezed == invitedClassCollabs
          ? _value.invitedClassCollabs
          : invitedClassCollabs // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorListRelationFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
              as List<ConsultantProfileWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultantProfileWhereInputImpl
    implements _ConsultantProfileWhereInput {
  const _$ConsultantProfileWhereInputImpl(
      {this.id,
      this.description,
      this.experience,
      this.rating,
      this.headline,
      this.websiteUrl,
      this.twitterUrl,
      this.githubUrl,
      this.videoIntroUrl,
      this.languages,
      this.toolsAndTechnologies,
      this.mentoringStyle,
      this.profileCompletionPercentage,
      this.isVerified,
      this.verificationStatus,
      this.totalMenteesHelped,
      this.domain,
      this.domainId,
      this.subDomains,
      this.tags,
      this.scheduleType,
      this.webinarCollaborations,
      this.classCollaborations,
      this.invitedWebinarCollabs,
      this.invitedClassCollabs,
      this.user,
      this.userId,
      this.totalRevenue,
      this.pendingRevenue,
      this.createdAt,
      this.updatedAt,
      final List<ConsultantProfileWhereInput>? AND,
      final List<ConsultantProfileWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultantProfileWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? description;
  @override
  final FloatFilter? experience;
  @override
  final FloatFilter? rating;
  @override
  final StringFilter? headline;
  @override
  final StringFilter? websiteUrl;
  @override
  final StringFilter? twitterUrl;
  @override
  final StringFilter? githubUrl;
  @override
  final StringFilter? videoIntroUrl;
  @override
  final StringListFilter? languages;
  @override
  final StringListFilter? toolsAndTechnologies;
  @override
  final StringFilter? mentoringStyle;
  @override
  final IntFilter? profileCompletionPercentage;
  @override
  final BooleanFilter? isVerified;
  @override
  final ConsultantVerificationStatusFilter? verificationStatus;
  @override
  final IntFilter? totalMenteesHelped;

  /// Filter by domain relation
  @override
  final DomainRelationFilter? domain;
  @override
  final StringFilter? domainId;

  /// Filter by subDomains relation
  @override
  final SubDomainListRelationFilter? subDomains;

  /// Filter by tags relation
  @override
  final TagListRelationFilter? tags;
  @override
  final ScheduleTypeFilter? scheduleType;

  /// Filter by webinarCollaborations relation
  @override
  final WebinarCollaboratorListRelationFilter? webinarCollaborations;

  /// Filter by classCollaborations relation
  @override
  final ClassCollaboratorListRelationFilter? classCollaborations;

  /// Filter by invitedWebinarCollabs relation
  @override
  final WebinarCollaboratorListRelationFilter? invitedWebinarCollabs;

  /// Filter by invitedClassCollabs relation
  @override
  final ClassCollaboratorListRelationFilter? invitedClassCollabs;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final IntFilter? totalRevenue;
  @override
  final IntFilter? pendingRevenue;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultantProfileWhereInput>? _AND;
  @override
  List<ConsultantProfileWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantProfileWhereInput>? _OR;
  @override
  List<ConsultantProfileWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultantProfileWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultantProfileWhereInput(id: $id, description: $description, experience: $experience, rating: $rating, headline: $headline, websiteUrl: $websiteUrl, twitterUrl: $twitterUrl, githubUrl: $githubUrl, videoIntroUrl: $videoIntroUrl, languages: $languages, toolsAndTechnologies: $toolsAndTechnologies, mentoringStyle: $mentoringStyle, profileCompletionPercentage: $profileCompletionPercentage, isVerified: $isVerified, verificationStatus: $verificationStatus, totalMenteesHelped: $totalMenteesHelped, domain: $domain, domainId: $domainId, subDomains: $subDomains, tags: $tags, scheduleType: $scheduleType, webinarCollaborations: $webinarCollaborations, classCollaborations: $classCollaborations, invitedWebinarCollabs: $invitedWebinarCollabs, invitedClassCollabs: $invitedClassCollabs, user: $user, userId: $userId, totalRevenue: $totalRevenue, pendingRevenue: $pendingRevenue, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.videoIntroUrl, videoIntroUrl) ||
                other.videoIntroUrl == videoIntroUrl) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.toolsAndTechnologies, toolsAndTechnologies) ||
                other.toolsAndTechnologies == toolsAndTechnologies) &&
            (identical(other.mentoringStyle, mentoringStyle) ||
                other.mentoringStyle == mentoringStyle) &&
            (identical(other.profileCompletionPercentage,
                    profileCompletionPercentage) ||
                other.profileCompletionPercentage ==
                    profileCompletionPercentage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.totalMenteesHelped, totalMenteesHelped) ||
                other.totalMenteesHelped == totalMenteesHelped) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.subDomains, subDomains) ||
                other.subDomains == subDomains) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.webinarCollaborations, webinarCollaborations) ||
                other.webinarCollaborations == webinarCollaborations) &&
            (identical(other.classCollaborations, classCollaborations) ||
                other.classCollaborations == classCollaborations) &&
            (identical(other.invitedWebinarCollabs, invitedWebinarCollabs) ||
                other.invitedWebinarCollabs == invitedWebinarCollabs) &&
            (identical(other.invitedClassCollabs, invitedClassCollabs) ||
                other.invitedClassCollabs == invitedClassCollabs) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.pendingRevenue, pendingRevenue) ||
                other.pendingRevenue == pendingRevenue) &&
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
        description,
        experience,
        rating,
        headline,
        websiteUrl,
        twitterUrl,
        githubUrl,
        videoIntroUrl,
        languages,
        toolsAndTechnologies,
        mentoringStyle,
        profileCompletionPercentage,
        isVerified,
        verificationStatus,
        totalMenteesHelped,
        domain,
        domainId,
        subDomains,
        tags,
        scheduleType,
        webinarCollaborations,
        classCollaborations,
        invitedWebinarCollabs,
        invitedClassCollabs,
        user,
        userId,
        totalRevenue,
        pendingRevenue,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileWhereInputImplCopyWith<_$ConsultantProfileWhereInputImpl>
      get copyWith => __$$ConsultantProfileWhereInputImplCopyWithImpl<
          _$ConsultantProfileWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileWhereInput
    implements ConsultantProfileWhereInput {
  const factory _ConsultantProfileWhereInput(
          {final StringFilter? id,
          final StringFilter? description,
          final FloatFilter? experience,
          final FloatFilter? rating,
          final StringFilter? headline,
          final StringFilter? websiteUrl,
          final StringFilter? twitterUrl,
          final StringFilter? githubUrl,
          final StringFilter? videoIntroUrl,
          final StringListFilter? languages,
          final StringListFilter? toolsAndTechnologies,
          final StringFilter? mentoringStyle,
          final IntFilter? profileCompletionPercentage,
          final BooleanFilter? isVerified,
          final ConsultantVerificationStatusFilter? verificationStatus,
          final IntFilter? totalMenteesHelped,
          final DomainRelationFilter? domain,
          final StringFilter? domainId,
          final SubDomainListRelationFilter? subDomains,
          final TagListRelationFilter? tags,
          final ScheduleTypeFilter? scheduleType,
          final WebinarCollaboratorListRelationFilter? webinarCollaborations,
          final ClassCollaboratorListRelationFilter? classCollaborations,
          final WebinarCollaboratorListRelationFilter? invitedWebinarCollabs,
          final ClassCollaboratorListRelationFilter? invitedClassCollabs,
          final UserRelationFilter? user,
          final StringFilter? userId,
          final IntFilter? totalRevenue,
          final IntFilter? pendingRevenue,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsultantProfileWhereInput>? AND,
          final List<ConsultantProfileWhereInput>? OR,
          final ConsultantProfileWhereInput? NOT}) =
      _$ConsultantProfileWhereInputImpl;

  factory _ConsultantProfileWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantProfileWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get description;
  @override
  FloatFilter? get experience;
  @override
  FloatFilter? get rating;
  @override
  StringFilter? get headline;
  @override
  StringFilter? get websiteUrl;
  @override
  StringFilter? get twitterUrl;
  @override
  StringFilter? get githubUrl;
  @override
  StringFilter? get videoIntroUrl;
  @override
  StringListFilter? get languages;
  @override
  StringListFilter? get toolsAndTechnologies;
  @override
  StringFilter? get mentoringStyle;
  @override
  IntFilter? get profileCompletionPercentage;
  @override
  BooleanFilter? get isVerified;
  @override
  ConsultantVerificationStatusFilter? get verificationStatus;
  @override
  IntFilter? get totalMenteesHelped;

  /// Filter by domain relation
  @override
  DomainRelationFilter? get domain;
  @override
  StringFilter? get domainId;

  /// Filter by subDomains relation
  @override
  SubDomainListRelationFilter? get subDomains;

  /// Filter by tags relation
  @override
  TagListRelationFilter? get tags;
  @override
  ScheduleTypeFilter? get scheduleType;

  /// Filter by webinarCollaborations relation
  @override
  WebinarCollaboratorListRelationFilter? get webinarCollaborations;

  /// Filter by classCollaborations relation
  @override
  ClassCollaboratorListRelationFilter? get classCollaborations;

  /// Filter by invitedWebinarCollabs relation
  @override
  WebinarCollaboratorListRelationFilter? get invitedWebinarCollabs;

  /// Filter by invitedClassCollabs relation
  @override
  ClassCollaboratorListRelationFilter? get invitedClassCollabs;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  IntFilter? get totalRevenue;
  @override
  IntFilter? get pendingRevenue;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultantProfileWhereInput>? get AND;
  @override
  List<ConsultantProfileWhereInput>? get OR;
  @override
  ConsultantProfileWhereInput? get NOT;

  /// Create a copy of ConsultantProfileWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileWhereInputImplCopyWith<_$ConsultantProfileWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileListRelationFilter
    _$ConsultantProfileListRelationFilterFromJson(Map<String, dynamic> json) {
  return _ConsultantProfileListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileListRelationFilter {
  /// At least one related record matches
  ConsultantProfileWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultantProfileWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultantProfileWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileListRelationFilterCopyWith<
          ConsultantProfileListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileListRelationFilterCopyWith<$Res> {
  factory $ConsultantProfileListRelationFilterCopyWith(
          ConsultantProfileListRelationFilter value,
          $Res Function(ConsultantProfileListRelationFilter) then) =
      _$ConsultantProfileListRelationFilterCopyWithImpl<$Res,
          ConsultantProfileListRelationFilter>;
  @useResult
  $Res call(
      {ConsultantProfileWhereInput? some,
      ConsultantProfileWhereInput? every,
      ConsultantProfileWhereInput? none});

  $ConsultantProfileWhereInputCopyWith<$Res>? get some;
  $ConsultantProfileWhereInputCopyWith<$Res>? get every;
  $ConsultantProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultantProfileListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantProfileListRelationFilter>
    implements $ConsultantProfileListRelationFilterCopyWith<$Res> {
  _$ConsultantProfileListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileListRelationFilter
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
              as ConsultantProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileListRelationFilterImplCopyWith<$Res>
    implements $ConsultantProfileListRelationFilterCopyWith<$Res> {
  factory _$$ConsultantProfileListRelationFilterImplCopyWith(
          _$ConsultantProfileListRelationFilterImpl value,
          $Res Function(_$ConsultantProfileListRelationFilterImpl) then) =
      __$$ConsultantProfileListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantProfileWhereInput? some,
      ConsultantProfileWhereInput? every,
      ConsultantProfileWhereInput? none});

  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultantProfileListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantProfileListRelationFilterCopyWithImpl<$Res,
        _$ConsultantProfileListRelationFilterImpl>
    implements _$$ConsultantProfileListRelationFilterImplCopyWith<$Res> {
  __$$ConsultantProfileListRelationFilterImplCopyWithImpl(
      _$ConsultantProfileListRelationFilterImpl _value,
      $Res Function(_$ConsultantProfileListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultantProfileListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantProfileListRelationFilterImpl
    implements _ConsultantProfileListRelationFilter {
  const _$ConsultantProfileListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultantProfileListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultantProfileWhereInput? some;

  /// All related records match
  @override
  final ConsultantProfileWhereInput? every;

  /// No related records match
  @override
  final ConsultantProfileWhereInput? none;

  @override
  String toString() {
    return 'ConsultantProfileListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileListRelationFilterImplCopyWith<
          _$ConsultantProfileListRelationFilterImpl>
      get copyWith => __$$ConsultantProfileListRelationFilterImplCopyWithImpl<
          _$ConsultantProfileListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileListRelationFilter
    implements ConsultantProfileListRelationFilter {
  const factory _ConsultantProfileListRelationFilter(
          {final ConsultantProfileWhereInput? some,
          final ConsultantProfileWhereInput? every,
          final ConsultantProfileWhereInput? none}) =
      _$ConsultantProfileListRelationFilterImpl;

  factory _ConsultantProfileListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultantProfileWhereInput? get some;

  /// All related records match
  @override
  ConsultantProfileWhereInput? get every;

  /// No related records match
  @override
  ConsultantProfileWhereInput? get none;

  /// Create a copy of ConsultantProfileListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileListRelationFilterImplCopyWith<
          _$ConsultantProfileListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileRelationFilter _$ConsultantProfileRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantProfileRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultantProfileWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultantProfileWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileRelationFilterCopyWith<ConsultantProfileRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileRelationFilterCopyWith<$Res> {
  factory $ConsultantProfileRelationFilterCopyWith(
          ConsultantProfileRelationFilter value,
          $Res Function(ConsultantProfileRelationFilter) then) =
      _$ConsultantProfileRelationFilterCopyWithImpl<$Res,
          ConsultantProfileRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantProfileWhereInput? is_,
      ConsultantProfileWhereInput? isNot});

  $ConsultantProfileWhereInputCopyWith<$Res>? get is_;
  $ConsultantProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultantProfileRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantProfileRelationFilter>
    implements $ConsultantProfileRelationFilterCopyWith<$Res> {
  _$ConsultantProfileRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileRelationFilter
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
              as ConsultantProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultantProfileWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileRelationFilterImplCopyWith<$Res>
    implements $ConsultantProfileRelationFilterCopyWith<$Res> {
  factory _$$ConsultantProfileRelationFilterImplCopyWith(
          _$ConsultantProfileRelationFilterImpl value,
          $Res Function(_$ConsultantProfileRelationFilterImpl) then) =
      __$$ConsultantProfileRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantProfileWhereInput? is_,
      ConsultantProfileWhereInput? isNot});

  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultantProfileWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultantProfileRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantProfileRelationFilterCopyWithImpl<$Res,
        _$ConsultantProfileRelationFilterImpl>
    implements _$$ConsultantProfileRelationFilterImplCopyWith<$Res> {
  __$$ConsultantProfileRelationFilterImplCopyWithImpl(
      _$ConsultantProfileRelationFilterImpl _value,
      $Res Function(_$ConsultantProfileRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultantProfileRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantProfileRelationFilterImpl
    implements _ConsultantProfileRelationFilter {
  const _$ConsultantProfileRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultantProfileRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultantProfileWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultantProfileWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultantProfileRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileRelationFilterImplCopyWith<
          _$ConsultantProfileRelationFilterImpl>
      get copyWith => __$$ConsultantProfileRelationFilterImplCopyWithImpl<
          _$ConsultantProfileRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileRelationFilter
    implements ConsultantProfileRelationFilter {
  const factory _ConsultantProfileRelationFilter(
          {@JsonKey(name: 'is') final ConsultantProfileWhereInput? is_,
          final ConsultantProfileWhereInput? isNot}) =
      _$ConsultantProfileRelationFilterImpl;

  factory _ConsultantProfileRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultantProfileRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultantProfileWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultantProfileWhereInput? get isNot;

  /// Create a copy of ConsultantProfileRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileRelationFilterImplCopyWith<
          _$ConsultantProfileRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileOrderByInput _$ConsultantProfileOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantProfileOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get experience => throw _privateConstructorUsedError;
  SortOrder? get rating => throw _privateConstructorUsedError;
  SortOrder? get headline => throw _privateConstructorUsedError;
  SortOrder? get websiteUrl => throw _privateConstructorUsedError;
  SortOrder? get twitterUrl => throw _privateConstructorUsedError;
  SortOrder? get githubUrl => throw _privateConstructorUsedError;
  SortOrder? get videoIntroUrl => throw _privateConstructorUsedError;
  SortOrder? get languages => throw _privateConstructorUsedError;
  SortOrder? get toolsAndTechnologies => throw _privateConstructorUsedError;
  SortOrder? get mentoringStyle => throw _privateConstructorUsedError;
  SortOrder? get profileCompletionPercentage =>
      throw _privateConstructorUsedError;
  SortOrder? get isVerified => throw _privateConstructorUsedError;
  SortOrder? get totalMenteesHelped => throw _privateConstructorUsedError;
  SortOrder? get domainId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get totalRevenue => throw _privateConstructorUsedError;
  SortOrder? get pendingRevenue => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileOrderByInputCopyWith<ConsultantProfileOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileOrderByInputCopyWith<$Res> {
  factory $ConsultantProfileOrderByInputCopyWith(
          ConsultantProfileOrderByInput value,
          $Res Function(ConsultantProfileOrderByInput) then) =
      _$ConsultantProfileOrderByInputCopyWithImpl<$Res,
          ConsultantProfileOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? description,
      SortOrder? experience,
      SortOrder? rating,
      SortOrder? headline,
      SortOrder? websiteUrl,
      SortOrder? twitterUrl,
      SortOrder? githubUrl,
      SortOrder? videoIntroUrl,
      SortOrder? languages,
      SortOrder? toolsAndTechnologies,
      SortOrder? mentoringStyle,
      SortOrder? profileCompletionPercentage,
      SortOrder? isVerified,
      SortOrder? totalMenteesHelped,
      SortOrder? domainId,
      SortOrder? userId,
      SortOrder? totalRevenue,
      SortOrder? pendingRevenue,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultantProfileOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileOrderByInput>
    implements $ConsultantProfileOrderByInputCopyWith<$Res> {
  _$ConsultantProfileOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domainId = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultantProfileOrderByInputImplCopyWith<$Res>
    implements $ConsultantProfileOrderByInputCopyWith<$Res> {
  factory _$$ConsultantProfileOrderByInputImplCopyWith(
          _$ConsultantProfileOrderByInputImpl value,
          $Res Function(_$ConsultantProfileOrderByInputImpl) then) =
      __$$ConsultantProfileOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? description,
      SortOrder? experience,
      SortOrder? rating,
      SortOrder? headline,
      SortOrder? websiteUrl,
      SortOrder? twitterUrl,
      SortOrder? githubUrl,
      SortOrder? videoIntroUrl,
      SortOrder? languages,
      SortOrder? toolsAndTechnologies,
      SortOrder? mentoringStyle,
      SortOrder? profileCompletionPercentage,
      SortOrder? isVerified,
      SortOrder? totalMenteesHelped,
      SortOrder? domainId,
      SortOrder? userId,
      SortOrder? totalRevenue,
      SortOrder? pendingRevenue,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultantProfileOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileOrderByInputCopyWithImpl<$Res,
        _$ConsultantProfileOrderByInputImpl>
    implements _$$ConsultantProfileOrderByInputImplCopyWith<$Res> {
  __$$ConsultantProfileOrderByInputImplCopyWithImpl(
      _$ConsultantProfileOrderByInputImpl _value,
      $Res Function(_$ConsultantProfileOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? experience = freezed,
    Object? rating = freezed,
    Object? headline = freezed,
    Object? websiteUrl = freezed,
    Object? twitterUrl = freezed,
    Object? githubUrl = freezed,
    Object? videoIntroUrl = freezed,
    Object? languages = freezed,
    Object? toolsAndTechnologies = freezed,
    Object? mentoringStyle = freezed,
    Object? profileCompletionPercentage = freezed,
    Object? isVerified = freezed,
    Object? totalMenteesHelped = freezed,
    Object? domainId = freezed,
    Object? userId = freezed,
    Object? totalRevenue = freezed,
    Object? pendingRevenue = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultantProfileOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      videoIntroUrl: freezed == videoIntroUrl
          ? _value.videoIntroUrl
          : videoIntroUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      toolsAndTechnologies: freezed == toolsAndTechnologies
          ? _value.toolsAndTechnologies
          : toolsAndTechnologies // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mentoringStyle: freezed == mentoringStyle
          ? _value.mentoringStyle
          : mentoringStyle // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      profileCompletionPercentage: freezed == profileCompletionPercentage
          ? _value.profileCompletionPercentage
          : profileCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalMenteesHelped: freezed == totalMenteesHelped
          ? _value.totalMenteesHelped
          : totalMenteesHelped // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      domainId: freezed == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pendingRevenue: freezed == pendingRevenue
          ? _value.pendingRevenue
          : pendingRevenue // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantProfileOrderByInputImpl
    implements _ConsultantProfileOrderByInput {
  const _$ConsultantProfileOrderByInputImpl(
      {this.id,
      this.description,
      this.experience,
      this.rating,
      this.headline,
      this.websiteUrl,
      this.twitterUrl,
      this.githubUrl,
      this.videoIntroUrl,
      this.languages,
      this.toolsAndTechnologies,
      this.mentoringStyle,
      this.profileCompletionPercentage,
      this.isVerified,
      this.totalMenteesHelped,
      this.domainId,
      this.userId,
      this.totalRevenue,
      this.pendingRevenue,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultantProfileOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? description;
  @override
  final SortOrder? experience;
  @override
  final SortOrder? rating;
  @override
  final SortOrder? headline;
  @override
  final SortOrder? websiteUrl;
  @override
  final SortOrder? twitterUrl;
  @override
  final SortOrder? githubUrl;
  @override
  final SortOrder? videoIntroUrl;
  @override
  final SortOrder? languages;
  @override
  final SortOrder? toolsAndTechnologies;
  @override
  final SortOrder? mentoringStyle;
  @override
  final SortOrder? profileCompletionPercentage;
  @override
  final SortOrder? isVerified;
  @override
  final SortOrder? totalMenteesHelped;
  @override
  final SortOrder? domainId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? totalRevenue;
  @override
  final SortOrder? pendingRevenue;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultantProfileOrderByInput(id: $id, description: $description, experience: $experience, rating: $rating, headline: $headline, websiteUrl: $websiteUrl, twitterUrl: $twitterUrl, githubUrl: $githubUrl, videoIntroUrl: $videoIntroUrl, languages: $languages, toolsAndTechnologies: $toolsAndTechnologies, mentoringStyle: $mentoringStyle, profileCompletionPercentage: $profileCompletionPercentage, isVerified: $isVerified, totalMenteesHelped: $totalMenteesHelped, domainId: $domainId, userId: $userId, totalRevenue: $totalRevenue, pendingRevenue: $pendingRevenue, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.videoIntroUrl, videoIntroUrl) ||
                other.videoIntroUrl == videoIntroUrl) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.toolsAndTechnologies, toolsAndTechnologies) ||
                other.toolsAndTechnologies == toolsAndTechnologies) &&
            (identical(other.mentoringStyle, mentoringStyle) ||
                other.mentoringStyle == mentoringStyle) &&
            (identical(other.profileCompletionPercentage,
                    profileCompletionPercentage) ||
                other.profileCompletionPercentage ==
                    profileCompletionPercentage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.totalMenteesHelped, totalMenteesHelped) ||
                other.totalMenteesHelped == totalMenteesHelped) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.pendingRevenue, pendingRevenue) ||
                other.pendingRevenue == pendingRevenue) &&
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
        description,
        experience,
        rating,
        headline,
        websiteUrl,
        twitterUrl,
        githubUrl,
        videoIntroUrl,
        languages,
        toolsAndTechnologies,
        mentoringStyle,
        profileCompletionPercentage,
        isVerified,
        totalMenteesHelped,
        domainId,
        userId,
        totalRevenue,
        pendingRevenue,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ConsultantProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileOrderByInputImplCopyWith<
          _$ConsultantProfileOrderByInputImpl>
      get copyWith => __$$ConsultantProfileOrderByInputImplCopyWithImpl<
          _$ConsultantProfileOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileOrderByInput
    implements ConsultantProfileOrderByInput {
  const factory _ConsultantProfileOrderByInput(
      {final SortOrder? id,
      final SortOrder? description,
      final SortOrder? experience,
      final SortOrder? rating,
      final SortOrder? headline,
      final SortOrder? websiteUrl,
      final SortOrder? twitterUrl,
      final SortOrder? githubUrl,
      final SortOrder? videoIntroUrl,
      final SortOrder? languages,
      final SortOrder? toolsAndTechnologies,
      final SortOrder? mentoringStyle,
      final SortOrder? profileCompletionPercentage,
      final SortOrder? isVerified,
      final SortOrder? totalMenteesHelped,
      final SortOrder? domainId,
      final SortOrder? userId,
      final SortOrder? totalRevenue,
      final SortOrder? pendingRevenue,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultantProfileOrderByInputImpl;

  factory _ConsultantProfileOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantProfileOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get description;
  @override
  SortOrder? get experience;
  @override
  SortOrder? get rating;
  @override
  SortOrder? get headline;
  @override
  SortOrder? get websiteUrl;
  @override
  SortOrder? get twitterUrl;
  @override
  SortOrder? get githubUrl;
  @override
  SortOrder? get videoIntroUrl;
  @override
  SortOrder? get languages;
  @override
  SortOrder? get toolsAndTechnologies;
  @override
  SortOrder? get mentoringStyle;
  @override
  SortOrder? get profileCompletionPercentage;
  @override
  SortOrder? get isVerified;
  @override
  SortOrder? get totalMenteesHelped;
  @override
  SortOrder? get domainId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get totalRevenue;
  @override
  SortOrder? get pendingRevenue;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultantProfileOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileOrderByInputImplCopyWith<
          _$ConsultantProfileOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
