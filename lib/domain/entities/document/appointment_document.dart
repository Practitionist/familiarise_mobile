import 'package:freezed_annotation/freezed_annotation.dart';

import 'document_review_status.dart';

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
    required DocumentReviewStatus reviewStatus,
    String? reviewNotes,
    DateTime? reviewedAt,
    String? reviewedBy,
    required String uploadedByRole,
    String? responseToDocumentId,
    required String appointmentId,
    required DateTime uploadedAt,
    required DateTime updatedAt,
  }) = _AppointmentDocument;

  factory AppointmentDocument.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDocumentFromJson(json);
}
