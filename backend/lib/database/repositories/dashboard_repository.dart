import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for dashboard data aggregation queries
///
/// Provides aggregated statistics for both consultee and consultant dashboards.
class DashboardRepository extends BaseRepository {
  DashboardRepository(super._executor);

  /// Get aggregated stats for a consultee user
  Future<Map<String, dynamic>> getConsulteeStats({
    required String userId,
  }) async {
    // Get consultee profile
    final profileQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final consulteeProfileId = profile?['id'] as String?;

    if (consulteeProfileId == null) {
      return {
        'totalSessions': 0,
        'completedSessions': 0,
        'upcomingSessions': 0,
        'cancelledSessions': 0,
        'totalSpent': 0.0,
        'activeSubscriptions': 0,
        'pendingPayments': 0,
      };
    }

    // Count consultations by status
    final totalConsultations = await _countConsultations(
      consulteeProfileId: consulteeProfileId,
    );
    final completedConsultations = await _countConsultations(
      consulteeProfileId: consulteeProfileId,
      status: 'COMPLETED',
    );
    final cancelledConsultations = await _countConsultations(
      consulteeProfileId: consulteeProfileId,
      status: 'CANCELLED',
    );

    // Count upcoming (SCHEDULED status with future slots)
    final upcomingConsultations = await _countConsultations(
      consulteeProfileId: consulteeProfileId,
      status: 'SCHEDULED',
    );

    // Count subscriptions
    final totalSubscriptions = await _countSubscriptions(
      consulteeProfileId: consulteeProfileId,
    );
    final activeSubscriptions = await _countSubscriptions(
      consulteeProfileId: consulteeProfileId,
      status: 'SCHEDULED',
    );

    // Count pending payments
    final pendingPayments = await _countConsultations(
      consulteeProfileId: consulteeProfileId,
      status: 'APPROVED_PENDING_PAYMENT',
    );
    final pendingSubPayments = await _countSubscriptions(
      consulteeProfileId: consulteeProfileId,
      status: 'APPROVED_PENDING_PAYMENT',
    );

    // Calculate total spent from completed consultations
    final totalSpent = await _calculateTotalSpent(
      consulteeProfileId: consulteeProfileId,
    );

    return {
      'totalSessions': totalConsultations + totalSubscriptions,
      'completedSessions': completedConsultations,
      'upcomingSessions': upcomingConsultations,
      'cancelledSessions': cancelledConsultations,
      'totalSpent': totalSpent,
      'activeSubscriptions': activeSubscriptions,
      'pendingPayments': pendingPayments + pendingSubPayments,
    };
  }

  /// Get aggregated stats for a consultant user
  Future<Map<String, dynamic>> getConsultantStats({
    required String userId,
  }) async {
    // Get consultant profile
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final consultantProfileId = profile?['id'] as String?;

    if (consultantProfileId == null) {
      return {
        'totalClients': 0,
        'totalSessionsConducted': 0,
        'upcomingSessions': 0,
        'pendingRequests': 0,
        'averageRating': 0.0,
        'totalReviews': 0,
        'totalEarnings': 0.0,
        'pendingEarnings': 0.0,
      };
    }

    // Get rating from profile
    final rating = (profile?['rating'] as num?)?.toDouble() ?? 0.0;

    // Count reviews
    final reviewCountQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.count)
        .where({'consultantProfileId': consultantProfileId}).build();
    final totalReviews = await executeCount(reviewCountQuery);

    // Count unique clients from consultations
    final uniqueClients = await _countUniqueClients(
      consultantProfileId: consultantProfileId,
    );

    // Count completed sessions
    final completedSessions = await _countConsultantSessions(
      consultantProfileId: consultantProfileId,
      status: 'COMPLETED',
    );

    // Count upcoming sessions
    final upcomingSessions = await _countConsultantSessions(
      consultantProfileId: consultantProfileId,
      status: 'SCHEDULED',
    );

    // Count pending requests
    final pendingRequests = await _countConsultantSessions(
      consultantProfileId: consultantProfileId,
      status: 'PENDING',
    );

    // Calculate earnings
    final earnings = await _calculateConsultantEarnings(
      consultantProfileId: consultantProfileId,
    );

