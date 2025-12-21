import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for consultant exploration and discovery
///
/// Provides methods for browsing, filtering, and searching consultants
/// with support for pagination and sorting.
///
/// Uses the Prisma Flutter Connector for type-safe queries where possible,
/// with raw SQL fallback for complex queries requiring advanced PostgreSQL
/// features like subqueries in SELECT clauses.
class ConsultantExploreRepository extends BaseRepository {
  /// Create a consultant explore repository with the given executor
  ConsultantExploreRepository(super._executor);

  /// Build ORM WHERE conditions from filter parameters.
  ///
  /// This builds a type-safe WHERE map that can be used with JsonQueryBuilder.
  /// Supports: scalar filters, relation filters (subDomains, consultationPlans),
  /// and OR conditions for search across multiple fields.
  Map<String, dynamic> _buildWhereConditions({
    String? domainId,
    String? subDomainId,
    double? minRating,
    int? maxPrice,
    String? searchQuery,
  }) {
    final where = <String, dynamic>{
      'isVerified': true,
    };

    if (domainId != null) {
      where['domainId'] = domainId;
    }

    if (minRating != null) {
      where['rating'] = FilterOperators.gte(minRating);
    }

    // Search across headline, description, and user.name using OR
    if (searchQuery != null && searchQuery.isNotEmpty) {
      where['OR'] = [
        {'headline': FilterOperators.containsInsensitive(searchQuery)},
        {'description': FilterOperators.containsInsensitive(searchQuery)},
        {
          'user': FilterOperators.some({
            'name': FilterOperators.containsInsensitive(searchQuery),
          }),
        },
      ];
    }

    // SubDomain filter using many-to-many relation
    if (subDomainId != null) {
      where['subDomains'] = FilterOperators.some({'id': subDomainId});
    }

    // Price filter using one-to-many relation
    if (maxPrice != null) {
      where['consultationPlans'] = FilterOperators.some({
        'price': FilterOperators.lte(maxPrice),
      });
    }

    return where;
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

    // Count total using ORM with relation filters
    final countQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.count)
        .where(ormWhere)
        .build();
    final totalCount = await executeCount(countQuery);

    // Determine sort field and direction
    final sortField = switch (sortBy) {
      'price' => 'minPrice', // Sort by computed field
      'experience' => 'experience',
      _ => 'rating', // default to rating
    };
    final sortDirection = sortDesc ? 'desc' : 'asc';
    final nullsPosition = sortDesc ? 'last' : 'first';

