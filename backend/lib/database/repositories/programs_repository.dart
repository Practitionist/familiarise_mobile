import 'package:prisma_flutter_connector/runtime_server.dart';

import 'base_repository.dart';

/// Repository for webinar and class plan operations
///
/// Handles queries for browsing and booking webinars and classes.
class ProgramsRepository extends BaseRepository {
  ProgramsRepository(super.executor);

  /// Find webinar plans with optional filters
  ///
  /// Returns paginated list of webinar plans with upcoming sessions.
  Future<Map<String, dynamic>> findWebinars({
    String? domainId,
    String? language,
    String? searchQuery,
    int page = 0,
    int pageSize = 20,
    String sortBy = 'date',
    bool sortDesc = false,
  }) async {
    // Build where clause for filtering
    final where = <String, dynamic>{};

    // Note: domainId filter requires relation traversal which is complex.
    // For now, we filter on language and search only.
    // TODO: Add domain filter using raw SQL or proper relation filter syntax.

    if (language != null) {
      where['language'] = language;
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      where['OR'] = [
        {'title': {'contains': searchQuery, 'mode': 'insensitive'}},
        {'description': {'contains': searchQuery, 'mode': 'insensitive'}},
      ];
    }

    // Count total for pagination
    final countQuery = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.count)
        .where(where)
        .build();

    final totalCount = await executeCount(countQuery);

    // Determine sort field
    String orderByField;
    switch (sortBy) {
      case 'price':
        orderByField = 'price';
      case 'date':
      default:
        orderByField = 'createdAt';
    }

