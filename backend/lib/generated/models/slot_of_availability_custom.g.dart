// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_of_availability_custom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlotOfAvailabilityCustomImpl _$$SlotOfAvailabilityCustomImplFromJson(
        Map<String, dynamic> json) =>
    _$SlotOfAvailabilityCustomImpl(
      id: json['id'] as String,
      startsAt: DateTime.parse(json['startsAt'] as String),
      endsAt: DateTime.parse(json['endsAt'] as String),
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SlotOfAvailabilityCustomImplToJson(
        _$SlotOfAvailabilityCustomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startsAt': instance.startsAt.toIso8601String(),
      'endsAt': instance.endsAt.toIso8601String(),
      'consultantProfileId': instance.consultantProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateSlotOfAvailabilityCustomInputImpl
    _$$CreateSlotOfAvailabilityCustomInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateSlotOfAvailabilityCustomInputImpl(
          startsAt: DateTime.parse(json['startsAt'] as String),
          endsAt: DateTime.parse(json['endsAt'] as String),
          consultantProfileId: json['consultantProfileId'] as String,
        );

Map<String, dynamic> _$$CreateSlotOfAvailabilityCustomInputImplToJson(
        _$CreateSlotOfAvailabilityCustomInputImpl instance) =>
    <String, dynamic>{
      'startsAt': instance.startsAt.toIso8601String(),
      'endsAt': instance.endsAt.toIso8601String(),
      'consultantProfileId': instance.consultantProfileId,
    };

_$UpdateSlotOfAvailabilityCustomInputImpl
    _$$UpdateSlotOfAvailabilityCustomInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateSlotOfAvailabilityCustomInputImpl(
          startsAt: json['startsAt'] == null
              ? null
              : DateTime.parse(json['startsAt'] as String),
          endsAt: json['endsAt'] == null
              ? null
              : DateTime.parse(json['endsAt'] as String),
          consultantProfileId: json['consultantProfileId'] as String?,
        );

Map<String, dynamic> _$$UpdateSlotOfAvailabilityCustomInputImplToJson(
        _$UpdateSlotOfAvailabilityCustomInputImpl instance) =>
    <String, dynamic>{
      'startsAt': instance.startsAt?.toIso8601String(),
      'endsAt': instance.endsAt?.toIso8601String(),
      'consultantProfileId': instance.consultantProfileId,
    };

_$SlotOfAvailabilityCustomWhereUniqueInputImpl
    _$$SlotOfAvailabilityCustomWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityCustomWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SlotOfAvailabilityCustomWhereUniqueInputImplToJson(
        _$SlotOfAvailabilityCustomWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SlotOfAvailabilityCustomWhereInputImpl
    _$$SlotOfAvailabilityCustomWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityCustomWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          startsAt: json['startsAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['startsAt'] as Map<String, dynamic>),
          endsAt: json['endsAt'] == null
              ? null
              : DateTimeFilter.fromJson(json['endsAt'] as Map<String, dynamic>),
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
              ?.map((e) => SlotOfAvailabilityCustomWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => SlotOfAvailabilityCustomWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityCustomWhereInputImplToJson(
        _$SlotOfAvailabilityCustomWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'startsAt': instance.startsAt?.toJson(),
      'endsAt': instance.endsAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SlotOfAvailabilityCustomListRelationFilterImpl
    _$$SlotOfAvailabilityCustomListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityCustomListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityCustomListRelationFilterImplToJson(
        _$SlotOfAvailabilityCustomListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SlotOfAvailabilityCustomRelationFilterImpl
    _$$SlotOfAvailabilityCustomRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityCustomRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SlotOfAvailabilityCustomWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SlotOfAvailabilityCustomRelationFilterImplToJson(
        _$SlotOfAvailabilityCustomRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SlotOfAvailabilityCustomOrderByInputImpl
    _$$SlotOfAvailabilityCustomOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$SlotOfAvailabilityCustomOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          startsAt: $enumDecodeNullable(_$SortOrderEnumMap, json['startsAt']),
          endsAt: $enumDecodeNullable(_$SortOrderEnumMap, json['endsAt']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$SlotOfAvailabilityCustomOrderByInputImplToJson(
        _$SlotOfAvailabilityCustomOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'startsAt': _$SortOrderEnumMap[instance.startsAt],
      'endsAt': _$SortOrderEnumMap[instance.endsAt],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
