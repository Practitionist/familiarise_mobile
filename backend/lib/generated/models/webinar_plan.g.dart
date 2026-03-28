// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarPlanImpl _$$WebinarPlanImplFromJson(Map<String, dynamic> json) =>
    _$WebinarPlanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      certificateProvided: json['certificateProvided'] as bool? ?? false,
      recordingEnabled: json['recordingEnabled'] as bool? ?? false,
      recordingStoragePolicy: $enumDecodeNullable(
              _$RecordingStoragePolicyEnumMap,
              json['recordingStoragePolicy']) ??
          RecordingStoragePolicy.streamOnly,
      durationInHours: (json['durationInHours'] as num?)?.toDouble() ?? 1,
      maxParticipants: (json['maxParticipants'] as num?)?.toInt() ?? 100,
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
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WebinarPlanImplToJson(_$WebinarPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy]!,
      'durationInHours': instance.durationInHours,
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$RecordingStoragePolicyEnumMap = {
  RecordingStoragePolicy.streamOnly: 'STREAM_ONLY',
  RecordingStoragePolicy.supabasePermanent: 'SUPABASE_PERMANENT',
};

_$CreateWebinarPlanInputImpl _$$CreateWebinarPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWebinarPlanInputImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toInt(),
      priceCurrency: json['priceCurrency'] as String? ?? "INR",
      certificateProvided: json['certificateProvided'] as bool? ?? false,
      recordingEnabled: json['recordingEnabled'] as bool? ?? false,
      recordingStoragePolicy: $enumDecodeNullable(
              _$RecordingStoragePolicyEnumMap,
              json['recordingStoragePolicy']) ??
          RecordingStoragePolicy.streamOnly,
      durationInHours: (json['durationInHours'] as num?)?.toDouble() ?? 1,
      maxParticipants: (json['maxParticipants'] as num?)?.toInt() ?? 100,
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

Map<String, dynamic> _$$CreateWebinarPlanInputImplToJson(
        _$CreateWebinarPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy]!,
      'durationInHours': instance.durationInHours,
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateWebinarPlanInputImpl _$$UpdateWebinarPlanInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWebinarPlanInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      priceCurrency: json['priceCurrency'] as String?,
      certificateProvided: json['certificateProvided'] as bool?,
      recordingEnabled: json['recordingEnabled'] as bool?,
      recordingStoragePolicy: $enumDecodeNullable(
          _$RecordingStoragePolicyEnumMap, json['recordingStoragePolicy']),
      durationInHours: (json['durationInHours'] as num?)?.toDouble(),
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

Map<String, dynamic> _$$UpdateWebinarPlanInputImplToJson(
        _$UpdateWebinarPlanInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'priceCurrency': instance.priceCurrency,
      'certificateProvided': instance.certificateProvided,
      'recordingEnabled': instance.recordingEnabled,
      'recordingStoragePolicy':
          _$RecordingStoragePolicyEnumMap[instance.recordingStoragePolicy],
      'durationInHours': instance.durationInHours,
      'maxParticipants': instance.maxParticipants,
      'language': instance.language,
      'level': instance.level,
      'prerequisites': instance.prerequisites,
      'materialProvided': instance.materialProvided,
      'learningOutcomes': instance.learningOutcomes,
      'imageUrl': instance.imageUrl,
      'consultantProfileId': instance.consultantProfileId,
    };

_$WebinarPlanWhereUniqueInputImpl _$$WebinarPlanWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarPlanWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$WebinarPlanWhereUniqueInputImplToJson(
        _$WebinarPlanWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$WebinarPlanWhereInputImpl _$$WebinarPlanWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarPlanWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      topics: json['topics'] == null
          ? null
          : TopicListRelationFilter.fromJson(
              json['topics'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
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
      durationInHours: json['durationInHours'] == null
          ? null
          : FloatFilter.fromJson(
              json['durationInHours'] as Map<String, dynamic>),
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
          ?.map(
              (e) => WebinarPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => WebinarPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : WebinarPlanWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarPlanWhereInputImplToJson(
        _$WebinarPlanWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'topics': instance.topics?.toJson(),
      'description': instance.description?.toJson(),
      'price': instance.price?.toJson(),
      'priceCurrency': instance.priceCurrency?.toJson(),
      'certificateProvided': instance.certificateProvided?.toJson(),
      'recordingEnabled': instance.recordingEnabled?.toJson(),
      'recordingStoragePolicy': instance.recordingStoragePolicy?.toJson(),
      'durationInHours': instance.durationInHours?.toJson(),
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

_$WebinarPlanListRelationFilterImpl
    _$$WebinarPlanListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$WebinarPlanListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : WebinarPlanWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : WebinarPlanWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : WebinarPlanWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WebinarPlanListRelationFilterImplToJson(
        _$WebinarPlanListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WebinarPlanRelationFilterImpl _$$WebinarPlanRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarPlanRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : WebinarPlanWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : WebinarPlanWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarPlanRelationFilterImplToJson(
        _$WebinarPlanRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WebinarPlanOrderByInputImpl _$$WebinarPlanOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarPlanOrderByInputImpl(
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
      durationInHours:
          $enumDecodeNullable(_$SortOrderEnumMap, json['durationInHours']),
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

Map<String, dynamic> _$$WebinarPlanOrderByInputImplToJson(
        _$WebinarPlanOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'price': _$SortOrderEnumMap[instance.price],
      'priceCurrency': _$SortOrderEnumMap[instance.priceCurrency],
      'certificateProvided': _$SortOrderEnumMap[instance.certificateProvided],
      'recordingEnabled': _$SortOrderEnumMap[instance.recordingEnabled],
      'durationInHours': _$SortOrderEnumMap[instance.durationInHours],
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
