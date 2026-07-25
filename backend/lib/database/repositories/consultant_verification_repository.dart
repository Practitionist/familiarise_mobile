import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';

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
    return _prisma.$transaction((tx) async {
      // Check for existing pending verification within transaction
      final existing = await tx.consultantProfileVerification.findFirst(
        where: ConsultantProfileVerificationWhereInput(
          consultantProfileId: StringFilter(equals: consultantProfileId),
          status: const ProfileVerificationStatusFilter(
            equals: ProfileVerificationStatus.pending,
          ),
        ),
      );
      if (existing != null) {
        throw const VerificationConflictException();
      }

      // Create new verification within same transaction (id/submittedAt/
      // timestamps autofilled; status defaults to PENDING).
      return tx.consultantProfileVerification.create(
        data: CreateConsultantProfileVerificationInput(
          consultantProfileId: consultantProfileId,
          notes: notes,
        ),
      );
    });
  }

  /// Get the latest verification for a consultant profile.
  Future<ConsultantProfileVerification?> findLatest(
    String consultantProfileId,
  ) async {
    return _prisma.consultantProfileVerification.findFirst(
      where: ConsultantProfileVerificationWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
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
    final results = await _prisma.consultantProfileVerification.findMany(
      where: ConsultantProfileVerificationWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
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
    final results = await _prisma.profileVerificationDocument.findMany(
      where: ProfileVerificationDocumentWhereInput(
        verificationId: StringFilter(equals: verificationId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
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
