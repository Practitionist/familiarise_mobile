// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassPlanImpl _$$ClassPlanImplFromJson(Map<String, dynamic> json) =>
    _$ClassPlanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      classContents: (json['classContents'] as List<dynamic>)
          .map((e) => ClassContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      certificateProvided: json['certificateProvided'] as bool? ?? false,
      recordingEnabled: json['recordingEnabled'] as bool? ?? false,
      recordingStoragePolicy: $enumDecodeNullable(
              _$RecordingStoragePolicyEnumMap,
              json['recordingStoragePolicy']) ??
          RecordingStoragePolicy.streamOnly,
      durationInMonths: (json['durationInMonths'] as num?)?.toInt() ?? 1,
      meetingsPerWeek: (json['meetingsPerWeek'] as num?)?.toInt() ?? 1,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble() ?? 1.0,
      totalSessions: (json['totalSessions'] as num?)?.toInt() ?? 4,
      totalHours: (json['totalHours'] as num?)?.toDouble() ?? 4.0,
      emailSupport: $enumDecodeNullable(
              _$PlanEmailSupportEnumMap, json['emailSupport']) ??
          PlanEmailSupport.general,
      maxParticipants: (json['maxParticipants'] as num?)?.toInt() ?? 1,
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      imageUrl: json['imageUrl'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
      classes: (json['classes'] as List<dynamic>)
          .map((e) => ClassModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      materials: (json['materials'] as List<dynamic>)
          .map((e) => PlanMaterial.fromJson(e as Map<String, dynamic>))
          .toList(),
      collaborators: (json['collaborators'] as List<dynamic>)
          .map((e) => ClassCollaborator.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ClassPlanImplToJson(_$ClassPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'classContents': instance.classContents,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy]!,
      'durationInMonths': instance.durationInMonths,
      'meetingsPerWeek': instance.meetingsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport]!,
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
      'classes': instance.classes,
      'materials': instance.materials,
      'collaborators': instance.collaborators,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$RecordingStoragePolicyEnumMap = {
  RecordingStoragePolicy.streamOnly: 'STREAM_ONLY',
  RecordingStoragePolicy.supabasePermanent: 'SUPABASE_PERMANENT',
};

const _$PlanEmailSupportEnumMap = {
  PlanEmailSupport.general: 'GENERAL',
  PlanEmailSupport.priority: 'PRIORITY',
  PlanEmailSupport.dedicated: 'DEDICATED',
};

_$CreateClassPlanInputImpl _$$CreateClassPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassPlanInputImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      certificateProvided: json['certificateProvided'] as bool? ?? false,
      recordingEnabled: json['recordingEnabled'] as bool? ?? false,
      recordingStoragePolicy: $enumDecodeNullable(
              _$RecordingStoragePolicyEnumMap,
              json['recordingStoragePolicy']) ??
          RecordingStoragePolicy.streamOnly,
      durationInMonths: (json['durationInMonths'] as num?)?.toInt() ?? 1,
      meetingsPerWeek: (json['meetingsPerWeek'] as num?)?.toInt() ?? 1,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble() ?? 1.0,
      totalSessions: (json['totalSessions'] as num?)?.toInt() ?? 4,
      totalHours: (json['totalHours'] as num?)?.toDouble() ?? 4.0,
      emailSupport: $enumDecodeNullable(
              _$PlanEmailSupportEnumMap, json['emailSupport']) ??
          PlanEmailSupport.general,
      maxParticipants: (json['maxParticipants'] as num?)?.toInt() ?? 1,
      language: json['language'] as String? ?? "English",
      level: json['level'] as String? ?? "Beginner",
      prerequisites: json['prerequisites'] as String? ?? "None",
      materialProvided: json['materialProvided'] as String? ?? "None",
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      imageUrl: json['imageUrl'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
    );

Map<String, dynamic> _$$CreateClassPlanInputImplToJson(
        _$CreateClassPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy]!,
      'durationInMonths': instance.durationInMonths,
      'meetingsPerWeek': instance.meetingsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport]!,
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateClassPlanInputImpl _$$UpdateClassPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassPlanInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      priceCurrency: json['priceCurrency'] as String?,
      certificateProvided: json['certificateProvided'] as bool?,
      recordingEnabled: json['recordingEnabled'] as bool?,
      recordingStoragePolicy: $enumDecodeNullable(
          _$RecordingStoragePolicyEnumMap, json['recordingStoragePolicy']),
      durationInMonths: (json['durationInMonths'] as num?)?.toInt(),
      meetingsPerWeek: (json['meetingsPerWeek'] as num?)?.toInt(),
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble(),
      totalSessions: (json['totalSessions'] as num?)?.toInt(),
      totalHours: (json['totalHours'] as num?)?.toDouble(),
      emailSupport:
          $enumDecodeNullable(_$PlanEmailSupportEnumMap, json['emailSupport']),
      maxParticipants: (json['maxParticipants'] as num?)?.toInt(),
      language: json['language'] as String?,
      level: json['level'] as String?,
      prerequisites: json['prerequisites'] as String?,
      materialProvided: json['materialProvided'] as String?,
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateClassPlanInputImplToJson(
        _$UpdateClassPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy],
      'durationInMonths': instance.durationInMonths,
      'meetingsPerWeek': instance.meetingsPerWeek,
      'sessionDurationInHours': instance.sessionDurationInHours,
      'totalSessions': instance.totalSessions,
      'totalHours': instance.totalHours,
      'emailSupport': _$PlanEmailSupportEnumMap[instance.emailSupport],
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
    };

_$ClassPlanWhereUniqueInputImpl _$$ClassPlanWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassPlanWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ClassPlanWhereUniqueInputImplToJson(
        _$ClassPlanWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ClassPlanWhereInputImpl _$$ClassPlanWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassPlanWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      topics: json['topics'] == null
          ? null
          : TopicListRelationFilter.fromJson(
              json['topics'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      priceCurrency: json['priceCurrency'] == null
          ? null
          : StringFilter.fromJson(
              json['priceCurrency'] as Map<String, dynamic>),
      certificateProvided: json['certificateProvided'] == null
          ? null
          : BooleanFilter.fromJson(
              json['certificateProvided'] as Map<String, dynamic>),
      recordingEnabled: json['recordingEnabled'] == null
          ? null
          : BooleanFilter.fromJson(
              json['recordingEnabled'] as Map<String, dynamic>),
      recordingStoragePolicy: json['recordingStoragePolicy'] == null
          ? null
          : RecordingStoragePolicyFilter.fromJson(
              json['recordingStoragePolicy'] as Map<String, dynamic>),
      durationInMonths: json['durationInMonths'] == null
          ? null
          : IntFilter.fromJson(
              json['durationInMonths'] as Map<String, dynamic>),
      meetingsPerWeek: json['meetingsPerWeek'] == null
          ? null
          : IntFilter.fromJson(json['meetingsPerWeek'] as Map<String, dynamic>),
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
      maxParticipants: json['maxParticipants'] == null
          ? null
          : IntFilter.fromJson(json['maxParticipants'] as Map<String, dynamic>),
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
      imageUrl: json['imageUrl'] == null
          ? null
          : StringFilter.fromJson(json['imageUrl'] as Map<String, dynamic>),
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
          ?.map((e) => ClassPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ClassPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassPlanWhereInputImplToJson(
        _$ClassPlanWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'topics': instance.topics?.toJson(),
      'price': instance.price?.toJson(),
      'priceCurrency': instance.priceCurrency?.toJson(),
      'certificateProvided': instance.certificateProvided?.toJson(),
      'recordingEnabled': instance.recordingEnabled?.toJson(),
      'recordingStoragePolicy': instance.recordingStoragePolicy?.toJson(),
      'durationInMonths': instance.durationInMonths?.toJson(),
      'meetingsPerWeek': instance.meetingsPerWeek?.toJson(),
      'sessionDurationInHours': instance.sessionDurationInHours?.toJson(),
      'totalSessions': instance.totalSessions?.toJson(),
      'totalHours': instance.totalHours?.toJson(),
      'emailSupport': instance.emailSupport?.toJson(),
      'maxParticipants': instance.maxParticipants?.toJson(),
      'language': instance.language?.toJson(),
      'level': instance.level?.toJson(),
      'prerequisites': instance.prerequisites?.toJson(),
      'materialProvided': instance.materialProvided?.toJson(),
      'learningOutcomes': instance.learningOutcomes?.toJson(),
      'imageUrl': instance.imageUrl?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ClassPlanListRelationFilterImpl _$$ClassPlanListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassPlanListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassPlanListRelationFilterImplToJson(
        _$ClassPlanListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ClassPlanRelationFilterImpl _$$ClassPlanRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassPlanRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ClassPlanWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassPlanRelationFilterImplToJson(
        _$ClassPlanRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ClassPlanOrderByInputImpl _$$ClassPlanOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassPlanOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      priceCurrency:
          $enumDecodeNullable(_$SortOrderEnumMap, json['priceCurrency']),
      certificateProvided:
          $enumDecodeNullable(_$SortOrderEnumMap, json['certificateProvided']),
      recordingEnabled:
          $enumDecodeNullable(_$SortOrderEnumMap, json['recordingEnabled']),
      durationInMonths:
          $enumDecodeNullable(_$SortOrderEnumMap, json['durationInMonths']),
      meetingsPerWeek:
          $enumDecodeNullable(_$SortOrderEnumMap, json['meetingsPerWeek']),
      sessionDurationInHours: $enumDecodeNullable(
          _$SortOrderEnumMap, json['sessionDurationInHours']),
      totalSessions:
          $enumDecodeNullable(_$SortOrderEnumMap, json['totalSessions']),
      totalHours: $enumDecodeNullable(_$SortOrderEnumMap, json['totalHours']),
      maxParticipants:
          $enumDecodeNullable(_$SortOrderEnumMap, json['maxParticipants']),
      language: $enumDecodeNullable(_$SortOrderEnumMap, json['language']),
      level: $enumDecodeNullable(_$SortOrderEnumMap, json['level']),
      prerequisites:
          $enumDecodeNullable(_$SortOrderEnumMap, json['prerequisites']),
      materialProvided:
          $enumDecodeNullable(_$SortOrderEnumMap, json['materialProvided']),
      learningOutcomes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['learningOutcomes']),
      imageUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['imageUrl']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ClassPlanOrderByInputImplToJson(
        _$ClassPlanOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'price': _$SortOrderEnumMap[instance.price],
      'priceCurrency': _$SortOrderEnumMap[instance.priceCurrency],
      'certificateProvided': _$SortOrderEnumMap[instance.certificateProvided],
      'recordingEnabled': _$SortOrderEnumMap[instance.recordingEnabled],
      'durationInMonths': _$SortOrderEnumMap[instance.durationInMonths],
      'meetingsPerWeek': _$SortOrderEnumMap[instance.meetingsPerWeek],
      'sessionDurationInHours':
          _$SortOrderEnumMap[instance.sessionDurationInHours],
      'totalSessions': _$SortOrderEnumMap[instance.totalSessions],
      'totalHours': _$SortOrderEnumMap[instance.totalHours],
      'maxParticipants': _$SortOrderEnumMap[instance.maxParticipants],
      'language': _$SortOrderEnumMap[instance.language],
      'level': _$SortOrderEnumMap[instance.level],
      'prerequisites': _$SortOrderEnumMap[instance.prerequisites],
      'materialProvided': _$SortOrderEnumMap[instance.materialProvided],
      'learningOutcomes': _$SortOrderEnumMap[instance.learningOutcomes],
      'imageUrl': _$SortOrderEnumMap[instance.imageUrl],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
