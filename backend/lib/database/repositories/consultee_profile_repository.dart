import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for consultee profile database operations
class ConsulteeProfileRepository extends BaseRepository {
  /// Create a consultee profile repository with the given executor
  ConsulteeProfileRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Find consultee profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    final result = await _prisma.consulteeProfile.findFirst(
      where: ConsulteeProfileWhereInput(userId: StringFilter(equals: userId)),
    );
    return result?.toJson();
  }

  /// Find consultee profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final result = await _prisma.consulteeProfile.findFirst(
      where: ConsulteeProfileWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  /// Create a new consultee profile
  ///
  /// Creates a minimal profile during signup. Full profile is set during
  /// onboarding via [upsert].
  Future<Map<String, dynamic>> create({
    required String id,
    required String userId,
    TransactionExecutor? txn,
  }) async {
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateConsulteeProfileInput has no
    // id param).
    final delegate =
        txn == null ? _prisma.consulteeProfile : ConsulteeProfileDelegate(txn);
    final result = await delegate.create(
      data: CreateConsulteeProfileInput(userId: userId),
    );
    return result.toJson();
  }

  /// Upsert a consultee profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// Uses the connector's native upsert support (ON CONFLICT DO UPDATE).
  /// Upsert a consultee profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// Only writes columns that exist in the database schema:
  /// aboutMe, careerStage, skillsToDevelop, budgetPreference,
  /// preferredLanguage, goals.
  Future<Map<String, dynamic>> upsert({
    required String userId,
    String? aboutMe,
    String? careerStage,
    List<String>? skillsToDevelop,
    String? budgetPreference,
    String? preferredLanguage,
    String? goals,
    // Legacy params accepted but ignored (not in DB schema):
    String? occupation,
    String? currentCompany,
    String? industry,
    String? preferredCommunicationMethod,
    String? linkedinUrl,
    TransactionExecutor? txn,
  }) async {
    // Map wire strings to generated enums for the typed inputs.
    final careerStageEnum = careerStage != null
        ? CareerStage.values.firstWhere((e) => e.toJson() == careerStage)
        : null;
    final budgetPreferenceEnum = budgetPreference != null
        ? BudgetPreference.values
            .firstWhere((e) => e.toJson() == budgetPreference)
        : null;

    // Use the connector's native upsert (ON CONFLICT DO UPDATE) keyed on the
    // unique userId column; id/timestamps are autofilled on create and
    // updatedAt auto-refreshes on update.
    final delegate =
        txn == null ? _prisma.consulteeProfile : ConsulteeProfileDelegate(txn);
    final result = await delegate.upsert(
      where: ConsulteeProfileWhereUniqueInput(userId: userId),
      create: CreateConsulteeProfileInput(
        userId: userId,
        aboutMe: aboutMe,
        careerStage: careerStageEnum,
        skillsToDevelop: skillsToDevelop,
        budgetPreference: budgetPreferenceEnum,
        preferredLanguage: preferredLanguage,
        goals: goals,
      ),
      update: UpdateConsulteeProfileInput(
        aboutMe: aboutMe,
        careerStage: careerStageEnum,
        skillsToDevelop: skillsToDevelop,
        budgetPreference: budgetPreferenceEnum,
        preferredLanguage: preferredLanguage,
        goals: goals,
      ),
    );
    return result.toJson();
  }

  /// Delete a consultee profile by user ID
  Future<void> deleteByUserId(String userId) async {
    await _prisma.consulteeProfile.deleteMany(
      where: ConsulteeProfileWhereInput(
        userId: StringFilter(equals: userId),
      ),
    );
  }
}
