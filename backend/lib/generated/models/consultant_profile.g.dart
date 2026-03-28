// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultant_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultantProfileImpl _$$ConsultantProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantProfileImpl(
      id: json['id'] as String,
      description: json['description'] as String?,
      experience: (json['experience'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      headline: json['headline'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      twitterUrl: json['twitterUrl'] as String?,
      githubUrl: json['githubUrl'] as String?,
      videoIntroUrl: json['videoIntroUrl'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      toolsAndTechnologies: (json['toolsAndTechnologies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mentoringStyle: json['mentoringStyle'] as String?,
      sessionTypes: (json['sessionTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$SessionTypeEnumMap, e))
              .toList() ??
          const <SessionType>[],
      profileCompletionPercentage:
          (json['profileCompletionPercentage'] as num?)?.toInt() ?? 0,
      isVerified: json['isVerified'] as bool? ?? false,
      verificationStatus: $enumDecodeNullable(
              _$ConsultantVerificationStatusEnumMap,
              json['verificationStatus']) ??
          ConsultantVerificationStatus.pendingVerification,
      totalMenteesHelped: (json['totalMenteesHelped'] as num?)?.toInt() ?? 0,
      domainId: json['domainId'] as String,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ConsultantReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleType: $enumDecode(_$ScheduleTypeEnumMap, json['scheduleType']),
      slotsOfAvailabilityWeekly:
          (json['slotsOfAvailabilityWeekly'] as List<dynamic>)
              .map((e) =>
                  SlotOfAvailabilityWeekly.fromJson(e as Map<String, dynamic>))
              .toList(),
      slotsOfAvailabilityCustom:
          (json['slotsOfAvailabilityCustom'] as List<dynamic>)
              .map((e) =>
                  SlotOfAvailabilityCustom.fromJson(e as Map<String, dynamic>))
              .toList(),
      consultationPlans: (json['consultationPlans'] as List<dynamic>)
          .map((e) => ConsultationPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionPlans: (json['subscriptionPlans'] as List<dynamic>)
          .map((e) => SubscriptionPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
      webinarPlans: (json['webinarPlans'] as List<dynamic>)
          .map((e) => WebinarPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
      classPlans: (json['classPlans'] as List<dynamic>)
          .map((e) => ClassPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
      trialSessions: (json['trialSessions'] as List<dynamic>)
          .map((e) => TrialSession.fromJson(e as Map<String, dynamic>))
          .toList(),
      activityLogs: (json['activityLogs'] as List<dynamic>)
          .map((e) => ActivityLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String,
      earnings: (json['earnings'] as List<dynamic>)
          .map((e) => ConsultantEarnings.fromJson(e as Map<String, dynamic>))
          .toList(),
      payouts: (json['payouts'] as List<dynamic>)
          .map((e) => Payout.fromJson(e as Map<String, dynamic>))
          .toList(),
      payoutAccounts: (json['payoutAccounts'] as List<dynamic>)
          .map((e) => PayoutAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxInfo: json['taxInfo'] == null
          ? null
          : ConsultantTaxInfo.fromJson(json['taxInfo'] as Map<String, dynamic>),
      tdsRecords: (json['tdsRecords'] as List<dynamic>)
          .map((e) => TDSRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      verificationRequests: (json['verificationRequests'] as List<dynamic>)
          .map((e) =>
              ConsultantProfileVerification.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRevenue: (json['totalRevenue'] as num?)?.toInt() ?? 0,
      pendingRevenue: (json['pendingRevenue'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultantProfileImplToJson(
        _$ConsultantProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'experience': instance.experience,
      'rating': instance.rating,
      'headline': instance.headline,
      'websiteUrl': instance.websiteUrl,
      'twitterUrl': instance.twitterUrl,
      'githubUrl': instance.githubUrl,
      'videoIntroUrl': instance.videoIntroUrl,
      'languages': instance.languages,
      'toolsAndTechnologies': instance.toolsAndTechnologies,
      'mentoringStyle': instance.mentoringStyle,
      'sessionTypes':
          instance.sessionTypes?.map((e) => _$SessionTypeEnumMap[e]!).toList(),
      'profileCompletionPercentage': instance.profileCompletionPercentage,
      'isVerified': instance.isVerified,
      'verificationStatus':
          _$ConsultantVerificationStatusEnumMap[instance.verificationStatus]!,
      'totalMenteesHelped': instance.totalMenteesHelped,
      'domainId': instance.domainId,
      'reviews': instance.reviews,
      'scheduleType': _$ScheduleTypeEnumMap[instance.scheduleType]!,
      'slotsOfAvailabilityWeekly': instance.slotsOfAvailabilityWeekly,
      'slotsOfAvailabilityCustom': instance.slotsOfAvailabilityCustom,
      'consultationPlans': instance.consultationPlans,
      'subscriptionPlans': instance.subscriptionPlans,
      'webinarPlans': instance.webinarPlans,
      'classPlans': instance.classPlans,
      'trialSessions': instance.trialSessions,
      'activityLogs': instance.activityLogs,
      'achievements': instance.achievements,
      'userId': instance.userId,
      'earnings': instance.earnings,
      'payouts': instance.payouts,
      'payoutAccounts': instance.payoutAccounts,
      'taxInfo': instance.taxInfo,
      'tdsRecords': instance.tdsRecords,
      'verificationRequests': instance.verificationRequests,
      'totalRevenue': instance.totalRevenue,
      'pendingRevenue': instance.pendingRevenue,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SessionTypeEnumMap = {
  SessionType.oneOnOne: 'ONE_ON_ONE',
  SessionType.group: 'GROUP',
  SessionType.asyncReview: 'ASYNC_REVIEW',
};

const _$ConsultantVerificationStatusEnumMap = {
  ConsultantVerificationStatus.pendingVerification: 'PENDING_VERIFICATION',
  ConsultantVerificationStatus.underReview: 'UNDER_REVIEW',
  ConsultantVerificationStatus.verified: 'VERIFIED',
  ConsultantVerificationStatus.rejected: 'REJECTED',
};

const _$ScheduleTypeEnumMap = {
  ScheduleType.weekly: 'WEEKLY',
  ScheduleType.custom: 'CUSTOM',
};

_$CreateConsultantProfileInputImpl _$$CreateConsultantProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsultantProfileInputImpl(
      description: json['description'] as String?,
      experience: (json['experience'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      headline: json['headline'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      twitterUrl: json['twitterUrl'] as String?,
      githubUrl: json['githubUrl'] as String?,
      videoIntroUrl: json['videoIntroUrl'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      toolsAndTechnologies: (json['toolsAndTechnologies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mentoringStyle: json['mentoringStyle'] as String?,
      sessionTypes: (json['sessionTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$SessionTypeEnumMap, e))
              .toList() ??
          const <SessionType>[],
      profileCompletionPercentage:
          (json['profileCompletionPercentage'] as num?)?.toInt() ?? 0,
      isVerified: json['isVerified'] as bool? ?? false,
      verificationStatus: $enumDecodeNullable(
              _$ConsultantVerificationStatusEnumMap,
              json['verificationStatus']) ??
          ConsultantVerificationStatus.pendingVerification,
      totalMenteesHelped: (json['totalMenteesHelped'] as num?)?.toInt() ?? 0,
      domainId: json['domainId'] as String,
      scheduleType: $enumDecode(_$ScheduleTypeEnumMap, json['scheduleType']),
      userId: json['userId'] as String,
      totalRevenue: (json['totalRevenue'] as num?)?.toInt() ?? 0,
      pendingRevenue: (json['pendingRevenue'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CreateConsultantProfileInputImplToJson(
        _$CreateConsultantProfileInputImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'experience': instance.experience,
      'rating': instance.rating,
      'headline': instance.headline,
      'websiteUrl': instance.websiteUrl,
      'twitterUrl': instance.twitterUrl,
      'githubUrl': instance.githubUrl,
      'videoIntroUrl': instance.videoIntroUrl,
      'languages': instance.languages,
      'toolsAndTechnologies': instance.toolsAndTechnologies,
      'mentoringStyle': instance.mentoringStyle,
      'sessionTypes':
          instance.sessionTypes?.map((e) => _$SessionTypeEnumMap[e]!).toList(),
      'profileCompletionPercentage': instance.profileCompletionPercentage,
      'isVerified': instance.isVerified,
      'verificationStatus':
          _$ConsultantVerificationStatusEnumMap[instance.verificationStatus]!,
      'totalMenteesHelped': instance.totalMenteesHelped,
      'domainId': instance.domainId,
      'scheduleType': _$ScheduleTypeEnumMap[instance.scheduleType]!,
      'userId': instance.userId,
      'totalRevenue': instance.totalRevenue,
      'pendingRevenue': instance.pendingRevenue,
    };

_$UpdateConsultantProfileInputImpl _$$UpdateConsultantProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsultantProfileInputImpl(
      description: json['description'] as String?,
      experience: (json['experience'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      headline: json['headline'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      twitterUrl: json['twitterUrl'] as String?,
      githubUrl: json['githubUrl'] as String?,
      videoIntroUrl: json['videoIntroUrl'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      toolsAndTechnologies: (json['toolsAndTechnologies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mentoringStyle: json['mentoringStyle'] as String?,
      sessionTypes: (json['sessionTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SessionTypeEnumMap, e))
          .toList(),
      profileCompletionPercentage:
          (json['profileCompletionPercentage'] as num?)?.toInt(),
      isVerified: json['isVerified'] as bool?,
      verificationStatus: $enumDecodeNullable(
          _$ConsultantVerificationStatusEnumMap, json['verificationStatus']),
      totalMenteesHelped: (json['totalMenteesHelped'] as num?)?.toInt(),
      domainId: json['domainId'] as String?,
      scheduleType:
          $enumDecodeNullable(_$ScheduleTypeEnumMap, json['scheduleType']),
      userId: json['userId'] as String?,
      totalRevenue: (json['totalRevenue'] as num?)?.toInt(),
      pendingRevenue: (json['pendingRevenue'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateConsultantProfileInputImplToJson(
        _$UpdateConsultantProfileInputImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'experience': instance.experience,
      'rating': instance.rating,
      'headline': instance.headline,
      'websiteUrl': instance.websiteUrl,
      'twitterUrl': instance.twitterUrl,
      'githubUrl': instance.githubUrl,
      'videoIntroUrl': instance.videoIntroUrl,
      'languages': instance.languages,
      'toolsAndTechnologies': instance.toolsAndTechnologies,
      'mentoringStyle': instance.mentoringStyle,
      'sessionTypes':
          instance.sessionTypes?.map((e) => _$SessionTypeEnumMap[e]!).toList(),
      'profileCompletionPercentage': instance.profileCompletionPercentage,
      'isVerified': instance.isVerified,
      'verificationStatus':
          _$ConsultantVerificationStatusEnumMap[instance.verificationStatus],
      'totalMenteesHelped': instance.totalMenteesHelped,
      'domainId': instance.domainId,
      'scheduleType': _$ScheduleTypeEnumMap[instance.scheduleType],
      'userId': instance.userId,
      'totalRevenue': instance.totalRevenue,
      'pendingRevenue': instance.pendingRevenue,
    };

_$ConsultantProfileWhereUniqueInputImpl
    _$$ConsultantProfileWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileWhereUniqueInputImpl(
          id: json['id'] as String?,
          userId: json['userId'] as String?,
        );

Map<String, dynamic> _$$ConsultantProfileWhereUniqueInputImplToJson(
        _$ConsultantProfileWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$ConsultantProfileWhereInputImpl _$$ConsultantProfileWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantProfileWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      experience: json['experience'] == null
          ? null
          : FloatFilter.fromJson(json['experience'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : FloatFilter.fromJson(json['rating'] as Map<String, dynamic>),
      headline: json['headline'] == null
          ? null
          : StringFilter.fromJson(json['headline'] as Map<String, dynamic>),
      websiteUrl: json['websiteUrl'] == null
          ? null
          : StringFilter.fromJson(json['websiteUrl'] as Map<String, dynamic>),
      twitterUrl: json['twitterUrl'] == null
          ? null
          : StringFilter.fromJson(json['twitterUrl'] as Map<String, dynamic>),
      githubUrl: json['githubUrl'] == null
          ? null
          : StringFilter.fromJson(json['githubUrl'] as Map<String, dynamic>),
      videoIntroUrl: json['videoIntroUrl'] == null
          ? null
          : StringFilter.fromJson(
              json['videoIntroUrl'] as Map<String, dynamic>),
      languages: json['languages'] == null
          ? null
          : StringListFilter.fromJson(
              json['languages'] as Map<String, dynamic>),
      toolsAndTechnologies: json['toolsAndTechnologies'] == null
          ? null
          : StringListFilter.fromJson(
              json['toolsAndTechnologies'] as Map<String, dynamic>),
      mentoringStyle: json['mentoringStyle'] == null
          ? null
          : StringFilter.fromJson(
              json['mentoringStyle'] as Map<String, dynamic>),
      profileCompletionPercentage: json['profileCompletionPercentage'] == null
          ? null
          : IntFilter.fromJson(
              json['profileCompletionPercentage'] as Map<String, dynamic>),
      isVerified: json['isVerified'] == null
          ? null
          : BooleanFilter.fromJson(json['isVerified'] as Map<String, dynamic>),
      verificationStatus: json['verificationStatus'] == null
          ? null
          : ConsultantVerificationStatusFilter.fromJson(
              json['verificationStatus'] as Map<String, dynamic>),
      totalMenteesHelped: json['totalMenteesHelped'] == null
          ? null
          : IntFilter.fromJson(
              json['totalMenteesHelped'] as Map<String, dynamic>),
      domain: json['domain'] == null
          ? null
          : DomainRelationFilter.fromJson(
              json['domain'] as Map<String, dynamic>),
      domainId: json['domainId'] == null
          ? null
          : StringFilter.fromJson(json['domainId'] as Map<String, dynamic>),
      subDomains: json['subDomains'] == null
          ? null
          : SubDomainListRelationFilter.fromJson(
              json['subDomains'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagListRelationFilter.fromJson(
              json['tags'] as Map<String, dynamic>),
      scheduleType: json['scheduleType'] == null
          ? null
          : ScheduleTypeFilter.fromJson(
              json['scheduleType'] as Map<String, dynamic>),
      webinarCollaborations: json['webinarCollaborations'] == null
          ? null
          : WebinarCollaboratorListRelationFilter.fromJson(
              json['webinarCollaborations'] as Map<String, dynamic>),
      classCollaborations: json['classCollaborations'] == null
          ? null
          : ClassCollaboratorListRelationFilter.fromJson(
              json['classCollaborations'] as Map<String, dynamic>),
      invitedWebinarCollabs: json['invitedWebinarCollabs'] == null
          ? null
          : WebinarCollaboratorListRelationFilter.fromJson(
              json['invitedWebinarCollabs'] as Map<String, dynamic>),
      invitedClassCollabs: json['invitedClassCollabs'] == null
          ? null
          : ClassCollaboratorListRelationFilter.fromJson(
              json['invitedClassCollabs'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      totalRevenue: json['totalRevenue'] == null
          ? null
          : IntFilter.fromJson(json['totalRevenue'] as Map<String, dynamic>),
      pendingRevenue: json['pendingRevenue'] == null
          ? null
          : IntFilter.fromJson(json['pendingRevenue'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultantProfileWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultantProfileWhereInputImplToJson(
        _$ConsultantProfileWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'description': instance.description?.toJson(),
      'experience': instance.experience?.toJson(),
      'rating': instance.rating?.toJson(),
      'headline': instance.headline?.toJson(),
      'websiteUrl': instance.websiteUrl?.toJson(),
      'twitterUrl': instance.twitterUrl?.toJson(),
      'githubUrl': instance.githubUrl?.toJson(),
      'videoIntroUrl': instance.videoIntroUrl?.toJson(),
      'languages': instance.languages?.toJson(),
      'toolsAndTechnologies': instance.toolsAndTechnologies?.toJson(),
      'mentoringStyle': instance.mentoringStyle?.toJson(),
      'profileCompletionPercentage':
          instance.profileCompletionPercentage?.toJson(),
      'isVerified': instance.isVerified?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'totalMenteesHelped': instance.totalMenteesHelped?.toJson(),
      'domain': instance.domain?.toJson(),
      'domainId': instance.domainId?.toJson(),
      'subDomains': instance.subDomains?.toJson(),
      'tags': instance.tags?.toJson(),
      'scheduleType': instance.scheduleType?.toJson(),
      'webinarCollaborations': instance.webinarCollaborations?.toJson(),
      'classCollaborations': instance.classCollaborations?.toJson(),
      'invitedWebinarCollabs': instance.invitedWebinarCollabs?.toJson(),
      'invitedClassCollabs': instance.invitedClassCollabs?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'totalRevenue': instance.totalRevenue?.toJson(),
      'pendingRevenue': instance.pendingRevenue?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultantProfileListRelationFilterImpl
    _$$ConsultantProfileListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultantProfileWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultantProfileWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultantProfileWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantProfileListRelationFilterImplToJson(
        _$ConsultantProfileListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultantProfileRelationFilterImpl
    _$$ConsultantProfileRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantProfileRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultantProfileWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultantProfileWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantProfileRelationFilterImplToJson(
        _$ConsultantProfileRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultantProfileOrderByInputImpl
    _$$ConsultantProfileOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantProfileOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          description:
              $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
          experience:
              $enumDecodeNullable(_$SortOrderEnumMap, json['experience']),
          rating: $enumDecodeNullable(_$SortOrderEnumMap, json['rating']),
          headline: $enumDecodeNullable(_$SortOrderEnumMap, json['headline']),
          websiteUrl:
              $enumDecodeNullable(_$SortOrderEnumMap, json['websiteUrl']),
          twitterUrl:
              $enumDecodeNullable(_$SortOrderEnumMap, json['twitterUrl']),
          githubUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['githubUrl']),
          videoIntroUrl:
              $enumDecodeNullable(_$SortOrderEnumMap, json['videoIntroUrl']),
          languages: $enumDecodeNullable(_$SortOrderEnumMap, json['languages']),
          toolsAndTechnologies: $enumDecodeNullable(
              _$SortOrderEnumMap, json['toolsAndTechnologies']),
          mentoringStyle:
              $enumDecodeNullable(_$SortOrderEnumMap, json['mentoringStyle']),
          profileCompletionPercentage: $enumDecodeNullable(
              _$SortOrderEnumMap, json['profileCompletionPercentage']),
          isVerified:
              $enumDecodeNullable(_$SortOrderEnumMap, json['isVerified']),
          totalMenteesHelped: $enumDecodeNullable(
              _$SortOrderEnumMap, json['totalMenteesHelped']),
          domainId: $enumDecodeNullable(_$SortOrderEnumMap, json['domainId']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
          totalRevenue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalRevenue']),
          pendingRevenue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['pendingRevenue']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$ConsultantProfileOrderByInputImplToJson(
        _$ConsultantProfileOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'description': _$SortOrderEnumMap[instance.description],
      'experience': _$SortOrderEnumMap[instance.experience],
      'rating': _$SortOrderEnumMap[instance.rating],
      'headline': _$SortOrderEnumMap[instance.headline],
      'websiteUrl': _$SortOrderEnumMap[instance.websiteUrl],
      'twitterUrl': _$SortOrderEnumMap[instance.twitterUrl],
      'githubUrl': _$SortOrderEnumMap[instance.githubUrl],
      'videoIntroUrl': _$SortOrderEnumMap[instance.videoIntroUrl],
      'languages': _$SortOrderEnumMap[instance.languages],
      'toolsAndTechnologies': _$SortOrderEnumMap[instance.toolsAndTechnologies],
      'mentoringStyle': _$SortOrderEnumMap[instance.mentoringStyle],
      'profileCompletionPercentage':
          _$SortOrderEnumMap[instance.profileCompletionPercentage],
      'isVerified': _$SortOrderEnumMap[instance.isVerified],
      'totalMenteesHelped': _$SortOrderEnumMap[instance.totalMenteesHelped],
      'domainId': _$SortOrderEnumMap[instance.domainId],
      'userId': _$SortOrderEnumMap[instance.userId],
      'totalRevenue': _$SortOrderEnumMap[instance.totalRevenue],
      'pendingRevenue': _$SortOrderEnumMap[instance.pendingRevenue],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