    return {
      'totalClients': uniqueClients,
      'totalSessionsConducted': completedSessions,
      'upcomingSessions': upcomingSessions,
      'pendingRequests': pendingRequests,
      'averageRating': rating,
      'totalReviews': totalReviews,
      'totalEarnings': earnings['total'] ?? 0.0,
      'pendingEarnings': earnings['pending'] ?? 0.0,
    };
  }

  /// Get pending booking requests for a consultant
  Future<List<Map<String, dynamic>>> getConsultantPendingRequests({
    required String userId,
  }) async {
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final consultantProfileId = profile?['id'] as String?;

    if (consultantProfileId == null) return [];

    // Get consultation plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    final planIds = plans.map((p) => p['id'] as String).toList();

    if (planIds.isEmpty) return [];

    // Get pending consultations
    final pendingQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'consultationPlanId': {'in': planIds},
          'requestStatus': 'PENDING',
        })
        .include({
          'requestedBy': {
            'include': {'user': true},
          },
          'consultationPlan': true,
        })
        .orderBy({'requestedAt': 'desc'})
        .take(20)
        .build();

    return executeQueryAsMaps(pendingQuery);
  }

  /// Get recent reviews for a consultant
  Future<List<Map<String, dynamic>>> getConsultantRecentReviews({
    required String userId,
  }) async {
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final consultantProfileId = profile?['id'] as String?;

    if (consultantProfileId == null) return [];

    final reviewsQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .include({
          'consulteeProfile': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .take(10)
        .build();

    return executeQueryAsMaps(reviewsQuery);
  }

  /// Get earnings summary for a consultant
  Future<Map<String, dynamic>> getConsultantEarnings({
    required String userId,
  }) async {
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final consultantProfileId = profile?['id'] as String?;

    if (consultantProfileId == null) {
      return {
        'totalEarnings': 0.0,
        'pendingEarnings': 0.0,
        'paidEarnings': 0.0,
        'currency': 'INR',
      };
    }

    final earnings = await _calculateConsultantEarnings(
      consultantProfileId: consultantProfileId,
    );

    return {
      'totalEarnings': earnings['total'] ?? 0.0,
      'pendingEarnings': earnings['pending'] ?? 0.0,
      'paidEarnings': (earnings['total'] ?? 0.0) - (earnings['pending'] ?? 0.0),
      'currency': 'INR',
    };
  }

  // ==================== Private Helpers ====================

  Future<int> _countConsultations({
    required String consulteeProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'requestedById': consulteeProfileId,
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final query = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.count)
        .where(where)
        .build();

    return executeCount(query);
  }

  Future<int> _countSubscriptions({
    required String consulteeProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'requestedById': consulteeProfileId,
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final query = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.count)
        .where(where)
        .build();

    return executeCount(query);
  }

  Future<double> _calculateTotalSpent({
    required String consulteeProfileId,
  }) async {
    // Get completed consultations with plan prices
    final query = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'requestedById': consulteeProfileId,
          'requestStatus': {'in': ['COMPLETED', 'SCHEDULED']},
        })
        .include({'consultationPlan': true})
        .build();

    final consultations = await executeQueryAsMaps(query);

    var total = 0.0;
    for (final c in consultations) {
      final plan = c['consultationPlan'] as Map<String, dynamic>?;
      if (plan != null) {
        total += (plan['price'] as num?)?.toDouble() ?? 0.0;
      }
    }

    return total;
  }

  Future<int> _countUniqueClients({
    required String consultantProfileId,
  }) async {
    // Get all consultation plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    final planIds = plans.map((p) => p['id'] as String).toList();

    if (planIds.isEmpty) return 0;

    // Get unique requestedBy IDs
    final consultationsQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'consultationPlanId': {'in': planIds},
          'requestStatus': {
            'in': ['COMPLETED', 'SCHEDULED', 'APPROVED', 'APPROVED_PENDING_PAYMENT'],
          },
        })
        .select({'requestedById': true})
        .build();

    final consultations = await executeQueryAsMaps(consultationsQuery);
    final uniqueClients = consultations
        .map((c) => c['requestedById'] as String)
        .toSet();

    return uniqueClients.length;
  }

  Future<int> _countConsultantSessions({
    required String consultantProfileId,
    String? status,
  }) async {
    // Get consultation plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    final planIds = plans.map((p) => p['id'] as String).toList();

    if (planIds.isEmpty) return 0;

    final where = <String, dynamic>{
      'consultationPlanId': {'in': planIds},
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final query = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.count)
        .where(where)
        .build();

    return executeCount(query);
  }

  Future<Map<String, double>> _calculateConsultantEarnings({
    required String consultantProfileId,
  }) async {
    // Get consultation plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true, 'price': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    final planPrices = <String, double>{};
    for (final plan in plans) {
      planPrices[plan['id'] as String] =
          (plan['price'] as num?)?.toDouble() ?? 0.0;
    }

    if (planPrices.isEmpty) return {'total': 0.0, 'pending': 0.0};

    // Get completed consultations
    final completedQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'consultationPlanId': {'in': planPrices.keys.toList()},
          'requestStatus': 'COMPLETED',
        })
        .select({'consultationPlanId': true})
        .build();

    final completed = await executeQueryAsMaps(completedQuery);
    var totalEarnings = 0.0;
    for (final c in completed) {
      final planId = c['consultationPlanId'] as String;
      totalEarnings += planPrices[planId] ?? 0.0;
    }

    // Get scheduled (pending earnings)
    final scheduledQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'consultationPlanId': {'in': planPrices.keys.toList()},
          'requestStatus': {
            'in': ['SCHEDULED', 'APPROVED_PENDING_PAYMENT'],
          },
        })
        .select({'consultationPlanId': true})
        .build();

    final scheduled = await executeQueryAsMaps(scheduledQuery);
    var pendingEarnings = 0.0;
    for (final c in scheduled) {
      final planId = c['consultationPlanId'] as String;
      pendingEarnings += planPrices[planId] ?? 0.0;
    }

    return {
      'total': totalEarnings + pendingEarnings,
      'pending': pendingEarnings,
    };
  }
}
