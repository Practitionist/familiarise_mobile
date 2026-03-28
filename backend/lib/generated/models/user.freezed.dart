// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get onlineStatus => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  bool get onboardingCompleted => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get linkedinUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profileDisplayImage => throw _privateConstructorUsedError;
  DateTime? get termsAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get privacyAcceptedAt => throw _privateConstructorUsedError;
  List<WorkExperience> get workExperiences =>
      throw _privateConstructorUsedError;
  List<Certification> get certifications => throw _privateConstructorUsedError;
  List<Education> get education => throw _privateConstructorUsedError;
  CookiePreference? get cookiePreferences => throw _privateConstructorUsedError;
  NotificationPreference? get notificationPreferences =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Payment')
  List<Payment> get payment => throw _privateConstructorUsedError;
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  ConsulteeProfile? get consulteeProfile => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;
  StaffProfile? get staffProfile => throw _privateConstructorUsedError;
  String? get staffProfileId => throw _privateConstructorUsedError;
  AdminProfile? get adminProfile => throw _privateConstructorUsedError;
  String? get adminProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SlotOfAppointment>? get slotsOfAppointment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Waitlist')
  List<Waitlist> get waitlist => throw _privateConstructorUsedError;
  List<Feedback> get feedbacks => throw _privateConstructorUsedError;
  List<SupportTicket> get supportTickets => throw _privateConstructorUsedError;
  List<SupportResponse> get supportResponses =>
      throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;
  List<Session> get sessions => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsSubmitted =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsReceived =>
      throw _privateConstructorUsedError;
  List<ModerationAction> get moderationActions =>
      throw _privateConstructorUsedError;
  ReferralCode? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Referral? get referral => throw _privateConstructorUsedError;
  List<ReferralCredit> get referralCredits =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      bool emailVerified,
      String? image,
      String? phone,
      String? address,
      bool onlineStatus,
      String? timezone,
      bool onboardingCompleted,
      UserRole? role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      List<WorkExperience> workExperiences,
      List<Certification> certifications,
      List<Education> education,
      CookiePreference? cookiePreferences,
      NotificationPreference? notificationPreferences,
      @JsonKey(name: 'Payment') List<Payment> payment,
      ConsultantProfile? consultantProfile,
      String? consultantProfileId,
      ConsulteeProfile? consulteeProfile,
      String? consulteeProfileId,
      StaffProfile? staffProfile,
      String? staffProfileId,
      AdminProfile? adminProfile,
      String? adminProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SlotOfAppointment>? slotsOfAppointment,
      @JsonKey(name: 'Waitlist') List<Waitlist> waitlist,
      List<Feedback> feedbacks,
      List<SupportTicket> supportTickets,
      List<SupportResponse> supportResponses,
      List<Account> accounts,
      List<Session> sessions,
      List<Member> members,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ModerationReport>? reportsSubmitted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ModerationReport>? reportsReceived,
      List<ModerationAction> moderationActions,
      ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) Referral? referral,
      List<ReferralCredit> referralCredits,
      DateTime createdAt,
      DateTime updatedAt});

  $CookiePreferenceCopyWith<$Res>? get cookiePreferences;
  $NotificationPreferenceCopyWith<$Res>? get notificationPreferences;
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
  $StaffProfileCopyWith<$Res>? get staffProfile;
  $AdminProfileCopyWith<$Res>? get adminProfile;
  $ReferralCodeCopyWith<$Res>? get referralCode;
  $ReferralCopyWith<$Res>? get referral;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? emailVerified = null,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = null,
    Object? timezone = freezed,
    Object? onboardingCompleted = null,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? workExperiences = null,
    Object? certifications = null,
    Object? education = null,
    Object? cookiePreferences = freezed,
    Object? notificationPreferences = freezed,
    Object? payment = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfile = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfile = freezed,
    Object? adminProfileId = freezed,
    Object? slotsOfAppointment = freezed,
    Object? waitlist = null,
    Object? feedbacks = null,
    Object? supportTickets = null,
    Object? supportResponses = null,
    Object? accounts = null,
    Object? sessions = null,
    Object? members = null,
    Object? reportsSubmitted = freezed,
    Object? reportsReceived = freezed,
    Object? moderationActions = null,
    Object? referralCode = freezed,
    Object? referral = freezed,
    Object? referralCredits = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workExperiences: null == workExperiences
          ? _value.workExperiences
          : workExperiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      cookiePreferences: freezed == cookiePreferences
          ? _value.cookiePreferences
          : cookiePreferences // ignore: cast_nullable_to_non_nullable
              as CookiePreference?,
      notificationPreferences: freezed == notificationPreferences
          ? _value.notificationPreferences
          : notificationPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationPreference?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfile: freezed == staffProfile
          ? _value.staffProfile
          : staffProfile // ignore: cast_nullable_to_non_nullable
              as StaffProfile?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfile: freezed == adminProfile
          ? _value.adminProfile
          : adminProfile // ignore: cast_nullable_to_non_nullable
              as AdminProfile?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotsOfAppointment: freezed == slotsOfAppointment
          ? _value.slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointment>?,
      waitlist: null == waitlist
          ? _value.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      supportTickets: null == supportTickets
          ? _value.supportTickets
          : supportTickets // ignore: cast_nullable_to_non_nullable
              as List<SupportTicket>,
      supportResponses: null == supportResponses
          ? _value.supportResponses
          : supportResponses // ignore: cast_nullable_to_non_nullable
              as List<SupportResponse>,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      reportsSubmitted: freezed == reportsSubmitted
          ? _value.reportsSubmitted
          : reportsSubmitted // ignore: cast_nullable_to_non_nullable
              as List<ModerationReport>?,
      reportsReceived: freezed == reportsReceived
          ? _value.reportsReceived
          : reportsReceived // ignore: cast_nullable_to_non_nullable
              as List<ModerationReport>?,
      moderationActions: null == moderationActions
          ? _value.moderationActions
          : moderationActions // ignore: cast_nullable_to_non_nullable
              as List<ModerationAction>,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCode?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as Referral?,
      referralCredits: null == referralCredits
          ? _value.referralCredits
          : referralCredits // ignore: cast_nullable_to_non_nullable
              as List<ReferralCredit>,
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

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceCopyWith<$Res>? get cookiePreferences {
    if (_value.cookiePreferences == null) {
      return null;
    }

    return $CookiePreferenceCopyWith<$Res>(_value.cookiePreferences!, (value) {
      return _then(_value.copyWith(cookiePreferences: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceCopyWith<$Res>? get notificationPreferences {
    if (_value.notificationPreferences == null) {
      return null;
    }

    return $NotificationPreferenceCopyWith<$Res>(
        _value.notificationPreferences!, (value) {
      return _then(_value.copyWith(notificationPreferences: value) as $Val);
    });
  }

  /// Create a copy of User
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

  /// Create a copy of User
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

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffProfileCopyWith<$Res>? get staffProfile {
    if (_value.staffProfile == null) {
      return null;
    }

    return $StaffProfileCopyWith<$Res>(_value.staffProfile!, (value) {
      return _then(_value.copyWith(staffProfile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProfileCopyWith<$Res>? get adminProfile {
    if (_value.adminProfile == null) {
      return null;
    }

    return $AdminProfileCopyWith<$Res>(_value.adminProfile!, (value) {
      return _then(_value.copyWith(adminProfile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeCopyWith<$Res>? get referralCode {
    if (_value.referralCode == null) {
      return null;
    }

    return $ReferralCodeCopyWith<$Res>(_value.referralCode!, (value) {
      return _then(_value.copyWith(referralCode: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCopyWith<$Res>? get referral {
    if (_value.referral == null) {
      return null;
    }

    return $ReferralCopyWith<$Res>(_value.referral!, (value) {
      return _then(_value.copyWith(referral: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      bool emailVerified,
      String? image,
      String? phone,
      String? address,
      bool onlineStatus,
      String? timezone,
      bool onboardingCompleted,
      UserRole? role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      List<WorkExperience> workExperiences,
      List<Certification> certifications,
      List<Education> education,
      CookiePreference? cookiePreferences,
      NotificationPreference? notificationPreferences,
      @JsonKey(name: 'Payment') List<Payment> payment,
      ConsultantProfile? consultantProfile,
      String? consultantProfileId,
      ConsulteeProfile? consulteeProfile,
      String? consulteeProfileId,
      StaffProfile? staffProfile,
      String? staffProfileId,
      AdminProfile? adminProfile,
      String? adminProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SlotOfAppointment>? slotsOfAppointment,
      @JsonKey(name: 'Waitlist') List<Waitlist> waitlist,
      List<Feedback> feedbacks,
      List<SupportTicket> supportTickets,
      List<SupportResponse> supportResponses,
      List<Account> accounts,
      List<Session> sessions,
      List<Member> members,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ModerationReport>? reportsSubmitted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ModerationReport>? reportsReceived,
      List<ModerationAction> moderationActions,
      ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) Referral? referral,
      List<ReferralCredit> referralCredits,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $CookiePreferenceCopyWith<$Res>? get cookiePreferences;
  @override
  $NotificationPreferenceCopyWith<$Res>? get notificationPreferences;
  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
  @override
  $StaffProfileCopyWith<$Res>? get staffProfile;
  @override
  $AdminProfileCopyWith<$Res>? get adminProfile;
  @override
  $ReferralCodeCopyWith<$Res>? get referralCode;
  @override
  $ReferralCopyWith<$Res>? get referral;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? emailVerified = null,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = null,
    Object? timezone = freezed,
    Object? onboardingCompleted = null,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? workExperiences = null,
    Object? certifications = null,
    Object? education = null,
    Object? cookiePreferences = freezed,
    Object? notificationPreferences = freezed,
    Object? payment = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfile = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfile = freezed,
    Object? adminProfileId = freezed,
    Object? slotsOfAppointment = freezed,
    Object? waitlist = null,
    Object? feedbacks = null,
    Object? supportTickets = null,
    Object? supportResponses = null,
    Object? accounts = null,
    Object? sessions = null,
    Object? members = null,
    Object? reportsSubmitted = freezed,
    Object? reportsReceived = freezed,
    Object? moderationActions = null,
    Object? referralCode = freezed,
    Object? referral = freezed,
    Object? referralCredits = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workExperiences: null == workExperiences
          ? _value._workExperiences
          : workExperiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      education: null == education
          ? _value._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      cookiePreferences: freezed == cookiePreferences
          ? _value.cookiePreferences
          : cookiePreferences // ignore: cast_nullable_to_non_nullable
              as CookiePreference?,
      notificationPreferences: freezed == notificationPreferences
          ? _value.notificationPreferences
          : notificationPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationPreference?,
      payment: null == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfile: freezed == staffProfile
          ? _value.staffProfile
          : staffProfile // ignore: cast_nullable_to_non_nullable
              as StaffProfile?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfile: freezed == adminProfile
          ? _value.adminProfile
          : adminProfile // ignore: cast_nullable_to_non_nullable
              as AdminProfile?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotsOfAppointment: freezed == slotsOfAppointment
          ? _value._slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAppointment>?,
      waitlist: null == waitlist
          ? _value._waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as List<Waitlist>,
      feedbacks: null == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      supportTickets: null == supportTickets
          ? _value._supportTickets
          : supportTickets // ignore: cast_nullable_to_non_nullable
              as List<SupportTicket>,
      supportResponses: null == supportResponses
          ? _value._supportResponses
          : supportResponses // ignore: cast_nullable_to_non_nullable
              as List<SupportResponse>,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      reportsSubmitted: freezed == reportsSubmitted
          ? _value._reportsSubmitted
          : reportsSubmitted // ignore: cast_nullable_to_non_nullable
              as List<ModerationReport>?,
      reportsReceived: freezed == reportsReceived
          ? _value._reportsReceived
          : reportsReceived // ignore: cast_nullable_to_non_nullable
              as List<ModerationReport>?,
      moderationActions: null == moderationActions
          ? _value._moderationActions
          : moderationActions // ignore: cast_nullable_to_non_nullable
              as List<ModerationAction>,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as ReferralCode?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as Referral?,
      referralCredits: null == referralCredits
          ? _value._referralCredits
          : referralCredits // ignore: cast_nullable_to_non_nullable
              as List<ReferralCredit>,
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
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.name,
      required this.email,
      this.emailVerified = false,
      this.image,
      this.phone,
      this.address,
      this.onlineStatus = false,
      this.timezone,
      this.onboardingCompleted = false,
      this.role = UserRole.consultee,
      this.dateOfBirth,
      this.gender,
      this.city,
      this.country,
      this.linkedinUrl,
      this.bio,
      this.profileDisplayImage,
      this.termsAcceptedAt,
      this.privacyAcceptedAt,
      required final List<WorkExperience> workExperiences,
      required final List<Certification> certifications,
      required final List<Education> education,
      this.cookiePreferences,
      this.notificationPreferences,
      @JsonKey(name: 'Payment') required final List<Payment> payment,
      this.consultantProfile,
      this.consultantProfileId,
      this.consulteeProfile,
      this.consulteeProfileId,
      this.staffProfile,
      this.staffProfileId,
      this.adminProfile,
      this.adminProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SlotOfAppointment>? slotsOfAppointment,
      @JsonKey(name: 'Waitlist') required final List<Waitlist> waitlist,
      required final List<Feedback> feedbacks,
      required final List<SupportTicket> supportTickets,
      required final List<SupportResponse> supportResponses,
      required final List<Account> accounts,
      required final List<Session> sessions,
      required final List<Member> members,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ModerationReport>? reportsSubmitted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ModerationReport>? reportsReceived,
      required final List<ModerationAction> moderationActions,
      this.referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false) this.referral,
      required final List<ReferralCredit> referralCredits,
      required this.createdAt,
      required this.updatedAt})
      : _workExperiences = workExperiences,
        _certifications = certifications,
        _education = education,
        _payment = payment,
        _slotsOfAppointment = slotsOfAppointment,
        _waitlist = waitlist,
        _feedbacks = feedbacks,
        _supportTickets = supportTickets,
        _supportResponses = supportResponses,
        _accounts = accounts,
        _sessions = sessions,
        _members = members,
        _reportsSubmitted = reportsSubmitted,
        _reportsReceived = reportsReceived,
        _moderationActions = moderationActions,
        _referralCredits = referralCredits;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey()
  final bool emailVerified;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey()
  final bool onlineStatus;
  @override
  final String? timezone;
  @override
  @JsonKey()
  final bool onboardingCompleted;
  @override
  @JsonKey()
  final UserRole? role;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? linkedinUrl;
  @override
  final String? bio;
  @override
  final String? profileDisplayImage;
  @override
  final DateTime? termsAcceptedAt;
  @override
  final DateTime? privacyAcceptedAt;
  final List<WorkExperience> _workExperiences;
  @override
  List<WorkExperience> get workExperiences {
    if (_workExperiences is EqualUnmodifiableListView) return _workExperiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workExperiences);
  }

  final List<Certification> _certifications;
  @override
  List<Certification> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  final List<Education> _education;
  @override
  List<Education> get education {
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

  @override
  final CookiePreference? cookiePreferences;
  @override
  final NotificationPreference? notificationPreferences;
  final List<Payment> _payment;
  @override
  @JsonKey(name: 'Payment')
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  @override
  final ConsultantProfile? consultantProfile;
  @override
  final String? consultantProfileId;
  @override
  final ConsulteeProfile? consulteeProfile;
  @override
  final String? consulteeProfileId;
  @override
  final StaffProfile? staffProfile;
  @override
  final String? staffProfileId;
  @override
  final AdminProfile? adminProfile;
  @override
  final String? adminProfileId;
  final List<SlotOfAppointment>? _slotsOfAppointment;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SlotOfAppointment>? get slotsOfAppointment {
    final value = _slotsOfAppointment;
    if (value == null) return null;
    if (_slotsOfAppointment is EqualUnmodifiableListView)
      return _slotsOfAppointment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Waitlist> _waitlist;
  @override
  @JsonKey(name: 'Waitlist')
  List<Waitlist> get waitlist {
    if (_waitlist is EqualUnmodifiableListView) return _waitlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitlist);
  }

  final List<Feedback> _feedbacks;
  @override
  List<Feedback> get feedbacks {
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacks);
  }

  final List<SupportTicket> _supportTickets;
  @override
  List<SupportTicket> get supportTickets {
    if (_supportTickets is EqualUnmodifiableListView) return _supportTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportTickets);
  }

  final List<SupportResponse> _supportResponses;
  @override
  List<SupportResponse> get supportResponses {
    if (_supportResponses is EqualUnmodifiableListView)
      return _supportResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportResponses);
  }

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<ModerationReport>? _reportsSubmitted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsSubmitted {
    final value = _reportsSubmitted;
    if (value == null) return null;
    if (_reportsSubmitted is EqualUnmodifiableListView)
      return _reportsSubmitted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ModerationReport>? _reportsReceived;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsReceived {
    final value = _reportsReceived;
    if (value == null) return null;
    if (_reportsReceived is EqualUnmodifiableListView) return _reportsReceived;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ModerationAction> _moderationActions;
  @override
  List<ModerationAction> get moderationActions {
    if (_moderationActions is EqualUnmodifiableListView)
      return _moderationActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderationActions);
  }

  @override
  final ReferralCode? referralCode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Referral? referral;
  final List<ReferralCredit> _referralCredits;
  @override
  List<ReferralCredit> get referralCredits {
    if (_referralCredits is EqualUnmodifiableListView) return _referralCredits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referralCredits);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerified: $emailVerified, image: $image, phone: $phone, address: $address, onlineStatus: $onlineStatus, timezone: $timezone, onboardingCompleted: $onboardingCompleted, role: $role, dateOfBirth: $dateOfBirth, gender: $gender, city: $city, country: $country, linkedinUrl: $linkedinUrl, bio: $bio, profileDisplayImage: $profileDisplayImage, termsAcceptedAt: $termsAcceptedAt, privacyAcceptedAt: $privacyAcceptedAt, workExperiences: $workExperiences, certifications: $certifications, education: $education, cookiePreferences: $cookiePreferences, notificationPreferences: $notificationPreferences, payment: $payment, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consulteeProfile: $consulteeProfile, consulteeProfileId: $consulteeProfileId, staffProfile: $staffProfile, staffProfileId: $staffProfileId, adminProfile: $adminProfile, adminProfileId: $adminProfileId, slotsOfAppointment: $slotsOfAppointment, waitlist: $waitlist, feedbacks: $feedbacks, supportTickets: $supportTickets, supportResponses: $supportResponses, accounts: $accounts, sessions: $sessions, members: $members, reportsSubmitted: $reportsSubmitted, reportsReceived: $reportsReceived, moderationActions: $moderationActions, referralCode: $referralCode, referral: $referral, referralCredits: $referralCredits, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.linkedinUrl, linkedinUrl) ||
                other.linkedinUrl == linkedinUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileDisplayImage, profileDisplayImage) ||
                other.profileDisplayImage == profileDisplayImage) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyAcceptedAt, privacyAcceptedAt) ||
                other.privacyAcceptedAt == privacyAcceptedAt) &&
            const DeepCollectionEquality()
                .equals(other._workExperiences, _workExperiences) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality()
                .equals(other._education, _education) &&
            (identical(other.cookiePreferences, cookiePreferences) ||
                other.cookiePreferences == cookiePreferences) &&
            (identical(
                    other.notificationPreferences, notificationPreferences) ||
                other.notificationPreferences == notificationPreferences) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfile, consulteeProfile) ||
                other.consulteeProfile == consulteeProfile) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfile, staffProfile) ||
                other.staffProfile == staffProfile) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfile, adminProfile) ||
                other.adminProfile == adminProfile) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId) &&
            const DeepCollectionEquality()
                .equals(other._slotsOfAppointment, _slotsOfAppointment) &&
            const DeepCollectionEquality().equals(other._waitlist, _waitlist) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks) &&
            const DeepCollectionEquality()
                .equals(other._supportTickets, _supportTickets) &&
            const DeepCollectionEquality()
                .equals(other._supportResponses, _supportResponses) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._reportsSubmitted, _reportsSubmitted) &&
            const DeepCollectionEquality()
                .equals(other._reportsReceived, _reportsReceived) &&
            const DeepCollectionEquality()
                .equals(other._moderationActions, _moderationActions) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
            const DeepCollectionEquality()
                .equals(other._referralCredits, _referralCredits) &&
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
        name,
        email,
        emailVerified,
        image,
        phone,
        address,
        onlineStatus,
        timezone,
        onboardingCompleted,
        role,
        dateOfBirth,
        gender,
        city,
        country,
        linkedinUrl,
        bio,
        profileDisplayImage,
        termsAcceptedAt,
        privacyAcceptedAt,
        const DeepCollectionEquality().hash(_workExperiences),
        const DeepCollectionEquality().hash(_certifications),
        const DeepCollectionEquality().hash(_education),
        cookiePreferences,
        notificationPreferences,
        const DeepCollectionEquality().hash(_payment),
        consultantProfile,
        consultantProfileId,
        consulteeProfile,
        consulteeProfileId,
        staffProfile,
        staffProfileId,
        adminProfile,
        adminProfileId,
        const DeepCollectionEquality().hash(_slotsOfAppointment),
        const DeepCollectionEquality().hash(_waitlist),
        const DeepCollectionEquality().hash(_feedbacks),
        const DeepCollectionEquality().hash(_supportTickets),
        const DeepCollectionEquality().hash(_supportResponses),
        const DeepCollectionEquality().hash(_accounts),
        const DeepCollectionEquality().hash(_sessions),
        const DeepCollectionEquality().hash(_members),
        const DeepCollectionEquality().hash(_reportsSubmitted),
        const DeepCollectionEquality().hash(_reportsReceived),
        const DeepCollectionEquality().hash(_moderationActions),
        referralCode,
        referral,
        const DeepCollectionEquality().hash(_referralCredits),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String name,
      required final String email,
      final bool emailVerified,
      final String? image,
      final String? phone,
      final String? address,
      final bool onlineStatus,
      final String? timezone,
      final bool onboardingCompleted,
      final UserRole? role,
      final DateTime? dateOfBirth,
      final Gender? gender,
      final String? city,
      final String? country,
      final String? linkedinUrl,
      final String? bio,
      final String? profileDisplayImage,
      final DateTime? termsAcceptedAt,
      final DateTime? privacyAcceptedAt,
      required final List<WorkExperience> workExperiences,
      required final List<Certification> certifications,
      required final List<Education> education,
      final CookiePreference? cookiePreferences,
      final NotificationPreference? notificationPreferences,
      @JsonKey(name: 'Payment') required final List<Payment> payment,
      final ConsultantProfile? consultantProfile,
      final String? consultantProfileId,
      final ConsulteeProfile? consulteeProfile,
      final String? consulteeProfileId,
      final StaffProfile? staffProfile,
      final String? staffProfileId,
      final AdminProfile? adminProfile,
      final String? adminProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SlotOfAppointment>? slotsOfAppointment,
      @JsonKey(name: 'Waitlist') required final List<Waitlist> waitlist,
      required final List<Feedback> feedbacks,
      required final List<SupportTicket> supportTickets,
      required final List<SupportResponse> supportResponses,
      required final List<Account> accounts,
      required final List<Session> sessions,
      required final List<Member> members,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ModerationReport>? reportsSubmitted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ModerationReport>? reportsReceived,
      required final List<ModerationAction> moderationActions,
      final ReferralCode? referralCode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Referral? referral,
      required final List<ReferralCredit> referralCredits,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get emailVerified;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  bool get onlineStatus;
  @override
  String? get timezone;
  @override
  bool get onboardingCompleted;
  @override
  UserRole? get role;
  @override
  DateTime? get dateOfBirth;
  @override
  Gender? get gender;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get linkedinUrl;
  @override
  String? get bio;
  @override
  String? get profileDisplayImage;
  @override
  DateTime? get termsAcceptedAt;
  @override
  DateTime? get privacyAcceptedAt;
  @override
  List<WorkExperience> get workExperiences;
  @override
  List<Certification> get certifications;
  @override
  List<Education> get education;
  @override
  CookiePreference? get cookiePreferences;
  @override
  NotificationPreference? get notificationPreferences;
  @override
  @JsonKey(name: 'Payment')
  List<Payment> get payment;
  @override
  ConsultantProfile? get consultantProfile;
  @override
  String? get consultantProfileId;
  @override
  ConsulteeProfile? get consulteeProfile;
  @override
  String? get consulteeProfileId;
  @override
  StaffProfile? get staffProfile;
  @override
  String? get staffProfileId;
  @override
  AdminProfile? get adminProfile;
  @override
  String? get adminProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SlotOfAppointment>? get slotsOfAppointment;
  @override
  @JsonKey(name: 'Waitlist')
  List<Waitlist> get waitlist;
  @override
  List<Feedback> get feedbacks;
  @override
  List<SupportTicket> get supportTickets;
  @override
  List<SupportResponse> get supportResponses;
  @override
  List<Account> get accounts;
  @override
  List<Session> get sessions;
  @override
  List<Member> get members;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsSubmitted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ModerationReport>? get reportsReceived;
  @override
  List<ModerationAction> get moderationActions;
  @override
  ReferralCode? get referralCode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Referral? get referral;
  @override
  List<ReferralCredit> get referralCredits;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateUserInput _$CreateUserInputFromJson(Map<String, dynamic> json) {
  return _CreateUserInput.fromJson(json);
}

/// @nodoc
mixin _$CreateUserInput {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get onlineStatus => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  bool? get onboardingCompleted => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get linkedinUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profileDisplayImage => throw _privateConstructorUsedError;
  DateTime? get termsAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get privacyAcceptedAt => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;
  String? get staffProfileId => throw _privateConstructorUsedError;
  String? get adminProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateUserInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserInputCopyWith<CreateUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserInputCopyWith<$Res> {
  factory $CreateUserInputCopyWith(
          CreateUserInput value, $Res Function(CreateUserInput) then) =
      _$CreateUserInputCopyWithImpl<$Res, CreateUserInput>;
  @useResult
  $Res call(
      {String name,
      String email,
      bool? emailVerified,
      String? image,
      String? phone,
      String? address,
      bool? onlineStatus,
      String? timezone,
      bool? onboardingCompleted,
      UserRole role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class _$CreateUserInputCopyWithImpl<$Res, $Val extends CreateUserInput>
    implements $CreateUserInputCopyWith<$Res> {
  _$CreateUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserInputImplCopyWith<$Res>
    implements $CreateUserInputCopyWith<$Res> {
  factory _$$CreateUserInputImplCopyWith(_$CreateUserInputImpl value,
          $Res Function(_$CreateUserInputImpl) then) =
      __$$CreateUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      bool? emailVerified,
      String? image,
      String? phone,
      String? address,
      bool? onlineStatus,
      String? timezone,
      bool? onboardingCompleted,
      UserRole role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class __$$CreateUserInputImplCopyWithImpl<$Res>
    extends _$CreateUserInputCopyWithImpl<$Res, _$CreateUserInputImpl>
    implements _$$CreateUserInputImplCopyWith<$Res> {
  __$$CreateUserInputImplCopyWithImpl(
      _$CreateUserInputImpl _value, $Res Function(_$CreateUserInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_$CreateUserInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserInputImpl implements _CreateUserInput {
  const _$CreateUserInputImpl(
      {required this.name,
      required this.email,
      this.emailVerified = false,
      this.image,
      this.phone,
      this.address,
      this.onlineStatus = false,
      this.timezone,
      this.onboardingCompleted = false,
      this.role = UserRole.consultee,
      this.dateOfBirth,
      this.gender,
      this.city,
      this.country,
      this.linkedinUrl,
      this.bio,
      this.profileDisplayImage,
      this.termsAcceptedAt,
      this.privacyAcceptedAt,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.staffProfileId,
      this.adminProfileId});

  factory _$CreateUserInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserInputImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey()
  final bool? emailVerified;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey()
  final bool? onlineStatus;
  @override
  final String? timezone;
  @override
  @JsonKey()
  final bool? onboardingCompleted;
  @override
  @JsonKey()
  final UserRole role;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? linkedinUrl;
  @override
  final String? bio;
  @override
  final String? profileDisplayImage;
  @override
  final DateTime? termsAcceptedAt;
  @override
  final DateTime? privacyAcceptedAt;
  @override
  final String? consultantProfileId;
  @override
  final String? consulteeProfileId;
  @override
  final String? staffProfileId;
  @override
  final String? adminProfileId;

  @override
  String toString() {
    return 'CreateUserInput(name: $name, email: $email, emailVerified: $emailVerified, image: $image, phone: $phone, address: $address, onlineStatus: $onlineStatus, timezone: $timezone, onboardingCompleted: $onboardingCompleted, role: $role, dateOfBirth: $dateOfBirth, gender: $gender, city: $city, country: $country, linkedinUrl: $linkedinUrl, bio: $bio, profileDisplayImage: $profileDisplayImage, termsAcceptedAt: $termsAcceptedAt, privacyAcceptedAt: $privacyAcceptedAt, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, staffProfileId: $staffProfileId, adminProfileId: $adminProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.linkedinUrl, linkedinUrl) ||
                other.linkedinUrl == linkedinUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileDisplayImage, profileDisplayImage) ||
                other.profileDisplayImage == profileDisplayImage) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyAcceptedAt, privacyAcceptedAt) ||
                other.privacyAcceptedAt == privacyAcceptedAt) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        email,
        emailVerified,
        image,
        phone,
        address,
        onlineStatus,
        timezone,
        onboardingCompleted,
        role,
        dateOfBirth,
        gender,
        city,
        country,
        linkedinUrl,
        bio,
        profileDisplayImage,
        termsAcceptedAt,
        privacyAcceptedAt,
        consultantProfileId,
        consulteeProfileId,
        staffProfileId,
        adminProfileId
      ]);

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserInputImplCopyWith<_$CreateUserInputImpl> get copyWith =>
      __$$CreateUserInputImplCopyWithImpl<_$CreateUserInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserInputImplToJson(
      this,
    );
  }
}

abstract class _CreateUserInput implements CreateUserInput {
  const factory _CreateUserInput(
      {required final String name,
      required final String email,
      final bool? emailVerified,
      final String? image,
      final String? phone,
      final String? address,
      final bool? onlineStatus,
      final String? timezone,
      final bool? onboardingCompleted,
      final UserRole role,
      final DateTime? dateOfBirth,
      final Gender? gender,
      final String? city,
      final String? country,
      final String? linkedinUrl,
      final String? bio,
      final String? profileDisplayImage,
      final DateTime? termsAcceptedAt,
      final DateTime? privacyAcceptedAt,
      final String? consultantProfileId,
      final String? consulteeProfileId,
      final String? staffProfileId,
      final String? adminProfileId}) = _$CreateUserInputImpl;

  factory _CreateUserInput.fromJson(Map<String, dynamic> json) =
      _$CreateUserInputImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  bool? get emailVerified;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  bool? get onlineStatus;
  @override
  String? get timezone;
  @override
  bool? get onboardingCompleted;
  @override
  UserRole get role;
  @override
  DateTime? get dateOfBirth;
  @override
  Gender? get gender;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get linkedinUrl;
  @override
  String? get bio;
  @override
  String? get profileDisplayImage;
  @override
  DateTime? get termsAcceptedAt;
  @override
  DateTime? get privacyAcceptedAt;
  @override
  String? get consultantProfileId;
  @override
  String? get consulteeProfileId;
  @override
  String? get staffProfileId;
  @override
  String? get adminProfileId;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserInputImplCopyWith<_$CreateUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserInput _$UpdateUserInputFromJson(Map<String, dynamic> json) {
  return _UpdateUserInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserInput {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get onlineStatus => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  bool? get onboardingCompleted => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get linkedinUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profileDisplayImage => throw _privateConstructorUsedError;
  DateTime? get termsAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get privacyAcceptedAt => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;
  String? get staffProfileId => throw _privateConstructorUsedError;
  String? get adminProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserInputCopyWith<UpdateUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserInputCopyWith<$Res> {
  factory $UpdateUserInputCopyWith(
          UpdateUserInput value, $Res Function(UpdateUserInput) then) =
      _$UpdateUserInputCopyWithImpl<$Res, UpdateUserInput>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      bool? emailVerified,
      String? image,
      String? phone,
      String? address,
      bool? onlineStatus,
      String? timezone,
      bool? onboardingCompleted,
      UserRole? role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class _$UpdateUserInputCopyWithImpl<$Res, $Val extends UpdateUserInput>
    implements $UpdateUserInputCopyWith<$Res> {
  _$UpdateUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserInputImplCopyWith<$Res>
    implements $UpdateUserInputCopyWith<$Res> {
  factory _$$UpdateUserInputImplCopyWith(_$UpdateUserInputImpl value,
          $Res Function(_$UpdateUserInputImpl) then) =
      __$$UpdateUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      bool? emailVerified,
      String? image,
      String? phone,
      String? address,
      bool? onlineStatus,
      String? timezone,
      bool? onboardingCompleted,
      UserRole? role,
      DateTime? dateOfBirth,
      Gender? gender,
      String? city,
      String? country,
      String? linkedinUrl,
      String? bio,
      String? profileDisplayImage,
      DateTime? termsAcceptedAt,
      DateTime? privacyAcceptedAt,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class __$$UpdateUserInputImplCopyWithImpl<$Res>
    extends _$UpdateUserInputCopyWithImpl<$Res, _$UpdateUserInputImpl>
    implements _$$UpdateUserInputImplCopyWith<$Res> {
  __$$UpdateUserInputImplCopyWithImpl(
      _$UpdateUserInputImpl _value, $Res Function(_$UpdateUserInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_$UpdateUserInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserInputImpl implements _UpdateUserInput {
  const _$UpdateUserInputImpl(
      {this.name,
      this.email,
      this.emailVerified,
      this.image,
      this.phone,
      this.address,
      this.onlineStatus,
      this.timezone,
      this.onboardingCompleted,
      this.role,
      this.dateOfBirth,
      this.gender,
      this.city,
      this.country,
      this.linkedinUrl,
      this.bio,
      this.profileDisplayImage,
      this.termsAcceptedAt,
      this.privacyAcceptedAt,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.staffProfileId,
      this.adminProfileId});

  factory _$UpdateUserInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final bool? emailVerified;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final bool? onlineStatus;
  @override
  final String? timezone;
  @override
  final bool? onboardingCompleted;
  @override
  final UserRole? role;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? linkedinUrl;
  @override
  final String? bio;
  @override
  final String? profileDisplayImage;
  @override
  final DateTime? termsAcceptedAt;
  @override
  final DateTime? privacyAcceptedAt;
  @override
  final String? consultantProfileId;
  @override
  final String? consulteeProfileId;
  @override
  final String? staffProfileId;
  @override
  final String? adminProfileId;

  @override
  String toString() {
    return 'UpdateUserInput(name: $name, email: $email, emailVerified: $emailVerified, image: $image, phone: $phone, address: $address, onlineStatus: $onlineStatus, timezone: $timezone, onboardingCompleted: $onboardingCompleted, role: $role, dateOfBirth: $dateOfBirth, gender: $gender, city: $city, country: $country, linkedinUrl: $linkedinUrl, bio: $bio, profileDisplayImage: $profileDisplayImage, termsAcceptedAt: $termsAcceptedAt, privacyAcceptedAt: $privacyAcceptedAt, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, staffProfileId: $staffProfileId, adminProfileId: $adminProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.linkedinUrl, linkedinUrl) ||
                other.linkedinUrl == linkedinUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileDisplayImage, profileDisplayImage) ||
                other.profileDisplayImage == profileDisplayImage) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyAcceptedAt, privacyAcceptedAt) ||
                other.privacyAcceptedAt == privacyAcceptedAt) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        email,
        emailVerified,
        image,
        phone,
        address,
        onlineStatus,
        timezone,
        onboardingCompleted,
        role,
        dateOfBirth,
        gender,
        city,
        country,
        linkedinUrl,
        bio,
        profileDisplayImage,
        termsAcceptedAt,
        privacyAcceptedAt,
        consultantProfileId,
        consulteeProfileId,
        staffProfileId,
        adminProfileId
      ]);

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInputImplCopyWith<_$UpdateUserInputImpl> get copyWith =>
      __$$UpdateUserInputImplCopyWithImpl<_$UpdateUserInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserInput implements UpdateUserInput {
  const factory _UpdateUserInput(
      {final String? name,
      final String? email,
      final bool? emailVerified,
      final String? image,
      final String? phone,
      final String? address,
      final bool? onlineStatus,
      final String? timezone,
      final bool? onboardingCompleted,
      final UserRole? role,
      final DateTime? dateOfBirth,
      final Gender? gender,
      final String? city,
      final String? country,
      final String? linkedinUrl,
      final String? bio,
      final String? profileDisplayImage,
      final DateTime? termsAcceptedAt,
      final DateTime? privacyAcceptedAt,
      final String? consultantProfileId,
      final String? consulteeProfileId,
      final String? staffProfileId,
      final String? adminProfileId}) = _$UpdateUserInputImpl;

  factory _UpdateUserInput.fromJson(Map<String, dynamic> json) =
      _$UpdateUserInputImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  bool? get emailVerified;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  bool? get onlineStatus;
  @override
  String? get timezone;
  @override
  bool? get onboardingCompleted;
  @override
  UserRole? get role;
  @override
  DateTime? get dateOfBirth;
  @override
  Gender? get gender;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get linkedinUrl;
  @override
  String? get bio;
  @override
  String? get profileDisplayImage;
  @override
  DateTime? get termsAcceptedAt;
  @override
  DateTime? get privacyAcceptedAt;
  @override
  String? get consultantProfileId;
  @override
  String? get consulteeProfileId;
  @override
  String? get staffProfileId;
  @override
  String? get adminProfileId;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInputImplCopyWith<_$UpdateUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _UserWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$UserWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;
  String? get staffProfileId => throw _privateConstructorUsedError;
  String? get adminProfileId => throw _privateConstructorUsedError;

  /// Serializes this UserWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWhereUniqueInputCopyWith<UserWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWhereUniqueInputCopyWith<$Res> {
  factory $UserWhereUniqueInputCopyWith(UserWhereUniqueInput value,
          $Res Function(UserWhereUniqueInput) then) =
      _$UserWhereUniqueInputCopyWithImpl<$Res, UserWhereUniqueInput>;
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phone,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class _$UserWhereUniqueInputCopyWithImpl<$Res,
        $Val extends UserWhereUniqueInput>
    implements $UserWhereUniqueInputCopyWith<$Res> {
  _$UserWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserWhereUniqueInputImplCopyWith<$Res>
    implements $UserWhereUniqueInputCopyWith<$Res> {
  factory _$$UserWhereUniqueInputImplCopyWith(_$UserWhereUniqueInputImpl value,
          $Res Function(_$UserWhereUniqueInputImpl) then) =
      __$$UserWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phone,
      String? consultantProfileId,
      String? consulteeProfileId,
      String? staffProfileId,
      String? adminProfileId});
}

/// @nodoc
class __$$UserWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$UserWhereUniqueInputCopyWithImpl<$Res, _$UserWhereUniqueInputImpl>
    implements _$$UserWhereUniqueInputImplCopyWith<$Res> {
  __$$UserWhereUniqueInputImplCopyWithImpl(_$UserWhereUniqueInputImpl _value,
      $Res Function(_$UserWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
  }) {
    return _then(_$UserWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWhereUniqueInputImpl implements _UserWhereUniqueInput {
  const _$UserWhereUniqueInputImpl(
      {this.id,
      this.email,
      this.phone,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.staffProfileId,
      this.adminProfileId});

  factory _$UserWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? consultantProfileId;
  @override
  final String? consulteeProfileId;
  @override
  final String? staffProfileId;
  @override
  final String? adminProfileId;

  @override
  String toString() {
    return 'UserWhereUniqueInput(id: $id, email: $email, phone: $phone, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, staffProfileId: $staffProfileId, adminProfileId: $adminProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone,
      consultantProfileId, consulteeProfileId, staffProfileId, adminProfileId);

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWhereUniqueInputImplCopyWith<_$UserWhereUniqueInputImpl>
      get copyWith =>
          __$$UserWhereUniqueInputImplCopyWithImpl<_$UserWhereUniqueInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _UserWhereUniqueInput implements UserWhereUniqueInput {
  const factory _UserWhereUniqueInput(
      {final String? id,
      final String? email,
      final String? phone,
      final String? consultantProfileId,
      final String? consulteeProfileId,
      final String? staffProfileId,
      final String? adminProfileId}) = _$UserWhereUniqueInputImpl;

  factory _UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$UserWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get consultantProfileId;
  @override
  String? get consulteeProfileId;
  @override
  String? get staffProfileId;
  @override
  String? get adminProfileId;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWhereUniqueInputImplCopyWith<_$UserWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) {
  return _UserWhereInput.fromJson(json);
}

/// @nodoc
mixin _$UserWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  StringFilter? get email => throw _privateConstructorUsedError;
  BooleanFilter? get emailVerified => throw _privateConstructorUsedError;
  StringFilter? get image => throw _privateConstructorUsedError;
  StringFilter? get phone => throw _privateConstructorUsedError;
  StringFilter? get address => throw _privateConstructorUsedError;
  BooleanFilter? get onlineStatus => throw _privateConstructorUsedError;
  StringFilter? get timezone => throw _privateConstructorUsedError;
  BooleanFilter? get onboardingCompleted => throw _privateConstructorUsedError;
  UserRoleFilter? get role => throw _privateConstructorUsedError;
  DateTimeFilter? get dateOfBirth => throw _privateConstructorUsedError;
  GenderFilter? get gender => throw _privateConstructorUsedError;
  StringFilter? get city => throw _privateConstructorUsedError;
  StringFilter? get country => throw _privateConstructorUsedError;
  StringFilter? get linkedinUrl => throw _privateConstructorUsedError;
  StringFilter? get bio => throw _privateConstructorUsedError;
  StringFilter? get profileDisplayImage => throw _privateConstructorUsedError;
  DateTimeFilter? get termsAcceptedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get privacyAcceptedAt => throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get consulteeProfileId => throw _privateConstructorUsedError;
  StringFilter? get staffProfileId => throw _privateConstructorUsedError;
  StringFilter? get adminProfileId => throw _privateConstructorUsedError;

  /// Filter by slotsOfAppointment relation
  SlotOfAppointmentListRelationFilter? get slotsOfAppointment =>
      throw _privateConstructorUsedError;

  /// Filter by reportsSubmitted relation
  ModerationReportListRelationFilter? get reportsSubmitted =>
      throw _privateConstructorUsedError;

  /// Filter by reportsReceived relation
  ModerationReportListRelationFilter? get reportsReceived =>
      throw _privateConstructorUsedError;

  /// Filter by referral relation
  ReferralRelationFilter? get referral => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<UserWhereInput>? get AND => throw _privateConstructorUsedError;
  List<UserWhereInput>? get OR => throw _privateConstructorUsedError;
  UserWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this UserWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWhereInputCopyWith<UserWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWhereInputCopyWith<$Res> {
  factory $UserWhereInputCopyWith(
          UserWhereInput value, $Res Function(UserWhereInput) then) =
      _$UserWhereInputCopyWithImpl<$Res, UserWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? email,
      BooleanFilter? emailVerified,
      StringFilter? image,
      StringFilter? phone,
      StringFilter? address,
      BooleanFilter? onlineStatus,
      StringFilter? timezone,
      BooleanFilter? onboardingCompleted,
      UserRoleFilter? role,
      DateTimeFilter? dateOfBirth,
      GenderFilter? gender,
      StringFilter? city,
      StringFilter? country,
      StringFilter? linkedinUrl,
      StringFilter? bio,
      StringFilter? profileDisplayImage,
      DateTimeFilter? termsAcceptedAt,
      DateTimeFilter? privacyAcceptedAt,
      StringFilter? consultantProfileId,
      StringFilter? consulteeProfileId,
      StringFilter? staffProfileId,
      StringFilter? adminProfileId,
      SlotOfAppointmentListRelationFilter? slotsOfAppointment,
      ModerationReportListRelationFilter? reportsSubmitted,
      ModerationReportListRelationFilter? reportsReceived,
      ReferralRelationFilter? referral,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<UserWhereInput>? AND,
      List<UserWhereInput>? OR,
      UserWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $StringFilterCopyWith<$Res>? get email;
  $BooleanFilterCopyWith<$Res>? get emailVerified;
  $StringFilterCopyWith<$Res>? get image;
  $StringFilterCopyWith<$Res>? get phone;
  $StringFilterCopyWith<$Res>? get address;
  $BooleanFilterCopyWith<$Res>? get onlineStatus;
  $StringFilterCopyWith<$Res>? get timezone;
  $BooleanFilterCopyWith<$Res>? get onboardingCompleted;
  $UserRoleFilterCopyWith<$Res>? get role;
  $DateTimeFilterCopyWith<$Res>? get dateOfBirth;
  $GenderFilterCopyWith<$Res>? get gender;
  $StringFilterCopyWith<$Res>? get city;
  $StringFilterCopyWith<$Res>? get country;
  $StringFilterCopyWith<$Res>? get linkedinUrl;
  $StringFilterCopyWith<$Res>? get bio;
  $StringFilterCopyWith<$Res>? get profileDisplayImage;
  $DateTimeFilterCopyWith<$Res>? get termsAcceptedAt;
  $DateTimeFilterCopyWith<$Res>? get privacyAcceptedAt;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  $StringFilterCopyWith<$Res>? get staffProfileId;
  $StringFilterCopyWith<$Res>? get adminProfileId;
  $SlotOfAppointmentListRelationFilterCopyWith<$Res>? get slotsOfAppointment;
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsSubmitted;
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsReceived;
  $ReferralRelationFilterCopyWith<$Res>? get referral;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $UserWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$UserWhereInputCopyWithImpl<$Res, $Val extends UserWhereInput>
    implements $UserWhereInputCopyWith<$Res> {
  _$UserWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
    Object? slotsOfAppointment = freezed,
    Object? reportsSubmitted = freezed,
    Object? reportsReceived = freezed,
    Object? referral = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleFilter?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderFilter?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      slotsOfAppointment: freezed == slotsOfAppointment
          ? _value.slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentListRelationFilter?,
      reportsSubmitted: freezed == reportsSubmitted
          ? _value.reportsSubmitted
          : reportsSubmitted // ignore: cast_nullable_to_non_nullable
              as ModerationReportListRelationFilter?,
      reportsReceived: freezed == reportsReceived
          ? _value.reportsReceived
          : reportsReceived // ignore: cast_nullable_to_non_nullable
              as ModerationReportListRelationFilter?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralRelationFilter?,
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
              as List<UserWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<UserWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ) as $Val);
  }

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get emailVerified {
    if (_value.emailVerified == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.emailVerified!, (value) {
      return _then(_value.copyWith(emailVerified: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get phone {
    if (_value.phone == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.phone!, (value) {
      return _then(_value.copyWith(phone: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get onlineStatus {
    if (_value.onlineStatus == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.onlineStatus!, (value) {
      return _then(_value.copyWith(onlineStatus: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get timezone {
    if (_value.timezone == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.timezone!, (value) {
      return _then(_value.copyWith(timezone: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get onboardingCompleted {
    if (_value.onboardingCompleted == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.onboardingCompleted!, (value) {
      return _then(_value.copyWith(onboardingCompleted: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRoleFilterCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $UserRoleFilterCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get dateOfBirth {
    if (_value.dateOfBirth == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.dateOfBirth!, (value) {
      return _then(_value.copyWith(dateOfBirth: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderFilterCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderFilterCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get linkedinUrl {
    if (_value.linkedinUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.linkedinUrl!, (value) {
      return _then(_value.copyWith(linkedinUrl: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get bio {
    if (_value.bio == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.bio!, (value) {
      return _then(_value.copyWith(bio: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get profileDisplayImage {
    if (_value.profileDisplayImage == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.profileDisplayImage!, (value) {
      return _then(_value.copyWith(profileDisplayImage: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get termsAcceptedAt {
    if (_value.termsAcceptedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.termsAcceptedAt!, (value) {
      return _then(_value.copyWith(termsAcceptedAt: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get privacyAcceptedAt {
    if (_value.privacyAcceptedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.privacyAcceptedAt!, (value) {
      return _then(_value.copyWith(privacyAcceptedAt: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get staffProfileId {
    if (_value.staffProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.staffProfileId!, (value) {
      return _then(_value.copyWith(staffProfileId: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get adminProfileId {
    if (_value.adminProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.adminProfileId!, (value) {
      return _then(_value.copyWith(adminProfileId: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentListRelationFilterCopyWith<$Res>? get slotsOfAppointment {
    if (_value.slotsOfAppointment == null) {
      return null;
    }

    return $SlotOfAppointmentListRelationFilterCopyWith<$Res>(
        _value.slotsOfAppointment!, (value) {
      return _then(_value.copyWith(slotsOfAppointment: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsSubmitted {
    if (_value.reportsSubmitted == null) {
      return null;
    }

    return $ModerationReportListRelationFilterCopyWith<$Res>(
        _value.reportsSubmitted!, (value) {
      return _then(_value.copyWith(reportsSubmitted: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsReceived {
    if (_value.reportsReceived == null) {
      return null;
    }

    return $ModerationReportListRelationFilterCopyWith<$Res>(
        _value.reportsReceived!, (value) {
      return _then(_value.copyWith(reportsReceived: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralRelationFilterCopyWith<$Res>? get referral {
    if (_value.referral == null) {
      return null;
    }

    return $ReferralRelationFilterCopyWith<$Res>(_value.referral!, (value) {
      return _then(_value.copyWith(referral: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWhereInputImplCopyWith<$Res>
    implements $UserWhereInputCopyWith<$Res> {
  factory _$$UserWhereInputImplCopyWith(_$UserWhereInputImpl value,
          $Res Function(_$UserWhereInputImpl) then) =
      __$$UserWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      StringFilter? email,
      BooleanFilter? emailVerified,
      StringFilter? image,
      StringFilter? phone,
      StringFilter? address,
      BooleanFilter? onlineStatus,
      StringFilter? timezone,
      BooleanFilter? onboardingCompleted,
      UserRoleFilter? role,
      DateTimeFilter? dateOfBirth,
      GenderFilter? gender,
      StringFilter? city,
      StringFilter? country,
      StringFilter? linkedinUrl,
      StringFilter? bio,
      StringFilter? profileDisplayImage,
      DateTimeFilter? termsAcceptedAt,
      DateTimeFilter? privacyAcceptedAt,
      StringFilter? consultantProfileId,
      StringFilter? consulteeProfileId,
      StringFilter? staffProfileId,
      StringFilter? adminProfileId,
      SlotOfAppointmentListRelationFilter? slotsOfAppointment,
      ModerationReportListRelationFilter? reportsSubmitted,
      ModerationReportListRelationFilter? reportsReceived,
      ReferralRelationFilter? referral,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<UserWhereInput>? AND,
      List<UserWhereInput>? OR,
      UserWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $StringFilterCopyWith<$Res>? get email;
  @override
  $BooleanFilterCopyWith<$Res>? get emailVerified;
  @override
  $StringFilterCopyWith<$Res>? get image;
  @override
  $StringFilterCopyWith<$Res>? get phone;
  @override
  $StringFilterCopyWith<$Res>? get address;
  @override
  $BooleanFilterCopyWith<$Res>? get onlineStatus;
  @override
  $StringFilterCopyWith<$Res>? get timezone;
  @override
  $BooleanFilterCopyWith<$Res>? get onboardingCompleted;
  @override
  $UserRoleFilterCopyWith<$Res>? get role;
  @override
  $DateTimeFilterCopyWith<$Res>? get dateOfBirth;
  @override
  $GenderFilterCopyWith<$Res>? get gender;
  @override
  $StringFilterCopyWith<$Res>? get city;
  @override
  $StringFilterCopyWith<$Res>? get country;
  @override
  $StringFilterCopyWith<$Res>? get linkedinUrl;
  @override
  $StringFilterCopyWith<$Res>? get bio;
  @override
  $StringFilterCopyWith<$Res>? get profileDisplayImage;
  @override
  $DateTimeFilterCopyWith<$Res>? get termsAcceptedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get privacyAcceptedAt;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  @override
  $StringFilterCopyWith<$Res>? get staffProfileId;
  @override
  $StringFilterCopyWith<$Res>? get adminProfileId;
  @override
  $SlotOfAppointmentListRelationFilterCopyWith<$Res>? get slotsOfAppointment;
  @override
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsSubmitted;
  @override
  $ModerationReportListRelationFilterCopyWith<$Res>? get reportsReceived;
  @override
  $ReferralRelationFilterCopyWith<$Res>? get referral;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $UserWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$UserWhereInputImplCopyWithImpl<$Res>
    extends _$UserWhereInputCopyWithImpl<$Res, _$UserWhereInputImpl>
    implements _$$UserWhereInputImplCopyWith<$Res> {
  __$$UserWhereInputImplCopyWithImpl(
      _$UserWhereInputImpl _value, $Res Function(_$UserWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? role = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
    Object? slotsOfAppointment = freezed,
    Object? reportsSubmitted = freezed,
    Object? reportsReceived = freezed,
    Object? referral = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$UserWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleFilter?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderFilter?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      slotsOfAppointment: freezed == slotsOfAppointment
          ? _value.slotsOfAppointment
          : slotsOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentListRelationFilter?,
      reportsSubmitted: freezed == reportsSubmitted
          ? _value.reportsSubmitted
          : reportsSubmitted // ignore: cast_nullable_to_non_nullable
              as ModerationReportListRelationFilter?,
      reportsReceived: freezed == reportsReceived
          ? _value.reportsReceived
          : reportsReceived // ignore: cast_nullable_to_non_nullable
              as ModerationReportListRelationFilter?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralRelationFilter?,
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
              as List<UserWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<UserWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserWhereInputImpl implements _UserWhereInput {
  const _$UserWhereInputImpl(
      {this.id,
      this.name,
      this.email,
      this.emailVerified,
      this.image,
      this.phone,
      this.address,
      this.onlineStatus,
      this.timezone,
      this.onboardingCompleted,
      this.role,
      this.dateOfBirth,
      this.gender,
      this.city,
      this.country,
      this.linkedinUrl,
      this.bio,
      this.profileDisplayImage,
      this.termsAcceptedAt,
      this.privacyAcceptedAt,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.staffProfileId,
      this.adminProfileId,
      this.slotsOfAppointment,
      this.reportsSubmitted,
      this.reportsReceived,
      this.referral,
      this.createdAt,
      this.updatedAt,
      final List<UserWhereInput>? AND,
      final List<UserWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$UserWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final StringFilter? email;
  @override
  final BooleanFilter? emailVerified;
  @override
  final StringFilter? image;
  @override
  final StringFilter? phone;
  @override
  final StringFilter? address;
  @override
  final BooleanFilter? onlineStatus;
  @override
  final StringFilter? timezone;
  @override
  final BooleanFilter? onboardingCompleted;
  @override
  final UserRoleFilter? role;
  @override
  final DateTimeFilter? dateOfBirth;
  @override
  final GenderFilter? gender;
  @override
  final StringFilter? city;
  @override
  final StringFilter? country;
  @override
  final StringFilter? linkedinUrl;
  @override
  final StringFilter? bio;
  @override
  final StringFilter? profileDisplayImage;
  @override
  final DateTimeFilter? termsAcceptedAt;
  @override
  final DateTimeFilter? privacyAcceptedAt;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? consulteeProfileId;
  @override
  final StringFilter? staffProfileId;
  @override
  final StringFilter? adminProfileId;

  /// Filter by slotsOfAppointment relation
  @override
  final SlotOfAppointmentListRelationFilter? slotsOfAppointment;

  /// Filter by reportsSubmitted relation
  @override
  final ModerationReportListRelationFilter? reportsSubmitted;

  /// Filter by reportsReceived relation
  @override
  final ModerationReportListRelationFilter? reportsReceived;

  /// Filter by referral relation
  @override
  final ReferralRelationFilter? referral;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<UserWhereInput>? _AND;
  @override
  List<UserWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserWhereInput>? _OR;
  @override
  List<UserWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserWhereInput? NOT;

  @override
  String toString() {
    return 'UserWhereInput(id: $id, name: $name, email: $email, emailVerified: $emailVerified, image: $image, phone: $phone, address: $address, onlineStatus: $onlineStatus, timezone: $timezone, onboardingCompleted: $onboardingCompleted, role: $role, dateOfBirth: $dateOfBirth, gender: $gender, city: $city, country: $country, linkedinUrl: $linkedinUrl, bio: $bio, profileDisplayImage: $profileDisplayImage, termsAcceptedAt: $termsAcceptedAt, privacyAcceptedAt: $privacyAcceptedAt, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, staffProfileId: $staffProfileId, adminProfileId: $adminProfileId, slotsOfAppointment: $slotsOfAppointment, reportsSubmitted: $reportsSubmitted, reportsReceived: $reportsReceived, referral: $referral, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.linkedinUrl, linkedinUrl) ||
                other.linkedinUrl == linkedinUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileDisplayImage, profileDisplayImage) ||
                other.profileDisplayImage == profileDisplayImage) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyAcceptedAt, privacyAcceptedAt) ||
                other.privacyAcceptedAt == privacyAcceptedAt) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId) &&
            (identical(other.slotsOfAppointment, slotsOfAppointment) ||
                other.slotsOfAppointment == slotsOfAppointment) &&
            (identical(other.reportsSubmitted, reportsSubmitted) ||
                other.reportsSubmitted == reportsSubmitted) &&
            (identical(other.reportsReceived, reportsReceived) ||
                other.reportsReceived == reportsReceived) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
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
        name,
        email,
        emailVerified,
        image,
        phone,
        address,
        onlineStatus,
        timezone,
        onboardingCompleted,
        role,
        dateOfBirth,
        gender,
        city,
        country,
        linkedinUrl,
        bio,
        profileDisplayImage,
        termsAcceptedAt,
        privacyAcceptedAt,
        consultantProfileId,
        consulteeProfileId,
        staffProfileId,
        adminProfileId,
        slotsOfAppointment,
        reportsSubmitted,
        reportsReceived,
        referral,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWhereInputImplCopyWith<_$UserWhereInputImpl> get copyWith =>
      __$$UserWhereInputImplCopyWithImpl<_$UserWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWhereInputImplToJson(
      this,
    );
  }
}

abstract class _UserWhereInput implements UserWhereInput {
  const factory _UserWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final StringFilter? email,
      final BooleanFilter? emailVerified,
      final StringFilter? image,
      final StringFilter? phone,
      final StringFilter? address,
      final BooleanFilter? onlineStatus,
      final StringFilter? timezone,
      final BooleanFilter? onboardingCompleted,
      final UserRoleFilter? role,
      final DateTimeFilter? dateOfBirth,
      final GenderFilter? gender,
      final StringFilter? city,
      final StringFilter? country,
      final StringFilter? linkedinUrl,
      final StringFilter? bio,
      final StringFilter? profileDisplayImage,
      final DateTimeFilter? termsAcceptedAt,
      final DateTimeFilter? privacyAcceptedAt,
      final StringFilter? consultantProfileId,
      final StringFilter? consulteeProfileId,
      final StringFilter? staffProfileId,
      final StringFilter? adminProfileId,
      final SlotOfAppointmentListRelationFilter? slotsOfAppointment,
      final ModerationReportListRelationFilter? reportsSubmitted,
      final ModerationReportListRelationFilter? reportsReceived,
      final ReferralRelationFilter? referral,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<UserWhereInput>? AND,
      final List<UserWhereInput>? OR,
      final UserWhereInput? NOT}) = _$UserWhereInputImpl;

  factory _UserWhereInput.fromJson(Map<String, dynamic> json) =
      _$UserWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  StringFilter? get email;
  @override
  BooleanFilter? get emailVerified;
  @override
  StringFilter? get image;
  @override
  StringFilter? get phone;
  @override
  StringFilter? get address;
  @override
  BooleanFilter? get onlineStatus;
  @override
  StringFilter? get timezone;
  @override
  BooleanFilter? get onboardingCompleted;
  @override
  UserRoleFilter? get role;
  @override
  DateTimeFilter? get dateOfBirth;
  @override
  GenderFilter? get gender;
  @override
  StringFilter? get city;
  @override
  StringFilter? get country;
  @override
  StringFilter? get linkedinUrl;
  @override
  StringFilter? get bio;
  @override
  StringFilter? get profileDisplayImage;
  @override
  DateTimeFilter? get termsAcceptedAt;
  @override
  DateTimeFilter? get privacyAcceptedAt;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get consulteeProfileId;
  @override
  StringFilter? get staffProfileId;
  @override
  StringFilter? get adminProfileId;

  /// Filter by slotsOfAppointment relation
  @override
  SlotOfAppointmentListRelationFilter? get slotsOfAppointment;

  /// Filter by reportsSubmitted relation
  @override
  ModerationReportListRelationFilter? get reportsSubmitted;

  /// Filter by reportsReceived relation
  @override
  ModerationReportListRelationFilter? get reportsReceived;

  /// Filter by referral relation
  @override
  ReferralRelationFilter? get referral;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<UserWhereInput>? get AND;
  @override
  List<UserWhereInput>? get OR;
  @override
  UserWhereInput? get NOT;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWhereInputImplCopyWith<_$UserWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListRelationFilter _$UserListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _UserListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$UserListRelationFilter {
  /// At least one related record matches
  UserWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  UserWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  UserWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this UserListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListRelationFilterCopyWith<UserListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListRelationFilterCopyWith<$Res> {
  factory $UserListRelationFilterCopyWith(UserListRelationFilter value,
          $Res Function(UserListRelationFilter) then) =
      _$UserListRelationFilterCopyWithImpl<$Res, UserListRelationFilter>;
  @useResult
  $Res call(
      {UserWhereInput? some, UserWhereInput? every, UserWhereInput? none});

  $UserWhereInputCopyWith<$Res>? get some;
  $UserWhereInputCopyWith<$Res>? get every;
  $UserWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$UserListRelationFilterCopyWithImpl<$Res,
        $Val extends UserListRelationFilter>
    implements $UserListRelationFilterCopyWith<$Res> {
  _$UserListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListRelationFilter
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
              as UserWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ) as $Val);
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListRelationFilterImplCopyWith<$Res>
    implements $UserListRelationFilterCopyWith<$Res> {
  factory _$$UserListRelationFilterImplCopyWith(
          _$UserListRelationFilterImpl value,
          $Res Function(_$UserListRelationFilterImpl) then) =
      __$$UserListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserWhereInput? some, UserWhereInput? every, UserWhereInput? none});

  @override
  $UserWhereInputCopyWith<$Res>? get some;
  @override
  $UserWhereInputCopyWith<$Res>? get every;
  @override
  $UserWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$UserListRelationFilterImplCopyWithImpl<$Res>
    extends _$UserListRelationFilterCopyWithImpl<$Res,
        _$UserListRelationFilterImpl>
    implements _$$UserListRelationFilterImplCopyWith<$Res> {
  __$$UserListRelationFilterImplCopyWithImpl(
      _$UserListRelationFilterImpl _value,
      $Res Function(_$UserListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$UserListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListRelationFilterImpl implements _UserListRelationFilter {
  const _$UserListRelationFilterImpl({this.some, this.every, this.none});

  factory _$UserListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final UserWhereInput? some;

  /// All related records match
  @override
  final UserWhereInput? every;

  /// No related records match
  @override
  final UserWhereInput? none;

  @override
  String toString() {
    return 'UserListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListRelationFilterImplCopyWith<_$UserListRelationFilterImpl>
      get copyWith => __$$UserListRelationFilterImplCopyWithImpl<
          _$UserListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _UserListRelationFilter implements UserListRelationFilter {
  const factory _UserListRelationFilter(
      {final UserWhereInput? some,
      final UserWhereInput? every,
      final UserWhereInput? none}) = _$UserListRelationFilterImpl;

  factory _UserListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$UserListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  UserWhereInput? get some;

  /// All related records match
  @override
  UserWhereInput? get every;

  /// No related records match
  @override
  UserWhereInput? get none;

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListRelationFilterImplCopyWith<_$UserListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) {
  return _UserRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$UserRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  UserWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  UserWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this UserRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRelationFilterCopyWith<UserRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRelationFilterCopyWith<$Res> {
  factory $UserRelationFilterCopyWith(
          UserRelationFilter value, $Res Function(UserRelationFilter) then) =
      _$UserRelationFilterCopyWithImpl<$Res, UserRelationFilter>;
  @useResult
  $Res call({@JsonKey(name: 'is') UserWhereInput? is_, UserWhereInput? isNot});

  $UserWhereInputCopyWith<$Res>? get is_;
  $UserWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$UserRelationFilterCopyWithImpl<$Res, $Val extends UserRelationFilter>
    implements $UserRelationFilterCopyWith<$Res> {
  _$UserRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRelationFilter
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
              as UserWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ) as $Val);
  }

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRelationFilterImplCopyWith<$Res>
    implements $UserRelationFilterCopyWith<$Res> {
  factory _$$UserRelationFilterImplCopyWith(_$UserRelationFilterImpl value,
          $Res Function(_$UserRelationFilterImpl) then) =
      __$$UserRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is') UserWhereInput? is_, UserWhereInput? isNot});

  @override
  $UserWhereInputCopyWith<$Res>? get is_;
  @override
  $UserWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$UserRelationFilterImplCopyWithImpl<$Res>
    extends _$UserRelationFilterCopyWithImpl<$Res, _$UserRelationFilterImpl>
    implements _$$UserRelationFilterImplCopyWith<$Res> {
  __$$UserRelationFilterImplCopyWithImpl(_$UserRelationFilterImpl _value,
      $Res Function(_$UserRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$UserRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as UserWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRelationFilterImpl implements _UserRelationFilter {
  const _$UserRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$UserRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final UserWhereInput? is_;

  /// Related record does not match
  @override
  final UserWhereInput? isNot;

  @override
  String toString() {
    return 'UserRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRelationFilterImplCopyWith<_$UserRelationFilterImpl> get copyWith =>
      __$$UserRelationFilterImplCopyWithImpl<_$UserRelationFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _UserRelationFilter implements UserRelationFilter {
  const factory _UserRelationFilter(
      {@JsonKey(name: 'is') final UserWhereInput? is_,
      final UserWhereInput? isNot}) = _$UserRelationFilterImpl;

  factory _UserRelationFilter.fromJson(Map<String, dynamic> json) =
      _$UserRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  UserWhereInput? get is_;

  /// Related record does not match
  @override
  UserWhereInput? get isNot;

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRelationFilterImplCopyWith<_$UserRelationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserOrderByInput _$UserOrderByInputFromJson(Map<String, dynamic> json) {
  return _UserOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$UserOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get email => throw _privateConstructorUsedError;
  SortOrder? get emailVerified => throw _privateConstructorUsedError;
  SortOrder? get image => throw _privateConstructorUsedError;
  SortOrder? get phone => throw _privateConstructorUsedError;
  SortOrder? get address => throw _privateConstructorUsedError;
  SortOrder? get onlineStatus => throw _privateConstructorUsedError;
  SortOrder? get timezone => throw _privateConstructorUsedError;
  SortOrder? get onboardingCompleted => throw _privateConstructorUsedError;
  SortOrder? get dateOfBirth => throw _privateConstructorUsedError;
  SortOrder? get city => throw _privateConstructorUsedError;
  SortOrder? get country => throw _privateConstructorUsedError;
  SortOrder? get linkedinUrl => throw _privateConstructorUsedError;
  SortOrder? get bio => throw _privateConstructorUsedError;
  SortOrder? get profileDisplayImage => throw _privateConstructorUsedError;
  SortOrder? get termsAcceptedAt => throw _privateConstructorUsedError;
  SortOrder? get privacyAcceptedAt => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get consulteeProfileId => throw _privateConstructorUsedError;
  SortOrder? get staffProfileId => throw _privateConstructorUsedError;
  SortOrder? get adminProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserOrderByInputCopyWith<UserOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderByInputCopyWith<$Res> {
  factory $UserOrderByInputCopyWith(
          UserOrderByInput value, $Res Function(UserOrderByInput) then) =
      _$UserOrderByInputCopyWithImpl<$Res, UserOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? email,
      SortOrder? emailVerified,
      SortOrder? image,
      SortOrder? phone,
      SortOrder? address,
      SortOrder? onlineStatus,
      SortOrder? timezone,
      SortOrder? onboardingCompleted,
      SortOrder? dateOfBirth,
      SortOrder? city,
      SortOrder? country,
      SortOrder? linkedinUrl,
      SortOrder? bio,
      SortOrder? profileDisplayImage,
      SortOrder? termsAcceptedAt,
      SortOrder? privacyAcceptedAt,
      SortOrder? consultantProfileId,
      SortOrder? consulteeProfileId,
      SortOrder? staffProfileId,
      SortOrder? adminProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$UserOrderByInputCopyWithImpl<$Res, $Val extends UserOrderByInput>
    implements $UserOrderByInputCopyWith<$Res> {
  _$UserOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? dateOfBirth = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserOrderByInputImplCopyWith<$Res>
    implements $UserOrderByInputCopyWith<$Res> {
  factory _$$UserOrderByInputImplCopyWith(_$UserOrderByInputImpl value,
          $Res Function(_$UserOrderByInputImpl) then) =
      __$$UserOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? email,
      SortOrder? emailVerified,
      SortOrder? image,
      SortOrder? phone,
      SortOrder? address,
      SortOrder? onlineStatus,
      SortOrder? timezone,
      SortOrder? onboardingCompleted,
      SortOrder? dateOfBirth,
      SortOrder? city,
      SortOrder? country,
      SortOrder? linkedinUrl,
      SortOrder? bio,
      SortOrder? profileDisplayImage,
      SortOrder? termsAcceptedAt,
      SortOrder? privacyAcceptedAt,
      SortOrder? consultantProfileId,
      SortOrder? consulteeProfileId,
      SortOrder? staffProfileId,
      SortOrder? adminProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$UserOrderByInputImplCopyWithImpl<$Res>
    extends _$UserOrderByInputCopyWithImpl<$Res, _$UserOrderByInputImpl>
    implements _$$UserOrderByInputImplCopyWith<$Res> {
  __$$UserOrderByInputImplCopyWithImpl(_$UserOrderByInputImpl _value,
      $Res Function(_$UserOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? onlineStatus = freezed,
    Object? timezone = freezed,
    Object? onboardingCompleted = freezed,
    Object? dateOfBirth = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? linkedinUrl = freezed,
    Object? bio = freezed,
    Object? profileDisplayImage = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyAcceptedAt = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? staffProfileId = freezed,
    Object? adminProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      onboardingCompleted: freezed == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkedinUrl: freezed == linkedinUrl
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      profileDisplayImage: freezed == profileDisplayImage
          ? _value.profileDisplayImage
          : profileDisplayImage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      privacyAcceptedAt: freezed == privacyAcceptedAt
          ? _value.privacyAcceptedAt
          : privacyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      staffProfileId: freezed == staffProfileId
          ? _value.staffProfileId
          : staffProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      adminProfileId: freezed == adminProfileId
          ? _value.adminProfileId
          : adminProfileId // ignore: cast_nullable_to_non_nullable
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
class _$UserOrderByInputImpl implements _UserOrderByInput {
  const _$UserOrderByInputImpl(
      {this.id,
      this.name,
      this.email,
      this.emailVerified,
      this.image,
      this.phone,
      this.address,
      this.onlineStatus,
      this.timezone,
      this.onboardingCompleted,
      this.dateOfBirth,
      this.city,
      this.country,
      this.linkedinUrl,
      this.bio,
      this.profileDisplayImage,
      this.termsAcceptedAt,
      this.privacyAcceptedAt,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.staffProfileId,
      this.adminProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$UserOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? email;
  @override
  final SortOrder? emailVerified;
  @override
  final SortOrder? image;
  @override
  final SortOrder? phone;
  @override
  final SortOrder? address;
  @override
  final SortOrder? onlineStatus;
  @override
  final SortOrder? timezone;
  @override
  final SortOrder? onboardingCompleted;
  @override
  final SortOrder? dateOfBirth;
  @override
  final SortOrder? city;
  @override
  final SortOrder? country;
  @override
  final SortOrder? linkedinUrl;
  @override
  final SortOrder? bio;
  @override
  final SortOrder? profileDisplayImage;
  @override
  final SortOrder? termsAcceptedAt;
  @override
  final SortOrder? privacyAcceptedAt;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? consulteeProfileId;
  @override
  final SortOrder? staffProfileId;
  @override
  final SortOrder? adminProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'UserOrderByInput(id: $id, name: $name, email: $email, emailVerified: $emailVerified, image: $image, phone: $phone, address: $address, onlineStatus: $onlineStatus, timezone: $timezone, onboardingCompleted: $onboardingCompleted, dateOfBirth: $dateOfBirth, city: $city, country: $country, linkedinUrl: $linkedinUrl, bio: $bio, profileDisplayImage: $profileDisplayImage, termsAcceptedAt: $termsAcceptedAt, privacyAcceptedAt: $privacyAcceptedAt, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, staffProfileId: $staffProfileId, adminProfileId: $adminProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.linkedinUrl, linkedinUrl) ||
                other.linkedinUrl == linkedinUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileDisplayImage, profileDisplayImage) ||
                other.profileDisplayImage == profileDisplayImage) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyAcceptedAt, privacyAcceptedAt) ||
                other.privacyAcceptedAt == privacyAcceptedAt) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.staffProfileId, staffProfileId) ||
                other.staffProfileId == staffProfileId) &&
            (identical(other.adminProfileId, adminProfileId) ||
                other.adminProfileId == adminProfileId) &&
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
        name,
        email,
        emailVerified,
        image,
        phone,
        address,
        onlineStatus,
        timezone,
        onboardingCompleted,
        dateOfBirth,
        city,
        country,
        linkedinUrl,
        bio,
        profileDisplayImage,
        termsAcceptedAt,
        privacyAcceptedAt,
        consultantProfileId,
        consulteeProfileId,
        staffProfileId,
        adminProfileId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrderByInputImplCopyWith<_$UserOrderByInputImpl> get copyWith =>
      __$$UserOrderByInputImplCopyWithImpl<_$UserOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _UserOrderByInput implements UserOrderByInput {
  const factory _UserOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? email,
      final SortOrder? emailVerified,
      final SortOrder? image,
      final SortOrder? phone,
      final SortOrder? address,
      final SortOrder? onlineStatus,
      final SortOrder? timezone,
      final SortOrder? onboardingCompleted,
      final SortOrder? dateOfBirth,
      final SortOrder? city,
      final SortOrder? country,
      final SortOrder? linkedinUrl,
      final SortOrder? bio,
      final SortOrder? profileDisplayImage,
      final SortOrder? termsAcceptedAt,
      final SortOrder? privacyAcceptedAt,
      final SortOrder? consultantProfileId,
      final SortOrder? consulteeProfileId,
      final SortOrder? staffProfileId,
      final SortOrder? adminProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$UserOrderByInputImpl;

  factory _UserOrderByInput.fromJson(Map<String, dynamic> json) =
      _$UserOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get email;
  @override
  SortOrder? get emailVerified;
  @override
  SortOrder? get image;
  @override
  SortOrder? get phone;
  @override
  SortOrder? get address;
  @override
  SortOrder? get onlineStatus;
  @override
  SortOrder? get timezone;
  @override
  SortOrder? get onboardingCompleted;
  @override
  SortOrder? get dateOfBirth;
  @override
  SortOrder? get city;
  @override
  SortOrder? get country;
  @override
  SortOrder? get linkedinUrl;
  @override
  SortOrder? get bio;
  @override
  SortOrder? get profileDisplayImage;
  @override
  SortOrder? get termsAcceptedAt;
  @override
  SortOrder? get privacyAcceptedAt;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get consulteeProfileId;
  @override
  SortOrder? get staffProfileId;
  @override
  SortOrder? get adminProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserOrderByInputImplCopyWith<_$UserOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
