// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingSessionImpl _$$MeetingSessionImplFromJson(Map<String, dynamic> json) =>
    _$MeetingSessionImpl(
      id: json['id'] as String,
      streamCallId: json['streamCallId'] as String,
      platform: $enumDecodeNullable(_$PlatformEnumMap, json['platform']) ??
          Platform.stream,
      passcode: json['passcode'] as String?,
      hostKeys:
          (json['hostKeys'] as List<dynamic>).map((e) => e as String).toList(),
      isRecording: json['isRecording'] as bool? ?? false,
      recordingStartedAt: json['recordingStartedAt'] == null
          ? null
          : DateTime.parse(json['recordingStartedAt'] as String),
      recordingStartedBy: json['recordingStartedBy'] as String?,
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      endedReason: json['endedReason'] as String?,
      recordings: (json['recordings'] as List<dynamic>)
          .map((e) => Recording.fromJson(e as Map<String, dynamic>))
          .toList(),
      slotOfAppointmentId: json['slotOfAppointmentId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MeetingSessionImplToJson(
        _$MeetingSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streamCallId': instance.streamCallId,
      'platform': _$PlatformEnumMap[instance.platform]!,
      'passcode': instance.passcode,
      'hostKeys': instance.hostKeys,
      'isRecording': instance.isRecording,
      'recordingStartedAt': instance.recordingStartedAt?.toIso8601String(),
      'recordingStartedBy': instance.recordingStartedBy,
      'endedAt': instance.endedAt?.toIso8601String(),
      'endedReason': instance.endedReason,
      'recordings': instance.recordings,
      'slotOfAppointmentId': instance.slotOfAppointmentId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PlatformEnumMap = {
  Platform.zoom: 'ZOOM',
  Platform.googleMeet: 'GOOGLE_MEET',
  Platform.microsoftTeams: 'MICROSOFT_TEAMS',
  Platform.stream: 'STREAM',
  Platform.custom: 'CUSTOM',
};

_$CreateMeetingSessionInputImpl _$$CreateMeetingSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMeetingSessionInputImpl(
      streamCallId: json['streamCallId'] as String,
      platform: $enumDecodeNullable(_$PlatformEnumMap, json['platform']) ??
          Platform.stream,
      passcode: json['passcode'] as String?,
      hostKeys:
          (json['hostKeys'] as List<dynamic>).map((e) => e as String).toList(),
      isRecording: json['isRecording'] as bool? ?? false,
      recordingStartedAt: json['recordingStartedAt'] == null
          ? null
          : DateTime.parse(json['recordingStartedAt'] as String),
      recordingStartedBy: json['recordingStartedBy'] as String?,
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      endedReason: json['endedReason'] as String?,
      slotOfAppointmentId: json['slotOfAppointmentId'] as String,
    );

Map<String, dynamic> _$$CreateMeetingSessionInputImplToJson(
        _$CreateMeetingSessionInputImpl instance) =>
    <String, dynamic>{
      'streamCallId': instance.streamCallId,
      'platform': _$PlatformEnumMap[instance.platform]!,
      'passcode': instance.passcode,
      'hostKeys': instance.hostKeys,
      'isRecording': instance.isRecording,
      'recordingStartedAt': instance.recordingStartedAt?.toIso8601String(),
      'recordingStartedBy': instance.recordingStartedBy,
      'endedAt': instance.endedAt?.toIso8601String(),
      'endedReason': instance.endedReason,
      'slotOfAppointmentId': instance.slotOfAppointmentId,
    };

_$UpdateMeetingSessionInputImpl _$$UpdateMeetingSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMeetingSessionInputImpl(
      streamCallId: json['streamCallId'] as String?,
      platform: $enumDecodeNullable(_$PlatformEnumMap, json['platform']),
      passcode: json['passcode'] as String?,
      hostKeys: (json['hostKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isRecording: json['isRecording'] as bool?,
      recordingStartedAt: json['recordingStartedAt'] == null
          ? null
          : DateTime.parse(json['recordingStartedAt'] as String),
      recordingStartedBy: json['recordingStartedBy'] as String?,
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      endedReason: json['endedReason'] as String?,
      slotOfAppointmentId: json['slotOfAppointmentId'] as String?,
    );

Map<String, dynamic> _$$UpdateMeetingSessionInputImplToJson(
        _$UpdateMeetingSessionInputImpl instance) =>
    <String, dynamic>{
      'streamCallId': instance.streamCallId,
      'platform': _$PlatformEnumMap[instance.platform],
      'passcode': instance.passcode,
      'hostKeys': instance.hostKeys,
      'isRecording': instance.isRecording,
      'recordingStartedAt': instance.recordingStartedAt?.toIso8601String(),
      'recordingStartedBy': instance.recordingStartedBy,
      'endedAt': instance.endedAt?.toIso8601String(),
      'endedReason': instance.endedReason,
      'slotOfAppointmentId': instance.slotOfAppointmentId,
    };

_$MeetingSessionWhereUniqueInputImpl
    _$$MeetingSessionWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$MeetingSessionWhereUniqueInputImpl(
          id: json['id'] as String?,
          streamCallId: json['streamCallId'] as String?,
          slotOfAppointmentId: json['slotOfAppointmentId'] as String?,
        );

Map<String, dynamic> _$$MeetingSessionWhereUniqueInputImplToJson(
        _$MeetingSessionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streamCallId': instance.streamCallId,
      'slotOfAppointmentId': instance.slotOfAppointmentId,
    };

_$MeetingSessionWhereInputImpl _$$MeetingSessionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingSessionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      streamCallId: json['streamCallId'] == null
          ? null
          : StringFilter.fromJson(json['streamCallId'] as Map<String, dynamic>),
      platform: json['platform'] == null
          ? null
          : PlatformFilter.fromJson(json['platform'] as Map<String, dynamic>),
      passcode: json['passcode'] == null
          ? null
          : StringFilter.fromJson(json['passcode'] as Map<String, dynamic>),
      hostKeys: json['hostKeys'] == null
          ? null
          : StringListFilter.fromJson(json['hostKeys'] as Map<String, dynamic>),
      isRecording: json['isRecording'] == null
          ? null
          : BooleanFilter.fromJson(json['isRecording'] as Map<String, dynamic>),
      recordingStartedAt: json['recordingStartedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['recordingStartedAt'] as Map<String, dynamic>),
      recordingStartedBy: json['recordingStartedBy'] == null
          ? null
          : StringFilter.fromJson(
              json['recordingStartedBy'] as Map<String, dynamic>),
      endedAt: json['endedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['endedAt'] as Map<String, dynamic>),
      endedReason: json['endedReason'] == null
          ? null
          : StringFilter.fromJson(json['endedReason'] as Map<String, dynamic>),
      slotOfAppointment: json['slotOfAppointment'] == null
          ? null
          : SlotOfAppointmentRelationFilter.fromJson(
              json['slotOfAppointment'] as Map<String, dynamic>),
      slotOfAppointmentId: json['slotOfAppointmentId'] == null
          ? null
          : StringFilter.fromJson(
              json['slotOfAppointmentId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              MeetingSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              MeetingSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : MeetingSessionWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeetingSessionWhereInputImplToJson(
        _$MeetingSessionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'streamCallId': instance.streamCallId?.toJson(),
      'platform': instance.platform?.toJson(),
      'passcode': instance.passcode?.toJson(),
      'hostKeys': instance.hostKeys?.toJson(),
      'isRecording': instance.isRecording?.toJson(),
      'recordingStartedAt': instance.recordingStartedAt?.toJson(),
      'recordingStartedBy': instance.recordingStartedBy?.toJson(),
      'endedAt': instance.endedAt?.toJson(),
      'endedReason': instance.endedReason?.toJson(),
      'slotOfAppointment': instance.slotOfAppointment?.toJson(),
      'slotOfAppointmentId': instance.slotOfAppointmentId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$MeetingSessionListRelationFilterImpl
    _$$MeetingSessionListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$MeetingSessionListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : MeetingSessionWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : MeetingSessionWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : MeetingSessionWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$MeetingSessionListRelationFilterImplToJson(
        _$MeetingSessionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$MeetingSessionRelationFilterImpl _$$MeetingSessionRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingSessionRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : MeetingSessionWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : MeetingSessionWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeetingSessionRelationFilterImplToJson(
        _$MeetingSessionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$MeetingSessionOrderByInputImpl _$$MeetingSessionOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingSessionOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      streamCallId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['streamCallId']),
      passcode: $enumDecodeNullable(_$SortOrderEnumMap, json['passcode']),
      hostKeys: $enumDecodeNullable(_$SortOrderEnumMap, json['hostKeys']),
      isRecording: $enumDecodeNullable(_$SortOrderEnumMap, json['isRecording']),
      recordingStartedAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['recordingStartedAt']),
      recordingStartedBy:
          $enumDecodeNullable(_$SortOrderEnumMap, json['recordingStartedBy']),
      endedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['endedAt']),
      endedReason: $enumDecodeNullable(_$SortOrderEnumMap, json['endedReason']),
      slotOfAppointmentId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['slotOfAppointmentId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$MeetingSessionOrderByInputImplToJson(
        _$MeetingSessionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'streamCallId': _$SortOrderEnumMap[instance.streamCallId],
      'passcode': _$SortOrderEnumMap[instance.passcode],
      'hostKeys': _$SortOrderEnumMap[instance.hostKeys],
      'isRecording': _$SortOrderEnumMap[instance.isRecording],
      'recordingStartedAt': _$SortOrderEnumMap[instance.recordingStartedAt],
      'recordingStartedBy': _$SortOrderEnumMap[instance.recordingStartedBy],
      'endedAt': _$SortOrderEnumMap[instance.endedAt],
      'endedReason': _$SortOrderEnumMap[instance.endedReason],
      'slotOfAppointmentId': _$SortOrderEnumMap[instance.slotOfAppointmentId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
