// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultee_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsulteeProfileImpl _$$ConsulteeProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsulteeProfileImpl(
      id: json['id'] as String,
      aboutMe: json['aboutMe'] as String?,
      preferredLanguage: json['preferredLanguage'] as String?,
      goals: json['goals'] as String?,
      careerStage:
          $enumDecodeNullable(_$CareerStageEnumMap, json['careerStage']),
      skillsToDevelop: (json['skillsToDevelop'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      budgetPreference: $enumDecodeNullable(
          _$BudgetPreferenceEnumMap, json['budgetPreference']),
      consultationRequests: (json['consultationRequests'] as List<dynamic>)
          .map((e) => Consultation.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionRequests: (json['subscriptionRequests'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      consultantReviews: (json['consultantReviews'] as List<dynamic>)
          .map((e) => ConsultantReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      trialSessions: (json['trialSessions'] as List<dynamic>)
          .map((e) => TrialSession.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsulteeProfileImplToJson(
        _$ConsulteeProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aboutMe': instance.aboutMe,
      'preferredLanguage': instance.preferredLanguage,
      'goals': instance.goals,
      'careerStage': _$CareerStageEnumMap[instance.careerStage],
      'skillsToDevelop': instance.skillsToDevelop,
      'budgetPreference': _$BudgetPreferenceEnumMap[instance.budgetPreference],
      'consultationRequests': instance.consultationRequests,
      'subscriptionRequests': instance.subscriptionRequests,
      'consultantReviews': instance.consultantReviews,
      'trialSessions': instance.trialSessions,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$CareerStageEnumMap = {
  CareerStage.schoolStudent: 'SCHOOL_STUDENT',
  CareerStage.student: 'STUDENT',
  CareerStage.earlyCareer: 'EARLY_CAREER',
  CareerStage.midCareer: 'MID_CAREER',
  CareerStage.senior: 'SENIOR',
  CareerStage.executive: 'EXECUTIVE',
};

const _$BudgetPreferenceEnumMap = {
  BudgetPreference.budget: 'BUDGET',
  BudgetPreference.moderate: 'MODERATE',
  BudgetPreference.premium: 'PREMIUM',
  BudgetPreference.flexible: 'FLEXIBLE',
};

_$CreateConsulteeProfileInputImpl _$$CreateConsulteeProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsulteeProfileInputImpl(
      aboutMe: json['aboutMe'] as String?,
      preferredLanguage: json['preferredLanguage'] as String?,
      goals: json['goals'] as String?,
      careerStage:
          $enumDecodeNullable(_$CareerStageEnumMap, json['careerStage']),
      skillsToDevelop: (json['skillsToDevelop'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      budgetPreference: $enumDecodeNullable(
          _$BudgetPreferenceEnumMap, json['budgetPreference']),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateConsulteeProfileInputImplToJson(
        _$CreateConsulteeProfileInputImpl instance) =>
    <String, dynamic>{
      'aboutMe': instance.aboutMe,
      'preferredLanguage': instance.preferredLanguage,
      'goals': instance.goals,
      'careerStage': _$CareerStageEnumMap[instance.careerStage],
      'skillsToDevelop': instance.skillsToDevelop,
      'budgetPreference': _$BudgetPreferenceEnumMap[instance.budgetPreference],
      'userId': instance.userId,
    };

_$UpdateConsulteeProfileInputImpl _$$UpdateConsulteeProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsulteeProfileInputImpl(
      aboutMe: json['aboutMe'] as String?,
      preferredLanguage: json['preferredLanguage'] as String?,
      goals: json['goals'] as String?,
      careerStage:
          $enumDecodeNullable(_$CareerStageEnumMap, json['careerStage']),
      skillsToDevelop: (json['skillsToDevelop'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      budgetPreference: $enumDecodeNullable(
          _$BudgetPreferenceEnumMap, json['budgetPreference']),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateConsulteeProfileInputImplToJson(
        _$UpdateConsulteeProfileInputImpl instance) =>
    <String, dynamic>{
      'aboutMe': instance.aboutMe,
      'preferredLanguage': instance.preferredLanguage,
      'goals': instance.goals,
      'careerStage': _$CareerStageEnumMap[instance.careerStage],
      'skillsToDevelop': instance.skillsToDevelop,
      'budgetPreference': _$BudgetPreferenceEnumMap[instance.budgetPreference],
      'userId': instance.userId,
    };

_$ConsulteeProfileWhereUniqueInputImpl
    _$$ConsulteeProfileWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsulteeProfileWhereUniqueInputImpl(
          id: json['id'] as String?,
          userId: json['userId'] as String?,
        );

Map<String, dynamic> _$$ConsulteeProfileWhereUniqueInputImplToJson(
        _$ConsulteeProfileWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$ConsulteeProfileWhereInputImpl _$$ConsulteeProfileWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsulteeProfileWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      aboutMe: json['aboutMe'] == null
          ? null
          : StringFilter.fromJson(json['aboutMe'] as Map<String, dynamic>),
      preferredLanguage: json['preferredLanguage'] == null
          ? null
          : StringFilter.fromJson(
              json['preferredLanguage'] as Map<String, dynamic>),
      goals: json['goals'] == null
          ? null
          : StringFilter.fromJson(json['goals'] as Map<String, dynamic>),
      careerStage: json['careerStage'] == null
          ? null
          : CareerStageFilter.fromJson(
              json['careerStage'] as Map<String, dynamic>),
      skillsToDevelop: json['skillsToDevelop'] == null
          ? null
          : StringListFilter.fromJson(
              json['skillsToDevelop'] as Map<String, dynamic>),
      budgetPreference: json['budgetPreference'] == null
          ? null
          : BudgetPreferenceFilter.fromJson(
              json['budgetPreference'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsulteeProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsulteeProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsulteeProfileWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsulteeProfileWhereInputImplToJson(
        _$ConsulteeProfileWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'aboutMe': instance.aboutMe?.toJson(),
      'preferredLanguage': instance.preferredLanguage?.toJson(),
      'goals': instance.goals?.toJson(),
      'careerStage': instance.careerStage?.toJson(),
      'skillsToDevelop': instance.skillsToDevelop?.toJson(),
      'budgetPreference': instance.budgetPreference?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsulteeProfileListRelationFilterImpl
    _$$ConsulteeProfileListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsulteeProfileListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsulteeProfileWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsulteeProfileWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsulteeProfileWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsulteeProfileListRelationFilterImplToJson(
        _$ConsulteeProfileListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsulteeProfileRelationFilterImpl
    _$$ConsulteeProfileRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsulteeProfileRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsulteeProfileWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsulteeProfileWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsulteeProfileRelationFilterImplToJson(
        _$ConsulteeProfileRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsulteeProfileOrderByInputImpl _$$ConsulteeProfileOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsulteeProfileOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      aboutMe: $enumDecodeNullable(_$SortOrderEnumMap, json['aboutMe']),
      preferredLanguage:
          $enumDecodeNullable(_$SortOrderEnumMap, json['preferredLanguage']),
      goals: $enumDecodeNullable(_$SortOrderEnumMap, json['goals']),
      skillsToDevelop:
          $enumDecodeNullable(_$SortOrderEnumMap, json['skillsToDevelop']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ConsulteeProfileOrderByInputImplToJson(
        _$ConsulteeProfileOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'aboutMe': _$SortOrderEnumMap[instance.aboutMe],
      'preferredLanguage': _$SortOrderEnumMap[instance.preferredLanguage],
      'goals': _$SortOrderEnumMap[instance.goals],
      'skillsToDevelop': _$SortOrderEnumMap[instance.skillsToDevelop],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
