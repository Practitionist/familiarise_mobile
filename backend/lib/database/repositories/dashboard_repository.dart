import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for dashboard data aggregation queries
///
/// Provides aggregated statistics for both consultee and consultant dashboards.
class DashboardRepository extends BaseRepository {
  DashboardRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Get aggregated stats for a consultee user
  ///
  /// Uses groupBy queries to aggregate consultation and subscription counts
  /// by status in a single DB round trip per model.
  Future<Map<String, dynamic>> getConsulteeStats({
    required String userId,
  }) async {
    // Get consultee profile
    final profile = await _prisma.consulteeProfile.findFirstProjected(
      where: ConsulteeProfileWhereInput(userId: StringFilter(equals: userId)),
    );
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

    // GroupBy: aggregate consultation counts per status in the DB.
    // Dart field is `status` (@map'd to the requestStatus column); the typed
    // groupBy aliases the group key back to the Dart field name.
    final consultationGrouped = await _prisma.consultation.groupBy(
      by: ['status'],
      where: ConsultationWhereInput(
        requestedById: StringFilter(equals: consulteeProfileId),
      ),
      count: true,
    );
    final consultationCounts =
        _parseGroupByCounts(consultationGrouped, 'status');

    // GroupBy: aggregate subscription counts per status in the DB
    final subscriptionGrouped = await _prisma.subscription.groupBy(
      by: ['status'],
      where: SubscriptionWhereInput(
        requestedById: StringFilter(equals: consulteeProfileId),
      ),
      count: true,
    );
    final subscriptionCounts =
        _parseGroupByCounts(subscriptionGrouped, 'status');

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
    final profileData = await _prisma.consultantProfile.findFirstProjected(
      where: ConsultantProfileWhereInput(
        id: StringFilter(equals: consultantProfileId),
      ),
      select: const [ConsultantProfileScalarField.rating],
    );
    final rating = (profileData?['rating'] as num?)?.toDouble() ?? 0.0;

    // Count reviews
    final totalReviews = await _prisma.consultantReview.count(
      where: ConsultantReviewWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );

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
    final plans = await _prisma.consultationPlan.findManyProjected(
      where: ConsultationPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      select: const [ConsultationPlanScalarField.id],
    );
    final planIds = plans.map((p) => p['id'] as String).toList();

    if (planIds.isEmpty) return [];

    // Get pending consultations
    return _prisma.consultation.findManyProjected(
      where: ConsultationWhereInput(
        consultationPlanId: StringFilter(in_: planIds),
        status: const AppointmentStatusFilter(
          equals: AppointmentStatus.pending,
        ),
      ),
      include: const ConsultationInclude(
        requestedBy: ConsulteeProfileInclude(user: UserInclude()),
        consultationPlan: ConsultationPlanInclude(),
      ),
      orderBy: {'requestedAt': 'desc'},
      take: 20,
    );
  }

