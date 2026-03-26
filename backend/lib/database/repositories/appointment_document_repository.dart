import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:uuid/uuid.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for appointment document operations.
///
/// Uses JsonQueryBuilder for creates (foreign keys) and PrismaClient
/// typed delegates for reads/updates.
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
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('AppointmentDocument')
        .action(QueryAction.create)
        .data({
      'id': const Uuid().v4(),
      'appointmentId': appointmentId,
      'fileName': fileName,
      'originalName': originalName,
      'fileSize': fileSize,
      'mimeType': mimeType,
      'fileUrl': fileUrl,
      'storagePath': storagePath,
      'description': description,
      'reviewStatus': 'PENDING',
      'uploadedByRole': uploadedByRole,
      'responseToDocumentId': responseToDocumentId,
      'uploadedAt': now,
      'updatedAt': now,
    }).build();

    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create document');
    return result;
  }

  /// Get all documents for an appointment.
  Future<List<Map<String, dynamic>>> findByAppointment(
    String appointmentId,
  ) async {
    final query = JsonQueryBuilder()
        .model('AppointmentDocument')
        .action(QueryAction.findMany)
        .where({'appointmentId': appointmentId})
        .build();
    return executeQueryAsMaps(query);
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
        reviewedBy: reviewedBy,
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
