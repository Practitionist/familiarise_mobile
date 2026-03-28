// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_of_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlotOfAppointmentImpl _$$SlotOfAppointmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SlotOfAppointmentImpl(
      id: json['id'] as String,
      startsAt: DateTime.parse(json['startsAt'] as String),
      endsAt: DateTime.parse(json['endsAt'] as String),
      isTentative: json['isTentative'] as bool? ?? false,
      completionStatus: $enumDecodeNullable(
              _$SlotCompletionStatusEnumMap, json['completionStatus']) ??
          SlotCompletionStatus.scheduled,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      appointmentId: json['appointmentId'] as String,
      meetingSession: json['meetingSession'] == null
          ? null
          : MeetingSession.fromJson(
              json['meetingSession'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SlotOfAppointmentImplToJson(
        _$SlotOfAppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startsAt': instance.startsAt.toIso8601String(),
      'endsAt': instance.endsAt.toIso8601String(),
      'isTentative': instance.isTentative,
      'completionStatus':
          _$SlotCompletionStatusEnumMap[instance.completionStatus]!,
      'completedAt': instance.completedAt?.toIso8601String(),
      'appointmentId': instance.appointmentId,
      'meetingSession': instance.meetingSession,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SlotCompletionStatusEnumMap = {
  SlotCompletionStatus.scheduled: 'SCHEDULED',
  SlotCompletionStatus.completed: 'COMPLETED',
  SlotCompletionStatus.unverified: 'UNVERIFIED',
  SlotCompletionStatus.cancelled: 'CANCELLED',
  SlotCompletionStatus.rescheduled: 'RESCHEDULED',
};

_$CreateSlotOfAppointmentInputImpl _$$CreateSlotOfAppointmentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSlotOfAppointmentInputImpl(
      startsAt: DateTime.parse(json['startsAt'] as String),
      endsAt: DateTime.parse(json['endsAt'] as String),
      isTentative: json['isTentative'] as bool? ?? false,
      completionStatus: $enumDecodeNullable(
              _$SlotCompletionStatusEnumMap, json['completionStatus']) ??
          SlotCompletionStatus.scheduled,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      appointmentId: json['appointmentId'] as String,
    );

Map<String, dynamic> _$$CreateSlotOfAppointmentInputImplToJson(
        _$CreateSlotOfAppointmentInputImpl instance) =>
    <String, dynamic>{
      'startsAt': instance.startsAt.toIso8601String(),
      'endsAt': instance.endsAt.toIso8601String(),
      'isTentative': instance.isTentative,
      'completionStatus':
          _$SlotCompletionStatusEnumMap[instance.completionStatus]!,
      'completedAt': instance.completedAt?.toIso8601String(),
      'appointmentId': instance.appointmentId,
    };

_$UpdateSlotOfAppointmentInputImpl _$$UpdateSlotOfAppointmentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSlotOfAppointmentInputImpl(
      startsAt: json['startsAt'] == null
          ? null
          : DateTime.parse(json['startsAt'] as String),
      endsAt: json['endsAt'] == null
          ? null
          : DateTime.parse(json['endsAt'] as String),
      isTentative: json['isTentative'] as bool?,
      completionStatus: $enumDecodeNullable(
          _$SlotCompletionStatusEnumMap, json['completionStatus']),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      appointmentId: json['appointmentId'] as String?,
    );

Map<String, dynamic> _$$UpdateSlotOfAppointmentInputImplToJson(
        _$UpdateSlotOfAppointmentInputImpl instance) =>
    <String, dynamic>{
      'startsAt': instance.startsAt?.toIso8601String(),
      'endsAt': instance.endsAt?.toIso8601String(),
      'isTentative': instance.isTentative,
      'completionStatus':
          _$SlotCompletionStatusEnumMap[instance.completionStatus],
      'completedAt': instance.completedAt?.toIso8601String(),
      'appointmentId': instance.appointmentId,
    };

_$SlotOfAppointmentWhereUniqueInputImpl
    _$$SlotOfAppointmentWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAppointmentWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SlotOfAppointmentWhereUniqueInputImplToJson(
        _$SlotOfAppointmentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SlotOfAppointmentWhereInputImpl _$$SlotOfAppointmentWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SlotOfAppointmentWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserListRelationFilter.fromJson(
              json['user'] as Map<String, dynamic>),
      startsAt: json['startsAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['startsAt'] as Map<String, dynamic>),
      endsAt: json['endsAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['endsAt'] as Map<String, dynamic>),
      isTentative: json['isTentative'] == null
          ? null
          : BooleanFilter.fromJson(json['isTentative'] as Map<String, dynamic>),
      completionStatus: json['completionStatus'] == null
          ? null
          : SlotCompletionStatusFilter.fromJson(
              json['completionStatus'] as Map<String, dynamic>),
      completedAt: json['completedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['completedAt'] as Map<String, dynamic>),
      appointment: json['appointment'] == null
          ? null
          : AppointmentRelationFilter.fromJson(
              json['appointment'] as Map<String, dynamic>),
      appointmentId: json['appointmentId'] == null
          ? null
          : StringFilter.fromJson(
              json['appointmentId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              SlotOfAppointmentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              SlotOfAppointmentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SlotOfAppointmentWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SlotOfAppointmentWhereInputImplToJson(
        _$SlotOfAppointmentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'user': instance.user?.toJson(),
      'startsAt': instance.startsAt?.toJson(),
      'endsAt': instance.endsAt?.toJson(),
      'isTentative': instance.isTentative?.toJson(),
      'completionStatus': instance.completionStatus?.toJson(),
      'completedAt': instance.completedAt?.toJson(),
      'appointment': instance.appointment?.toJson(),
      'appointmentId': instance.appointmentId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SlotOfAppointmentListRelationFilterImpl
    _$$SlotOfAppointmentListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAppointmentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SlotOfAppointmentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SlotOfAppointmentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SlotOfAppointmentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAppointmentListRelationFilterImplToJson(
        _$SlotOfAppointmentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SlotOfAppointmentRelationFilterImpl
    _$$SlotOfAppointmentRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$SlotOfAppointmentRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SlotOfAppointmentWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SlotOfAppointmentWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAppointmentRelationFilterImplToJson(
        _$SlotOfAppointmentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SlotOfAppointmentOrderByInputImpl
    _$$SlotOfAppointmentOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$SlotOfAppointmentOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          startsAt: $enumDecodeNullable(_$SortOrderEnumMap, json['startsAt']),
          endsAt: $enumDecodeNullable(_$SortOrderEnumMap, json['endsAt']),
          isTentative:
              $enumDecodeNullable(_$SortOrderEnumMap, json['isTentative']),
          completedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['completedAt']),
          appointmentId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['appointmentId']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$SlotOfAppointmentOrderByInputImplToJson(
        _$SlotOfAppointmentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'startsAt': _$SortOrderEnumMap[instance.startsAt],
      'endsAt': _$SortOrderEnumMap[instance.endsAt],
      'isTentative': _$SortOrderEnumMap[instance.isTentative],
      'completedAt': _$SortOrderEnumMap[instance.completedAt],
      'appointmentId': _$SortOrderEnumMap[instance.appointmentId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