  /// Get recent reviews for a consultant
  Future<List<Map<String, dynamic>>> getConsultantRecentReviews({
    required String userId,
  }) async {
    final consultantProfileId = await _getConsultantProfileId(userId);
    if (consultantProfileId == null) return [];

    return _prisma.consultantReview.findManyProjected(
      where: ConsultantReviewWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      select: const [
        ConsultantReviewScalarField.id,
        ConsultantReviewScalarField.rating,
        ConsultantReviewScalarField.reviewDescription,
        ConsultantReviewScalarField.createdAt,
      ],
      include: const ConsultantReviewInclude(
        consulteeProfile: ConsulteeProfileInclude(
          select: [ConsulteeProfileScalarField.id],
          user: UserInclude(
            select: [
              UserScalarField.id,
              UserScalarField.name,
              UserScalarField.image,
            ],
          ),
        ),
      ),
      orderBy: {'createdAt': 'desc'},
      take: 10,
    );
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
      'paidEarnings': (earnings['total'] ?? 0.0) - (earnings['pending'] ?? 0.0),
      'currency': 'INR',
    };
  }

  // ==================== Private Helpers ====================

  /// Resolves the consultant profile ID for a given user ID.
  /// Returns null if the user has no consultant profile.
  Future<String?> _getConsultantProfileId(String userId) async {
    final profile = await _prisma.consultantProfile.findFirstProjected(
      where: ConsultantProfileWhereInput(userId: StringFilter(equals: userId)),
    );
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
    final consultationPlans = await _prisma.consultationPlan.findManyProjected(
      where: ConsultationPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      select: const [
        ConsultationPlanScalarField.id,
        ConsultationPlanScalarField.price,
      ],
    );

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
    final consultantProfileIdFilter =
        StringFilter(equals: consultantProfileId);
    final List<Map<String, dynamic>> plans;
    switch (planModel) {
      case 'SubscriptionPlan':
        plans = await _prisma.subscriptionPlan.findManyProjected(
          where: SubscriptionPlanWhereInput(
            consultantProfileId: consultantProfileIdFilter,
          ),
          select: const [SubscriptionPlanScalarField.id],
        );
      case 'WebinarPlan':
        plans = await _prisma.webinarPlan.findManyProjected(
          where: WebinarPlanWhereInput(
            consultantProfileId: consultantProfileIdFilter,
          ),
          select: const [WebinarPlanScalarField.id],
        );
      case 'ClassPlan':
        plans = await _prisma.classPlan.findManyProjected(
          where: ClassPlanWhereInput(
            consultantProfileId: consultantProfileIdFilter,
          ),
          select: const [ClassPlanScalarField.id],
        );
      default:
        throw ArgumentError('Unsupported plan model: $planModel');
    }
    return plans.map((p) => p['id'] as String).toList();
  }

  /// Parse groupBy query results into a status-to-count map.
  ///
  /// Expects rows shaped like `{'requestStatus': 'PENDING', '_count': 5}`.
  Map<String, int> _parseGroupByCounts(
    List<Map<String, dynamic>> groupedRows,
    String statusField,
  ) {
    final counts = <String, int>{};
    for (final row in groupedRows) {
      final status = row[statusField] as String? ?? 'UNKNOWN';
      final count = (row['_count'] as num?)?.toInt() ?? 0;
      counts[status] = count;
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

    // 1. Consultations (requestStatus column, Dart field `status`)
    if (planData.consultationPlanIds.isNotEmpty) {
      final rows = await _prisma.consultation.findManyProjected(
        where: ConsultationWhereInput(
          consultationPlanId: StringFilter(in_: planData.consultationPlanIds),
          status: AppointmentStatusFilter(
            in_: statuses.map(_toAppointmentStatus).toList(),
          ),
        ),
        select: const [ConsultationScalarField.status],
      );
      _mergeStatusCounts(counts, rows, 'requestStatus');
    }

    // 2. Subscriptions (requestStatus column, Dart field `status`)
    if (planData.subscriptionPlanIds.isNotEmpty) {
      final rows = await _prisma.subscription.findManyProjected(
        where: SubscriptionWhereInput(
          subscriptionPlanId: StringFilter(in_: planData.subscriptionPlanIds),
          status: AppointmentStatusFilter(
            in_: statuses.map(_toAppointmentStatus).toList(),
          ),
        ),
        select: const [SubscriptionScalarField.status],
      );
      _mergeStatusCounts(counts, rows, 'requestStatus');
    }

    // 3. Trial sessions (status field, mapped from request statuses)
    final trialStatuses = statuses
        .map(_mapRequestStatusToTrialStatus)
        .whereType<String>()
        .toList();
    if (trialStatuses.isNotEmpty) {
      final rows = await _prisma.trialSession.findManyProjected(
        where: TrialSessionWhereInput(
          consultantProfileId: StringFilter(equals: consultantProfileId),
          status: TrialSessionStatusFilter(
            in_: trialStatuses.map(_toTrialSessionStatus).toList(),
          ),
        ),
        select: const [TrialSessionScalarField.status],
      );
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
        final rows = await _prisma.webinar.findManyProjected(
          where: WebinarWhereInput(
            webinarPlanId: StringFilter(in_: planData.webinarPlanIds),
            status: WebinarStatusFilter(
              in_: webinarStatuses.map(_toWebinarStatus).toList(),
            ),
          ),
          select: const [WebinarScalarField.status],
        );
        for (final row in rows) {
          final webinarStatus = row['status'] as String?;
          final requestStatus = _mapWebinarStatusToRequestStatus(webinarStatus);
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
        final rows = await _prisma.classModel.findManyProjected(
          where: ClassModelWhereInput(
            classPlanId: StringFilter(in_: planData.classPlanIds),
            status: ClassStatusFilter(
              in_: classStatuses.map(_toClassStatus).toList(),
            ),
          ),
          select: const [ClassModelScalarField.status],
        );
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
    final consultations = await _prisma.consultation.findManyProjected(
      where: ConsultationWhereInput(
        requestedById: StringFilter(equals: consulteeProfileId),
        status: const AppointmentStatusFilter(
          in_: [AppointmentStatus.completed, AppointmentStatus.scheduled],
        ),
      ),
      include: const ConsultationInclude(
        consultationPlan: ConsultationPlanInclude(),
      ),
    );

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
    const activeStatuses = [
      AppointmentStatus.completed,
      AppointmentStatus.scheduled,
      AppointmentStatus.approved,
      AppointmentStatus.approvedPendingPayment,
    ];

    // 1. Consultation clients
    if (planData.consultationPlanIds.isNotEmpty) {
      final consultations = await _prisma.consultation.findManyProjected(
        where: ConsultationWhereInput(
          consultationPlanId: StringFilter(in_: planData.consultationPlanIds),
          status: const AppointmentStatusFilter(in_: activeStatuses),
        ),
        distinct: true,
        select: const [ConsultationScalarField.requestedById],
      );
      for (final c in consultations) {
        final id = c['requestedById'] as String?;
        if (id != null) clientIds.add(id);
      }
    }

    // 2. Subscription clients
    if (planData.subscriptionPlanIds.isNotEmpty) {
      final subscriptions = await _prisma.subscription.findManyProjected(
        where: SubscriptionWhereInput(
          subscriptionPlanId: StringFilter(in_: planData.subscriptionPlanIds),
          status: const AppointmentStatusFilter(in_: activeStatuses),
        ),
        distinct: true,
        select: const [SubscriptionScalarField.requestedById],
      );
      for (final s in subscriptions) {
        final id = s['requestedById'] as String?;
        if (id != null) clientIds.add(id);
      }
    }

    // 3. Trial session clients
    final trials = await _prisma.trialSession.findManyProjected(
      where: TrialSessionWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
        status: const TrialSessionStatusFilter(
          in_: [
            TrialSessionStatus.pending,
            TrialSessionStatus.scheduled,
            TrialSessionStatus.completed,
            TrialSessionStatus.converted,
          ],
        ),
      ),
      distinct: true,
      select: const [TrialSessionScalarField.consulteeProfileId],
    );
    for (final t in trials) {
      final id = t['consulteeProfileId'] as String?;
      if (id != null) clientIds.add(id);
    }

    // 4. Webinar participants (via slots → users)
    if (planData.webinarPlanIds.isNotEmpty) {
      final webinars = await _prisma.webinar.findManyProjected(
        where: WebinarWhereInput(
          webinarPlanId: StringFilter(in_: planData.webinarPlanIds),
          status: const WebinarStatusFilter(
            in_: [
              WebinarStatus.scheduled,
              WebinarStatus.inProgress,
              WebinarStatus.completed,
            ],
          ),
        ),
        include: const WebinarInclude(
          appointment: AppointmentInclude(
            slotsOfAppointment: SlotOfAppointmentInclude(user: UserInclude()),
          ),
        ),
      );
      for (final w in webinars) {
        final appointment = w['appointment'] as Map<String, dynamic>?;
        if (appointment == null) continue;
        final slots =
            appointment['slotsOfAppointment'] as List<dynamic>? ?? [];
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
      final classes = await _prisma.classModel.findManyProjected(
        where: ClassModelWhereInput(
          classPlanId: StringFilter(in_: planData.classPlanIds),
          status: const ClassStatusFilter(
            in_: [
              ClassStatus.scheduled,
              ClassStatus.inProgress,
              ClassStatus.completed,
            ],
          ),
        ),
        include: const ClassModelInclude(
          appointments: AppointmentInclude(
            slotsOfAppointment: SlotOfAppointmentInclude(user: UserInclude()),
          ),
        ),
      );
      for (final c in classes) {
        final appointments = c['appointments'] as List<dynamic>? ?? [];
        for (final a in appointments) {
          final aMap = a as Map<String, dynamic>;
          final slots = aMap['slotsOfAppointment'] as List<dynamic>? ?? [];
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
  Future<Map<String, double>> _calculateConsultantEarnings({
    required String consultantProfileId,
    Map<String, double>? preloadedPlanPrices,
  }) async {
    final earningsRows = await _prisma.consultantEarnings.findManyProjected(
      where: ConsultantEarningsWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
      select: const [
        ConsultantEarningsScalarField.consultantSharePaise,
        ConsultantEarningsScalarField.status,
      ],
    );

    var totalEarnings = 0.0;
    var pendingEarnings = 0.0;

    for (final row in earningsRows) {
      final consultantShare =
          (row['consultantSharePaise'] as num?)?.toDouble() ?? 0.0;
      final status = row['status'] as String? ?? 'PENDING';

      if (status == 'REFUNDED') continue;

      totalEarnings += consultantShare;

      if (status != 'PAID') {
        pendingEarnings += consultantShare;
      }
    }

    return {
      'total': totalEarnings,
      'pending': pendingEarnings,
    };
  }

  // ==================== Status Mapping ====================

  /// Convert an uppercase wire status string to the AppointmentStatus enum
  AppointmentStatus _toAppointmentStatus(String status) =>
      AppointmentStatus.values.firstWhere((e) => e.toJson() == status);

  /// Convert an uppercase wire status string to the TrialSessionStatus enum
  TrialSessionStatus _toTrialSessionStatus(String status) =>
      TrialSessionStatus.values.firstWhere((e) => e.toJson() == status);

  /// Convert an uppercase wire status string to the WebinarStatus enum
  WebinarStatus _toWebinarStatus(String status) =>
      WebinarStatus.values.firstWhere((e) => e.toJson() == status);

  /// Convert an uppercase wire status string to the ClassStatus enum
  ClassStatus _toClassStatus(String status) =>
      ClassStatus.values.firstWhere((e) => e.toJson() == status);

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
