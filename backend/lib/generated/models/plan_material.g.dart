// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanMaterialImpl _$$PlanMaterialImplFromJson(Map<String, dynamic> json) =>
    _$PlanMaterialImpl(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      originalName: json['originalName'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      fileUrl: json['fileUrl'] as String,
      storagePath: json['storagePath'] as String,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt() ?? 0,
      consultationPlanId: json['consultationPlanId'] as String?,
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
      webinarPlanId: json['webinarPlanId'] as String?,
      classPlanId: json['classPlanId'] as String?,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PlanMaterialImplToJson(_$PlanMaterialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'order': instance.order,
      'consultationPlanId': instance.consultationPlanId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'webinarPlanId': instance.webinarPlanId,
      'classPlanId': instance.classPlanId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreatePlanMaterialInputImpl _$$CreatePlanMaterialInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePlanMaterialInputImpl(
      fileName: json['fileName'] as String,
      originalName: json['originalName'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      fileUrl: json['fileUrl'] as String,
      storagePath: json['storagePath'] as String,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt() ?? 0,
      consultationPlanId: json['consultationPlanId'] as String?,
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
      webinarPlanId: json['webinarPlanId'] as String?,
      classPlanId: json['classPlanId'] as String?,
    );

Map<String, dynamic> _$$CreatePlanMaterialInputImplToJson(
        _$CreatePlanMaterialInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'order': instance.order,
      'consultationPlanId': instance.consultationPlanId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'webinarPlanId': instance.webinarPlanId,
      'classPlanId': instance.classPlanId,
    };

_$UpdatePlanMaterialInputImpl _$$UpdatePlanMaterialInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePlanMaterialInputImpl(
      fileName: json['fileName'] as String?,
      originalName: json['originalName'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt(),
      mimeType: json['mimeType'] as String?,
      fileUrl: json['fileUrl'] as String?,
      storagePath: json['storagePath'] as String?,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt(),
      consultationPlanId: json['consultationPlanId'] as String?,
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
      webinarPlanId: json['webinarPlanId'] as String?,
      classPlanId: json['classPlanId'] as String?,
    );

Map<String, dynamic> _$$UpdatePlanMaterialInputImplToJson(
        _$UpdatePlanMaterialInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'order': instance.order,
      'consultationPlanId': instance.consultationPlanId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'webinarPlanId': instance.webinarPlanId,
      'classPlanId': instance.classPlanId,
    };

_$PlanMaterialWhereUniqueInputImpl _$$PlanMaterialWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanMaterialWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PlanMaterialWhereUniqueInputImplToJson(
        _$PlanMaterialWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$PlanMaterialWhereInputImpl _$$PlanMaterialWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanMaterialWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      fileName: json['fileName'] == null
          ? null
          : StringFilter.fromJson(json['fileName'] as Map<String, dynamic>),
      originalName: json['originalName'] == null
          ? null
          : StringFilter.fromJson(json['originalName'] as Map<String, dynamic>),
      fileSize: json['fileSize'] == null
          ? null
          : IntFilter.fromJson(json['fileSize'] as Map<String, dynamic>),
      mimeType: json['mimeType'] == null
          ? null
          : StringFilter.fromJson(json['mimeType'] as Map<String, dynamic>),
      fileUrl: json['fileUrl'] == null
          ? null
          : StringFilter.fromJson(json['fileUrl'] as Map<String, dynamic>),
      storagePath: json['storagePath'] == null
          ? null
          : StringFilter.fromJson(json['storagePath'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : IntFilter.fromJson(json['order'] as Map<String, dynamic>),
      consultationPlanId: json['consultationPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultationPlanId'] as Map<String, dynamic>),
      subscriptionPlanId: json['subscriptionPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionPlanId'] as Map<String, dynamic>),
      webinarPlanId: json['webinarPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['webinarPlanId'] as Map<String, dynamic>),
      classPlanId: json['classPlanId'] == null
          ? null
          : StringFilter.fromJson(json['classPlanId'] as Map<String, dynamic>),
      consultationPlan: json['consultationPlan'] == null
          ? null
          : ConsultationPlanRelationFilter.fromJson(
              json['consultationPlan'] as Map<String, dynamic>),
      subscriptionPlan: json['subscriptionPlan'] == null
          ? null
          : SubscriptionPlanRelationFilter.fromJson(
              json['subscriptionPlan'] as Map<String, dynamic>),
      webinarPlan: json['webinarPlan'] == null
          ? null
          : WebinarPlanRelationFilter.fromJson(
              json['webinarPlan'] as Map<String, dynamic>),
      classPlan: json['classPlan'] == null
          ? null
          : ClassPlanRelationFilter.fromJson(
              json['classPlan'] as Map<String, dynamic>),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['uploadedAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => PlanMaterialWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => PlanMaterialWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : PlanMaterialWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlanMaterialWhereInputImplToJson(
        _$PlanMaterialWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'fileName': instance.fileName?.toJson(),
      'originalName': instance.originalName?.toJson(),
      'fileSize': instance.fileSize?.toJson(),
      'mimeType': instance.mimeType?.toJson(),
      'fileUrl': instance.fileUrl?.toJson(),
      'storagePath': instance.storagePath?.toJson(),
      'description': instance.description?.toJson(),
      'order': instance.order?.toJson(),
      'consultationPlanId': instance.consultationPlanId?.toJson(),
      'subscriptionPlanId': instance.subscriptionPlanId?.toJson(),
      'webinarPlanId': instance.webinarPlanId?.toJson(),
      'classPlanId': instance.classPlanId?.toJson(),
      'consultationPlan': instance.consultationPlan?.toJson(),
      'subscriptionPlan': instance.subscriptionPlan?.toJson(),
      'webinarPlan': instance.webinarPlan?.toJson(),
      'classPlan': instance.classPlan?.toJson(),
      'uploadedAt': instance.uploadedAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$PlanMaterialListRelationFilterImpl
    _$$PlanMaterialListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$PlanMaterialListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : PlanMaterialWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : PlanMaterialWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : PlanMaterialWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PlanMaterialListRelationFilterImplToJson(
        _$PlanMaterialListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$PlanMaterialRelationFilterImpl _$$PlanMaterialRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanMaterialRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : PlanMaterialWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : PlanMaterialWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlanMaterialRelationFilterImplToJson(
        _$PlanMaterialRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$PlanMaterialOrderByInputImpl _$$PlanMaterialOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanMaterialOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      fileName: $enumDecodeNullable(_$SortOrderEnumMap, json['fileName']),
      originalName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['originalName']),
      fileSize: $enumDecodeNullable(_$SortOrderEnumMap, json['fileSize']),
      mimeType: $enumDecodeNullable(_$SortOrderEnumMap, json['mimeType']),
      fileUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['fileUrl']),
      storagePath: $enumDecodeNullable(_$SortOrderEnumMap, json['storagePath']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
      consultationPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultationPlanId']),
      subscriptionPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionPlanId']),
      webinarPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['webinarPlanId']),
      classPlanId: $enumDecodeNullable(_$SortOrderEnumMap, json['classPlanId']),
      uploadedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['uploadedAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$PlanMaterialOrderByInputImplToJson(
        _$PlanMaterialOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'fileName': _$SortOrderEnumMap[instance.fileName],
      'originalName': _$SortOrderEnumMap[instance.originalName],
      'fileSize': _$SortOrderEnumMap[instance.fileSize],
      'mimeType': _$SortOrderEnumMap[instance.mimeType],
      'fileUrl': _$SortOrderEnumMap[instance.fileUrl],
      'storagePath': _$SortOrderEnumMap[instance.storagePath],
      'description': _$SortOrderEnumMap[instance.description],
      'order': _$SortOrderEnumMap[instance.order],
      'consultationPlanId': _$SortOrderEnumMap[instance.consultationPlanId],
      'subscriptionPlanId': _$SortOrderEnumMap[instance.subscriptionPlanId],
      'webinarPlanId': _$SortOrderEnumMap[instance.webinarPlanId],
      'classPlanId': _$SortOrderEnumMap[instance.classPlanId],
      'uploadedAt': _$SortOrderEnumMap[instance.uploadedAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
