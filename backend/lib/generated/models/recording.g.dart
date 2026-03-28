// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recording.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordingImpl _$$RecordingImplFromJson(Map<String, dynamic> json) =>
    _$RecordingImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      recordingUrl: json['recordingUrl'] as String,
      durationInMinutes: (json['durationInMinutes'] as num).toInt(),
      recordedAt: DateTime.parse(json['recordedAt'] as String),
      streamRecordingId: json['streamRecordingId'] as String?,
      streamCallId: json['streamCallId'] as String?,
      storageType: $enumDecodeNullable(
              _$RecordingStorageTypeEnumMap, json['storageType']) ??
          RecordingStorageType.streamS3,
      status: $enumDecodeNullable(_$RecordingStatusEnumMap, json['status']) ??
          RecordingStatus.ready,
      supabaseUrl: json['supabaseUrl'] as String?,
      supabasePath: json['supabasePath'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      fileSize: json['fileSize'] == null
          ? null
          : BigInt.parse(json['fileSize'] as String),
      codec: json['codec'] as String?,
      resolution: json['resolution'] as String?,
      previewClipUrl: json['previewClipUrl'] as String?,
      previewClipDuration: (json['previewClipDuration'] as num?)?.toInt(),
      streamUrlExpiresAt: json['streamUrlExpiresAt'] == null
          ? null
          : DateTime.parse(json['streamUrlExpiresAt'] as String),
      transferredAt: json['transferredAt'] == null
          ? null
          : DateTime.parse(json['transferredAt'] as String),
      meetingSessionId: json['meetingSessionId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RecordingImplToJson(_$RecordingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'recordingUrl': instance.recordingUrl,
      'durationInMinutes': instance.durationInMinutes,
      'recordedAt': instance.recordedAt.toIso8601String(),
      'streamRecordingId': instance.streamRecordingId,
      'streamCallId': instance.streamCallId,
      'storageType': _$RecordingStorageTypeEnumMap[instance.storageType]!,
      'status': _$RecordingStatusEnumMap[instance.status]!,
      'supabaseUrl': instance.supabaseUrl,
      'supabasePath': instance.supabasePath,
      'thumbnailUrl': instance.thumbnailUrl,
      'fileSize': instance.fileSize?.toString(),
      'codec': instance.codec,
      'resolution': instance.resolution,
      'previewClipUrl': instance.previewClipUrl,
      'previewClipDuration': instance.previewClipDuration,
      'streamUrlExpiresAt': instance.streamUrlExpiresAt?.toIso8601String(),
      'transferredAt': instance.transferredAt?.toIso8601String(),
      'meetingSessionId': instance.meetingSessionId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$RecordingStorageTypeEnumMap = {
  RecordingStorageType.streamS3: 'STREAM_S3',
  RecordingStorageType.supabase: 'SUPABASE',
};

const _$RecordingStatusEnumMap = {
  RecordingStatus.recording: 'RECORDING',
  RecordingStatus.processing: 'PROCESSING',
  RecordingStatus.ready: 'READY',
  RecordingStatus.transferring: 'TRANSFERRING',
  RecordingStatus.available: 'AVAILABLE',
  RecordingStatus.failed: 'FAILED',
  RecordingStatus.expired: 'EXPIRED',
};

_$CreateRecordingInputImpl _$$CreateRecordingInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRecordingInputImpl(
      title: json['title'] as String,
      recordingUrl: json['recordingUrl'] as String,
      durationInMinutes: (json['durationInMinutes'] as num).toInt(),
      recordedAt: DateTime.parse(json['recordedAt'] as String),
      streamRecordingId: json['streamRecordingId'] as String?,
      streamCallId: json['streamCallId'] as String?,
      storageType: $enumDecodeNullable(
              _$RecordingStorageTypeEnumMap, json['storageType']) ??
          RecordingStorageType.streamS3,
      status: $enumDecodeNullable(_$RecordingStatusEnumMap, json['status']) ??
          RecordingStatus.ready,
      supabaseUrl: json['supabaseUrl'] as String?,
      supabasePath: json['supabasePath'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      fileSize: json['fileSize'] == null
          ? null
          : BigInt.parse(json['fileSize'] as String),
      codec: json['codec'] as String?,
      resolution: json['resolution'] as String?,
      previewClipUrl: json['previewClipUrl'] as String?,
      previewClipDuration: (json['previewClipDuration'] as num?)?.toInt(),
      streamUrlExpiresAt: json['streamUrlExpiresAt'] == null
          ? null
          : DateTime.parse(json['streamUrlExpiresAt'] as String),
      transferredAt: json['transferredAt'] == null
          ? null
          : DateTime.parse(json['transferredAt'] as String),
      meetingSessionId: json['meetingSessionId'] as String,
    );

Map<String, dynamic> _$$CreateRecordingInputImplToJson(
        _$CreateRecordingInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'recordingUrl': instance.recordingUrl,
      'durationInMinutes': instance.durationInMinutes,
      'recordedAt': instance.recordedAt.toIso8601String(),
      'streamRecordingId': instance.streamRecordingId,
      'streamCallId': instance.streamCallId,
      'storageType': _$RecordingStorageTypeEnumMap[instance.storageType]!,
      'status': _$RecordingStatusEnumMap[instance.status]!,
      'supabaseUrl': instance.supabaseUrl,
      'supabasePath': instance.supabasePath,
      'thumbnailUrl': instance.thumbnailUrl,
      'fileSize': instance.fileSize?.toString(),
      'codec': instance.codec,
      'resolution': instance.resolution,
      'previewClipUrl': instance.previewClipUrl,
      'previewClipDuration': instance.previewClipDuration,
      'streamUrlExpiresAt': instance.streamUrlExpiresAt?.toIso8601String(),
      'transferredAt': instance.transferredAt?.toIso8601String(),
      'meetingSessionId': instance.meetingSessionId,
    };

_$UpdateRecordingInputImpl _$$UpdateRecordingInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRecordingInputImpl(
      title: json['title'] as String?,
      recordingUrl: json['recordingUrl'] as String?,
      durationInMinutes: (json['durationInMinutes'] as num?)?.toInt(),
      recordedAt: json['recordedAt'] == null
          ? null
          : DateTime.parse(json['recordedAt'] as String),
      streamRecordingId: json['streamRecordingId'] as String?,
      streamCallId: json['streamCallId'] as String?,
      storageType: $enumDecodeNullable(
          _$RecordingStorageTypeEnumMap, json['storageType']),
      status: $enumDecodeNullable(_$RecordingStatusEnumMap, json['status']),
      supabaseUrl: json['supabaseUrl'] as String?,
      supabasePath: json['supabasePath'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      fileSize: json['fileSize'] == null
          ? null
          : BigInt.parse(json['fileSize'] as String),
      codec: json['codec'] as String?,
      resolution: json['resolution'] as String?,
      previewClipUrl: json['previewClipUrl'] as String?,
      previewClipDuration: (json['previewClipDuration'] as num?)?.toInt(),
      streamUrlExpiresAt: json['streamUrlExpiresAt'] == null
          ? null
          : DateTime.parse(json['streamUrlExpiresAt'] as String),
      transferredAt: json['transferredAt'] == null
          ? null
          : DateTime.parse(json['transferredAt'] as String),
      meetingSessionId: json['meetingSessionId'] as String?,
    );

Map<String, dynamic> _$$UpdateRecordingInputImplToJson(
        _$UpdateRecordingInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'recordingUrl': instance.recordingUrl,
      'durationInMinutes': instance.durationInMinutes,
      'recordedAt': instance.recordedAt?.toIso8601String(),
      'streamRecordingId': instance.streamRecordingId,
      'streamCallId': instance.streamCallId,
      'storageType': _$RecordingStorageTypeEnumMap[instance.storageType],
      'status': _$RecordingStatusEnumMap[instance.status],
      'supabaseUrl': instance.supabaseUrl,
      'supabasePath': instance.supabasePath,
      'thumbnailUrl': instance.thumbnailUrl,
      'fileSize': instance.fileSize?.toString(),
      'codec': instance.codec,
      'resolution': instance.resolution,
      'previewClipUrl': instance.previewClipUrl,
      'previewClipDuration': instance.previewClipDuration,
      'streamUrlExpiresAt': instance.streamUrlExpiresAt?.toIso8601String(),
      'transferredAt': instance.transferredAt?.toIso8601String(),
      'meetingSessionId': instance.meetingSessionId,
    };

_$RecordingWhereUniqueInputImpl _$$RecordingWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingWhereUniqueInputImpl(
      id: json['id'] as String?,
      streamRecordingId: json['streamRecordingId'] as String?,
    );

Map<String, dynamic> _$$RecordingWhereUniqueInputImplToJson(
        _$RecordingWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streamRecordingId': instance.streamRecordingId,
    };

_$RecordingWhereInputImpl _$$RecordingWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      recordingUrl: json['recordingUrl'] == null
          ? null
          : StringFilter.fromJson(json['recordingUrl'] as Map<String, dynamic>),
      durationInMinutes: json['durationInMinutes'] == null
          ? null
          : IntFilter.fromJson(
              json['durationInMinutes'] as Map<String, dynamic>),
      recordedAt: json['recordedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['recordedAt'] as Map<String, dynamic>),
      streamRecordingId: json['streamRecordingId'] == null
          ? null
          : StringFilter.fromJson(
              json['streamRecordingId'] as Map<String, dynamic>),
      streamCallId: json['streamCallId'] == null
          ? null
          : StringFilter.fromJson(json['streamCallId'] as Map<String, dynamic>),
      storageType: json['storageType'] == null
          ? null
          : RecordingStorageTypeFilter.fromJson(
              json['storageType'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : RecordingStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      supabaseUrl: json['supabaseUrl'] == null
          ? null
          : StringFilter.fromJson(json['supabaseUrl'] as Map<String, dynamic>),
      supabasePath: json['supabasePath'] == null
          ? null
          : StringFilter.fromJson(json['supabasePath'] as Map<String, dynamic>),
      thumbnailUrl: json['thumbnailUrl'] == null
          ? null
          : StringFilter.fromJson(json['thumbnailUrl'] as Map<String, dynamic>),
      codec: json['codec'] == null
          ? null
          : StringFilter.fromJson(json['codec'] as Map<String, dynamic>),
      resolution: json['resolution'] == null
          ? null
          : StringFilter.fromJson(json['resolution'] as Map<String, dynamic>),
      previewClipUrl: json['previewClipUrl'] == null
          ? null
          : StringFilter.fromJson(
              json['previewClipUrl'] as Map<String, dynamic>),
      previewClipDuration: json['previewClipDuration'] == null
          ? null
          : IntFilter.fromJson(
              json['previewClipDuration'] as Map<String, dynamic>),
      streamUrlExpiresAt: json['streamUrlExpiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['streamUrlExpiresAt'] as Map<String, dynamic>),
      transferredAt: json['transferredAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['transferredAt'] as Map<String, dynamic>),
      meetingSession: json['meetingSession'] == null
          ? null
          : MeetingSessionRelationFilter.fromJson(
              json['meetingSession'] as Map<String, dynamic>),
      meetingSessionId: json['meetingSessionId'] == null
          ? null
          : StringFilter.fromJson(
              json['meetingSessionId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => RecordingWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => RecordingWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : RecordingWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordingWhereInputImplToJson(
        _$RecordingWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'recordingUrl': instance.recordingUrl?.toJson(),
      'durationInMinutes': instance.durationInMinutes?.toJson(),
      'recordedAt': instance.recordedAt?.toJson(),
      'streamRecordingId': instance.streamRecordingId?.toJson(),
      'streamCallId': instance.streamCallId?.toJson(),
      'storageType': instance.storageType?.toJson(),
      'status': instance.status?.toJson(),
      'supabaseUrl': instance.supabaseUrl?.toJson(),
      'supabasePath': instance.supabasePath?.toJson(),
      'thumbnailUrl': instance.thumbnailUrl?.toJson(),
      'codec': instance.codec?.toJson(),
      'resolution': instance.resolution?.toJson(),
      'previewClipUrl': instance.previewClipUrl?.toJson(),
      'previewClipDuration': instance.previewClipDuration?.toJson(),
      'streamUrlExpiresAt': instance.streamUrlExpiresAt?.toJson(),
      'transferredAt': instance.transferredAt?.toJson(),
      'meetingSession': instance.meetingSession?.toJson(),
      'meetingSessionId': instance.meetingSessionId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$RecordingListRelationFilterImpl _$$RecordingListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : RecordingWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : RecordingWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : RecordingWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordingListRelationFilterImplToJson(
        _$RecordingListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$RecordingRelationFilterImpl _$$RecordingRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : RecordingWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : RecordingWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordingRelationFilterImplToJson(
        _$RecordingRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$RecordingOrderByInputImpl _$$RecordingOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordingOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      recordingUrl:
          $enumDecodeNullable(_$SortOrderEnumMap, json['recordingUrl']),
      durationInMinutes:
          $enumDecodeNullable(_$SortOrderEnumMap, json['durationInMinutes']),
      recordedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['recordedAt']),
      streamRecordingId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['streamRecordingId']),
      streamCallId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['streamCallId']),
      supabaseUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['supabaseUrl']),
      supabasePath:
          $enumDecodeNullable(_$SortOrderEnumMap, json['supabasePath']),
      thumbnailUrl:
          $enumDecodeNullable(_$SortOrderEnumMap, json['thumbnailUrl']),
      codec: $enumDecodeNullable(_$SortOrderEnumMap, json['codec']),
      resolution: $enumDecodeNullable(_$SortOrderEnumMap, json['resolution']),
      previewClipUrl:
          $enumDecodeNullable(_$SortOrderEnumMap, json['previewClipUrl']),
      previewClipDuration:
          $enumDecodeNullable(_$SortOrderEnumMap, json['previewClipDuration']),
      streamUrlExpiresAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['streamUrlExpiresAt']),
      transferredAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['transferredAt']),
      meetingSessionId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['meetingSessionId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$RecordingOrderByInputImplToJson(
        _$RecordingOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'recordingUrl': _$SortOrderEnumMap[instance.recordingUrl],
      'durationInMinutes': _$SortOrderEnumMap[instance.durationInMinutes],
      'recordedAt': _$SortOrderEnumMap[instance.recordedAt],
      'streamRecordingId': _$SortOrderEnumMap[instance.streamRecordingId],
      'streamCallId': _$SortOrderEnumMap[instance.streamCallId],
      'supabaseUrl': _$SortOrderEnumMap[instance.supabaseUrl],
      'supabasePath': _$SortOrderEnumMap[instance.supabasePath],
      'thumbnailUrl': _$SortOrderEnumMap[instance.thumbnailUrl],
      'codec': _$SortOrderEnumMap[instance.codec],
      'resolution': _$SortOrderEnumMap[instance.resolution],
      'previewClipUrl': _$SortOrderEnumMap[instance.previewClipUrl],
      'previewClipDuration': _$SortOrderEnumMap[instance.previewClipDuration],
      'streamUrlExpiresAt': _$SortOrderEnumMap[instance.streamUrlExpiresAt],
      'transferredAt': _$SortOrderEnumMap[instance.transferredAt],
      'meetingSessionId': _$SortOrderEnumMap[instance.meetingSessionId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
