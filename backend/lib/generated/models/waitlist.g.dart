// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WaitlistImpl _$$WaitlistImplFromJson(Map<String, dynamic> json) =>
    _$WaitlistImpl(
      id: json['id'] as String,
      joinedAt: DateTime.parse(json['joinedAt'] as String),
      position: (json['position'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$WaitlistStatusEnumMap, json['status']) ??
          WaitlistStatus.waiting,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      notifiedAt: json['notifiedAt'] == null
          ? null
          : DateTime.parse(json['notifiedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      reminderSentAt: json['reminderSentAt'] == null
          ? null
          : DateTime.parse(json['reminderSentAt'] as String),
      bookedAt: json['bookedAt'] == null
          ? null
          : DateTime.parse(json['bookedAt'] as String),
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
      preferences: json['preferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WaitlistImplToJson(_$WaitlistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'joinedAt': instance.joinedAt.toIso8601String(),
      'position': instance.position,
      'status': _$WaitlistStatusEnumMap[instance.status]!,
      'priority': instance.priority,
      'notifiedAt': instance.notifiedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'reminderSentAt': instance.reminderSentAt?.toIso8601String(),
      'bookedAt': instance.bookedAt?.toIso8601String(),
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'preferences': instance.preferences,
    };

const _$WaitlistStatusEnumMap = {
  WaitlistStatus.waiting: 'WAITING',
  WaitlistStatus.notified: 'NOTIFIED',
  WaitlistStatus.booked: 'BOOKED',
  WaitlistStatus.expired: 'EXPIRED',
  WaitlistStatus.cancelled: 'CANCELLED',
  WaitlistStatus.skipped: 'SKIPPED',
};

_$CreateWaitlistInputImpl _$$CreateWaitlistInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWaitlistInputImpl(
      position: (json['position'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$WaitlistStatusEnumMap, json['status']) ??
          WaitlistStatus.waiting,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      notifiedAt: json['notifiedAt'] == null
          ? null
          : DateTime.parse(json['notifiedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      reminderSentAt: json['reminderSentAt'] == null
          ? null
          : DateTime.parse(json['reminderSentAt'] as String),
      bookedAt: json['bookedAt'] == null
          ? null
          : DateTime.parse(json['bookedAt'] as String),
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
      preferences: json['preferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CreateWaitlistInputImplToJson(
        _$CreateWaitlistInputImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'status': _$WaitlistStatusEnumMap[instance.status]!,
      'priority': instance.priority,
      'notifiedAt': instance.notifiedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'reminderSentAt': instance.reminderSentAt?.toIso8601String(),
      'bookedAt': instance.bookedAt?.toIso8601String(),
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'preferences': instance.preferences,
    };

_$UpdateWaitlistInputImpl _$$UpdateWaitlistInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWaitlistInputImpl(
      position: (json['position'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$WaitlistStatusEnumMap, json['status']),
      priority: (json['priority'] as num?)?.toInt(),
      notifiedAt: json['notifiedAt'] == null
          ? null
          : DateTime.parse(json['notifiedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      reminderSentAt: json['reminderSentAt'] == null
          ? null
          : DateTime.parse(json['reminderSentAt'] as String),
      bookedAt: json['bookedAt'] == null
          ? null
          : DateTime.parse(json['bookedAt'] as String),
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
      preferences: json['preferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UpdateWaitlistInputImplToJson(
        _$UpdateWaitlistInputImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'status': _$WaitlistStatusEnumMap[instance.status],
      'priority': instance.priority,
      'notifiedAt': instance.notifiedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'reminderSentAt': instance.reminderSentAt?.toIso8601String(),
      'bookedAt': instance.bookedAt?.toIso8601String(),
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'preferences': instance.preferences,
    };

_$WaitlistWhereUniqueInputImpl _$$WaitlistWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$WaitlistWhereUniqueInputImplToJson(
        _$WaitlistWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$WaitlistWhereInputImpl _$$WaitlistWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      joinedAt: json['joinedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['joinedAt'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : IntFilter.fromJson(json['position'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : WaitlistStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? null
          : IntFilter.fromJson(json['priority'] as Map<String, dynamic>),
      notifiedAt: json['notifiedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['notifiedAt'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      reminderSentAt: json['reminderSentAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['reminderSentAt'] as Map<String, dynamic>),
      bookedAt: json['bookedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['bookedAt'] as Map<String, dynamic>),
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['respondedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => WaitlistWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => WaitlistWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WaitlistWhereInputImplToJson(
        _$WaitlistWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'joinedAt': instance.joinedAt?.toJson(),
      'position': instance.position?.toJson(),
      'status': instance.status?.toJson(),
      'priority': instance.priority?.toJson(),
      'notifiedAt': instance.notifiedAt?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'reminderSentAt': instance.reminderSentAt?.toJson(),
      'bookedAt': instance.bookedAt?.toJson(),
      'respondedAt': instance.respondedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$WaitlistListRelationFilterImpl _$$WaitlistListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WaitlistListRelationFilterImplToJson(
        _$WaitlistListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WaitlistRelationFilterImpl _$$WaitlistRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : WaitlistWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WaitlistRelationFilterImplToJson(
        _$WaitlistRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WaitlistOrderByInputImpl _$$WaitlistOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitlistOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      joinedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['joinedAt']),
      position: $enumDecodeNullable(_$SortOrderEnumMap, json['position']),
      priority: $enumDecodeNullable(_$SortOrderEnumMap, json['priority']),
      notifiedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['notifiedAt']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      reminderSentAt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['reminderSentAt']),
      bookedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['bookedAt']),
      respondedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['respondedAt']),
    );

Map<String, dynamic> _$$WaitlistOrderByInputImplToJson(
        _$WaitlistOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'joinedAt': _$SortOrderEnumMap[instance.joinedAt],
      'position': _$SortOrderEnumMap[instance.position],
      'priority': _$SortOrderEnumMap[instance.priority],
      'notifiedAt': _$SortOrderEnumMap[instance.notifiedAt],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'reminderSentAt': _$SortOrderEnumMap[instance.reminderSentAt],
      'bookedAt': _$SortOrderEnumMap[instance.bookedAt],
      'respondedAt': _$SortOrderEnumMap[instance.respondedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
