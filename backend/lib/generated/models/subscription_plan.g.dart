// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionPlanImpl _$$SubscriptionPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionPlanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      durationInMonths: (json['durationInMonths'] as num?)?.toInt() ?? 1,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      callsPerWeek: (json['callsPerWeek'] as num?)?.toInt() ?? 1,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble() ?? 1.0,
      totalSessions: (json['totalSessions'] as num?)?.toInt() ?? 4,
      totalHours: (json['totalHours'] as num?)?.toDouble() ?? 4.0,
      emailSupport: $enumDecodeNullable(
              _$PlanEmailSupportEnumMap, json['emailSupport']) ??
          PlanEmailSupport.general,
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      freeTrialEnabled: json['freeTrialEnabled'] as bool? ?? false,
      freeTrialDurationMinutes:
          (json['freeTrialDurationMinutes'] as num?)?.toInt() ?? 30,
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SubscriptionPlanImplToJson(
        _$SubscriptionPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationInMonths': instance.durationInMonths,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'callsPerWeek': instance.callsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport]!,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'freeTrialEnabled': instance.freeTrialEnabled,
      'freeTrialDurationMinutes': instance.freeTrialDurationMinutes,
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PlanEmailSupportEnumMap = {
  PlanEmailSupport.general: 'GENERAL',
  PlanEmailSupport.priority: 'PRIORITY',
  PlanEmailSupport.dedicated: 'DEDICATED',
};

_$CreateSubscriptionPlanInputImpl _$$CreateSubscriptionPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSubscriptionPlanInputImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      durationInMonths: (json['durationInMonths'] as num?)?.toInt() ?? 1,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      callsPerWeek: (json['callsPerWeek'] as num?)?.toInt() ?? 1,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble() ?? 1.0,
      totalSessions: (json['totalSessions'] as num?)?.toInt() ?? 4,
      totalHours: (json['totalHours'] as num?)?.toDouble() ?? 4.0,
      emailSupport: $enumDecodeNullable(
              _$PlanEmailSupportEnumMap, json['emailSupport']) ??
          PlanEmailSupport.general,
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      freeTrialEnabled: json['freeTrialEnabled'] as bool? ?? false,
      freeTrialDurationMinutes:
          (json['freeTrialDurationMinutes'] as num?)?.toInt() ?? 30,
      consultantProfileId: json['consultantProfileId'] as String,
    );

