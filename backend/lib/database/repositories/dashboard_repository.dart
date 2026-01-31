import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for dashboard data aggregation queries
///
/// Provides aggregated statistics for both consultee and consultant dashboards.
class DashboardRepository extends BaseRepository {
  DashboardRepository(super._executor);

  /// Get aggregated stats for a consultee user
  ///
  /// Batches consultation and subscription counts into 2 queries (grouped by
  /// status in Dart) instead of separate count queries per status.
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

    // Batch: get all consultation statuses in 1 query (instead of 5 counts)
    final consultationStatusQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({'requestedById': consulteeProfileId})
        .select({'requestStatus': true})
        .build();
    final consultationRows =
        await executeQueryAsMaps(consultationStatusQuery);
    final consultationCounts =
        _groupByStatus(consultationRows, 'requestStatus');

    // Batch: get all subscription statuses in 1 query (instead of 3 counts)
    final subscriptionStatusQuery = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.findMany)
        .where({'requestedById': consulteeProfileId})
        .select({'requestStatus': true})
        .build();
    final subscriptionRows =
        await executeQueryAsMaps(subscriptionStatusQuery);
    final subscriptionCounts =
        _groupByStatus(subscriptionRows, 'requestStatus');

    // Calculate total spent from completed consultations
    final totalSpent = await _calculateTotalSpent(
      consulteeProfileId: consulteeProfileId,
    );

    final totalConsultations =
        consultationCounts.values.fold(0, (a, b) => a + b);
    final totalSubscriptions =
        subscriptionCounts.values.fold(0, (a, b) => a + b);

    return {
      'totalSessions': totalConsultations + totalSubscriptions,
      'completedSessions': consultationCounts['COMPLETED'] ?? 0,
      'upcomingSessions': consultationCounts['SCHEDULED'] ?? 0,
      'cancelledSessions': consultationCounts['CANCELLED'] ?? 0,
      'totalSpent': totalSpent,
      'activeSubscriptions': subscriptionCounts['SCHEDULED'] ?? 0,
      'pendingPayments': (consultationCounts['APPROVED_PENDING_PAYMENT'] ?? 0) +
          (subscriptionCounts['APPROVED_PENDING_PAYMENT'] ?? 0),
    };
  }

  /// Get aggregated stats for a consultant user
  ///
  /// Pre-fetches all plan IDs once and batches session counts across statuses
  /// to reduce DB round trips (~18 queries instead of ~42).
  Future<Map<String, dynamic>> getConsultantStats({
    required String userId,
  }) async {
    final consultantProfileId = await _getConsultantProfileId(userId);

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

    // Pre-fetch all plan IDs once (4 queries, reused by all downstream methods)
    final planData = await _prefetchConsultantPlanData(consultantProfileId);

    // Get rating from profile
    final ratingQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'id': consultantProfileId})
        .select({'rating': true}).build();
    final profileData = await executeQueryAsSingleMap(ratingQuery);
    final rating = (profileData?['rating'] as num?)?.toDouble() ?? 0.0;

    // Count reviews
    final reviewCountQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.count)
        .where({'consultantProfileId': consultantProfileId}).build();
    final totalReviews = await executeCount(reviewCountQuery);

    // Count unique clients using pre-fetched plan IDs
    final uniqueClients = await _countUniqueClients(
      consultantProfileId: consultantProfileId,
      planData: planData,
    );

    // Count sessions by status in a single pass per booking type
    // (5 queries instead of 15)
    final sessionCounts = await _countConsultantSessionsByStatus(
      consultantProfileId: consultantProfileId,
      planData: planData,
      statuses: ['COMPLETED', 'SCHEDULED', 'PENDING'],
    );

    // Calculate earnings using pre-fetched plan prices (1 query instead of 3)
    final earnings = await _calculateConsultantEarnings(
      consultantProfileId: consultantProfileId,
      preloadedPlanPrices: planData.consultationPlanPrices,
    );

    return {
      'totalClients': uniqueClients,
      'totalSessionsConducted': sessionCounts['COMPLETED'] ?? 0,
      'upcomingSessions': sessionCounts['SCHEDULED'] ?? 0,
      'pendingRequests': sessionCounts['PENDING'] ?? 0,
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
    final consultantProfileId = await _getConsultantProfileId(userId);
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
    final consultantProfileId = await _getConsultantProfileId(userId);
    if (consultantProfileId == null) return [];

    final reviewsQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({
          'id': true,
          'rating': true,
          'reviewDescription': true,
          'createdAt': true,
          'consulteeProfile': {
            'select': {
              'id': true,
              'user': {
                'select': {
                  'id': true,
                  'name': true,
                  'image': true,
                },
              },
            },
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
    final consultantProfileId = await _getConsultantProfileId(userId);

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
      'paidEarnings':
          (earnings['total'] ?? 0.0) - (earnings['pending'] ?? 0.0),
      'currency': 'INR',
    };
  }

  // ==================== Private Helpers ====================

  /// Resolves the consultant profile ID for a given user ID.
  /// Returns null if the user has no consultant profile.
  Future<String?> _getConsultantProfileId(String userId) async {
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();
    final profile = await executeQueryAsSingleMap(profileQuery);
    return profile?['id'] as String?;
  }

  /// Pre-fetch all plan IDs and consultation plan prices for a consultant.
  ///
  /// Returns a cache object that downstream methods reuse, avoiding redundant
  /// plan ID lookups (saves ~12 queries in getConsultantStats).
  Future<_ConsultantPlanData> _prefetchConsultantPlanData(
    String consultantProfileId,
  ) async {
    // ConsultationPlan — also fetch prices for earnings calculation
    final consultationPlansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true, 'price': true})
        .build();
    final consultationPlans = await executeQueryAsMaps(consultationPlansQuery);

    final subscriptionPlanIds =
        await _getPlanIds('SubscriptionPlan', consultantProfileId);
    final webinarPlanIds =
        await _getPlanIds('WebinarPlan', consultantProfileId);
    final classPlanIds = await _getPlanIds('ClassPlan', consultantProfileId);

    return _ConsultantPlanData(
      consultationPlanIds:
          consultationPlans.map((p) => p['id'] as String).toList(),
      consultationPlanPrices: {
        for (final p in consultationPlans)
          p['id'] as String: (p['price'] as num?)?.toDouble() ?? 0.0,
      },
      subscriptionPlanIds: subscriptionPlanIds,
      webinarPlanIds: webinarPlanIds,
      classPlanIds: classPlanIds,
    );
  }

  /// Helper to get plan IDs for a given plan model and consultant profile
  Future<List<String>> _getPlanIds(
    String planModel,
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model(planModel)
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true})
        .build();
    final plans = await executeQueryAsMaps(query);
    return plans.map((p) => p['id'] as String).toList();
  }

  /// Group rows by a status field and return counts per status value.
  Map<String, int> _groupByStatus(
    List<Map<String, dynamic>> rows,
    String statusField,
  ) {
    final counts = <String, int>{};
    for (final row in rows) {
      final status = row[statusField] as String? ?? 'UNKNOWN';
      counts[status] = (counts[status] ?? 0) + 1;
    }
    return counts;
  }

  /// Count consultant sessions across all booking types, grouped by status.
  ///
  /// For each booking type, fetches all records matching any of the requested
  /// statuses in a single query, then groups by status in Dart.
  /// This is 5 queries instead of (5 × N) where N = number of statuses.
  Future<Map<String, int>> _countConsultantSessionsByStatus({
    required String consultantProfileId,
    required _ConsultantPlanData planData,
    required List<String> statuses,
  }) async {
    final counts = <String, int>{};

    // 1. Consultations (requestStatus field)
    if (planData.consultationPlanIds.isNotEmpty) {
      final query = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findMany)
          .where({
            'consultationPlanId': {'in': planData.consultationPlanIds},
            'requestStatus': {'in': statuses},
          })
          .select({'requestStatus': true})
          .build();
      final rows = await executeQueryAsMaps(query);
      _mergeStatusCounts(counts, rows, 'requestStatus');
    }

    // 2. Subscriptions (requestStatus field)
    if (planData.subscriptionPlanIds.isNotEmpty) {
      final query = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findMany)
          .where({
            'subscriptionPlanId': {'in': planData.subscriptionPlanIds},
            'requestStatus': {'in': statuses},
          })
          .select({'requestStatus': true})
          .build();
      final rows = await executeQueryAsMaps(query);
      _mergeStatusCounts(counts, rows, 'requestStatus');
    }

    // 3. Trial sessions (status field, mapped from request statuses)
    final trialStatuses = statuses
        .map(_mapRequestStatusToTrialStatus)
        .whereType<String>()
        .toList();
    if (trialStatuses.isNotEmpty) {
      final query = JsonQueryBuilder()
          .model('TrialSession')
          .action(QueryAction.findMany)
          .where({
            'consultantProfileId': consultantProfileId,
            'status': {'in': trialStatuses},
          })
          .select({'status': true})
          .build();
      final rows = await executeQueryAsMaps(query);
      // Map trial statuses back to request statuses for aggregation
      for (final row in rows) {
        final trialStatus = row['status'] as String?;
        final requestStatus = _mapTrialStatusToRequestStatus(trialStatus);
        if (requestStatus != null && statuses.contains(requestStatus)) {
          counts[requestStatus] = (counts[requestStatus] ?? 0) + 1;
        }
      }
    }

    // 4. Webinars (status field, mapped from request statuses)
    if (planData.webinarPlanIds.isNotEmpty) {
      final webinarStatuses = statuses
          .map(_mapRequestStatusToWebinarStatus)
          .whereType<String>()
          .toList();
      if (webinarStatuses.isNotEmpty) {
        final query = JsonQueryBuilder()
            .model('Webinar')
            .action(QueryAction.findMany)
            .where({
              'webinarPlanId': {'in': planData.webinarPlanIds},
              'status': {'in': webinarStatuses},
            })
            .select({'status': true})
            .build();
        final rows = await executeQueryAsMaps(query);
        for (final row in rows) {
          final webinarStatus = row['status'] as String?;
          final requestStatus =
              _mapWebinarStatusToRequestStatus(webinarStatus);
          if (requestStatus != null && statuses.contains(requestStatus)) {
            counts[requestStatus] = (counts[requestStatus] ?? 0) + 1;
          }
        }
      }
    }

    // 5. Classes (status field, mapped from request statuses)
    if (planData.classPlanIds.isNotEmpty) {
      final classStatuses = statuses
          .map(_mapRequestStatusToClassStatus)
          .whereType<String>()
          .toList();
      if (classStatuses.isNotEmpty) {
        final query = JsonQueryBuilder()
            .model('Class')
            .action(QueryAction.findMany)
            .where({
              'classPlanId': {'in': planData.classPlanIds},
              'status': {'in': classStatuses},
            })
            .select({'status': true})
            .build();
        final rows = await executeQueryAsMaps(query);
        for (final row in rows) {
          final classStatus = row['status'] as String?;
          final requestStatus = _mapClassStatusToRequestStatus(classStatus);
          if (requestStatus != null && statuses.contains(requestStatus)) {
            counts[requestStatus] = (counts[requestStatus] ?? 0) + 1;
          }
        }
      }
    }

    return counts;
  }

  /// Merge status counts from query rows into the accumulator map.
  void _mergeStatusCounts(
    Map<String, int> counts,
    List<Map<String, dynamic>> rows,
    String statusField,
  ) {
    for (final row in rows) {
      final status = row[statusField] as String? ?? 'UNKNOWN';
      counts[status] = (counts[status] ?? 0) + 1;
    }
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
          'requestStatus': {
            'in': ['COMPLETED', 'SCHEDULED'],
          },
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
    required _ConsultantPlanData planData,
  }) async {
    final clientIds = <String>{};
    final activeStatuses = [
      'COMPLETED',
      'SCHEDULED',
      'APPROVED',
      'APPROVED_PENDING_PAYMENT',
    ];

    // 1. Consultation clients
    if (planData.consultationPlanIds.isNotEmpty) {
      final consultationsQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findMany)
          .where({
            'consultationPlanId': {'in': planData.consultationPlanIds},
            'requestStatus': {'in': activeStatuses},
          })
          .distinct()
          .select({'requestedById': true})
          .build();
      final consultations = await executeQueryAsMaps(consultationsQuery);
      for (final c in consultations) {
        final id = c['requestedById'] as String?;
        if (id != null) clientIds.add(id);
      }
    }

    // 2. Subscription clients
    if (planData.subscriptionPlanIds.isNotEmpty) {
      final subscriptionsQuery = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findMany)
          .where({
            'subscriptionPlanId': {'in': planData.subscriptionPlanIds},
            'requestStatus': {'in': activeStatuses},
          })
          .distinct()
          .select({'requestedById': true})
          .build();
      final subscriptions = await executeQueryAsMaps(subscriptionsQuery);
      for (final s in subscriptions) {
        final id = s['requestedById'] as String?;
        if (id != null) clientIds.add(id);
      }
    }

    // 3. Trial session clients
    final trialsQuery = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.findMany)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': {
            'in': ['PENDING', 'SCHEDULED', 'COMPLETED', 'CONVERTED'],
          },
        })
        .distinct()
        .select({'consulteeProfileId': true})
        .build();
    final trials = await executeQueryAsMaps(trialsQuery);
    for (final t in trials) {
      final id = t['consulteeProfileId'] as String?;
      if (id != null) clientIds.add(id);
    }

    // 4. Webinar participants (via slots → users)
    if (planData.webinarPlanIds.isNotEmpty) {
      final webinarsQuery = JsonQueryBuilder()
          .model('Webinar')
          .action(QueryAction.findMany)
          .where({
            'webinarPlanId': {'in': planData.webinarPlanIds},
            'status': {
              'in': ['SCHEDULED', 'IN_PROGRESS', 'COMPLETED'],
            },
          })
          .include({
            'appointment': {
              'include': {
                'slots': {
                  'include': {'user': true},
                },
              },
            },
          })
          .build();
      final webinars = await executeQueryAsMaps(webinarsQuery);
      for (final w in webinars) {
        final appointment = w['appointment'] as Map<String, dynamic>?;
        if (appointment == null) continue;
        final slots = appointment['slots'] as List<dynamic>? ?? [];
        for (final slot in slots) {
          final slotMap = slot as Map<String, dynamic>;
          final users = slotMap['user'] as List<dynamic>? ?? [];
          for (final user in users) {
            final userId = (user as Map<String, dynamic>)['id'] as String?;
            if (userId != null) clientIds.add(userId);
          }
        }
      }
    }

    // 5. Class participants (via slots → users)
    if (planData.classPlanIds.isNotEmpty) {
      final classesQuery = JsonQueryBuilder()
          .model('Class')
          .action(QueryAction.findMany)
          .where({
            'classPlanId': {'in': planData.classPlanIds},
            'status': {
              'in': ['SCHEDULED', 'IN_PROGRESS', 'COMPLETED'],
            },
          })
          .include({
            'appointments': {
              'include': {
                'slots': {
                  'include': {'user': true},
                },
              },
            },
          })
          .build();
      final classes = await executeQueryAsMaps(classesQuery);
      for (final c in classes) {
        final appointments = c['appointments'] as List<dynamic>? ?? [];
        for (final a in appointments) {
          final aMap = a as Map<String, dynamic>;
          final slots = aMap['slots'] as List<dynamic>? ?? [];
          for (final slot in slots) {
            final slotMap = slot as Map<String, dynamic>;
            final users = slotMap['user'] as List<dynamic>? ?? [];
            for (final user in users) {
              final userId = (user as Map<String, dynamic>)['id'] as String?;
              if (userId != null) clientIds.add(userId);
            }
          }
        }
      }
    }

    return clientIds.length;
  }

  /// Calculate consultant earnings.
  ///
  /// When [preloadedPlanPrices] is provided (from pre-fetched plan data),
  /// skips the plan query and combines completed+scheduled into a single
  /// consultation query (1 query instead of 3).
  Future<Map<String, double>> _calculateConsultantEarnings({
    required String consultantProfileId,
    Map<String, double>? preloadedPlanPrices,
  }) async {
    final Map<String, double> planPrices;

    if (preloadedPlanPrices != null && preloadedPlanPrices.isNotEmpty) {
      planPrices = preloadedPlanPrices;
    } else {
      // Standalone call — fetch plan prices
      final plansQuery = JsonQueryBuilder()
          .model('ConsultationPlan')
          .action(QueryAction.findMany)
          .where({'consultantProfileId': consultantProfileId})
          .select({'id': true, 'price': true})
          .build();
      final plans = await executeQueryAsMaps(plansQuery);
      planPrices = {
        for (final p in plans)
          p['id'] as String: (p['price'] as num?)?.toDouble() ?? 0.0,
      };
    }

    if (planPrices.isEmpty) return {'total': 0.0, 'pending': 0.0};

    // Single query for all relevant statuses (instead of 2 separate queries)
    final allConsultationsQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where({
          'consultationPlanId': {'in': planPrices.keys.toList()},
          'requestStatus': {
            'in': ['COMPLETED', 'SCHEDULED', 'APPROVED_PENDING_PAYMENT'],
          },
        })
        .select({'consultationPlanId': true, 'requestStatus': true})
        .build();

    final allConsultations = await executeQueryAsMaps(allConsultationsQuery);

    var totalEarnings = 0.0;
    var pendingEarnings = 0.0;
    for (final c in allConsultations) {
      final planId = c['consultationPlanId'] as String;
      final status = c['requestStatus'] as String;
      final price = planPrices[planId] ?? 0.0;
      if (status == 'COMPLETED') {
        totalEarnings += price;
      } else {
        pendingEarnings += price;
      }
    }

    return {
      'total': totalEarnings + pendingEarnings,
      'pending': pendingEarnings,
    };
  }

  // ==================== Status Mapping ====================

  /// Map RequestStatus → TrialSessionStatus
  String? _mapRequestStatusToTrialStatus(String requestStatus) {
    switch (requestStatus) {
      case 'PENDING':
        return 'PENDING';
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      case 'REJECTED':
        return 'REJECTED';
      default:
        return null;
    }
  }

  /// Map TrialSessionStatus → RequestStatus
  String? _mapTrialStatusToRequestStatus(String? trialStatus) {
    switch (trialStatus) {
      case 'PENDING':
        return 'PENDING';
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      case 'REJECTED':
        return 'REJECTED';
      default:
        return null;
    }
  }

  /// Map RequestStatus → WebinarStatus
  String? _mapRequestStatusToWebinarStatus(String requestStatus) {
    switch (requestStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return null;
    }
  }

  /// Map WebinarStatus → RequestStatus
  String? _mapWebinarStatusToRequestStatus(String? webinarStatus) {
    switch (webinarStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return null;
    }
  }

  /// Map RequestStatus → ClassStatus
  String? _mapRequestStatusToClassStatus(String requestStatus) {
    switch (requestStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return null;
    }
  }

  /// Map ClassStatus → RequestStatus
  String? _mapClassStatusToRequestStatus(String? classStatus) {
    switch (classStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return null;
    }
  }
}

/// Pre-fetched plan IDs and prices for a consultant.
///
/// Avoids redundant _getPlanIds calls across multiple methods
/// within getConsultantStats.
class _ConsultantPlanData {
  const _ConsultantPlanData({
    required this.consultationPlanIds,
    required this.consultationPlanPrices,
    required this.subscriptionPlanIds,
    required this.webinarPlanIds,
    required this.classPlanIds,
  });

  final List<String> consultationPlanIds;
  final Map<String, double> consultationPlanPrices;
  final List<String> subscriptionPlanIds;
  final List<String> webinarPlanIds;
  final List<String> classPlanIds;
}
