// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_verification_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileVerificationDocumentImpl _$$ProfileVerificationDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileVerificationDocumentImpl(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      originalName: json['originalName'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      fileUrl: json['fileUrl'] as String,
      storagePath: json['storagePath'] as String,
      description: json['description'] as String?,
      isValid: json['isValid'] as bool?,
      staffFeedback: json['staffFeedback'] as String?,
      verificationId: json['verificationId'] as String,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$ProfileVerificationDocumentImplToJson(
        _$ProfileVerificationDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'isValid': instance.isValid,
      'staffFeedback': instance.staffFeedback,
      'verificationId': instance.verificationId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };

_$CreateProfileVerificationDocumentInputImpl
    _$$CreateProfileVerificationDocumentInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateProfileVerificationDocumentInputImpl(
          fileName: json['fileName'] as String,
          originalName: json['originalName'] as String,
          fileSize: (json['fileSize'] as num).toInt(),
          mimeType: json['mimeType'] as String,
          fileUrl: json['fileUrl'] as String,
          storagePath: json['storagePath'] as String,
          description: json['description'] as String?,
          isValid: json['isValid'] as bool?,
          staffFeedback: json['staffFeedback'] as String?,
          verificationId: json['verificationId'] as String,
        );

Map<String, dynamic> _$$CreateProfileVerificationDocumentInputImplToJson(
        _$CreateProfileVerificationDocumentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'isValid': instance.isValid,
      'staffFeedback': instance.staffFeedback,
      'verificationId': instance.verificationId,
    };

_$UpdateProfileVerificationDocumentInputImpl
    _$$UpdateProfileVerificationDocumentInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateProfileVerificationDocumentInputImpl(
          fileName: json['fileName'] as String?,
          originalName: json['originalName'] as String?,
          fileSize: (json['fileSize'] as num?)?.toInt(),
          mimeType: json['mimeType'] as String?,
          fileUrl: json['fileUrl'] as String?,
          storagePath: json['storagePath'] as String?,
          description: json['description'] as String?,
          isValid: json['isValid'] as bool?,
          staffFeedback: json['staffFeedback'] as String?,
          verificationId: json['verificationId'] as String?,
        );

Map<String, dynamic> _$$UpdateProfileVerificationDocumentInputImplToJson(
        _$UpdateProfileVerificationDocumentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'isValid': instance.isValid,
      'staffFeedback': instance.staffFeedback,
      'verificationId': instance.verificationId,
    };

_$ProfileVerificationDocumentWhereUniqueInputImpl
    _$$ProfileVerificationDocumentWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileVerificationDocumentWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ProfileVerificationDocumentWhereUniqueInputImplToJson(
        _$ProfileVerificationDocumentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ProfileVerificationDocumentWhereInputImpl
    _$$ProfileVerificationDocumentWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileVerificationDocumentWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          fileName: json['fileName'] == null
              ? null
              : StringFilter.fromJson(json['fileName'] as Map<String, dynamic>),
          originalName: json['originalName'] == null
              ? null
              : StringFilter.fromJson(
                  json['originalName'] as Map<String, dynamic>),
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
              : StringFilter.fromJson(
                  json['storagePath'] as Map<String, dynamic>),
          description: json['description'] == null
              ? null
              : StringFilter.fromJson(
                  json['description'] as Map<String, dynamic>),
          isValid: json['isValid'] == null
              ? null
              : BooleanFilter.fromJson(json['isValid'] as Map<String, dynamic>),
          staffFeedback: json['staffFeedback'] == null
              ? null
              : StringFilter.fromJson(
                  json['staffFeedback'] as Map<String, dynamic>),
          verification: json['verification'] == null
              ? null
              : ConsultantProfileVerificationRelationFilter.fromJson(
                  json['verification'] as Map<String, dynamic>),
          verificationId: json['verificationId'] == null
              ? null
              : StringFilter.fromJson(
                  json['verificationId'] as Map<String, dynamic>),
          uploadedAt: json['uploadedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['uploadedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => ProfileVerificationDocumentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => ProfileVerificationDocumentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProfileVerificationDocumentWhereInputImplToJson(
        _$ProfileVerificationDocumentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'fileName': instance.fileName?.toJson(),
      'originalName': instance.originalName?.toJson(),
      'fileSize': instance.fileSize?.toJson(),
      'mimeType': instance.mimeType?.toJson(),
      'fileUrl': instance.fileUrl?.toJson(),
      'storagePath': instance.storagePath?.toJson(),
      'description': instance.description?.toJson(),
      'isValid': instance.isValid?.toJson(),
      'staffFeedback': instance.staffFeedback?.toJson(),
      'verification': instance.verification?.toJson(),
      'verificationId': instance.verificationId?.toJson(),
      'uploadedAt': instance.uploadedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ProfileVerificationDocumentListRelationFilterImpl
    _$$ProfileVerificationDocumentListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileVerificationDocumentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProfileVerificationDocumentListRelationFilterImplToJson(
        _$ProfileVerificationDocumentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ProfileVerificationDocumentRelationFilterImpl
    _$$ProfileVerificationDocumentRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileVerificationDocumentRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ProfileVerificationDocumentWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProfileVerificationDocumentRelationFilterImplToJson(
        _$ProfileVerificationDocumentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ProfileVerificationDocumentOrderByInputImpl
    _$$ProfileVerificationDocumentOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileVerificationDocumentOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          fileName: $enumDecodeNullable(_$SortOrderEnumMap, json['fileName']),
          originalName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['originalName']),
          fileSize: $enumDecodeNullable(_$SortOrderEnumMap, json['fileSize']),
          mimeType: $enumDecodeNullable(_$SortOrderEnumMap, json['mimeType']),
          fileUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['fileUrl']),
          storagePath:
              $enumDecodeNullable(_$SortOrderEnumMap, json['storagePath']),
          description:
              $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
          isValid: $enumDecodeNullable(_$SortOrderEnumMap, json['isValid']),
          staffFeedback:
              $enumDecodeNullable(_$SortOrderEnumMap, json['staffFeedback']),
          verificationId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['verificationId']),
          uploadedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['uploadedAt']),
        );

Map<String, dynamic> _$$ProfileVerificationDocumentOrderByInputImplToJson(
        _$ProfileVerificationDocumentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'fileName': _$SortOrderEnumMap[instance.fileName],
      'originalName': _$SortOrderEnumMap[instance.originalName],
      'fileSize': _$SortOrderEnumMap[instance.fileSize],
      'mimeType': _$SortOrderEnumMap[instance.mimeType],
      'fileUrl': _$SortOrderEnumMap[instance.fileUrl],
      'storagePath': _$SortOrderEnumMap[instance.storagePath],
      'description': _$SortOrderEnumMap[instance.description],
      'isValid': _$SortOrderEnumMap[instance.isValid],
      'staffFeedback': _$SortOrderEnumMap[instance.staffFeedback],
      'verificationId': _$SortOrderEnumMap[instance.verificationId],
      'uploadedAt': _$SortOrderEnumMap[instance.uploadedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
