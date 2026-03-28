import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:uuid/uuid.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for plan CRUD operations across all 4 plan types.
///
/// Uses PrismaClient typed delegates where available, JsonQueryBuilder
/// for creates (foreign key fields not in generated CreateInput types).
class PlanRepository extends BaseRepository {
  PlanRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

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
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.create)
        .data({
      'id': const Uuid().v4(),
      'consultantProfileId': consultantProfileId,
      'title': title,
      'description': description ?? '',
      'durationInHours': durationInHours,
      'price': price,
      'priceCurrency': priceCurrency,
      'language': language ?? 'English',
      'level': level ?? 'Beginner',
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create plan');
    return result;
  }

  Future<List<Map<String, dynamic>>> listConsultationPlans(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  Future<Map<String, dynamic>?> findConsultationPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    return executeQueryAsSingleMap(query);
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
    final data = <String, dynamic>{'updatedAt': nowIso8601};
    if (title != null) data['title'] = title;
    if (description != null) data['description'] = description;
    if (durationInHours != null) {
      data['durationInHours'] = durationInHours;
    }
    if (price != null) data['price'] = price;
    if (language != null) data['language'] = language;
    if (level != null) data['level'] = level;

    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();
    return executeQueryAsSingleMap(query);
  }

  Future<void> deleteConsultationPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.deleteMany)
        .where({'id': id})
        .build();
    await executeMutation(query);
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
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.create)
        .data({
      'id': const Uuid().v4(),
      'consultantProfileId': consultantProfileId,
      'title': title,
      'description': description ?? '',
      'durationInMonths': durationInMonths,
      'price': price,
      'priceCurrency': priceCurrency,
      'callsPerWeek': callsPerWeek,
      'sessionDurationInHours': sessionDurationInHours,
      'language': language ?? 'English',
      'level': level ?? 'Beginner',
      'freeTrialEnabled': freeTrialEnabled,
      'freeTrialDurationMinutes': freeTrialDurationMinutes,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create plan');
    return result;
  }

  Future<List<Map<String, dynamic>>> listSubscriptionPlans(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  Future<Map<String, dynamic>?> findSubscriptionPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    return executeQueryAsSingleMap(query);
  }

  Future<void> deleteSubscriptionPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.deleteMany)
        .where({'id': id})
        .build();
    await executeMutation(query);
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
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.create)
        .data({
      'id': const Uuid().v4(),
      'consultantProfileId': consultantProfileId,
      'title': title,
      'description': description ?? '',
      'durationInHours': durationInHours,
      'price': price,
      'priceCurrency': priceCurrency,
      'maxParticipants': maxParticipants,
      'language': language ?? 'English',
      'level': level ?? 'Beginner',
      'recordingEnabled': recordingEnabled,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create plan');
    return result;
  }

  Future<List<Map<String, dynamic>>> listWebinarPlans(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  Future<Map<String, dynamic>?> findWebinarPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    return executeQueryAsSingleMap(query);
  }

  Future<void> deleteWebinarPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.deleteMany)
        .where({'id': id})
        .build();
    await executeMutation(query);
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
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.create)
        .data({
      'id': const Uuid().v4(),
      'consultantProfileId': consultantProfileId,
      'title': title,
      'description': description ?? '',
      'durationInMonths': durationInMonths,
      'price': price,
      'priceCurrency': priceCurrency,
      'maxParticipants': maxParticipants,
      'meetingsPerWeek': meetingsPerWeek,
      'sessionDurationInHours': sessionDurationInHours,
      'language': language ?? 'English',
      'level': level ?? 'Beginner',
      'recordingEnabled': recordingEnabled,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create plan');
    return result;
  }

  Future<List<Map<String, dynamic>>> listClassPlans(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  Future<Map<String, dynamic>?> findClassPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    return executeQueryAsSingleMap(query);
  }

  Future<void> deleteClassPlan(String id) async {
    final query = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.deleteMany)
        .where({'id': id})
        .build();
    await executeMutation(query);
  }
}
