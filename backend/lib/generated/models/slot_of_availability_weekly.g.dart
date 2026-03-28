// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_of_availability_weekly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlotOfAvailabilityWeeklyImpl _$$SlotOfAvailabilityWeeklyImplFromJson(
        Map<String, dynamic> json) =>
    _$SlotOfAvailabilityWeeklyImpl(
      id: json['id'] as String,
      startDay: $enumDecode(_$DayOfWeekEnumMap, json['startDay']),
      startTimeUtc: (json['startTimeUtc'] as num).toInt(),
      endDay: $enumDecode(_$DayOfWeekEnumMap, json['endDay']),
      endTimeUtc: (json['endTimeUtc'] as num).toInt(),
      utcOffsetMinutes: (json['utcOffsetMinutes'] as num?)?.toInt() ?? 0,
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyImplToJson(
        _$SlotOfAvailabilityWeeklyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDay': _$DayOfWeekEnumMap[instance.startDay]!,
      'startTimeUtc': instance.startTimeUtc,
      'endDay': _$DayOfWeekEnumMap[instance.endDay]!,
      'endTimeUtc': instance.endTimeUtc,
      'utcOffsetMinutes': instance.utcOffsetMinutes,
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.monday: 'MONDAY',
  DayOfWeek.tuesday: 'TUESDAY',
  DayOfWeek.wednesday: 'WEDNESDAY',
  DayOfWeek.thursday: 'THURSDAY',
  DayOfWeek.friday: 'FRIDAY',
  DayOfWeek.saturday: 'SATURDAY',
  DayOfWeek.sunday: 'SUNDAY',
};

_$CreateSlotOfAvailabilityWeeklyInputImpl
    _$$CreateSlotOfAvailabilityWeeklyInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateSlotOfAvailabilityWeeklyInputImpl(
          startDay: $enumDecode(_$DayOfWeekEnumMap, json['startDay']),
          startTimeUtc: (json['startTimeUtc'] as num).toInt(),
          endDay: $enumDecode(_$DayOfWeekEnumMap, json['endDay']),
          endTimeUtc: (json['endTimeUtc'] as num).toInt(),
          utcOffsetMinutes: (json['utcOffsetMinutes'] as num?)?.toInt() ?? 0,
          consultantProfileId: json['consultantProfileId'] as String,
        );

Map<String, dynamic> _$$CreateSlotOfAvailabilityWeeklyInputImplToJson(
        _$CreateSlotOfAvailabilityWeeklyInputImpl instance) =>
    <String, dynamic>{
      'startDay': _$DayOfWeekEnumMap[instance.startDay]!,
      'startTimeUtc': instance.startTimeUtc,
      'endDay': _$DayOfWeekEnumMap[instance.endDay]!,
      'endTimeUtc': instance.endTimeUtc,
      'utcOffsetMinutes': instance.utcOffsetMinutes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateSlotOfAvailabilityWeeklyInputImpl
    _$$UpdateSlotOfAvailabilityWeeklyInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateSlotOfAvailabilityWeeklyInputImpl(
          startDay: $enumDecodeNullable(_$DayOfWeekEnumMap, json['startDay']),
          startTimeUtc: (json['startTimeUtc'] as num?)?.toInt(),
          endDay: $enumDecodeNullable(_$DayOfWeekEnumMap, json['endDay']),
          endTimeUtc: (json['endTimeUtc'] as num?)?.toInt(),
          utcOffsetMinutes: (json['utcOffsetMinutes'] as num?)?.toInt(),
          consultantProfileId: json['consultantProfileId'] as String?,
        );

Map<String, dynamic> _$$UpdateSlotOfAvailabilityWeeklyInputImplToJson(
        _$UpdateSlotOfAvailabilityWeeklyInputImpl instance) =>
    <String, dynamic>{
      'startDay': _$DayOfWeekEnumMap[instance.startDay],
      'startTimeUtc': instance.startTimeUtc,
      'endDay': _$DayOfWeekEnumMap[instance.endDay],
      'endTimeUtc': instance.endTimeUtc,
      'utcOffsetMinutes': instance.utcOffsetMinutes,
      'consultantProfileId': instance.consultantProfileId,
    };

_$SlotOfAvailabilityWeeklyWhereUniqueInputImpl
    _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplToJson(
        _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SlotOfAvailabilityWeeklyWhereInputImpl
    _$$SlotOfAvailabilityWeeklyWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityWeeklyWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          startDay: json['startDay'] == null
              ? null
              : DayOfWeekFilter.fromJson(
                  json['startDay'] as Map<String, dynamic>),
          startTimeUtc: json['startTimeUtc'] == null
              ? null
              : IntFilter.fromJson(
                  json['startTimeUtc'] as Map<String, dynamic>),
          endDay: json['endDay'] == null
              ? null
              : DayOfWeekFilter.fromJson(
                  json['endDay'] as Map<String, dynamic>),
          endTimeUtc: json['endTimeUtc'] == null
              ? null
              : IntFilter.fromJson(json['endTimeUtc'] as Map<String, dynamic>),
          utcOffsetMinutes: json['utcOffsetMinutes'] == null
              ? null
              : IntFilter.fromJson(
                  json['utcOffsetMinutes'] as Map<String, dynamic>),
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
              : DateTimeFilter.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyWhereInputImplToJson(
        _$SlotOfAvailabilityWeeklyWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'startDay': instance.startDay?.toJson(),
      'startTimeUtc': instance.startTimeUtc?.toJson(),
      'endDay': instance.endDay?.toJson(),
      'endTimeUtc': instance.endTimeUtc?.toJson(),
      'utcOffsetMinutes': instance.utcOffsetMinutes?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SlotOfAvailabilityWeeklyListRelationFilterImpl
    _$$SlotOfAvailabilityWeeklyListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityWeeklyListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyListRelationFilterImplToJson(
        _$SlotOfAvailabilityWeeklyListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SlotOfAvailabilityWeeklyRelationFilterImpl
    _$$SlotOfAvailabilityWeeklyRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityWeeklyRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SlotOfAvailabilityWeeklyWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyRelationFilterImplToJson(
        _$SlotOfAvailabilityWeeklyRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SlotOfAvailabilityWeeklyOrderByInputImpl
    _$$SlotOfAvailabilityWeeklyOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityWeeklyOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          startTimeUtc:
              $enumDecodeNullable(_$SortOrderEnumMap, json['startTimeUtc']),
          endTimeUtc:
              $enumDecodeNullable(_$SortOrderEnumMap, json['endTimeUtc']),
          utcOffsetMinutes:
              $enumDecodeNullable(_$SortOrderEnumMap, json['utcOffsetMinutes']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$SlotOfAvailabilityWeeklyOrderByInputImplToJson(
        _$SlotOfAvailabilityWeeklyOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'startTimeUtc': _$SortOrderEnumMap[instance.startTimeUtc],
      'endTimeUtc': _$SortOrderEnumMap[instance.endTimeUtc],
      'utcOffsetMinutes': _$SortOrderEnumMap[instance.utcOffsetMinutes],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
