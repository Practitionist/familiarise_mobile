import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for plan CRUD operations across all 4 plan types.
///
/// Uses PrismaClient typed delegates for all operations.
class PlanRepository extends BaseRepository {
  PlanRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Convert an ISO 4217 code (e.g. 'INR') to the schema Currency enum.
  ///
  /// Throws [ArgumentError] for unknown codes — silently coercing to INR
  /// would store wrong money data. Routes map ArgumentError to a 400.
  static Currency _currencyFrom(String code) => Currency.values.firstWhere(
        (c) => c.toJson() == code.trim().toUpperCase(),
        orElse: () => throw ArgumentError.value(
          code,
          'priceCurrency',
          'Unsupported currency. Allowed: '
              '${Currency.values.map((c) => c.toJson()).join(', ')}',
        ),
      );

  // ===========================================================================
  // Consultation Plans
  // ===========================================================================

  Future<Map<String, dynamic>> createConsultationPlan({
    required String consultantProfileId,
    required String title,
    String? description,
    required double durationInHours,
    required int price,
    String priceCurrency = 'INR',
    String? language,
    String? level,
  }) async {
    final result = await _prisma.consultationPlan.create(
      data: CreateConsultationPlanInput(
        consultantProfileId: consultantProfileId,
        title: title,
        description: description ?? '',
        durationInHours: durationInHours,
        price: BigInt.from(price),
        priceCurrency: _currencyFrom(priceCurrency),
        language: language ?? 'English',
        level: level ?? 'Beginner',
      ),
    );
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listConsultationPlans(
    String consultantProfileId,
  ) async {
    final results = await _prisma.consultationPlan.findMany(
      where: ConsultationPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  Future<Map<String, dynamic>?> findConsultationPlan(String id) async {
    final result = await _prisma.consultationPlan.findFirst(
      where: ConsultationPlanWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  Future<Map<String, dynamic>?> updateConsultationPlan({
    required String id,
    String? title,
    String? description,
    double? durationInHours,
    int? price,
    String? language,
    String? level,
  }) async {
    final affected = await _prisma.consultationPlan.updateMany(
      where: ConsultationPlanWhereInput(id: StringFilter(equals: id)),
      data: UpdateConsultationPlanInput(
        title: title,
        description: description,
        durationInHours: durationInHours,
        price: price == null ? null : BigInt.from(price),
        language: language,
        level: level,
      ),
    );
    if (affected == 0) return null;
    final result = await _prisma.consultationPlan.findFirst(
      where: ConsultationPlanWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  Future<void> deleteConsultationPlan(String id) async {
    await _prisma.consultationPlan.delete(
      where: ConsultationPlanWhereUniqueInput(id: id),
    );
  }

  // ===========================================================================
  // Subscription Plans
  // ===========================================================================

  Future<Map<String, dynamic>> createSubscriptionPlan({
    required String consultantProfileId,
    required String title,
    String? description,
    required int durationInMonths,
    required int price,
    String priceCurrency = 'INR',
    int callsPerWeek = 1,
    double sessionDurationInHours = 1.0,
    String? language,
    String? level,
    bool freeTrialEnabled = false,
    int freeTrialDurationMinutes = 30,
  }) async {
    final result = await _prisma.subscriptionPlan.create(
      data: CreateSubscriptionPlanInput(
        consultantProfileId: consultantProfileId,
        title: title,
        description: description ?? '',
        durationInMonths: durationInMonths,
        price: BigInt.from(price),
        priceCurrency: _currencyFrom(priceCurrency),
        callsPerWeek: callsPerWeek,
        sessionDurationInHours: sessionDurationInHours,
        language: language ?? 'English',
        level: level ?? 'Beginner',
        // Schema re-sync renamed freeTrial* -> trial* (trialPriceInPaise
        // defaults to 0 = free trial, matching the old semantics).
        trialEnabled: freeTrialEnabled,
        trialDurationMinutes: freeTrialDurationMinutes,
      ),
    );
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listSubscriptionPlans(
    String consultantProfileId,
  ) async {
    final results = await _prisma.subscriptionPlan.findMany(
      where: SubscriptionPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  Future<Map<String, dynamic>?> findSubscriptionPlan(String id) async {
    final result = await _prisma.subscriptionPlan.findFirst(
      where: SubscriptionPlanWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  Future<void> deleteSubscriptionPlan(String id) async {
    await _prisma.subscriptionPlan.delete(
      where: SubscriptionPlanWhereUniqueInput(id: id),
    );
  }

  // ===========================================================================
  // Webinar Plans
  // ===========================================================================

  Future<Map<String, dynamic>> createWebinarPlan({
    required String consultantProfileId,
    required String title,
    String? description,
    required double durationInHours,
    required int price,
    String priceCurrency = 'INR',
    required int maxParticipants,
    String? language,
    String? level,
    bool recordingEnabled = false,
  }) async {
    final result = await _prisma.webinarPlan.create(
      data: CreateWebinarPlanInput(
        consultantProfileId: consultantProfileId,
        title: title,
        description: description ?? '',
        durationInHours: durationInHours,
        price: BigInt.from(price),
        priceCurrency: _currencyFrom(priceCurrency),
        maxParticipants: maxParticipants,
        language: language ?? 'English',
        level: level ?? 'Beginner',
        recordingEnabled: recordingEnabled,
      ),
    );
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listWebinarPlans(
    String consultantProfileId,
  ) async {
    final results = await _prisma.webinarPlan.findMany(
      where: WebinarPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  Future<Map<String, dynamic>?> findWebinarPlan(String id) async {
    final result = await _prisma.webinarPlan.findFirst(
      where: WebinarPlanWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  Future<void> deleteWebinarPlan(String id) async {
    await _prisma.webinarPlan.delete(
      where: WebinarPlanWhereUniqueInput(id: id),
    );
  }

  // ===========================================================================
  // Class Plans
  // ===========================================================================

  Future<Map<String, dynamic>> createClassPlan({
    required String consultantProfileId,
    required String title,
    String? description,
    required int durationInMonths,
    required int price,
    String priceCurrency = 'INR',
    required int maxParticipants,
    int meetingsPerWeek = 1,
    double sessionDurationInHours = 1.0,
    String? language,
    String? level,
    bool recordingEnabled = false,
  }) async {
    final result = await _prisma.classPlan.create(
      data: CreateClassPlanInput(
        consultantProfileId: consultantProfileId,
        title: title,
        description: description ?? '',
        durationInMonths: durationInMonths,
        price: BigInt.from(price),
        priceCurrency: _currencyFrom(priceCurrency),
        maxParticipants: maxParticipants,
        meetingsPerWeek: meetingsPerWeek,
        sessionDurationInHours: sessionDurationInHours,
        language: language ?? 'English',
        level: level ?? 'Beginner',
        recordingEnabled: recordingEnabled,
      ),
    );
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listClassPlans(
    String consultantProfileId,
  ) async {
    final results = await _prisma.classPlan.findMany(
      where: ClassPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  Future<Map<String, dynamic>?> findClassPlan(String id) async {
    final result = await _prisma.classPlan.findFirst(
      where: ClassPlanWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  Future<void> deleteClassPlan(String id) async {
    await _prisma.classPlan.delete(
      where: ClassPlanWhereUniqueInput(id: id),
    );
  }
}
