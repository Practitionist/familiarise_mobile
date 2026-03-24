import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_document.freezed.dart';
part 'verification_document.g.dart';

@freezed
class VerificationDocument with _$VerificationDocument {
  const factory VerificationDocument({
    required String id,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    bool? isValid,
    String? staffFeedback,
    required String verificationId,
    required DateTime uploadedAt,
  }) = _VerificationDocument;

  factory VerificationDocument.fromJson(Map<String, dynamic> json) =>
      _$VerificationDocumentFromJson(json);
}
