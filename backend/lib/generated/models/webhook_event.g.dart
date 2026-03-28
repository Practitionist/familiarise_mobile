// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebhookEventImpl _$$WebhookEventImplFromJson(Map<String, dynamic> json) =>
    _$WebhookEventImpl(
      id: json['id'] as String,
      provider: json['provider'] as String,
      eventId: json['eventId'] as String,
      eventType: json['eventType'] as String,
      payload: json['payload'] as Map<String, dynamic>,
      signature: json['signature'] as String?,
      processed: json['processed'] as bool? ?? false,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      error: json['error'] as String?,
      receivedAt: DateTime.parse(json['receivedAt'] as String),
    );

Map<String, dynamic> _$$WebhookEventImplToJson(_$WebhookEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'eventId': instance.eventId,
      'eventType': instance.eventType,
      'payload': instance.payload,
      'signature': instance.signature,
      'processed': instance.processed,
      'processedAt': instance.processedAt?.toIso8601String(),
      'error': instance.error,
      'receivedAt': instance.receivedAt.toIso8601String(),
    };

_$CreateWebhookEventInputImpl _$$CreateWebhookEventInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWebhookEventInputImpl(
      provider: json['provider'] as String,
      eventId: json['eventId'] as String,
      eventType: json['eventType'] as String,
      payload: json['payload'] as Map<String, dynamic>,
      signature: json['signature'] as String?,
      processed: json['processed'] as bool? ?? false,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$CreateWebhookEventInputImplToJson(
        _$CreateWebhookEventInputImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'eventId': instance.eventId,
      'eventType': instance.eventType,
      'payload': instance.payload,
      'signature': instance.signature,
      'processed': instance.processed,
      'processedAt': instance.processedAt?.toIso8601String(),
      'error': instance.error,
    };

_$UpdateWebhookEventInputImpl _$$UpdateWebhookEventInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWebhookEventInputImpl(
      provider: json['provider'] as String?,
      eventId: json['eventId'] as String?,
      eventType: json['eventType'] as String?,
      payload: json['payload'] as Map<String, dynamic>?,
      signature: json['signature'] as String?,
      processed: json['processed'] as bool?,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$UpdateWebhookEventInputImplToJson(
        _$UpdateWebhookEventInputImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'eventId': instance.eventId,
      'eventType': instance.eventType,
      'payload': instance.payload,
      'signature': instance.signature,
      'processed': instance.processed,
      'processedAt': instance.processedAt?.toIso8601String(),
      'error': instance.error,
    };

_$WebhookEventWhereUniqueInputImpl _$$WebhookEventWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebhookEventWhereUniqueInputImpl(
      id: json['id'] as String?,
      eventId: json['eventId'] as String?,
    );

Map<String, dynamic> _$$WebhookEventWhereUniqueInputImplToJson(
        _$WebhookEventWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
    };

_$WebhookEventWhereInputImpl _$$WebhookEventWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebhookEventWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      provider: json['provider'] == null
          ? null
          : StringFilter.fromJson(json['provider'] as Map<String, dynamic>),
      eventId: json['eventId'] == null
          ? null
          : StringFilter.fromJson(json['eventId'] as Map<String, dynamic>),
      eventType: json['eventType'] == null
          ? null
          : StringFilter.fromJson(json['eventType'] as Map<String, dynamic>),
      signature: json['signature'] == null
          ? null
          : StringFilter.fromJson(json['signature'] as Map<String, dynamic>),
      processed: json['processed'] == null
          ? null
          : BooleanFilter.fromJson(json['processed'] as Map<String, dynamic>),
      processedAt: json['processedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['processedAt'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : StringFilter.fromJson(json['error'] as Map<String, dynamic>),
      receivedAt: json['receivedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['receivedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => WebhookEventWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => WebhookEventWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : WebhookEventWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebhookEventWhereInputImplToJson(
        _$WebhookEventWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'provider': instance.provider?.toJson(),
      'eventId': instance.eventId?.toJson(),
      'eventType': instance.eventType?.toJson(),
      'signature': instance.signature?.toJson(),
      'processed': instance.processed?.toJson(),
      'processedAt': instance.processedAt?.toJson(),
      'error': instance.error?.toJson(),
      'receivedAt': instance.receivedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$WebhookEventListRelationFilterImpl
    _$$WebhookEventListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$WebhookEventListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : WebhookEventWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : WebhookEventWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : WebhookEventWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WebhookEventListRelationFilterImplToJson(
        _$WebhookEventListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$WebhookEventRelationFilterImpl _$$WebhookEventRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$WebhookEventRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : WebhookEventWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : WebhookEventWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebhookEventRelationFilterImplToJson(
        _$WebhookEventRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$WebhookEventOrderByInputImpl _$$WebhookEventOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$WebhookEventOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      provider: $enumDecodeNullable(_$SortOrderEnumMap, json['provider']),
      eventId: $enumDecodeNullable(_$SortOrderEnumMap, json['eventId']),
      eventType: $enumDecodeNullable(_$SortOrderEnumMap, json['eventType']),
      signature: $enumDecodeNullable(_$SortOrderEnumMap, json['signature']),
      processed: $enumDecodeNullable(_$SortOrderEnumMap, json['processed']),
      processedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['processedAt']),
      error: $enumDecodeNullable(_$SortOrderEnumMap, json['error']),
      receivedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['receivedAt']),
    );

Map<String, dynamic> _$$WebhookEventOrderByInputImplToJson(
        _$WebhookEventOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'provider': _$SortOrderEnumMap[instance.provider],
      'eventId': _$SortOrderEnumMap[instance.eventId],
      'eventType': _$SortOrderEnumMap[instance.eventType],
      'signature': _$SortOrderEnumMap[instance.signature],
      'processed': _$SortOrderEnumMap[instance.processed],
      'processedAt': _$SortOrderEnumMap[instance.processedAt],
      'error': _$SortOrderEnumMap[instance.error],
      'receivedAt': _$SortOrderEnumMap[instance.receivedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
