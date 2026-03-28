import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'support_ticket.dart';

part 'support_ticket_attachment.freezed.dart';
part 'support_ticket_attachment.g.dart';

@freezed
class SupportTicketAttachment with _$SupportTicketAttachment {
  const factory SupportTicketAttachment({
    required String id,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SupportTicket? ticket,
    required String ticketId,
    required DateTime uploadedAt,
  }) = _SupportTicketAttachment;

  factory SupportTicketAttachment.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentFromJson(json);
}

/// Input for creating a new SupportTicketAttachment
@freezed
class CreateSupportTicketAttachmentInput with _$CreateSupportTicketAttachmentInput {
  const factory CreateSupportTicketAttachmentInput({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    required String ticketId,
  }) = _CreateSupportTicketAttachmentInput;

  factory CreateSupportTicketAttachmentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSupportTicketAttachmentInputFromJson(json);
}

/// Input for updating an existing SupportTicketAttachment
@freezed
class UpdateSupportTicketAttachmentInput with _$UpdateSupportTicketAttachmentInput {
  const factory UpdateSupportTicketAttachmentInput({
    String? fileName,
    String? originalName,
    int? fileSize,
    String? mimeType,
    String? fileUrl,
    String? storagePath,
    String? ticketId,
  }) = _UpdateSupportTicketAttachmentInput;

  factory UpdateSupportTicketAttachmentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupportTicketAttachmentInputFromJson(json);
}

/// Unique where input for SupportTicketAttachment
/// At least one field must be provided
@freezed
class SupportTicketAttachmentWhereUniqueInput with _$SupportTicketAttachmentWhereUniqueInput {
  const factory SupportTicketAttachmentWhereUniqueInput({
    String? id,
  }) = _SupportTicketAttachmentWhereUniqueInput;

  factory SupportTicketAttachmentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentWhereUniqueInputFromJson(json);
}

/// Where input for filtering SupportTicketAttachment records
@freezed
class SupportTicketAttachmentWhereInput with _$SupportTicketAttachmentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SupportTicketAttachmentWhereInput({
    StringFilter? id,
    StringFilter? fileName,
    StringFilter? originalName,
    IntFilter? fileSize,
    StringFilter? mimeType,
    StringFilter? fileUrl,
    StringFilter? storagePath,
    /// Filter by ticket relation
    SupportTicketRelationFilter? ticket,
    StringFilter? ticketId,
    DateTimeFilter? uploadedAt,
    List<SupportTicketAttachmentWhereInput>? AND,
    List<SupportTicketAttachmentWhereInput>? OR,
    SupportTicketAttachmentWhereInput? NOT,
  }) = _SupportTicketAttachmentWhereInput;

  factory SupportTicketAttachmentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentWhereInputFromJson(json);
}

/// Filter for SupportTicketAttachment list relations (one-to-many, many-to-many)
@freezed
class SupportTicketAttachmentListRelationFilter with _$SupportTicketAttachmentListRelationFilter {
  const factory SupportTicketAttachmentListRelationFilter({
    /// At least one related record matches
    SupportTicketAttachmentWhereInput? some,
    /// All related records match
    SupportTicketAttachmentWhereInput? every,
    /// No related records match
    SupportTicketAttachmentWhereInput? none,
  }) = _SupportTicketAttachmentListRelationFilter;

  factory SupportTicketAttachmentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentListRelationFilterFromJson(json);
}

/// Filter for SupportTicketAttachment single relations (one-to-one, many-to-one)
@freezed
class SupportTicketAttachmentRelationFilter with _$SupportTicketAttachmentRelationFilter {
  const factory SupportTicketAttachmentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SupportTicketAttachmentWhereInput? is_,
    /// Related record does not match
    SupportTicketAttachmentWhereInput? isNot,
  }) = _SupportTicketAttachmentRelationFilter;

  factory SupportTicketAttachmentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentRelationFilterFromJson(json);
}

/// Order by input for sorting SupportTicketAttachment records
@freezed
class SupportTicketAttachmentOrderByInput with _$SupportTicketAttachmentOrderByInput {
  const factory SupportTicketAttachmentOrderByInput({
    SortOrder? id,
    SortOrder? fileName,
    SortOrder? originalName,
    SortOrder? fileSize,
    SortOrder? mimeType,
    SortOrder? fileUrl,
    SortOrder? storagePath,
    SortOrder? ticketId,
    SortOrder? uploadedAt,
  }) = _SupportTicketAttachmentOrderByInput;

  factory SupportTicketAttachmentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketAttachmentOrderByInputFromJson(json);
}

