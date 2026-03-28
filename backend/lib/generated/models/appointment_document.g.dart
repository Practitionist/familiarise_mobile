// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentDocumentImpl _$$AppointmentDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentDocumentImpl(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      originalName: json['originalName'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      fileUrl: json['fileUrl'] as String,
      storagePath: json['storagePath'] as String,
      description: json['description'] as String?,
      reviewStatus: $enumDecodeNullable(
              _$DocumentReviewStatusEnumMap, json['reviewStatus']) ??
          DocumentReviewStatus.pending,
      reviewNotes: json['reviewNotes'] as String?,
      reviewedAt: json['reviewedAt'] == null
          ? null
          : DateTime.parse(json['reviewedAt'] as String),
      reviewedBy: json['reviewedBy'] as String?,
      uploadedByRole: $enumDecodeNullable(
              _$DocumentUploadRoleEnumMap, json['uploadedByRole']) ??
          DocumentUploadRole.consultee,
      responseToDocumentId: json['responseToDocumentId'] as String?,
      appointmentId: json['appointmentId'] as String,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppointmentDocumentImplToJson(
        _$AppointmentDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'reviewStatus': _$DocumentReviewStatusEnumMap[instance.reviewStatus]!,
      'reviewNotes': instance.reviewNotes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedBy': instance.reviewedBy,
      'uploadedByRole': _$DocumentUploadRoleEnumMap[instance.uploadedByRole]!,
      'responseToDocumentId': instance.responseToDocumentId,
      'appointmentId': instance.appointmentId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DocumentReviewStatusEnumMap = {
  DocumentReviewStatus.pending: 'PENDING',
  DocumentReviewStatus.inReview: 'IN_REVIEW',
  DocumentReviewStatus.approved: 'APPROVED',
  DocumentReviewStatus.rejected: 'REJECTED',
  DocumentReviewStatus.needsRevision: 'NEEDS_REVISION',
};

const _$DocumentUploadRoleEnumMap = {
  DocumentUploadRole.consultee: 'CONSULTEE',
  DocumentUploadRole.consultant: 'CONSULTANT',
};

_$CreateAppointmentDocumentInputImpl
    _$$CreateAppointmentDocumentInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateAppointmentDocumentInputImpl(
          fileName: json['fileName'] as String,
          originalName: json['originalName'] as String,
          fileSize: (json['fileSize'] as num).toInt(),
          mimeType: json['mimeType'] as String,
          fileUrl: json['fileUrl'] as String,
          storagePath: json['storagePath'] as String,
          description: json['description'] as String?,
          reviewStatus: $enumDecodeNullable(
                  _$DocumentReviewStatusEnumMap, json['reviewStatus']) ??
              DocumentReviewStatus.pending,
          reviewNotes: json['reviewNotes'] as String?,
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
          reviewedBy: json['reviewedBy'] as String?,
          uploadedByRole: $enumDecodeNullable(
                  _$DocumentUploadRoleEnumMap, json['uploadedByRole']) ??
              DocumentUploadRole.consultee,
          responseToDocumentId: json['responseToDocumentId'] as String?,
          appointmentId: json['appointmentId'] as String,
        );

Map<String, dynamic> _$$CreateAppointmentDocumentInputImplToJson(
        _$CreateAppointmentDocumentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'reviewStatus': _$DocumentReviewStatusEnumMap[instance.reviewStatus]!,
      'reviewNotes': instance.reviewNotes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedBy': instance.reviewedBy,
      'uploadedByRole': _$DocumentUploadRoleEnumMap[instance.uploadedByRole]!,
      'responseToDocumentId': instance.responseToDocumentId,
      'appointmentId': instance.appointmentId,
    };

_$UpdateAppointmentDocumentInputImpl
    _$$UpdateAppointmentDocumentInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateAppointmentDocumentInputImpl(
          fileName: json['fileName'] as String?,
          originalName: json['originalName'] as String?,
          fileSize: (json['fileSize'] as num?)?.toInt(),
          mimeType: json['mimeType'] as String?,
          fileUrl: json['fileUrl'] as String?,
          storagePath: json['storagePath'] as String?,
          description: json['description'] as String?,
          reviewStatus: $enumDecodeNullable(
              _$DocumentReviewStatusEnumMap, json['reviewStatus']),
          reviewNotes: json['reviewNotes'] as String?,
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
          reviewedBy: json['reviewedBy'] as String?,
          uploadedByRole: $enumDecodeNullable(
              _$DocumentUploadRoleEnumMap, json['uploadedByRole']),
          responseToDocumentId: json['responseToDocumentId'] as String?,
          appointmentId: json['appointmentId'] as String?,
        );

Map<String, dynamic> _$$UpdateAppointmentDocumentInputImplToJson(
        _$UpdateAppointmentDocumentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'description': instance.description,
      'reviewStatus': _$DocumentReviewStatusEnumMap[instance.reviewStatus],
      'reviewNotes': instance.reviewNotes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedBy': instance.reviewedBy,
      'uploadedByRole': _$DocumentUploadRoleEnumMap[instance.uploadedByRole],
      'responseToDocumentId': instance.responseToDocumentId,
      'appointmentId': instance.appointmentId,
    };

_$AppointmentDocumentWhereUniqueInputImpl
    _$$AppointmentDocumentWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$AppointmentDocumentWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$AppointmentDocumentWhereUniqueInputImplToJson(
        _$AppointmentDocumentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$AppointmentDocumentWhereInputImpl
    _$$AppointmentDocumentWhereInputImplFromJson(Map<String, dynamic> json) =>
        _$AppointmentDocumentWhereInputImpl(
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
          reviewStatus: json['reviewStatus'] == null
              ? null
              : DocumentReviewStatusFilter.fromJson(
                  json['reviewStatus'] as Map<String, dynamic>),
          reviewNotes: json['reviewNotes'] == null
              ? null
              : StringFilter.fromJson(
                  json['reviewNotes'] as Map<String, dynamic>),
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['reviewedAt'] as Map<String, dynamic>),
          reviewedBy: json['reviewedBy'] == null
              ? null
              : StringFilter.fromJson(
                  json['reviewedBy'] as Map<String, dynamic>),
          uploadedByRole: json['uploadedByRole'] == null
              ? null
              : DocumentUploadRoleFilter.fromJson(
                  json['uploadedByRole'] as Map<String, dynamic>),
          responseToDocumentId: json['responseToDocumentId'] == null
              ? null
              : StringFilter.fromJson(
                  json['responseToDocumentId'] as Map<String, dynamic>),
          responseToDocument: json['responseToDocument'] == null
              ? null
              : AppointmentDocumentRelationFilter.fromJson(
                  json['responseToDocument'] as Map<String, dynamic>),
          responseDocuments: json['responseDocuments'] == null
              ? null
              : AppointmentDocumentListRelationFilter.fromJson(
                  json['responseDocuments'] as Map<String, dynamic>),
          appointment: json['appointment'] == null
              ? null
              : AppointmentRelationFilter.fromJson(
                  json['appointment'] as Map<String, dynamic>),
          appointmentId: json['appointmentId'] == null
              ? null
              : StringFilter.fromJson(
                  json['appointmentId'] as Map<String, dynamic>),
          uploadedAt: json['uploadedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['uploadedAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => AppointmentDocumentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => AppointmentDocumentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AppointmentDocumentWhereInputImplToJson(
        _$AppointmentDocumentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'fileName': instance.fileName?.toJson(),
      'originalName': instance.originalName?.toJson(),
      'fileSize': instance.fileSize?.toJson(),
      'mimeType': instance.mimeType?.toJson(),
      'fileUrl': instance.fileUrl?.toJson(),
      'storagePath': instance.storagePath?.toJson(),
      'description': instance.description?.toJson(),
      'reviewStatus': instance.reviewStatus?.toJson(),
      'reviewNotes': instance.reviewNotes?.toJson(),
      'reviewedAt': instance.reviewedAt?.toJson(),
      'reviewedBy': instance.reviewedBy?.toJson(),
      'uploadedByRole': instance.uploadedByRole?.toJson(),
      'responseToDocumentId': instance.responseToDocumentId?.toJson(),
      'responseToDocument': instance.responseToDocument?.toJson(),
      'responseDocuments': instance.responseDocuments?.toJson(),
      'appointment': instance.appointment?.toJson(),
      'appointmentId': instance.appointmentId?.toJson(),
      'uploadedAt': instance.uploadedAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AppointmentDocumentListRelationFilterImpl
    _$$AppointmentDocumentListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$AppointmentDocumentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AppointmentDocumentListRelationFilterImplToJson(
        _$AppointmentDocumentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AppointmentDocumentRelationFilterImpl
    _$$AppointmentDocumentRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$AppointmentDocumentRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : AppointmentDocumentWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AppointmentDocumentRelationFilterImplToJson(
        _$AppointmentDocumentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AppointmentDocumentOrderByInputImpl
    _$$AppointmentDocumentOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$AppointmentDocumentOrderByInputImpl(
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
          reviewNotes:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewNotes']),
          reviewedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewedAt']),
          reviewedBy:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewedBy']),
          responseToDocumentId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['responseToDocumentId']),
          appointmentId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['appointmentId']),
          uploadedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['uploadedAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$AppointmentDocumentOrderByInputImplToJson(
        _$AppointmentDocumentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'fileName': _$SortOrderEnumMap[instance.fileName],
      'originalName': _$SortOrderEnumMap[instance.originalName],
      'fileSize': _$SortOrderEnumMap[instance.fileSize],
      'mimeType': _$SortOrderEnumMap[instance.mimeType],
      'fileUrl': _$SortOrderEnumMap[instance.fileUrl],
      'storagePath': _$SortOrderEnumMap[instance.storagePath],
      'description': _$SortOrderEnumMap[instance.description],
      'reviewNotes': _$SortOrderEnumMap[instance.reviewNotes],
      'reviewedAt': _$SortOrderEnumMap[instance.reviewedAt],
      'reviewedBy': _$SortOrderEnumMap[instance.reviewedBy],
      'responseToDocumentId': _$SortOrderEnumMap[instance.responseToDocumentId],
      'appointmentId': _$SortOrderEnumMap[instance.appointmentId],
      'uploadedAt': _$SortOrderEnumMap[instance.uploadedAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
