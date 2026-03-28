// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportResponseImpl _$$SupportResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportResponseImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      isInternal: json['isInternal'] as bool? ?? false,
      supportTicketId: json['supportTicketId'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SupportResponseImplToJson(
        _$SupportResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'isInternal': instance.isInternal,
      'supportTicketId': instance.supportTicketId,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateSupportResponseInputImpl _$$CreateSupportResponseInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSupportResponseInputImpl(
      message: json['message'] as String,
      isInternal: json['isInternal'] as bool? ?? false,
      supportTicketId: json['supportTicketId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateSupportResponseInputImplToJson(
        _$CreateSupportResponseInputImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isInternal': instance.isInternal,
      'supportTicketId': instance.supportTicketId,
      'userId': instance.userId,
    };

_$UpdateSupportResponseInputImpl _$$UpdateSupportResponseInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSupportResponseInputImpl(
      message: json['message'] as String?,
      isInternal: json['isInternal'] as bool?,
      supportTicketId: json['supportTicketId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateSupportResponseInputImplToJson(
        _$UpdateSupportResponseInputImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isInternal': instance.isInternal,
      'supportTicketId': instance.supportTicketId,
      'userId': instance.userId,
    };

_$SupportResponseWhereUniqueInputImpl
    _$$SupportResponseWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$SupportResponseWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$SupportResponseWhereUniqueInputImplToJson(
        _$SupportResponseWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SupportResponseWhereInputImpl _$$SupportResponseWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportResponseWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : StringFilter.fromJson(json['message'] as Map<String, dynamic>),
      isInternal: json['isInternal'] == null
          ? null
          : BooleanFilter.fromJson(json['isInternal'] as Map<String, dynamic>),
      supportTicket: json['supportTicket'] == null
          ? null
          : SupportTicketRelationFilter.fromJson(
              json['supportTicket'] as Map<String, dynamic>),
      supportTicketId: json['supportTicketId'] == null
          ? null
          : StringFilter.fromJson(
              json['supportTicketId'] as Map<String, dynamic>),
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
          ?.map((e) =>
              SupportResponseWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              SupportResponseWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : SupportResponseWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportResponseWhereInputImplToJson(
        _$SupportResponseWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'message': instance.message?.toJson(),
      'isInternal': instance.isInternal?.toJson(),
      'supportTicket': instance.supportTicket?.toJson(),
      'supportTicketId': instance.supportTicketId?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$SupportResponseListRelationFilterImpl
    _$$SupportResponseListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportResponseListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : SupportResponseWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : SupportResponseWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : SupportResponseWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportResponseListRelationFilterImplToJson(
        _$SupportResponseListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$SupportResponseRelationFilterImpl
    _$$SupportResponseRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$SupportResponseRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : SupportResponseWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : SupportResponseWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportResponseRelationFilterImplToJson(
        _$SupportResponseRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$SupportResponseOrderByInputImpl _$$SupportResponseOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportResponseOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      message: $enumDecodeNullable(_$SortOrderEnumMap, json['message']),
      isInternal: $enumDecodeNullable(_$SortOrderEnumMap, json['isInternal']),
      supportTicketId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['supportTicketId']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$SupportResponseOrderByInputImplToJson(
        _$SupportResponseOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'message': _$SortOrderEnumMap[instance.message],
      'isInternal': _$SortOrderEnumMap[instance.isInternal],
      'supportTicketId': _$SortOrderEnumMap[instance.supportTicketId],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
