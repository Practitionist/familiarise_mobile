import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Thrown when a verification submission conflicts with an existing pending one.
class VerificationConflictException implements Exception {
  const VerificationConflictException();

  @override
  String toString() => 'A verification request is already pending';
}

/// Repository for consultant profile verification operations.
///
/// Uses PrismaClient typed delegates for type-safe CRUD.
/// Maps to `ConsultantProfileVerification` and `ProfileVerificationDocument`.
class ConsultantVerificationRepository extends BaseRepository {
  /// Creates a repository with query executor and PrismaClient.
  ConsultantVerificationRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Create a new verification request with optional document refs.
  Future<ConsultantProfileVerification> submit({
    required String consultantProfileId,
    String? notes,
  }) async {
    return _prisma.consultantProfileVerification.create(
      data: CreateConsultantProfileVerificationInput(
        consultantProfileId: consultantProfileId,
        notes: notes,
      ),
    );
  }

  /// Atomically check for pending verification and submit a new one.
  ///
  /// Wraps the findLatest + submit in a transaction to prevent
  /// race conditions where concurrent requests both pass the check.
  /// Throws [VerificationConflictException] if a pending one exists.
  Future<ConsultantProfileVerification> submitIfNoPending({
    required String consultantProfileId,
    String? notes,
  }) async {
    return executeInTransaction((txn) async {
      // Check for existing pending verification within transaction
      final checkQuery = JsonQueryBuilder()
          .model('ConsultantProfileVerification')
          .action(QueryAction.findFirst)
          .where({
        'consultantProfileId': consultantProfileId,
        'status': 'PENDING',
      }).build();

      final existing = await txn.executeQueryAsSingleMap(checkQuery);
      if (existing != null) {
        throw const VerificationConflictException();
      }

      // Create new verification within same transaction
      final now = nowIso8601;
      final createQuery = JsonQueryBuilder()
          .model('ConsultantProfileVerification')
          .action(QueryAction.create)
          .data({
        'consultantProfileId': consultantProfileId,
        'status': 'PENDING',
        'notes': notes,
        'submittedAt': now,
        'createdAt': now,
        'updatedAt': now,
      }).build();

      final result = await txn.executeQueryAsSingleMap(createQuery);
      if (result == null) {
        throw Exception('Failed to create verification');
      }
      final serialized = serializeForJson(result);
      serialized.putIfAbsent('documents', () => <dynamic>[]);
      return ConsultantProfileVerification.fromJson(serialized);
    });
  }

  /// Get the latest verification for a consultant profile.
  Future<ConsultantProfileVerification?> findLatest(
    String consultantProfileId,
  ) async {
    final result =
        await _prisma.consultantProfileVerification.findFirstRaw(
      where: {'consultantProfileId': consultantProfileId},
    );
    if (result == null) return null;
    final serialized = serializeForJson(result);
    serialized.putIfAbsent('documents', () => <dynamic>[]);
    return ConsultantProfileVerification.fromJson(serialized);
  }

  /// Get a verification by ID.
  Future<ConsultantProfileVerification?> findById(String id) async {
    return _prisma.consultantProfileVerification.findUnique(
      where: ConsultantProfileVerificationWhereUniqueInput(id: id),
    );
  }

  /// Get all verifications for a consultant profile.
  Future<List<Map<String, dynamic>>> findAll(
    String consultantProfileId,
  ) async {
    return _prisma.consultantProfileVerification.findManyRaw(
      where: {'consultantProfileId': consultantProfileId},
    );
  }

  /// Add a document to an existing verification.
  Future<ProfileVerificationDocument> addDocument({
    required String verificationId,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
  }) async {
    return _prisma.profileVerificationDocument.create(
      data: CreateProfileVerificationDocumentInput(
        verificationId: verificationId,
        fileName: fileName,
        originalName: originalName,
        fileSize: fileSize,
        mimeType: mimeType,
        fileUrl: fileUrl,
        storagePath: storagePath,
        description: description,
      ),
    );
  }

  /// Get all documents for a verification.
  Future<List<Map<String, dynamic>>> getDocuments(
    String verificationId,
  ) async {
    return _prisma.profileVerificationDocument.findManyRaw(
      where: {'verificationId': verificationId},
    );
  }

  /// Resubmit a verification (creates a new one, supersedes the old).
  Future<ConsultantProfileVerification> resubmit({
    required String consultantProfileId,
    required String previousVerificationId,
    String? notes,
  }) async {
    // Mark previous as superseded
    await _prisma.consultantProfileVerification.update(
      where: ConsultantProfileVerificationWhereUniqueInput(
        id: previousVerificationId,
      ),
      data: const UpdateConsultantProfileVerificationInput(
        status: ProfileVerificationStatus.superseded,
      ),
    );

    // Create new verification
    return _prisma.consultantProfileVerification.create(
      data: CreateConsultantProfileVerificationInput(
        consultantProfileId: consultantProfileId,
        notes: notes,
      ),
    );
  }
}
