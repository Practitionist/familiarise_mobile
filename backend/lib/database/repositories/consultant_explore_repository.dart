import 'package:backend/database/repositories/base_repository.dart';
import 'package:postgres/postgres.dart' as pg;

/// Repository for consultant exploration and discovery
///
/// Provides methods for browsing, filtering, and searching consultants
/// with support for pagination and sorting.
class ConsultantExploreRepository extends BaseRepository {
  /// Create a consultant explore repository with the given executor
  ConsultantExploreRepository(super._executor, this._connection);

  final pg.Connection _connection;

  /// Find verified consultants with filtering and pagination
  ///
  /// Returns a map with 'consultants' list and 'pagination' info.
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

    // Build WHERE clauses
    final whereClauses = <String>[
      'cp."isVerified" = true',
    ];
    final params = <Object?>[];
    var paramIndex = 1;

    if (domainId != null) {
      whereClauses.add('cp."domainId" = \$${paramIndex++}');
      params.add(domainId);
    }

    if (minRating != null) {
      whereClauses.add('cp.rating >= \$${paramIndex++}');
      params.add(minRating);
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      whereClauses.add('''
        (u.name ILIKE \$$paramIndex OR
         cp.headline ILIKE \$$paramIndex OR
         cp.description ILIKE \$$paramIndex)
      ''');
      params.add('%$searchQuery%');
      paramIndex++;
    }

    // SubDomain filter requires a subquery
    if (subDomainId != null) {
      whereClauses.add('''
        EXISTS (
          SELECT 1 FROM "_ConsultantProfileToSubDomain" cps
          WHERE cps."A" = cp.id AND cps."B" = \$${paramIndex++}
        )
      ''');
      params.add(subDomainId);
    }

    // Price filter - check minimum price from consultation plans
    if (maxPrice != null) {
      whereClauses.add('''
        EXISTS (
          SELECT 1 FROM "ConsultationPlan" plan
          WHERE plan."consultantProfileId" = cp.id AND plan.price <= \$${paramIndex++}
        )
      ''');
      params.add(maxPrice);
    }

    final whereClause = whereClauses.join(' AND ');

    // Determine sort column
    final sortColumn = switch (sortBy) {
      'price' => 'min_price',
      'experience' => 'cp.experience',
      _ => 'cp.rating', // default to rating
    };
    final sortDirection = sortDesc ? 'DESC' : 'ASC';
    // Use NULLS LAST to put consultants without prices at the end
    final nullsOrder = sortDesc ? 'NULLS LAST' : 'NULLS FIRST';

    // Count total matching consultants
    final countResult = await _connection.execute(
      pg.Sql('''
        SELECT COUNT(DISTINCT cp.id) as total
        FROM "ConsultantProfile" cp
        JOIN users u ON u.id = cp."userId"
        WHERE $whereClause
      '''),
      parameters: params,
    );
    final totalCount = (countResult.first[0]! as num).toInt();

    // Add pagination params
    final limitIdx = paramIndex++;
    final offsetIdx = paramIndex;
    final allParams = [...params, effectivePageSize, offset];

    // Main query to get consultants with related data
    final consultantsResult = await _connection.execute(
      pg.Sql('''
        SELECT
          cp.id,
          cp."userId",
          cp.headline,
          cp.description,
          cp.rating,
          cp.experience,
          cp.languages,
          cp."toolsAndTechnologies",
          cp."totalMenteesHelped",
          cp."isVerified",
          cp."domainId",
          cp."createdAt",
          u.name as user_name,
          u.image as user_image,
          d.id as domain_id,
          d.name as domain_name,
          (
            SELECT MIN(plan.price)
            FROM "ConsultationPlan" plan
            WHERE plan."consultantProfileId" = cp.id
          ) as min_price,
          (
            SELECT COALESCE(
              (SELECT "priceCurrency" FROM "ConsultationPlan" plan
               WHERE plan."consultantProfileId" = cp.id
               ORDER BY plan.price ASC LIMIT 1),
              'INR'
            )
          ) as price_currency
        FROM "ConsultantProfile" cp
        JOIN users u ON u.id = cp."userId"
        LEFT JOIN "Domain" d ON d.id = cp."domainId"
        WHERE $whereClause
        ORDER BY $sortColumn $sortDirection $nullsOrder, cp."createdAt" DESC
        LIMIT \$$limitIdx OFFSET \$$offsetIdx
      '''),
      parameters: allParams,
    );

    // Get consultant IDs for batch fetching subdomains
    final consultantIds =
        consultantsResult.map((r) => r[0]! as String).toList();

    // Batch fetch subdomains for all consultants
    final subDomainsMap = await _fetchSubDomainsForConsultants(consultantIds);

