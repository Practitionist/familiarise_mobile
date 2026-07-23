import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for appointment document operations.
///
/// Uses PrismaClient typed delegates.
class AppointmentDocumentRepository extends BaseRepository {
  AppointmentDocumentRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Upload a document for an appointment.
  Future<Map<String, dynamic>> create({
    required String appointmentId,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    String uploadedByRole = 'CONSULTEE',
    String? responseToDocumentId,
  }) async {
    // id/uploadedAt/updatedAt autofilled; reviewStatus defaults to PENDING
    // on the typed create input.
    final result = await _prisma.appointmentDocument.create(
      data: CreateAppointmentDocumentInput(
        appointmentId: appointmentId,
        fileName: fileName,
        originalName: originalName,
        fileSize: fileSize,
        mimeType: mimeType,
        fileUrl: fileUrl,
        storagePath: storagePath,
        description: description,
        uploadedByRole: DocumentUploadRole.values
            .firstWhere((e) => e.toJson() == uploadedByRole),
        responseToDocumentId: responseToDocumentId,
      ),
    );
    return result.toJson();
  }

  /// Get all documents for an appointment.
  Future<List<Map<String, dynamic>>> findByAppointment(
    String appointmentId,
  ) async {
    final results = await _prisma.appointmentDocument.findMany(
      where: AppointmentDocumentWhereInput(
        appointmentId: StringFilter(equals: appointmentId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  /// Get a document by ID.
  Future<AppointmentDocument?> findById(String id) async {
    return _prisma.appointmentDocument.findUnique(
      where: AppointmentDocumentWhereUniqueInput(id: id),
    );
  }

  /// Update document review status (consultant reviews consultee doc).
  Future<AppointmentDocument> updateReview({
    required String id,
    required DocumentReviewStatus status,
    String? reviewNotes,
    String? reviewedBy,
  }) async {
    return _prisma.appointmentDocument.update(
      where: AppointmentDocumentWhereUniqueInput(id: id),
      data: UpdateAppointmentDocumentInput(
        reviewStatus: status,
        reviewNotes: reviewNotes,
        reviewedAt: DateTime.now().toUtc(),
        // reviewedBy was FK-ified (#676): raw String -> reviewedById scalar
        // + reviewedBy User? relation. Set the scalar FK directly.
        reviewedById: reviewedBy,
      ),
    );
  }

  /// Delete a document.
  Future<void> delete(String id) async {
    await _prisma.appointmentDocument.delete(
      where: AppointmentDocumentWhereUniqueInput(id: id),
    );
  }
}
