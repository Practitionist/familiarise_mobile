// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketAttachmentImpl _$$SupportTicketAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketAttachmentImpl(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      originalName: json['originalName'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      fileUrl: json['fileUrl'] as String,
      storagePath: json['storagePath'] as String,
      ticketId: json['ticketId'] as String,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$SupportTicketAttachmentImplToJson(
        _$SupportTicketAttachmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'ticketId': instance.ticketId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };

_$CreateSupportTicketAttachmentInputImpl
    _$$CreateSupportTicketAttachmentInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateSupportTicketAttachmentInputImpl(
          fileName: json['fileName'] as String,
          originalName: json['originalName'] as String,
          fileSize: (json['fileSize'] as num).toInt(),
          mimeType: json['mimeType'] as String,
          fileUrl: json['fileUrl'] as String,
          storagePath: json['storagePath'] as String,
          ticketId: json['ticketId'] as String,
        );

Map<String, dynamic> _$$CreateSupportTicketAttachmentInputImplToJson(
        _$CreateSupportTicketAttachmentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'ticketId': instance.ticketId,
    };

_$UpdateSupportTicketAttachmentInputImpl
    _$$UpdateSupportTicketAttachmentInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateSupportTicketAttachmentInputImpl(
          fileName: json['fileName'] as String?,
          originalName: json['originalName'] as String?,
          fileSize: (json['fileSize'] as num?)?.toInt(),
          mimeType: json['mimeType'] as String?,
          fileUrl: json['fileUrl'] as String?,
          storagePath: json['storagePath'] as String?,
          ticketId: json['ticketId'] as String?,
        );

Map<String, dynamic> _$$UpdateSupportTicketAttachmentInputImplToJson(
        _$UpdateSupportTicketAttachmentInputImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
      'fileUrl': instance.fileUrl,
      'storagePath': instance.storagePath,
      'ticketId': instance.ticketId,
    };

_$SupportTicketAttachmentWhereUniqueInputImpl
    _$$SupportTicketAttachmentWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportTicketAttachmentWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SupportTicketAttachmentWhereUniqueInputImplToJson(
        _$SupportTicketAttachmentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SupportTicketAttachmentWhereInputImpl
    _$$SupportTicketAttachmentWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportTicketAttachmentWhereInputImpl(
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
          ticket: json['ticket'] == null
              ? null
              : SupportTicketRelationFilter.fromJson(
                  json['ticket'] as Map<String, dynamic>),
          ticketId: json['ticketId'] == null
              ? null
              : StringFilter.fromJson(json['ticketId'] as Map<String, dynamic>),
          uploadedAt: json['uploadedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['uploadedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => SupportTicketAttachmentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => SupportTicketAttachmentWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportTicketAttachmentWhereInputImplToJson(
        _$SupportTicketAttachmentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'fileName': instance.fileName?.toJson(),
      'originalName': instance.originalName?.toJson(),
      'fileSize': instance.fileSize?.toJson(),
      'mimeType': instance.mimeType?.toJson(),
      'fileUrl': instance.fileUrl?.toJson(),
      'storagePath': instance.storagePath?.toJson(),
      'ticket': instance.ticket?.toJson(),
      'ticketId': instance.ticketId?.toJson(),
      'uploadedAt': instance.uploadedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SupportTicketAttachmentListRelationFilterImpl
    _$$SupportTicketAttachmentListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportTicketAttachmentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportTicketAttachmentListRelationFilterImplToJson(
        _$SupportTicketAttachmentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SupportTicketAttachmentRelationFilterImpl
    _$$SupportTicketAttachmentRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportTicketAttachmentRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SupportTicketAttachmentWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportTicketAttachmentRelationFilterImplToJson(
        _$SupportTicketAttachmentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SupportTicketAttachmentOrderByInputImpl
    _$$SupportTicketAttachmentOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportTicketAttachmentOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          fileName: $enumDecodeNullable(_$SortOrderEnumMap, json['fileName']),
          originalName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['originalName']),
          fileSize: $enumDecodeNullable(_$SortOrderEnumMap, json['fileSize']),
          mimeType: $enumDecodeNullable(_$SortOrderEnumMap, json['mimeType']),
          fileUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['fileUrl']),
          storagePath:
              $enumDecodeNullable(_$SortOrderEnumMap, json['storagePath']),
          ticketId: $enumDecodeNullable(_$SortOrderEnumMap, json['ticketId']),
          uploadedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['uploadedAt']),
        );

Map<String, dynamic> _$$SupportTicketAttachmentOrderByInputImplToJson(
        _$SupportTicketAttachmentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'fileName': _$SortOrderEnumMap[instance.fileName],
      'originalName': _$SortOrderEnumMap[instance.originalName],
      'fileSize': _$SortOrderEnumMap[instance.fileSize],
      'mimeType': _$SortOrderEnumMap[instance.mimeType],
      'fileUrl': _$SortOrderEnumMap[instance.fileUrl],
      'storagePath': _$SortOrderEnumMap[instance.storagePath],
      'ticketId': _$SortOrderEnumMap[instance.ticketId],
      'uploadedAt': _$SortOrderEnumMap[instance.uploadedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
