import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for consultant exploration and discovery
///
/// Provides methods for browsing, filtering, and searching consultants
/// with support for pagination and sorting.
///
/// Uses the typed PrismaClient delegates (findManyProjected /
/// findFirstProjected / count / aggregate) for all reads.
class ConsultantExploreRepository extends BaseRepository {
  /// Create a consultant explore repository with the given executor
  ConsultantExploreRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Build typed WHERE conditions from filter parameters.
  ///
  /// Supports: scalar filters, relation filters (subDomains,
  /// consultationPlans), and OR conditions for search across multiple fields.
  ConsultantProfileWhereInput _buildWhereConditions({
    String? domainId,
    String? subDomainId,
    double? minRating,
    int? maxPrice,
    String? searchQuery,
  }) {
    return ConsultantProfileWhereInput(
      isVerified: const BooleanFilter(equals: true),
      domainId: domainId != null ? StringFilter(equals: domainId) : null,
      rating: minRating != null ? FloatFilter(gte: minRating) : null,
      // Search across headline, description, and user.name using OR
      OR: (searchQuery != null && searchQuery.isNotEmpty)
          ? [
              ConsultantProfileWhereInput(
                headline:
                    StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
              ConsultantProfileWhereInput(
                description:
                    StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
              ConsultantProfileWhereInput(
                user: UserRelationFilter(
                  is_: UserWhereInput(
                    name: StringFilter(
                      contains: searchQuery,
                      mode: 'insensitive',
                    ),
                  ),
                ),
              ),
            ]
          : null,
      // SubDomain filter using many-to-many relation
      subDomains: subDomainId != null
          ? SubDomainListRelationFilter(
              some: SubDomainWhereInput(id: StringFilter(equals: subDomainId)),
            )
          : null,
      // Price filter using one-to-many relation
      consultationPlans: maxPrice != null
          ? ConsultationPlanListRelationFilter(
              some: ConsultationPlanWhereInput(
                price: BigIntFilter(lte: BigInt.from(maxPrice)),
              ),
            )
          : null,
    );
  }

  /// Find verified consultants with filtering and pagination
  ///
  /// Returns a map with 'consultants' list and 'pagination' info.
  ///
  /// Uses Prisma Flutter Connector v0.2.6 features:
  /// - ComputedField for minPrice and priceCurrency subqueries
  /// - include() for user, domain, and subDomains relations (M:N)
  /// - Relation filters (some) for subDomains and consultationPlans
  /// - NULLS LAST ordering
  Future<Map<String, dynamic>> findMany({
    String? domainId,
    String? subDomainId,
    double? minRating,
    int? maxPrice,
    String? searchQuery,
    int page = 0,
    int pageSize = 20,
    String sortBy = 'rating',
    bool sortDesc = true,
  }) async {
    // Clamp pageSize to max 50
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Build ORM WHERE conditions
    final ormWhere = _buildWhereConditions(
      domainId: domainId,
      subDomainId: subDomainId,
      minRating: minRating,
      maxPrice: maxPrice,
      searchQuery: searchQuery,
    );

    // Count total using the typed delegate with relation filters
    final totalCount = await _prisma.consultantProfile.count(where: ormWhere);

    // Determine sort field and direction
    final sortField = switch (sortBy) {
      'price' => 'minPrice', // Sort by computed field
      'experience' => 'experience',
      _ => 'rating', // default to rating
    };
    final sortDirection = sortDesc ? 'desc' : 'asc';
    final nullsPosition = sortDesc ? 'last' : 'first';

    // Build main query using the typed projected finder with computed
    // subqueries + include-with-select.
    // This single query replaces 3 separate batch fetches.
    final consultantsResult = await _prisma.consultantProfile.findManyProjected(
      where: ormWhere,
      select: [
        ConsultantProfileScalarField.id,
        ConsultantProfileScalarField.userId,
        ConsultantProfileScalarField.headline,
        ConsultantProfileScalarField.description,
        ConsultantProfileScalarField.rating,
        ConsultantProfileScalarField.experience,
        ConsultantProfileScalarField.languages,
        ConsultantProfileScalarField.toolsAndTechnologies,
        ConsultantProfileScalarField.totalMenteesHelped,
        ConsultantProfileScalarField.isVerified,
        ConsultantProfileScalarField.domainId,
        ConsultantProfileScalarField.createdAt,
      ],
      computed: {
        'minPrice': ComputedField.min(
          'price',
          from: 'ConsultationPlan',
          where: {'consultantProfileId': const FieldRef('id')},
        ),
        'priceCurrency': ComputedField.first(
          'priceCurrency',
          from: 'ConsultationPlan',
          where: {'consultantProfileId': const FieldRef('id')},
          orderBy: {'price': 'asc'},
        ),
      },
      include: const ConsultantProfileInclude(
        user: UserInclude(
          select: [UserScalarField.name, UserScalarField.image],
        ),
        domain: DomainInclude(
          select: [DomainScalarField.id, DomainScalarField.name],
        ),
        subDomains: SubDomainInclude(
          select: [
            SubDomainScalarField.id,
            SubDomainScalarField.name,
            SubDomainScalarField.domainId,
          ],
        ),
      ),
      orderBy: {
        sortField: {'sort': sortDirection, 'nulls': nullsPosition},
        'createdAt': 'desc',
      },
      take: effectivePageSize,
      skip: offset,
    );

    // Build consultant list - computed fields (minPrice, priceCurrency)
    // are included in the result via ComputedField subqueries
    final consultants = consultantsResult.map((row) {
      return {
        'id': row['id'],
        'userId': row['userId'],
        'headline': row['headline'],
        'description': row['description'],
        'rating': row['rating'],
        'experience': row['experience'],
        'languages': parseStringArray(row['languages']),
        'toolsAndTechnologies': parseStringArray(row['toolsAndTechnologies']),
        'totalMenteesHelped': row['totalMenteesHelped'],
        'isVerified': row['isVerified'],
        'domainId': row['domainId'],
        'createdAt': _serializeDateTime(row['createdAt']),
        'user': row['user'],
        'domain': row['domain'],
        'minPrice': row['minPrice'],
        'priceCurrency': row['priceCurrency'] ?? 'INR',
        'subDomains': row['subDomains'] ?? <Map<String, dynamic>>[],
      };
    }).toList();

    final totalPages =
        totalCount == 0 ? 0 : (totalCount / effectivePageSize).ceil();

    return {
      'consultants': consultants,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': totalPages,
        'hasNextPage': page < totalPages - 1,
        'hasPreviousPage': page > 0,
      },
    };
  }

  /// Get full consultant details by ID
  ///
  /// Returns consultant profile with user info, domain, subdomains,
  /// consultation plans, subscription plans, and review summary.
  ///
  /// Uses the typed findFirstProjected with include-with-select.
  /// [userOrgIds] unlocks ORG_ONLY plans owned by the viewer's orgs;
  /// anonymous viewers see only PUBLIC / ORG_AND_PUBLIC plans.
  Future<Map<String, dynamic>?> findByIdWithDetails(
    String id, {
    List<String> userOrgIds = const [],
  }) async {
    // Get consultant profile with included relations using the typed delegate
    final row = await _prisma.consultantProfile.findFirstProjected(
      where: ConsultantProfileWhereInput(id: StringFilter(equals: id)),
      select: const [
        ConsultantProfileScalarField.id,
        ConsultantProfileScalarField.userId,
        ConsultantProfileScalarField.headline,
        ConsultantProfileScalarField.description,
        ConsultantProfileScalarField.rating,
        ConsultantProfileScalarField.experience,
        ConsultantProfileScalarField.languages,
        ConsultantProfileScalarField.toolsAndTechnologies,
        ConsultantProfileScalarField.totalMenteesHelped,
        ConsultantProfileScalarField.isVerified,
        ConsultantProfileScalarField.domainId,
        ConsultantProfileScalarField.mentoringStyle,
        ConsultantProfileScalarField.sessionTypes,
        ConsultantProfileScalarField.websiteUrl,
        ConsultantProfileScalarField.twitterUrl,
        ConsultantProfileScalarField.githubUrl,
        ConsultantProfileScalarField.videoIntroUrl,
        ConsultantProfileScalarField.createdAt,
        ConsultantProfileScalarField.updatedAt,
      ],
      include: const ConsultantProfileInclude(
        user: UserInclude(
          select: [
            UserScalarField.name,
            UserScalarField.image,
            UserScalarField.email,
            UserScalarField.timezone,
          ],
        ),
        domain: DomainInclude(
          select: [DomainScalarField.id, DomainScalarField.name],
        ),
        subDomains: SubDomainInclude(
          select: [
            SubDomainScalarField.id,
            SubDomainScalarField.name,
            SubDomainScalarField.domainId,
          ],
        ),
        tags: TagInclude(
          select: [TagScalarField.name],
        ),
      ),
    );

    if (row == null) return null;

    // Fetch additional data in parallel:
    // consultation plans, subscription plans, review summary
    final results = await Future.wait([
      _fetchConsultationPlans(id, userOrgIds),
      _fetchSubscriptionPlans(id, userOrgIds),
      _fetchReviewSummary(id),
    ]);

    return {
      'id': row['id'],
      'userId': row['userId'],
      'headline': row['headline'],
      'description': row['description'],
      'rating': row['rating'],
      'experience': row['experience'],
      'languages': parseStringArray(row['languages']),
      'toolsAndTechnologies': parseStringArray(row['toolsAndTechnologies']),
      'totalMenteesHelped': row['totalMenteesHelped'],
      'isVerified': row['isVerified'],
      'domainId': row['domainId'],
      'mentoringStyle': row['mentoringStyle'],
      'sessionTypes': parseStringArray(row['sessionTypes']),
      'websiteUrl': row['websiteUrl'],
      'twitterUrl': row['twitterUrl'],
      'githubUrl': row['githubUrl'],
      'videoIntroUrl': row['videoIntroUrl'],
      'createdAt': _serializeDateTime(row['createdAt']),
      'updatedAt': _serializeDateTime(row['updatedAt']),
      'user': row['user'],
      'domain': row['domain'],
      'subDomains': row['subDomains'] ?? <Map<String, dynamic>>[],
      'tags': (row['tags'] as List?)
              ?.map((t) => (t as Map<String, dynamic>)['name'] as String)
              .toList() ??
          <String>[],
      'consultationPlans': results[0],
      'subscriptionPlans': results[1],
      'reviewSummary': results[2],
    };
  }

  /// Get paginated reviews for a consultant
  ///
  /// Uses the typed ConsultantReview delegate.
  Future<Map<String, dynamic>> getReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Count total reviews using the typed delegate
    final totalCount = await _prisma.consultantReview.count(
      where: ConsultantReviewWhereInput(
        consultantProfileId: StringFilter(equals: consultantId),
      ),
    );

    // Get paginated reviews using the typed projected finder
    final reviewsResult = await _prisma.consultantReview.findManyProjected(
      select: const [
        ConsultantReviewScalarField.id,
        ConsultantReviewScalarField.rating,
        ConsultantReviewScalarField.reviewDescription,
        ConsultantReviewScalarField.consulteeProfileId,
        ConsultantReviewScalarField.createdAt,
      ],
      where: ConsultantReviewWhereInput(
        consultantProfileId: StringFilter(equals: consultantId),
      ),
      orderBy: {'createdAt': 'desc'},
      take: effectivePageSize,
      skip: offset,
    );

    // Get consultee profile IDs to fetch reviewer info
    final consulteeProfileIds = reviewsResult
        .map((r) => r['consulteeProfileId'] as String?)
        .whereType<String>()
        .toList();

    // Fetch reviewer info (consulteeProfile -> user)
    final reviewerMap = await _fetchReviewersByConsulteeProfileIds(
      consulteeProfileIds,
    );

    final reviews = reviewsResult.map((row) {
      final consulteeProfileId = row['consulteeProfileId'] as String?;
      return {
        'id': row['id'],
        'rating': row['rating'],
        'description': row['reviewDescription'],
        'createdAt': _serializeDateTime(row['createdAt']),
        'reviewer':
            consulteeProfileId != null ? reviewerMap[consulteeProfileId] : null,
      };
    }).toList();

    final totalPages =
        totalCount == 0 ? 0 : (totalCount / effectivePageSize).ceil();

    return {
      'reviews': reviews,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': totalPages,
        'hasNextPage': page < totalPages - 1,
        'hasPreviousPage': page > 0,
      },
    };
  }

  // ==================== Private Helper Methods ====================

  /// Serialize DateTime to ISO8601 string
  String? _serializeDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value.toIso8601String();
    if (value is String) return value;
    return value.toString();
  }

  /// Fetch reviewer info by consultee profile IDs
  ///
  /// This fetches ConsulteeProfile -> User relationship for reviews
  Future<Map<String, Map<String, dynamic>>>
      _fetchReviewersByConsulteeProfileIds(
    List<String> consulteeProfileIds,
  ) async {
    if (consulteeProfileIds.isEmpty) return {};

    // First fetch consultee profiles to get user IDs
    final profiles = await _prisma.consulteeProfile.findManyProjected(
      select: const [
        ConsulteeProfileScalarField.id,
        ConsulteeProfileScalarField.userId,
      ],
      where: ConsulteeProfileWhereInput(
        id: StringFilter(in_: consulteeProfileIds),
      ),
    );

    // Map consulteeProfileId -> userId
    final profileToUserMap = <String, String>{};
    final userIds = <String>[];
    for (final p in profiles) {
      final profileId = p['id'] as String;
      final userId = p['userId'] as String?;
      if (userId != null) {
        profileToUserMap[profileId] = userId;
        userIds.add(userId);
      }
    }

    if (userIds.isEmpty) return {};

    // Fetch users using the typed delegate (registry resolves the @map'd
    // 'users' table name)
    final users = await _prisma.user.findManyProjected(
      select: const [
        UserScalarField.id,
        UserScalarField.name,
        UserScalarField.image,
      ],
      where: UserWhereInput(id: StringFilter(in_: userIds)),
    );

    // Map userId -> user data
    final userMap = <String, Map<String, dynamic>>{};
    for (final u in users) {
      userMap[u['id'] as String] = {
        'name': u['name'],
        'image': u['image'],
      };
    }

    // Build final map: consulteeProfileId -> reviewer info
    final result = <String, Map<String, dynamic>>{};
    for (final entry in profileToUserMap.entries) {
      final userData = userMap[entry.value];
      if (userData != null) {
        result[entry.key] = userData;
      }
    }

    return result;
  }

  /// Fetch consultation plans for a consultant
  ///
  /// Uses the typed projected finder for type-safe field selection

  /// Typed plan-visibility filter: PUBLIC/ORG_AND_PUBLIC for everyone, plus
  /// ORG_ONLY plans owned by one of the viewer's orgs.
  static List<ConsultationPlanWhereInput> _consultationVisibilityOr(
    List<String> userOrgIds,
  ) =>
      [
        const ConsultationPlanWhereInput(
          visibility: OrgPlanVisibilityFilter(
            in_: [OrgPlanVisibility.public, OrgPlanVisibility.orgAndPublic],
          ),
        ),
        if (userOrgIds.isNotEmpty)
          ConsultationPlanWhereInput(
            visibility: const OrgPlanVisibilityFilter(
              equals: OrgPlanVisibility.orgOnly,
            ),
            organizationId: StringFilter(in_: userOrgIds),
          ),
      ];

  /// Subscription-plan twin of [_consultationVisibilityOr].
  static List<SubscriptionPlanWhereInput> _subscriptionVisibilityOr(
    List<String> userOrgIds,
  ) =>
      [
        const SubscriptionPlanWhereInput(
          visibility: OrgPlanVisibilityFilter(
            in_: [OrgPlanVisibility.public, OrgPlanVisibility.orgAndPublic],
          ),
        ),
        if (userOrgIds.isNotEmpty)
          SubscriptionPlanWhereInput(
            visibility: const OrgPlanVisibilityFilter(
              equals: OrgPlanVisibility.orgOnly,
            ),
            organizationId: StringFilter(in_: userOrgIds),
          ),
      ];

  Future<List<Map<String, dynamic>>> _fetchConsultationPlans(
    String consultantId,
    List<String> userOrgIds,
  ) async {
    final result = await _prisma.consultationPlan.findManyProjected(
      select: const [
        ConsultationPlanScalarField.id,
        ConsultationPlanScalarField.title,
        ConsultationPlanScalarField.description,
        ConsultationPlanScalarField.durationInHours,
        ConsultationPlanScalarField.price,
        ConsultationPlanScalarField.priceCurrency,
        ConsultationPlanScalarField.language,
        ConsultationPlanScalarField.level,
        ConsultationPlanScalarField.prerequisites,
        ConsultationPlanScalarField.materialProvided,
        ConsultationPlanScalarField.learningOutcomes,
        ConsultationPlanScalarField.createdAt,
      ],
      where: ConsultationPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantId),
        OR: _consultationVisibilityOr(userOrgIds),
      ),
      orderBy: {'durationInHours': 'asc'},
    );

    return result.map((row) {
      return {
        'id': row['id'],
        'title': row['title'],
        'description': row['description'],
        'durationInHours': row['durationInHours'],
        'price': row['price'],
        'priceCurrency': row['priceCurrency'],
        'language': row['language'],
        'level': row['level'],
        'prerequisites': row['prerequisites'],
        'materialProvided': row['materialProvided'],
        'learningOutcomes': row['learningOutcomes'],
        'createdAt': _serializeDateTime(row['createdAt']),
      };
    }).toList();
  }

  /// Fetch subscription plans for a consultant
  ///
  /// Uses the typed projected finder for type-safe field selection
  Future<List<Map<String, dynamic>>> _fetchSubscriptionPlans(
    String consultantId,
    List<String> userOrgIds,
  ) async {
    final result = await _prisma.subscriptionPlan.findManyProjected(
      select: const [
        SubscriptionPlanScalarField.id,
        SubscriptionPlanScalarField.title,
        SubscriptionPlanScalarField.description,
        SubscriptionPlanScalarField.durationInMonths,
        SubscriptionPlanScalarField.price,
        SubscriptionPlanScalarField.priceCurrency,
        SubscriptionPlanScalarField.callsPerWeek,
        SubscriptionPlanScalarField.sessionDurationInHours,
        SubscriptionPlanScalarField.totalSessions,
        SubscriptionPlanScalarField.totalHours,
        // Note: PostgreSQL enum will return as string
        SubscriptionPlanScalarField.emailSupport,
        SubscriptionPlanScalarField.language,
        SubscriptionPlanScalarField.level,
        SubscriptionPlanScalarField.prerequisites,
        SubscriptionPlanScalarField.materialProvided,
        SubscriptionPlanScalarField.learningOutcomes,
        SubscriptionPlanScalarField.createdAt,
      ],
      where: SubscriptionPlanWhereInput(
        consultantProfileId: StringFilter(equals: consultantId),
        OR: _subscriptionVisibilityOr(userOrgIds),
      ),
      orderBy: {'sessionDurationInHours': 'asc'},
    );

    return result.map((row) {
      return {
        'id': row['id'],
        'title': row['title'],
        'description': row['description'],
        'durationInMonths': row['durationInMonths'],
        'price': row['price'],
        'priceCurrency': row['priceCurrency'],
        'callsPerWeek': row['callsPerWeek'],
        'sessionDurationInHours': row['sessionDurationInHours'],
        'totalSessions': row['totalSessions'],
        'totalHours': row['totalHours'],
        'emailSupport': row['emailSupport']?.toString(),
        'language': row['language'],
        'level': row['level'],
        'prerequisites': row['prerequisites'],
        'materialProvided': row['materialProvided'],
        'learningOutcomes': row['learningOutcomes'],
        'createdAt': _serializeDateTime(row['createdAt']),
      };
    }).toList();
  }

  /// Fetch review summary for a consultant
  ///
  /// Uses the typed aggregate delegate with FILTER clause for conditional
  /// aggregations
  Future<Map<String, dynamic>> _fetchReviewSummary(String consultantId) async {
    // Use typed aggregate query with FILTER clause for rating distribution
    final result = await _prisma.consultantReview.aggregate(
      where: ConsultantReviewWhereInput(
        consultantProfileId: StringFilter(equals: consultantId),
      ),
      count: true,
      avg: {'rating': true},
      countFiltered: [
        {
          'alias': 'fiveStar',
          'filter': {'rating': 5},
        },
        {
          'alias': 'fourStar',
          'filter': {'rating': 4},
        },
        {
          'alias': 'threeStar',
          'filter': {'rating': 3},
        },
        {
          'alias': 'twoStar',
          'filter': {'rating': 2},
        },
        {
          'alias': 'oneStar',
          'filter': {'rating': 1},
        },
      ],
    );

    if (result.isEmpty) {
      return {
        'averageRating': 0.0,
        'totalReviews': 0,
        'ratingDistribution': {5: 0, 4: 0, 3: 0, 2: 0, 1: 0},
      };
    }

    final row = result;

    // Helper to safely parse numeric values (handles both num and String)
    double parseDouble(Object? value) {
      if (value == null) return 0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0;
      return 0;
    }

    int parseInt(Object? value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is num) return value.toInt();
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return {
      'averageRating': parseDouble(row['_avg_rating']),
      'totalReviews': parseInt(row['_count']),
      'ratingDistribution': {
        5: parseInt(row['fiveStar']),
        4: parseInt(row['fourStar']),
        3: parseInt(row['threeStar']),
        2: parseInt(row['twoStar']),
        1: parseInt(row['oneStar']),
      },
    };
  }
}
