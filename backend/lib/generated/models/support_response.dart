import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'support_ticket.dart';
import 'user.dart';

part 'support_response.freezed.dart';
part 'support_response.g.dart';

@freezed
class SupportResponse with _$SupportResponse {
  const factory SupportResponse({
    required String id,
    required String message,
    @Default(false)
    bool isInternal,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SupportTicket? supportTicket,
    required String supportTicketId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SupportResponse;

  factory SupportResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseFromJson(json);
}

/// Input for creating a new SupportResponse
@freezed
class CreateSupportResponseInput with _$CreateSupportResponseInput {
  const factory CreateSupportResponseInput({
    required String message,
    @Default(false)
    bool? isInternal,
    required String supportTicketId,
    required String userId,
  }) = _CreateSupportResponseInput;

  factory CreateSupportResponseInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSupportResponseInputFromJson(json);
}

/// Input for updating an existing SupportResponse
@freezed
class UpdateSupportResponseInput with _$UpdateSupportResponseInput {
  const factory UpdateSupportResponseInput({
    String? message,
    bool? isInternal,
    String? supportTicketId,
    String? userId,
  }) = _UpdateSupportResponseInput;

  factory UpdateSupportResponseInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupportResponseInputFromJson(json);
}

/// Unique where input for SupportResponse
/// At least one field must be provided
@freezed
class SupportResponseWhereUniqueInput with _$SupportResponseWhereUniqueInput {
  const factory SupportResponseWhereUniqueInput({
    String? id,
  }) = _SupportResponseWhereUniqueInput;

  factory SupportResponseWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseWhereUniqueInputFromJson(json);
}

/// Where input for filtering SupportResponse records
@freezed
class SupportResponseWhereInput with _$SupportResponseWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SupportResponseWhereInput({
    StringFilter? id,
    StringFilter? message,
    BooleanFilter? isInternal,
    /// Filter by supportTicket relation
    SupportTicketRelationFilter? supportTicket,
    StringFilter? supportTicketId,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SupportResponseWhereInput>? AND,
    List<SupportResponseWhereInput>? OR,
    SupportResponseWhereInput? NOT,
  }) = _SupportResponseWhereInput;

  factory SupportResponseWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseWhereInputFromJson(json);
}

/// Filter for SupportResponse list relations (one-to-many, many-to-many)
@freezed
class SupportResponseListRelationFilter with _$SupportResponseListRelationFilter {
  const factory SupportResponseListRelationFilter({
    /// At least one related record matches
    SupportResponseWhereInput? some,
    /// All related records match
    SupportResponseWhereInput? every,
    /// No related records match
    SupportResponseWhereInput? none,
  }) = _SupportResponseListRelationFilter;

  factory SupportResponseListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseListRelationFilterFromJson(json);
}

/// Filter for SupportResponse single relations (one-to-one, many-to-one)
@freezed
class SupportResponseRelationFilter with _$SupportResponseRelationFilter {
  const factory SupportResponseRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SupportResponseWhereInput? is_,
    /// Related record does not match
    SupportResponseWhereInput? isNot,
  }) = _SupportResponseRelationFilter;

  factory SupportResponseRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseRelationFilterFromJson(json);
}

/// Order by input for sorting SupportResponse records
@freezed
class SupportResponseOrderByInput with _$SupportResponseOrderByInput {
  const factory SupportResponseOrderByInput({
    SortOrder? id,
    SortOrder? message,
    SortOrder? isInternal,
    SortOrder? supportTicketId,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SupportResponseOrderByInput;

  factory SupportResponseOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseOrderByInputFromJson(json);
}