Map<String, dynamic> _$$CreateSubscriptionPlanInputImplToJson(
        _$CreateSubscriptionPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'durationInMonths': instance.durationInMonths,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'callsPerWeek': instance.callsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport]!,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'freeTrialEnabled': instance.freeTrialEnabled,
      'freeTrialDurationMinutes': instance.freeTrialDurationMinutes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateSubscriptionPlanInputImpl _$$UpdateSubscriptionPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSubscriptionPlanInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      durationInMonths: (json['durationInMonths'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      priceCurrency: json['priceCurrency'] as String?,
      callsPerWeek: (json['callsPerWeek'] as num?)?.toInt(),
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble(),
      totalSessions: (json['totalSessions'] as num?)?.toInt(),
      totalHours: (json['totalHours'] as num?)?.toDouble(),
      emailSupport:
          $enumDecodeNullable(_$PlanEmailSupportEnumMap, json['emailSupport']),
      language: json['language'] as String?,
      level: json['level'] as String?,
      prerequisites: json['prerequisites'] as String?,
      materialProvided: json['materialProvided'] as String?,
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      freeTrialEnabled: json['freeTrialEnabled'] as bool?,
      freeTrialDurationMinutes:
          (json['freeTrialDurationMinutes'] as num?)?.toInt(),
      consultantProfileId: json['consultantProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateSubscriptionPlanInputImplToJson(
        _$UpdateSubscriptionPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'durationInMonths': instance.durationInMonths,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'callsPerWeek': instance.callsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport],
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'freeTrialEnabled': instance.freeTrialEnabled,
      'freeTrialDurationMinutes': instance.freeTrialDurationMinutes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$SubscriptionPlanWhereUniqueInputImpl
    _$$SubscriptionPlanWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionPlanWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SubscriptionPlanWhereUniqueInputImplToJson(
        _$SubscriptionPlanWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SubscriptionPlanWhereInputImpl _$$SubscriptionPlanWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionPlanWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      durationInMonths: json['durationInMonths'] == null
          ? null
          : IntFilter.fromJson(
              json['durationInMonths'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      priceCurrency: json['priceCurrency'] == null
          ? null
          : StringFilter.fromJson(
              json['priceCurrency'] as Map<String, dynamic>),
      callsPerWeek: json['callsPerWeek'] == null
          ? null
          : IntFilter.fromJson(json['callsPerWeek'] as Map<String, dynamic>),
      sessionDurationInHours: json['sessionDurationInHours'] == null
          ? null
          : FloatFilter.fromJson(
              json['sessionDurationInHours'] as Map<String, dynamic>),
      totalSessions: json['totalSessions'] == null
          ? null
          : IntFilter.fromJson(json['totalSessions'] as Map<String, dynamic>),
      totalHours: json['totalHours'] == null
          ? null
          : FloatFilter.fromJson(json['totalHours'] as Map<String, dynamic>),
      emailSupport: json['emailSupport'] == null
          ? null
          : PlanEmailSupportFilter.fromJson(
              json['emailSupport'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : StringFilter.fromJson(json['language'] as Map<String, dynamic>),
      level: json['level'] == null
          ? null
          : StringFilter.fromJson(json['level'] as Map<String, dynamic>),
      prerequisites: json['prerequisites'] == null
          ? null
          : StringFilter.fromJson(
              json['prerequisites'] as Map<String, dynamic>),
      materialProvided: json['materialProvided'] == null
          ? null
          : StringFilter.fromJson(
              json['materialProvided'] as Map<String, dynamic>),
      learningOutcomes: json['learningOutcomes'] == null
          ? null
          : StringListFilter.fromJson(
              json['learningOutcomes'] as Map<String, dynamic>),
      topics: json['topics'] == null
          ? null
          : TopicListRelationFilter.fromJson(
              json['topics'] as Map<String, dynamic>),
      freeTrialEnabled: json['freeTrialEnabled'] == null
          ? null
          : BooleanFilter.fromJson(
              json['freeTrialEnabled'] as Map<String, dynamic>),
      freeTrialDurationMinutes: json['freeTrialDurationMinutes'] == null
          ? null
          : IntFilter.fromJson(
              json['freeTrialDurationMinutes'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SubscriptionPlanWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionPlanWhereInputImplToJson(
        _$SubscriptionPlanWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'durationInMonths': instance.durationInMonths?.toJson(),
      'price': instance.price?.toJson(),
      'priceCurrency': instance.priceCurrency?.toJson(),
      'callsPerWeek': instance.callsPerWeek?.toJson(),
      'sessionDurationInHours': instance.sessionDurationInHours?.toJson(),
      'totalSessions': instance.totalSessions?.toJson(),
      'totalHours': instance.totalHours?.toJson(),
      'emailSupport': instance.emailSupport?.toJson(),
      'language': instance.language?.toJson(),
      'level': instance.level?.toJson(),
      'prerequisites': instance.prerequisites?.toJson(),
      'materialProvided': instance.materialProvided?.toJson(),
      'learningOutcomes': instance.learningOutcomes?.toJson(),
      'topics': instance.topics?.toJson(),
      'freeTrialEnabled': instance.freeTrialEnabled?.toJson(),
      'freeTrialDurationMinutes': instance.freeTrialDurationMinutes?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SubscriptionPlanListRelationFilterImpl
    _$$SubscriptionPlanListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionPlanListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SubscriptionPlanWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SubscriptionPlanWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SubscriptionPlanWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionPlanListRelationFilterImplToJson(
        _$SubscriptionPlanListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SubscriptionPlanRelationFilterImpl
    _$$SubscriptionPlanRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionPlanRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SubscriptionPlanWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SubscriptionPlanWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionPlanRelationFilterImplToJson(
        _$SubscriptionPlanRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SubscriptionPlanOrderByInputImpl _$$SubscriptionPlanOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionPlanOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      durationInMonths:
          $enumDecodeNullable(_$SortOrderEnumMap, json['durationInMonths']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      priceCurrency:
          $enumDecodeNullable(_$SortOrderEnumMap, json['priceCurrency']),
      callsPerWeek:
          $enumDecodeNullable(_$SortOrderEnumMap, json['callsPerWeek']),
      sessionDurationInHours: $enumDecodeNullable(
          _$SortOrderEnumMap, json['sessionDurationInHours']),
      totalSessions:
          $enumDecodeNullable(_$SortOrderEnumMap, json['totalSessions']),
      totalHours: $enumDecodeNullable(_$SortOrderEnumMap, json['totalHours']),
      language: $enumDecodeNullable(_$SortOrderEnumMap, json['language']),
      level: $enumDecodeNullable(_$SortOrderEnumMap, json['level']),
      prerequisites:
          $enumDecodeNullable(_$SortOrderEnumMap, json['prerequisites']),
      materialProvided:
          $enumDecodeNullable(_$SortOrderEnumMap, json['materialProvided']),
      learningOutcomes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['learningOutcomes']),
      freeTrialEnabled:
          $enumDecodeNullable(_$SortOrderEnumMap, json['freeTrialEnabled']),
      freeTrialDurationMinutes: $enumDecodeNullable(
          _$SortOrderEnumMap, json['freeTrialDurationMinutes']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SubscriptionPlanOrderByInputImplToJson(
        _$SubscriptionPlanOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'durationInMonths': _$SortOrderEnumMap[instance.durationInMonths],
      'price': _$SortOrderEnumMap[instance.price],
      'priceCurrency': _$SortOrderEnumMap[instance.priceCurrency],
      'callsPerWeek': _$SortOrderEnumMap[instance.callsPerWeek],
      'sessionDurationInHours':
          _$SortOrderEnumMap[instance.sessionDurationInHours],
      'totalSessions': _$SortOrderEnumMap[instance.totalSessions],
      'totalHours': _$SortOrderEnumMap[instance.totalHours],
      'language': _$SortOrderEnumMap[instance.language],
      'level': _$SortOrderEnumMap[instance.level],
      'prerequisites': _$SortOrderEnumMap[instance.prerequisites],
      'materialProvided': _$SortOrderEnumMap[instance.materialProvided],
      'learningOutcomes': _$SortOrderEnumMap[instance.learningOutcomes],
      'freeTrialEnabled': _$SortOrderEnumMap[instance.freeTrialEnabled],
      'freeTrialDurationMinutes':
          _$SortOrderEnumMap[instance.freeTrialDurationMinutes],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