    // Build main query using ORM with ComputedField + include() (v0.2.6)
    // The alias conflict fix allows computed() and include() to work together.
    // This single query replaces 3 separate batch fetches.
    final mainQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findMany)
        .selectFields([
          'id',
          'userId',
          'headline',
          'description',
          'rating',
          'experience',
          'languages',
          'toolsAndTechnologies',
          'totalMenteesHelped',
          'isVerified',
          'domainId',
          'createdAt',
        ])
        .computed({
          'minPrice': ComputedField.min(
            'price',
            from: 'ConsultationPlan',
            where: {'consultantProfileId': FieldRef('id')},
          ),
          'priceCurrency': ComputedField.first(
            'priceCurrency',
            from: 'ConsultationPlan',
            where: {'consultantProfileId': FieldRef('id')},
            orderBy: {'price': 'asc'},
          ),
        })
        .include({
          'user': {
            'select': {'name': true, 'image': true},
          },
          'domain': {
            'select': {'id': true, 'name': true},
          },
          'subDomains': {
            'select': {'id': true, 'name': true, 'domainId': true},
          },
        })
        .where(ormWhere)
        .orderBy({
          sortField: {'sort': sortDirection, 'nulls': nullsPosition},
          'createdAt': 'desc',
        })
        .take(effectivePageSize)
        .skip(offset)
        .build();

    final consultantsResult = await executeQueryAsMaps(mainQuery);

    // Build consultant list - relations are already included in result
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
  /// Uses Prisma Flutter Connector v0.2.6 ORM queries with include().
  Future<Map<String, dynamic>?> findByIdWithDetails(String id) async {
    // Get consultant profile with included relations using ORM
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .selectFields([
      'id',
      'userId',
      'headline',
      'description',
      'rating',
      'experience',
      'languages',
      'toolsAndTechnologies',
      'totalMenteesHelped',
      'isVerified',
      'domainId',
      'mentoringStyle',
      'sessionTypes',
      'websiteUrl',
      'twitterUrl',
      'githubUrl',
      'videoIntroUrl',
      'createdAt',
      'updatedAt',
    ]).include({
      'user': {
        'select': {
          'name': true,
          'image': true,
          'email': true,
          'timezone': true,
        },
      },
      'domain': {
        'select': {'id': true, 'name': true},
      },
      'subDomains': {
        'select': {'id': true, 'name': true, 'domainId': true},
      },
    }).where({'id': id}).build();

    final profileResult = await executeQueryAsMaps(profileQuery);

    if (profileResult.isEmpty) return null;

    final row = profileResult.first;

    // Fetch additional data in parallel:
    // consultation plans, subscription plans, review summary
    final results = await Future.wait([
      _fetchConsultationPlans(id),
      _fetchSubscriptionPlans(id),
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
      'consultationPlans': results[0],
      'subscriptionPlans': results[1],
      'reviewSummary': results[2],
    };
  }

  /// Get paginated reviews for a consultant
  ///
  /// Uses Prisma Flutter Connector v0.2.6 ORM queries.
  Future<Map<String, dynamic>> getReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Count total reviews using ORM
    final countQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.count)
        .where({'consultantProfileId': consultantId}).build();
    final totalCount = await executeCount(countQuery);

    // Get paginated reviews using ORM
    final reviewsQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findMany)
        .selectFields([
          'id',
          'rating',
          'reviewDescription',
          'consulteeProfileId',
          'createdAt',
        ])
        .where({'consultantProfileId': consultantId})
        .orderBy({'createdAt': 'desc'})
        .take(effectivePageSize)
        .skip(offset)
        .build();

    final reviewsResult = await executeQueryAsMaps(reviewsQuery);

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
    final profilesQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findMany)
        .selectFields(['id', 'userId']).where(
            {'id': FilterOperators.in_(consulteeProfileIds)}).build();

    final profiles = await executeQueryAsMaps(profilesQuery);

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

    // Fetch users
    final usersQuery = JsonQueryBuilder()
        .model('User')
        .action(QueryAction.findMany)
        .selectFields(['id', 'name', 'image']).where(
            {'id': FilterOperators.in_(userIds)}).build();

    final users = await executeQueryAsMaps(usersQuery);

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
  /// Uses the ORM with selectFields() for type-safe field selection (v0.2.5+)
  Future<List<Map<String, dynamic>>> _fetchConsultationPlans(
    String consultantId,
  ) async {
    // Build ORM query with specific fields
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .selectFields([
      'id',
      'title',
      'description',
      'durationInHours',
      'price',
      'priceCurrency',
      'language',
      'level',
      'prerequisites',
      'materialProvided',
      'learningOutcomes',
      'createdAt',
    ]).where({'consultantProfileId': consultantId}).orderBy(
            {'price': 'asc'}).build();

    final result = await executeQueryAsMaps(query);

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
  /// Uses the ORM with selectFields() for type-safe field selection (v0.2.5+)
  Future<List<Map<String, dynamic>>> _fetchSubscriptionPlans(
    String consultantId,
  ) async {
    // Build ORM query with specific fields
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findMany)
        .selectFields([
      'id',
      'title',
      'description',
      'durationInMonths',
      'price',
      'priceCurrency',
      'callsPerWeek',
      'sessionDurationInHours',
      'totalSessions',
      'totalHours',
      'emailSupport', // Note: PostgreSQL enum will return as string
      'language',
      'level',
      'prerequisites',
      'materialProvided',
      'learningOutcomes',
      'createdAt',
    ]).where({'consultantProfileId': consultantId}).orderBy(
            {'price': 'asc'}).build();

    final result = await executeQueryAsMaps(query);

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
  /// Uses the ORM with FILTER clause for conditional aggregations (v0.2.5+)
  Future<Map<String, dynamic>> _fetchReviewSummary(String consultantId) async {
    // Use ORM aggregate query with FILTER clause for rating distribution
    final query = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.aggregate)
        .aggregation({
      '_count': true,
      '_avg': {'rating': true},
      '_countFiltered': [
        {
          'alias': 'fiveStar',
          'filter': {'rating': 5}
        },
        {
          'alias': 'fourStar',
          'filter': {'rating': 4}
        },
        {
          'alias': 'threeStar',
          'filter': {'rating': 3}
        },
        {
          'alias': 'twoStar',
          'filter': {'rating': 2}
        },
        {
          'alias': 'oneStar',
          'filter': {'rating': 1}
        },
      ],
    }).where({'consultantProfileId': consultantId}).build();

    final result = await executeQueryAsMaps(query);

    if (result.isEmpty) {
      return {
        'averageRating': 0.0,
        'totalReviews': 0,
        'ratingDistribution': {5: 0, 4: 0, 3: 0, 2: 0, 1: 0},
      };
    }

    final row = result.first;

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