    // Build consultant list with nested data
    final consultants = consultantsResult.map((row) {
      final consultantId = row[0]! as String;
      return {
        'id': consultantId,
        'userId': row[1],
        'headline': row[2],
        'description': row[3],
        'rating': row[4],
        'experience': row[5],
        'languages': row[6],
        'toolsAndTechnologies': row[7],
        'totalMenteesHelped': row[8],
        'isVerified': row[9],
        'domainId': row[10],
        'createdAt': (row[11] as DateTime?)?.toIso8601String(),
        'user': {
          'name': row[12],
          'image': row[13],
        },
        'domain': row[14] != null
            ? {
                'id': row[14],
                'name': row[15],
              }
            : null,
        'minPrice': row[16],
        'priceCurrency': row[17],
        'subDomains': subDomainsMap[consultantId] ?? [],
      };
    }).toList();

    final totalPages = (totalCount / effectivePageSize).ceil();

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
  Future<Map<String, dynamic>?> findByIdWithDetails(String id) async {
    // Get basic consultant profile with user and domain
    final profileResult = await _connection.execute(
      pg.Sql.named('''
        SELECT
          cp.id,
          cp."userId",
          cp.headline,
          cp.description,
          cp.rating,
          cp.experience,
          cp.languages,
          cp."toolsAndTechnologies",
          cp."totalMenteesHelped",
          cp."isVerified",
          cp."domainId",
          cp."mentoringStyle",
          cp."sessionTypes",
          cp."websiteUrl",
          cp."twitterUrl",
          cp."githubUrl",
          cp."videoIntroUrl",
          cp."createdAt",
          cp."updatedAt",
          u.name as user_name,
          u.image as user_image,
          u.email as user_email,
          u.timezone as user_timezone,
          d.id as domain_id,
          d.name as domain_name
        FROM "ConsultantProfile" cp
        JOIN users u ON u.id = cp."userId"
        LEFT JOIN "Domain" d ON d.id = cp."domainId"
        WHERE cp.id = @id
      '''),
      parameters: {'id': id},
    );

    if (profileResult.isEmpty) return null;

    final row = profileResult.first;

    // Fetch related data in parallel
    final results = await Future.wait([
      _fetchSubDomainsForConsultant(id),
      _fetchConsultationPlans(id),
      _fetchSubscriptionPlans(id),
      _fetchReviewSummary(id),
    ]);

    return {
      'id': row[0],
      'userId': row[1],
      'headline': row[2],
      'description': row[3],
      'rating': row[4],
      'experience': row[5],
      'languages': row[6],
      'toolsAndTechnologies': row[7],
      'totalMenteesHelped': row[8],
      'isVerified': row[9],
      'domainId': row[10],
      'mentoringStyle': row[11],
      'sessionTypes': row[12],
      'websiteUrl': row[13],
      'twitterUrl': row[14],
      'githubUrl': row[15],
      'videoIntroUrl': row[16],
      'createdAt': (row[17] as DateTime?)?.toIso8601String(),
      'updatedAt': (row[18] as DateTime?)?.toIso8601String(),
      'user': {
        'name': row[19],
        'image': row[20],
        'email': row[21],
        'timezone': row[22],
      },
      'domain': row[23] != null
          ? {
              'id': row[23],
              'name': row[24],
            }
          : null,
      'subDomains': results[0],
      'consultationPlans': results[1],
      'subscriptionPlans': results[2],
      'reviewSummary': results[3],
    };
  }

  /// Get paginated reviews for a consultant
  Future<Map<String, dynamic>> getReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Count total reviews
    final countResult = await _connection.execute(
      pg.Sql.named('''
        SELECT COUNT(*) as total
        FROM "ConsultantReview" cr
        WHERE cr."consultantProfileId" = @consultantId
      '''),
      parameters: {'consultantId': consultantId},
    );
    final totalCount = (countResult.first[0]! as num).toInt();

    // Get paginated reviews with reviewer info
    final reviewsResult = await _connection.execute(
      pg.Sql.named('''
        SELECT
          cr.id,
          cr.rating,
          cr."reviewDescription",
          cr."createdAt",
          u.name as reviewer_name,
          u.image as reviewer_image
        FROM "ConsultantReview" cr
        JOIN "ConsulteeProfile" cpf ON cpf.id = cr."consulteeProfileId"
        JOIN users u ON u.id = cpf."userId"
        WHERE cr."consultantProfileId" = @consultantId
        ORDER BY cr."createdAt" DESC
        LIMIT @limit OFFSET @offset
      '''),
      parameters: {
        'consultantId': consultantId,
        'limit': effectivePageSize,
        'offset': offset,
      },
    );

