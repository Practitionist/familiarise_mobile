import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'support_priority.dart';
import 'support_ticket_status.dart';
import 'support_issue_type.dart';
import 'user.dart';
import 'support_response.dart';
import 'support_ticket_attachment.dart';

part 'support_ticket.freezed.dart';
part 'support_ticket.g.dart';

@freezed
class SupportTicket with _$SupportTicket {
  const factory SupportTicket({
    required String id,
    required String title,
    required String description,
    @Default(SupportPriority.medium)
    SupportPriority priority,
    @Default(SupportTicketStatus.open)
    SupportTicketStatus status,
    String? category,
    SupportIssueType? issueType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required List<SupportResponse> responses,
    required List<SupportTicketAttachment> attachments,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
    String? refundId,
    String? assignedToId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SupportTicket;

  factory SupportTicket.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketFromJson(json);
}

/// Input for creating a new SupportTicket
@freezed
class CreateSupportTicketInput with _$CreateSupportTicketInput {
  const factory CreateSupportTicketInput({
    required String title,
    required String description,
    @Default(SupportPriority.medium)
    SupportPriority priority,
    @Default(SupportTicketStatus.open)
    SupportTicketStatus status,
    String? category,
    SupportIssueType? issueType,
    required String userId,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
    String? refundId,
    String? assignedToId,
  }) = _CreateSupportTicketInput;

  factory CreateSupportTicketInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSupportTicketInputFromJson(json);
}

/// Input for updating an existing SupportTicket
@freezed
class UpdateSupportTicketInput with _$UpdateSupportTicketInput {
  const factory UpdateSupportTicketInput({
    String? title,
    String? description,
    SupportPriority? priority,
    SupportTicketStatus? status,
    String? category,
    SupportIssueType? issueType,
    String? userId,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
    String? refundId,
    String? assignedToId,
  }) = _UpdateSupportTicketInput;

  factory UpdateSupportTicketInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupportTicketInputFromJson(json);
}

/// Unique where input for SupportTicket
/// At least one field must be provided
@freezed
class SupportTicketWhereUniqueInput with _$SupportTicketWhereUniqueInput {
  const factory SupportTicketWhereUniqueInput({
    String? id,
  }) = _SupportTicketWhereUniqueInput;

  factory SupportTicketWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketWhereUniqueInputFromJson(json);
}

/// Where input for filtering SupportTicket records
@freezed
class SupportTicketWhereInput with _$SupportTicketWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SupportTicketWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    SupportPriorityFilter? priority,
    SupportTicketStatusFilter? status,
    StringFilter? category,
    SupportIssueTypeFilter? issueType,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    StringFilter? consultationId,
    StringFilter? subscriptionId,
    StringFilter? paymentId,
    StringFilter? refundId,
    StringFilter? assignedToId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SupportTicketWhereInput>? AND,
    List<SupportTicketWhereInput>? OR,
    SupportTicketWhereInput? NOT,
  }) = _SupportTicketWhereInput;

  factory SupportTicketWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketWhereInputFromJson(json);
}

/// Filter for SupportTicket list relations (one-to-many, many-to-many)
@freezed
class SupportTicketListRelationFilter with _$SupportTicketListRelationFilter {
  const factory SupportTicketListRelationFilter({
    /// At least one related record matches
    SupportTicketWhereInput? some,
    /// All related records match
    SupportTicketWhereInput? every,
    /// No related records match
    SupportTicketWhereInput? none,
  }) = _SupportTicketListRelationFilter;

  factory SupportTicketListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketListRelationFilterFromJson(json);
}

/// Filter for SupportTicket single relations (one-to-one, many-to-one)
@freezed
class SupportTicketRelationFilter with _$SupportTicketRelationFilter {
  const factory SupportTicketRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SupportTicketWhereInput? is_,
    /// Related record does not match
    SupportTicketWhereInput? isNot,
  }) = _SupportTicketRelationFilter;

  factory SupportTicketRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketRelationFilterFromJson(json);
}

/// Order by input for sorting SupportTicket records
@freezed
class SupportTicketOrderByInput with _$SupportTicketOrderByInput {
  const factory SupportTicketOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? category,
    SortOrder? userId,
    SortOrder? consultationId,
    SortOrder? subscriptionId,
    SortOrder? paymentId,
    SortOrder? refundId,
    SortOrder? assignedToId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SupportTicketOrderByInput;

  factory SupportTicketOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketOrderByInputFromJson(json);
}