    // Fetch webinar plans (without includes for now - fetch relations separately)
    final listQuery = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.findMany)
        .where(where)
        .orderBy({orderByField: sortDesc ? 'desc' : 'asc'})
        .skip(page * pageSize)
        .take(pageSize)
        .build();

    final webinars = await executeQueryAsMaps(listQuery);

    // Fetch consultant details for each webinar
    final transformedWebinars = <Map<String, dynamic>>[];
    for (final w in webinars) {
      final consultantProfileId = w['consultantProfileId'] as String?;
      Map<String, dynamic>? consultant;

      if (consultantProfileId != null) {
        // Fetch consultant profile with user
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId})
            .include({
              'user': {
                'select': {'name': true, 'image': true},
              },
            })
            .build();
        final profile = await executeQueryAsSingleMap(profileQuery);
        if (profile != null) {
          final user = profile['user'] as Map<String, dynamic>?;
          consultant = {
            'id': profile['id'],
            'name': user?['name'],
            'image': user?['image'],
            'headline': profile['headline'],
          };
        }
      }

      final result = Map<String, dynamic>.from(w);
      result['consultant'] = consultant;
      result['upcomingSessions'] = []; // TODO: Fetch webinar sessions
      transformedWebinars.add(result);
    }

    return {
      'webinars': transformedWebinars,
      'pagination': {
        'page': page,
        'pageSize': pageSize,
        'totalCount': totalCount,
        'totalPages': (totalCount / pageSize).ceil(),
      },
    };
  }

  /// Find a webinar plan by ID
  Future<Map<String, dynamic>?> findWebinarById(String id) async {
    // Fetch webinar plan
    final query = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

    final webinar = await executeQueryAsSingleMap(query);
    if (webinar == null) return null;

    // Fetch consultant profile with user
    final consultantProfileId = webinar['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      final profileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findUnique)
          .where({'id': consultantProfileId})
          .include({
            'user': {
              'select': {'name': true, 'image': true},
            },
            'domain': {
              'select': {'id': true, 'name': true},
            },
          })
          .build();
      final profile = await executeQueryAsSingleMap(profileQuery);
      if (profile != null) {
        final user = profile['user'] as Map<String, dynamic>?;
        consultant = {
          'id': profile['id'],
          'name': user?['name'],
          'image': user?['image'],
          'headline': profile['headline'],
        };
      }
    }

    final result = Map<String, dynamic>.from(webinar);
    result['consultant'] = consultant;
    result['upcomingSessions'] = []; // TODO: Fetch webinar sessions
    return result;
  }

  /// Find class plans with optional filters
  ///
  /// Returns paginated list of class plans.
  Future<Map<String, dynamic>> findClasses({
    String? domainId,
    String? language,
    bool enrollmentOpen = false,
    String? searchQuery,
    int page = 0,
    int pageSize = 20,
    String sortBy = 'startDate',
    bool sortDesc = false,
  }) async {
    // Build where clause for filtering
    final where = <String, dynamic>{};

    // Note: domainId filter requires relation traversal which is complex.
    // For now, we filter on language, enrollmentOpen, and search only.
    // TODO: Add domain filter using raw SQL or proper relation filter syntax.

    if (language != null) {
      where['language'] = language;
    }

    if (enrollmentOpen) {
      where['enrollmentStatus'] = 'OPEN';
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      where['OR'] = [
        {'title': {'contains': searchQuery, 'mode': 'insensitive'}},
        {'description': {'contains': searchQuery, 'mode': 'insensitive'}},
      ];
    }

    // Count total for pagination
    final countQuery = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.count)
        .where(where)
        .build();

    final totalCount = await executeCount(countQuery);

    // Determine sort field
    String orderByField;
    switch (sortBy) {
      case 'price':
        orderByField = 'price';
      case 'duration':
        orderByField = 'durationInMonths';
      case 'startDate':
      default:
        orderByField = 'createdAt';
    }

    // Fetch class plans (without includes for now - fetch relations separately)
    final listQuery = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.findMany)
        .where(where)
        .orderBy({orderByField: sortDesc ? 'desc' : 'asc'})
        .skip(page * pageSize)
        .take(pageSize)
        .build();

    final classes = await executeQueryAsMaps(listQuery);

    // Fetch consultant details for each class
    final transformedClasses = <Map<String, dynamic>>[];
    for (final c in classes) {
      final consultantProfileId = c['consultantProfileId'] as String?;
      Map<String, dynamic>? consultant;

      if (consultantProfileId != null) {
        // Fetch consultant profile with user
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId})
            .include({
              'user': {
                'select': {'name': true, 'image': true},
              },
            })
            .build();
        final profile = await executeQueryAsSingleMap(profileQuery);
        if (profile != null) {
          final user = profile['user'] as Map<String, dynamic>?;
          consultant = {
            'id': profile['id'],
            'name': user?['name'],
            'image': user?['image'],
            'headline': profile['headline'],
          };
        }
      }

      final result = Map<String, dynamic>.from(c);
      result['consultant'] = consultant;
      result['curriculum'] = []; // TODO: Fetch class contents
      transformedClasses.add(result);
    }

    return {
      'classes': transformedClasses,
      'pagination': {
        'page': page,
        'pageSize': pageSize,
        'totalCount': totalCount,
        'totalPages': (totalCount / pageSize).ceil(),
      },
    };
  }

  /// Find a class plan by ID
  Future<Map<String, dynamic>?> findClassById(String id) async {
    // Fetch class plan
    final query = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

    final classPlan = await executeQueryAsSingleMap(query);
    if (classPlan == null) return null;

    // Fetch consultant profile with user
    final consultantProfileId = classPlan['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      final profileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findUnique)
          .where({'id': consultantProfileId})
          .include({
            'user': {
              'select': {'name': true, 'image': true},
            },
            'domain': {
              'select': {'id': true, 'name': true},
            },
          })
          .build();
      final profile = await executeQueryAsSingleMap(profileQuery);
      if (profile != null) {
        final user = profile['user'] as Map<String, dynamic>?;
        consultant = {
          'id': profile['id'],
          'name': user?['name'],
          'image': user?['image'],
          'headline': profile['headline'],
        };
      }
    }

    final result = Map<String, dynamic>.from(classPlan);
    result['consultant'] = consultant;
    result['curriculum'] = []; // TODO: Fetch class contents
    return result;
  }
}