    final reviews = reviewsResult.map((row) {
      return {
        'id': row[0],
        'rating': row[1],
        'description': row[2],
        'createdAt': (row[3] as DateTime?)?.toIso8601String(),
        'reviewer': {
          'name': row[4],
          'image': row[5],
        },
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

  /// Batch fetch subdomains for multiple consultants
  Future<Map<String, List<Map<String, dynamic>>>>
      _fetchSubDomainsForConsultants(List<String> consultantIds) async {
    if (consultantIds.isEmpty) return {};

    // Create parameterized query for IN clause
    final placeholders =
        List.generate(consultantIds.length, (i) => '@p$i').join(', ');
    final parameters = <String, Object?>{
      for (var i = 0; i < consultantIds.length; i++) 'p$i': consultantIds[i],
    };

    final result = await _connection.execute(
      pg.Sql.named('''
        SELECT
          cps."A" as consultant_id,
          sd.id,
          sd.name,
          sd."domainId"
        FROM "_ConsultantProfileToSubDomain" cps
        JOIN "SubDomain" sd ON sd.id = cps."B"
        WHERE cps."A" IN ($placeholders)
        ORDER BY sd.name ASC
      '''),
      parameters: parameters,
    );

    final map = <String, List<Map<String, dynamic>>>{};
    for (final row in result) {
      final consultantId = row[0]! as String;
      (map[consultantId] ??= []).add({
        'id': row[1],
        'name': row[2],
        'domainId': row[3],
      });
    }
    return map;
  }

  /// Fetch subdomains for a single consultant
  Future<List<Map<String, dynamic>>> _fetchSubDomainsForConsultant(
    String consultantId,
  ) async {
    final result = await _connection.execute(
      pg.Sql.named('''
        SELECT sd.id, sd.name, sd."domainId"
        FROM "_ConsultantProfileToSubDomain" cps
        JOIN "SubDomain" sd ON sd.id = cps."B"
        WHERE cps."A" = @consultantId
        ORDER BY sd.name ASC
      '''),
      parameters: {'consultantId': consultantId},
    );

    return result.map((row) {
      return {
        'id': row[0],
        'name': row[1],
        'domainId': row[2],
      };
    }).toList();
  }

  /// Fetch consultation plans for a consultant
  Future<List<Map<String, dynamic>>> _fetchConsultationPlans(
    String consultantId,
  ) async {
    final result = await _connection.execute(
      pg.Sql.named('''
        SELECT
          id,
          title,
          description,
          "durationInHours",
          price,
          "priceCurrency",
          language,
          level,
          prerequisites,
          "materialProvided",
          "learningOutcomes",
          "createdAt"
        FROM "ConsultationPlan"
        WHERE "consultantProfileId" = @consultantId
        ORDER BY price ASC
      '''),
      parameters: {'consultantId': consultantId},
    );

    return result.map((row) {
      return {
        'id': row[0],
        'title': row[1],
        'description': row[2],
        'durationInHours': row[3],
        'price': row[4],
        'priceCurrency': row[5],
        'language': row[6],
        'level': row[7],
        'prerequisites': row[8],
        'materialProvided': row[9],
        'learningOutcomes': row[10],
        'createdAt': (row[11] as DateTime?)?.toIso8601String(),
      };
    }).toList();
  }

  /// Fetch subscription plans for a consultant
  Future<List<Map<String, dynamic>>> _fetchSubscriptionPlans(
    String consultantId,
  ) async {
    final result = await _connection.execute(
      pg.Sql.named('''
        SELECT
          id,
          title,
          description,
          "durationInMonths",
          price,
          "priceCurrency",
          "callsPerWeek",
          "sessionDurationInHours",
          "totalSessions",
          "totalHours",
          "emailSupport"::text as email_support,
          language,
          level,
          prerequisites,
          "materialProvided",
          "learningOutcomes",
          "createdAt"
        FROM "SubscriptionPlan"
        WHERE "consultantProfileId" = @consultantId
        ORDER BY price ASC
      '''),
      parameters: {'consultantId': consultantId},
    );

    return result.map((row) {
      return {
        'id': row[0],
        'title': row[1],
        'description': row[2],
        'durationInMonths': row[3],
        'price': row[4],
        'priceCurrency': row[5],
        'callsPerWeek': row[6],
        'sessionDurationInHours': row[7],
        'totalSessions': row[8],
        'totalHours': row[9],
        'emailSupport': row[10],
        'language': row[11],
        'level': row[12],
        'prerequisites': row[13],
        'materialProvided': row[14],
        'learningOutcomes': row[15],
        'createdAt': (row[16] as DateTime?)?.toIso8601String(),
      };
    }).toList();
  }

  /// Fetch review summary for a consultant
  Future<Map<String, dynamic>> _fetchReviewSummary(String consultantId) async {
    final result = await _connection.execute(
      pg.Sql.named('''
        SELECT
          COALESCE(AVG(rating), 0) as average_rating,
          COUNT(*) as total_reviews,
          COUNT(*) FILTER (WHERE rating = 5) as five_star,
          COUNT(*) FILTER (WHERE rating = 4) as four_star,
          COUNT(*) FILTER (WHERE rating = 3) as three_star,
          COUNT(*) FILTER (WHERE rating = 2) as two_star,
          COUNT(*) FILTER (WHERE rating = 1) as one_star
        FROM "ConsultantReview"
        WHERE "consultantProfileId" = @consultantId
      '''),
      parameters: {'consultantId': consultantId},
    );

    final row = result.first;

    // Helper to safely parse numeric values (handles both num and String)
    double parseDouble(Object? value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    int parseInt(Object? value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is num) return value.toInt();
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return {
      'averageRating': parseDouble(row[0]),
      'totalReviews': parseInt(row[1]),
      'ratingDistribution': {
        5: parseInt(row[2]),
        4: parseInt(row[3]),
        3: parseInt(row[4]),
        2: parseInt(row[5]),
        1: parseInt(row[6]),
      },
    };
  }
}
