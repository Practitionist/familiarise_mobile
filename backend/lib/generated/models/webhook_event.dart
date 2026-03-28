import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

part 'webhook_event.freezed.dart';
part 'webhook_event.g.dart';

@freezed
class WebhookEvent with _$WebhookEvent {
  const factory WebhookEvent({
    required String id,
    required String provider,
    required String eventId,
    required String eventType,
    required Map<String, dynamic> payload,
    String? signature,
    @Default(false)
    bool processed,
    DateTime? processedAt,
    String? error,
    required DateTime receivedAt,
  }) = _WebhookEvent;

  factory WebhookEvent.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventFromJson(json);
}

/// Input for creating a new WebhookEvent
@freezed
class CreateWebhookEventInput with _$CreateWebhookEventInput {
  const factory CreateWebhookEventInput({
    required String provider,
    required String eventId,
    required String eventType,
    required Map<String, dynamic> payload,
    String? signature,
    @Default(false)
    bool? processed,
    DateTime? processedAt,
    String? error,
  }) = _CreateWebhookEventInput;

  factory CreateWebhookEventInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWebhookEventInputFromJson(json);
}

/// Input for updating an existing WebhookEvent
@freezed
class UpdateWebhookEventInput with _$UpdateWebhookEventInput {
  const factory UpdateWebhookEventInput({
    String? provider,
    String? eventId,
    String? eventType,
    Map<String, dynamic>? payload,
    String? signature,
    bool? processed,
    DateTime? processedAt,
    String? error,
  }) = _UpdateWebhookEventInput;

  factory UpdateWebhookEventInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWebhookEventInputFromJson(json);
}

/// Unique where input for WebhookEvent
/// At least one field must be provided
@freezed
class WebhookEventWhereUniqueInput with _$WebhookEventWhereUniqueInput {
  const factory WebhookEventWhereUniqueInput({
    String? id,
    String? eventId,
  }) = _WebhookEventWhereUniqueInput;

  factory WebhookEventWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventWhereUniqueInputFromJson(json);
}

/// Where input for filtering WebhookEvent records
@freezed
class WebhookEventWhereInput with _$WebhookEventWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WebhookEventWhereInput({
    StringFilter? id,
    StringFilter? provider,
    StringFilter? eventId,
    StringFilter? eventType,
    StringFilter? signature,
    BooleanFilter? processed,
    DateTimeFilter? processedAt,
    StringFilter? error,
    DateTimeFilter? receivedAt,
    List<WebhookEventWhereInput>? AND,
    List<WebhookEventWhereInput>? OR,
    WebhookEventWhereInput? NOT,
  }) = _WebhookEventWhereInput;

  factory WebhookEventWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventWhereInputFromJson(json);
}

/// Filter for WebhookEvent list relations (one-to-many, many-to-many)
@freezed
class WebhookEventListRelationFilter with _$WebhookEventListRelationFilter {
  const factory WebhookEventListRelationFilter({
    /// At least one related record matches
    WebhookEventWhereInput? some,
    /// All related records match
    WebhookEventWhereInput? every,
    /// No related records match
    WebhookEventWhereInput? none,
  }) = _WebhookEventListRelationFilter;

  factory WebhookEventListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventListRelationFilterFromJson(json);
}

/// Filter for WebhookEvent single relations (one-to-one, many-to-one)
@freezed
class WebhookEventRelationFilter with _$WebhookEventRelationFilter {
  const factory WebhookEventRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WebhookEventWhereInput? is_,
    /// Related record does not match
    WebhookEventWhereInput? isNot,
  }) = _WebhookEventRelationFilter;

  factory WebhookEventRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventRelationFilterFromJson(json);
}

/// Order by input for sorting WebhookEvent records
@freezed
class WebhookEventOrderByInput with _$WebhookEventOrderByInput {
  const factory WebhookEventOrderByInput({
    SortOrder? id,
    SortOrder? provider,
    SortOrder? eventId,
    SortOrder? eventType,
    SortOrder? signature,
    SortOrder? processed,
    SortOrder? processedAt,
    SortOrder? error,
    SortOrder? receivedAt,
  }) = _WebhookEventOrderByInput;

  factory WebhookEventOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventOrderByInputFromJson(json);
}

