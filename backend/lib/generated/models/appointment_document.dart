import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'document_review_status.dart';
import 'document_upload_role.dart';
import 'appointment_document.dart';
import 'appointment.dart';

part 'appointment_document.freezed.dart';
part 'appointment_document.g.dart';

@freezed
class AppointmentDocument with _$AppointmentDocument {
  const factory AppointmentDocument({
    required String id,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    @Default(DocumentReviewStatus.pending)
    DocumentReviewStatus reviewStatus,
    String? reviewNotes,
    DateTime? reviewedAt,
    String? reviewedBy,
    @Default(DocumentUploadRole.consultee)
    DocumentUploadRole uploadedByRole,
    String? responseToDocumentId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    AppointmentDocument? responseToDocument,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<AppointmentDocument>? responseDocuments,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Appointment? appointment,
    required String appointmentId,
    required DateTime uploadedAt,
    required DateTime updatedAt,
  }) = _AppointmentDocument;

  factory AppointmentDocument.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentFromJson(json);
}

/// Input for creating a new AppointmentDocument
@freezed
class CreateAppointmentDocumentInput with _$CreateAppointmentDocumentInput {
  const factory CreateAppointmentDocumentInput({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    @Default(DocumentReviewStatus.pending)
    DocumentReviewStatus reviewStatus,
    String? reviewNotes,
    DateTime? reviewedAt,
    String? reviewedBy,
    @Default(DocumentUploadRole.consultee)
    DocumentUploadRole uploadedByRole,
    String? responseToDocumentId,
    required String appointmentId,
  }) = _CreateAppointmentDocumentInput;

  factory CreateAppointmentDocumentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentDocumentInputFromJson(json);
}

/// Input for updating an existing AppointmentDocument
@freezed
class UpdateAppointmentDocumentInput with _$UpdateAppointmentDocumentInput {
  const factory UpdateAppointmentDocumentInput({
    String? fileName,
    String? originalName,
    int? fileSize,
    String? mimeType,
    String? fileUrl,
    String? storagePath,
    String? description,
    DocumentReviewStatus? reviewStatus,
    String? reviewNotes,
    DateTime? reviewedAt,
    String? reviewedBy,
    DocumentUploadRole? uploadedByRole,
    String? responseToDocumentId,
    String? appointmentId,
  }) = _UpdateAppointmentDocumentInput;

  factory UpdateAppointmentDocumentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppointmentDocumentInputFromJson(json);
}

/// Unique where input for AppointmentDocument
/// At least one field must be provided
@freezed
class AppointmentDocumentWhereUniqueInput with _$AppointmentDocumentWhereUniqueInput {
  const factory AppointmentDocumentWhereUniqueInput({
    String? id,
  }) = _AppointmentDocumentWhereUniqueInput;

  factory AppointmentDocumentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentWhereUniqueInputFromJson(json);
}

/// Where input for filtering AppointmentDocument records
@freezed
class AppointmentDocumentWhereInput with _$AppointmentDocumentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AppointmentDocumentWhereInput({
    StringFilter? id,
    StringFilter? fileName,
    StringFilter? originalName,
    IntFilter? fileSize,
    StringFilter? mimeType,
    StringFilter? fileUrl,
    StringFilter? storagePath,
    StringFilter? description,
    DocumentReviewStatusFilter? reviewStatus,
    StringFilter? reviewNotes,
    DateTimeFilter? reviewedAt,
    StringFilter? reviewedBy,
    DocumentUploadRoleFilter? uploadedByRole,
    StringFilter? responseToDocumentId,
    /// Filter by responseToDocument relation
    AppointmentDocumentRelationFilter? responseToDocument,
    /// Filter by responseDocuments relation
    AppointmentDocumentListRelationFilter? responseDocuments,
    /// Filter by appointment relation
    AppointmentRelationFilter? appointment,
    StringFilter? appointmentId,
    DateTimeFilter? uploadedAt,
    DateTimeFilter? updatedAt,
    List<AppointmentDocumentWhereInput>? AND,
    List<AppointmentDocumentWhereInput>? OR,
    AppointmentDocumentWhereInput? NOT,
  }) = _AppointmentDocumentWhereInput;

  factory AppointmentDocumentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentWhereInputFromJson(json);
}

/// Filter for AppointmentDocument list relations (one-to-many, many-to-many)
@freezed
class AppointmentDocumentListRelationFilter with _$AppointmentDocumentListRelationFilter {
  const factory AppointmentDocumentListRelationFilter({
    /// At least one related record matches
    AppointmentDocumentWhereInput? some,
    /// All related records match
    AppointmentDocumentWhereInput? every,
    /// No related records match
    AppointmentDocumentWhereInput? none,
  }) = _AppointmentDocumentListRelationFilter;

  factory AppointmentDocumentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentListRelationFilterFromJson(json);
}

/// Filter for AppointmentDocument single relations (one-to-one, many-to-one)
@freezed
class AppointmentDocumentRelationFilter with _$AppointmentDocumentRelationFilter {
  const factory AppointmentDocumentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AppointmentDocumentWhereInput? is_,
    /// Related record does not match
    AppointmentDocumentWhereInput? isNot,
  }) = _AppointmentDocumentRelationFilter;

  factory AppointmentDocumentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentRelationFilterFromJson(json);
}

/// Order by input for sorting AppointmentDocument records
@freezed
class AppointmentDocumentOrderByInput with _$AppointmentDocumentOrderByInput {
  const factory AppointmentDocumentOrderByInput({
    SortOrder? id,
    SortOrder? fileName,
    SortOrder? originalName,
    SortOrder? fileSize,
    SortOrder? mimeType,
    SortOrder? fileUrl,
    SortOrder? storagePath,
    SortOrder? description,
    SortOrder? reviewNotes,
    SortOrder? reviewedAt,
    SortOrder? reviewedBy,
    SortOrder? responseToDocumentId,
    SortOrder? appointmentId,
    SortOrder? uploadedAt,
    SortOrder? updatedAt,
  }) = _AppointmentDocumentOrderByInput;

  factory AppointmentDocumentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentOrderByInputFromJson(json);
}

