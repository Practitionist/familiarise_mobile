// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool? ?? false,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      onlineStatus: json['onlineStatus'] as bool? ?? false,
      timezone: json['timezone'] as String?,
      onboardingCompleted: json['onboardingCompleted'] as bool? ?? false,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ??
          UserRole.consultee,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      city: json['city'] as String?,
      country: json['country'] as String?,
      linkedinUrl: json['linkedinUrl'] as String?,
      bio: json['bio'] as String?,
      profileDisplayImage: json['profileDisplayImage'] as String?,
      termsAcceptedAt: json['termsAcceptedAt'] == null
          ? null
          : DateTime.parse(json['termsAcceptedAt'] as String),
      privacyAcceptedAt: json['privacyAcceptedAt'] == null
          ? null
          : DateTime.parse(json['privacyAcceptedAt'] as String),
      workExperiences: (json['workExperiences'] as List<dynamic>)
          .map((e) => WorkExperience.fromJson(e as Map<String, dynamic>))
          .toList(),
      certifications: (json['certifications'] as List<dynamic>)
          .map((e) => Certification.fromJson(e as Map<String, dynamic>))
          .toList(),
      education: (json['education'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      cookiePreferences: json['cookiePreferences'] == null
          ? null
          : CookiePreference.fromJson(
              json['cookiePreferences'] as Map<String, dynamic>),
      notificationPreferences: json['notificationPreferences'] == null
          ? null
          : NotificationPreference.fromJson(
              json['notificationPreferences'] as Map<String, dynamic>),
      payment: (json['Payment'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfile.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfile: json['consulteeProfile'] == null
          ? null
          : ConsulteeProfile.fromJson(
              json['consulteeProfile'] as Map<String, dynamic>),
      consulteeProfileId: json['consulteeProfileId'] as String?,
      staffProfile: json['staffProfile'] == null
          ? null
          : StaffProfile.fromJson(json['staffProfile'] as Map<String, dynamic>),
      staffProfileId: json['staffProfileId'] as String?,
      adminProfile: json['adminProfile'] == null
          ? null
          : AdminProfile.fromJson(json['adminProfile'] as Map<String, dynamic>),
      adminProfileId: json['adminProfileId'] as String?,
      waitlist: (json['Waitlist'] as List<dynamic>)
          .map((e) => Waitlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedbacks: (json['feedbacks'] as List<dynamic>)
          .map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportTickets: (json['supportTickets'] as List<dynamic>)
          .map((e) => SupportTicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportResponses: (json['supportResponses'] as List<dynamic>)
          .map((e) => SupportResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
      sessions: (json['sessions'] as List<dynamic>)
          .map((e) => Session.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
      moderationActions: (json['moderationActions'] as List<dynamic>)
          .map((e) => ModerationAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      referralCode: json['referralCode'] == null
          ? null
          : ReferralCode.fromJson(json['referralCode'] as Map<String, dynamic>),
      referralCredits: (json['referralCredits'] as List<dynamic>)
          .map((e) => ReferralCredit.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'image': instance.image,
      'phone': instance.phone,
      'address': instance.address,
      'onlineStatus': instance.onlineStatus,
      'timezone': instance.timezone,
      'onboardingCompleted': instance.onboardingCompleted,
      'role': _$UserRoleEnumMap[instance.role],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
      'city': instance.city,
      'country': instance.country,
      'linkedinUrl': instance.linkedinUrl,
      'bio': instance.bio,
      'profileDisplayImage': instance.profileDisplayImage,
      'termsAcceptedAt': instance.termsAcceptedAt?.toIso8601String(),
      'privacyAcceptedAt': instance.privacyAcceptedAt?.toIso8601String(),
      'workExperiences': instance.workExperiences,
      'certifications': instance.certifications,
      'education': instance.education,
      'cookiePreferences': instance.cookiePreferences,
      'notificationPreferences': instance.notificationPreferences,
      'Payment': instance.payment,
      'consultantProfile': instance.consultantProfile,
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfile': instance.consulteeProfile,
      'consulteeProfileId': instance.consulteeProfileId,
      'staffProfile': instance.staffProfile,
      'staffProfileId': instance.staffProfileId,
      'adminProfile': instance.adminProfile,
      'adminProfileId': instance.adminProfileId,
      'Waitlist': instance.waitlist,
      'feedbacks': instance.feedbacks,
      'supportTickets': instance.supportTickets,
      'supportResponses': instance.supportResponses,
      'accounts': instance.accounts,
      'sessions': instance.sessions,
      'members': instance.members,
      'moderationActions': instance.moderationActions,
      'referralCode': instance.referralCode,
      'referralCredits': instance.referralCredits,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.consultant: 'CONSULTANT',
  UserRole.consultee: 'CONSULTEE',
  UserRole.admin: 'ADMIN',
  UserRole.staff: 'STAFF',
};

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
  Gender.nonBinary: 'NON_BINARY',
  Gender.preferNotToSay: 'PREFER_NOT_TO_SAY',
};

_$CreateUserInputImpl _$$CreateUserInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserInputImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool? ?? false,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      onlineStatus: json['onlineStatus'] as bool? ?? false,
      timezone: json['timezone'] as String?,
      onboardingCompleted: json['onboardingCompleted'] as bool? ?? false,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ??
          UserRole.consultee,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      city: json['city'] as String?,
      country: json['country'] as String?,
      linkedinUrl: json['linkedinUrl'] as String?,
      bio: json['bio'] as String?,
      profileDisplayImage: json['profileDisplayImage'] as String?,
      termsAcceptedAt: json['termsAcceptedAt'] == null
          ? null
          : DateTime.parse(json['termsAcceptedAt'] as String),
      privacyAcceptedAt: json['privacyAcceptedAt'] == null
          ? null
          : DateTime.parse(json['privacyAcceptedAt'] as String),
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
      staffProfileId: json['staffProfileId'] as String?,
      adminProfileId: json['adminProfileId'] as String?,
    );

Map<String, dynamic> _$$CreateUserInputImplToJson(
        _$CreateUserInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'image': instance.image,
      'phone': instance.phone,
      'address': instance.address,
      'onlineStatus': instance.onlineStatus,
      'timezone': instance.timezone,
      'onboardingCompleted': instance.onboardingCompleted,
      'role': _$UserRoleEnumMap[instance.role]!,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
      'city': instance.city,
      'country': instance.country,
      'linkedinUrl': instance.linkedinUrl,
      'bio': instance.bio,
      'profileDisplayImage': instance.profileDisplayImage,
      'termsAcceptedAt': instance.termsAcceptedAt?.toIso8601String(),
      'privacyAcceptedAt': instance.privacyAcceptedAt?.toIso8601String(),
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
      'staffProfileId': instance.staffProfileId,
      'adminProfileId': instance.adminProfileId,
    };

_$UpdateUserInputImpl _$$UpdateUserInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserInputImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      onlineStatus: json['onlineStatus'] as bool?,
      timezone: json['timezone'] as String?,
      onboardingCompleted: json['onboardingCompleted'] as bool?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      city: json['city'] as String?,
      country: json['country'] as String?,
      linkedinUrl: json['linkedinUrl'] as String?,
      bio: json['bio'] as String?,
      profileDisplayImage: json['profileDisplayImage'] as String?,
      termsAcceptedAt: json['termsAcceptedAt'] == null
          ? null
          : DateTime.parse(json['termsAcceptedAt'] as String),
      privacyAcceptedAt: json['privacyAcceptedAt'] == null
          ? null
          : DateTime.parse(json['privacyAcceptedAt'] as String),
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
      staffProfileId: json['staffProfileId'] as String?,
      adminProfileId: json['adminProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateUserInputImplToJson(
        _$UpdateUserInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'image': instance.image,
      'phone': instance.phone,
      'address': instance.address,
      'onlineStatus': instance.onlineStatus,
      'timezone': instance.timezone,
      'onboardingCompleted': instance.onboardingCompleted,
      'role': _$UserRoleEnumMap[instance.role],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
      'city': instance.city,
      'country': instance.country,
      'linkedinUrl': instance.linkedinUrl,
      'bio': instance.bio,
      'profileDisplayImage': instance.profileDisplayImage,
      'termsAcceptedAt': instance.termsAcceptedAt?.toIso8601String(),
      'privacyAcceptedAt': instance.privacyAcceptedAt?.toIso8601String(),
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
      'staffProfileId': instance.staffProfileId,
      'adminProfileId': instance.adminProfileId,
    };

_$UserWhereUniqueInputImpl _$$UserWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UserWhereUniqueInputImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
      staffProfileId: json['staffProfileId'] as String?,
      adminProfileId: json['adminProfileId'] as String?,
    );

Map<String, dynamic> _$$UserWhereUniqueInputImplToJson(
        _$UserWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
      'staffProfileId': instance.staffProfileId,
      'adminProfileId': instance.adminProfileId,
    };

_$UserWhereInputImpl _$$UserWhereInputImplFromJson(Map<String, dynamic> json) =>
    _$UserWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      emailVerified: json['emailVerified'] == null
          ? null
          : BooleanFilter.fromJson(
              json['emailVerified'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : StringFilter.fromJson(json['image'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : StringFilter.fromJson(json['phone'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : StringFilter.fromJson(json['address'] as Map<String, dynamic>),
      onlineStatus: json['onlineStatus'] == null
          ? null
          : BooleanFilter.fromJson(
              json['onlineStatus'] as Map<String, dynamic>),
      timezone: json['timezone'] == null
          ? null
          : StringFilter.fromJson(json['timezone'] as Map<String, dynamic>),
      onboardingCompleted: json['onboardingCompleted'] == null
          ? null
          : BooleanFilter.fromJson(
              json['onboardingCompleted'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : UserRoleFilter.fromJson(json['role'] as Map<String, dynamic>),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dateOfBirth'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : GenderFilter.fromJson(json['gender'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFilter.fromJson(json['city'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : StringFilter.fromJson(json['country'] as Map<String, dynamic>),
      linkedinUrl: json['linkedinUrl'] == null
          ? null
          : StringFilter.fromJson(json['linkedinUrl'] as Map<String, dynamic>),
      bio: json['bio'] == null
          ? null
          : StringFilter.fromJson(json['bio'] as Map<String, dynamic>),
      profileDisplayImage: json['profileDisplayImage'] == null
          ? null
          : StringFilter.fromJson(
              json['profileDisplayImage'] as Map<String, dynamic>),
      termsAcceptedAt: json['termsAcceptedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['termsAcceptedAt'] as Map<String, dynamic>),
      privacyAcceptedAt: json['privacyAcceptedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['privacyAcceptedAt'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      consulteeProfileId: json['consulteeProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consulteeProfileId'] as Map<String, dynamic>),
      staffProfileId: json['staffProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['staffProfileId'] as Map<String, dynamic>),
      adminProfileId: json['adminProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['adminProfileId'] as Map<String, dynamic>),
      slotsOfAppointment: json['slotsOfAppointment'] == null
          ? null
          : SlotOfAppointmentListRelationFilter.fromJson(
              json['slotsOfAppointment'] as Map<String, dynamic>),
      reportsSubmitted: json['reportsSubmitted'] == null
          ? null
          : ModerationReportListRelationFilter.fromJson(
              json['reportsSubmitted'] as Map<String, dynamic>),
      reportsReceived: json['reportsReceived'] == null
          ? null
          : ModerationReportListRelationFilter.fromJson(
              json['reportsReceived'] as Map<String, dynamic>),
      referral: json['referral'] == null
          ? null
          : ReferralRelationFilter.fromJson(
              json['referral'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : UserWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserWhereInputImplToJson(
        _$UserWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'email': instance.email?.toJson(),
      'emailVerified': instance.emailVerified?.toJson(),
      'image': instance.image?.toJson(),
      'phone': instance.phone?.toJson(),
      'address': instance.address?.toJson(),
      'onlineStatus': instance.onlineStatus?.toJson(),
      'timezone': instance.timezone?.toJson(),
      'onboardingCompleted': instance.onboardingCompleted?.toJson(),
      'role': instance.role?.toJson(),
      'dateOfBirth': instance.dateOfBirth?.toJson(),
      'gender': instance.gender?.toJson(),
      'city': instance.city?.toJson(),
      'country': instance.country?.toJson(),
      'linkedinUrl': instance.linkedinUrl?.toJson(),
      'bio': instance.bio?.toJson(),
      'profileDisplayImage': instance.profileDisplayImage?.toJson(),
      'termsAcceptedAt': instance.termsAcceptedAt?.toJson(),
      'privacyAcceptedAt': instance.privacyAcceptedAt?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'consulteeProfileId': instance.consulteeProfileId?.toJson(),
      'staffProfileId': instance.staffProfileId?.toJson(),
      'adminProfileId': instance.adminProfileId?.toJson(),
      'slotsOfAppointment': instance.slotsOfAppointment?.toJson(),
      'reportsSubmitted': instance.reportsSubmitted?.toJson(),
      'reportsReceived': instance.reportsReceived?.toJson(),
      'referral': instance.referral?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$UserListRelationFilterImpl _$$UserListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$UserListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : UserWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : UserWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : UserWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserListRelationFilterImplToJson(
        _$UserListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$UserRelationFilterImpl _$$UserRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRelationFilterImplToJson(
        _$UserRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$UserOrderByInputImpl _$$UserOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UserOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      emailVerified:
          $enumDecodeNullable(_$SortOrderEnumMap, json['emailVerified']),
      image: $enumDecodeNullable(_$SortOrderEnumMap, json['image']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['address']),
      onlineStatus:
          $enumDecodeNullable(_$SortOrderEnumMap, json['onlineStatus']),
      timezone: $enumDecodeNullable(_$SortOrderEnumMap, json['timezone']),
      onboardingCompleted:
          $enumDecodeNullable(_$SortOrderEnumMap, json['onboardingCompleted']),
      dateOfBirth: $enumDecodeNullable(_$SortOrderEnumMap, json['dateOfBirth']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      country: $enumDecodeNullable(_$SortOrderEnumMap, json['country']),
      linkedinUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['linkedinUrl']),
      bio: $enumDecodeNullable(_$SortOrderEnumMap, json['bio']),
      profileDisplayImage:
          $enumDecodeNullable(_$SortOrderEnumMap, json['profileDisplayImage']),
      termsAcceptedAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['termsAcceptedAt']),
      privacyAcceptedAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['privacyAcceptedAt']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      consulteeProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consulteeProfileId']),
      staffProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['staffProfileId']),
      adminProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['adminProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$UserOrderByInputImplToJson(
        _$UserOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'name': _$SortOrderEnumMap[instance.name],
      'email': _$SortOrderEnumMap[instance.email],
      'emailVerified': _$SortOrderEnumMap[instance.emailVerified],
      'image': _$SortOrderEnumMap[instance.image],
      'phone': _$SortOrderEnumMap[instance.phone],
      'address': _$SortOrderEnumMap[instance.address],
      'onlineStatus': _$SortOrderEnumMap[instance.onlineStatus],
      'timezone': _$SortOrderEnumMap[instance.timezone],
      'onboardingCompleted': _$SortOrderEnumMap[instance.onboardingCompleted],
      'dateOfBirth': _$SortOrderEnumMap[instance.dateOfBirth],
      'city': _$SortOrderEnumMap[instance.city],
      'country': _$SortOrderEnumMap[instance.country],
      'linkedinUrl': _$SortOrderEnumMap[instance.linkedinUrl],
      'bio': _$SortOrderEnumMap[instance.bio],
      'profileDisplayImage': _$SortOrderEnumMap[instance.profileDisplayImage],
      'termsAcceptedAt': _$SortOrderEnumMap[instance.termsAcceptedAt],
      'privacyAcceptedAt': _$SortOrderEnumMap[instance.privacyAcceptedAt],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'consulteeProfileId': _$SortOrderEnumMap[instance.consulteeProfileId],
      'staffProfileId': _$SortOrderEnumMap[instance.staffProfileId],
      'adminProfileId': _$SortOrderEnumMap[instance.adminProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
