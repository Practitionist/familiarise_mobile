// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffProfileImpl _$$StaffProfileImplFromJson(Map<String, dynamic> json) =>
    _$StaffProfileImpl(
      id: json['id'] as String,
      department: json['department'] as String?,
      position: json['position'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$StaffProfileImplToJson(_$StaffProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'department': instance.department,
      'position': instance.position,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateStaffProfileInputImpl _$$CreateStaffProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStaffProfileInputImpl(
      department: json['department'] as String?,
      position: json['position'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateStaffProfileInputImplToJson(
        _$CreateStaffProfileInputImpl instance) =>
    <String, dynamic>{
      'department': instance.department,
      'position': instance.position,
      'userId': instance.userId,
    };

_$UpdateStaffProfileInputImpl _$$UpdateStaffProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStaffProfileInputImpl(
      department: json['department'] as String?,
      position: json['position'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateStaffProfileInputImplToJson(
        _$UpdateStaffProfileInputImpl instance) =>
    <String, dynamic>{
      'department': instance.department,
      'position': instance.position,
      'userId': instance.userId,
    };

_$StaffProfileWhereUniqueInputImpl _$$StaffProfileWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffProfileWhereUniqueInputImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$StaffProfileWhereUniqueInputImplToJson(
        _$StaffProfileWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$StaffProfileWhereInputImpl _$$StaffProfileWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffProfileWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      department: json['department'] == null
          ? null
          : StringFilter.fromJson(json['department'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : StringFilter.fromJson(json['position'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => StaffProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => StaffProfileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : StaffProfileWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StaffProfileWhereInputImplToJson(
        _$StaffProfileWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'department': instance.department?.toJson(),
      'position': instance.position?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$StaffProfileListRelationFilterImpl
    _$$StaffProfileListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$StaffProfileListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : StaffProfileWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : StaffProfileWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : StaffProfileWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StaffProfileListRelationFilterImplToJson(
        _$StaffProfileListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$StaffProfileRelationFilterImpl _$$StaffProfileRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffProfileRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : StaffProfileWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : StaffProfileWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StaffProfileRelationFilterImplToJson(
        _$StaffProfileRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$StaffProfileOrderByInputImpl _$$StaffProfileOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffProfileOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      department: $enumDecodeNullable(_$SortOrderEnumMap, json['department']),
      position: $enumDecodeNullable(_$SortOrderEnumMap, json['position']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$StaffProfileOrderByInputImplToJson(
        _$StaffProfileOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'department': _$SortOrderEnumMap[instance.department],
      'position': _$SortOrderEnumMap[instance.position],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
