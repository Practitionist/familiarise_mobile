import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';

/// Repository for consultant profile verification operations.
///
/// Uses PrismaClient typed delegates for type-safe CRUD.
/// Maps to `ConsultantProfileVerification` and `ProfileVerificationDocument`.
class ConsultantVerificationRepository extends BaseRepository {
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

  /// Get the latest verification for a consultant profile.
  Future<ConsultantProfileVerification?> findLatest(
    String consultantProfileId,
  ) async {
    final results = await _prisma.consultantProfileVerification.findMany(
      where: ConsultantProfileVerificationWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      orderBy: const ConsultantProfileVerificationOrderByInput(
        createdAt: SortOrder.desc,
      ),
      take: 1,
    );
    return results.isEmpty ? null : results.first;
  }

  /// Get a verification by ID.
  Future<ConsultantProfileVerification?> findById(String id) async {
    return _prisma.consultantProfileVerification.findUnique(
      where: ConsultantProfileVerificationWhereUniqueInput(id: id),
    );
  }

  /// Get all verifications for a consultant profile.
  Future<List<ConsultantProfileVerification>> findAll(
    String consultantProfileId,
  ) async {
    return _prisma.consultantProfileVerification.findMany(
      where: ConsultantProfileVerificationWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      orderBy: const ConsultantProfileVerificationOrderByInput(
        createdAt: SortOrder.desc,
      ),
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
  Future<List<ProfileVerificationDocument>> getDocuments(
    String verificationId,
  ) async {
    return _prisma.profileVerificationDocument.findMany(
      where: ProfileVerificationDocumentWhereInput(
        verificationId: StringFilter(equals: verificationId),
      ),
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
