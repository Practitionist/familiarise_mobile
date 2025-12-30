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

    // Domain filter via consultantProfile relation
    if (domainId != null) {
      where['consultantProfile'] = FilterOperators.some({
        'domainId': domainId,
      });
    }

    if (language != null) {
      where['language'] = language;
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      where['OR'] = [
        {
          'title': {'contains': searchQuery, 'mode': 'insensitive'}
        },
        {
          'description': {'contains': searchQuery, 'mode': 'insensitive'}
        },
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

    // Batch fetch all consultant profiles (fixes N+1 query issue)
    final profileIds = webinars
        .map((w) => w['consultantProfileId'] as String?)
        .whereType<String>()
        .toSet()
        .toList();
    final consultantsMap = await _fetchConsultantsByIds(profileIds);

    // Map consultants to webinars
    final transformedWebinars = webinars.map((w) {
      final result = Map<String, dynamic>.from(w);
      final profileId = w['consultantProfileId'] as String?;
      result['consultant'] =
          profileId != null ? consultantsMap[profileId] : null;
      result['upcomingSessions'] = []; // TODO: Fetch webinar sessions
      return result;
    }).toList();

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
        .where({'id': id}).build();

    final webinar = await executeQueryAsSingleMap(query);
    if (webinar == null) return null;

    // Fetch consultant profile with user
    final consultantProfileId = webinar['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      final profileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findUnique)
          .where({'id': consultantProfileId}).include({
        'user': {
          'select': {'name': true, 'image': true},
        },
        'domain': {
          'select': {'id': true, 'name': true},
        },
      }).build();
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
    result['upcomingSessions'] = await _fetchWebinarSessions(id);
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

    // Domain filter via consultantProfile relation
    if (domainId != null) {
      where['consultantProfile'] = FilterOperators.some({
        'domainId': domainId,
      });
    }

    if (language != null) {
      where['language'] = language;
    }

    if (enrollmentOpen) {
      where['enrollmentStatus'] = 'OPEN';
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      where['OR'] = [
        {
          'title': {'contains': searchQuery, 'mode': 'insensitive'}
        },
        {
          'description': {'contains': searchQuery, 'mode': 'insensitive'}
        },
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

    // Batch fetch all consultant profiles (fixes N+1 query issue)
    final profileIds = classes
        .map((c) => c['consultantProfileId'] as String?)
        .whereType<String>()
        .toSet()
        .toList();
    final consultantsMap = await _fetchConsultantsByIds(profileIds);

    // Map consultants to classes
    final transformedClasses = classes.map((c) {
      final result = Map<String, dynamic>.from(c);
      final profileId = c['consultantProfileId'] as String?;
      result['consultant'] =
          profileId != null ? consultantsMap[profileId] : null;
      result['curriculum'] = []; // TODO: Fetch class contents
      return result;
    }).toList();

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
        .where({'id': id}).build();

    final classPlan = await executeQueryAsSingleMap(query);
    if (classPlan == null) return null;

    // Fetch consultant profile with user
    final consultantProfileId = classPlan['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      final profileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findUnique)
          .where({'id': consultantProfileId}).include({
        'user': {
          'select': {'name': true, 'image': true},
        },
        'domain': {
          'select': {'id': true, 'name': true},
        },
      }).build();
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
    result['upcomingSessions'] = await _fetchClassSessions(id);
    return result;
  }

  /// Batch fetch consultant profiles by IDs
  ///
  /// Returns a map of profile ID to consultant info for efficient lookup.
  /// This avoids N+1 query issues when fetching consultants for multiple items.
  Future<Map<String, Map<String, dynamic>>> _fetchConsultantsByIds(
    List<String> profileIds,
  ) async {
    if (profileIds.isEmpty) return {};

    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findMany)
        .where({
      'id': {'in': profileIds},
    }).include({
      'user': {
        'select': {'name': true, 'image': true},
      },
    }).build();

    final profiles = await executeQueryAsMaps(query);

    // Create lookup map
    final result = <String, Map<String, dynamic>>{};
    for (final p in profiles) {
      final id = p['id'] as String;
      final user = p['user'] as Map<String, dynamic>?;
      result[id] = {
        'id': id,
        'name': user?['name'],
        'image': user?['image'],
        'headline': p['headline'],
      };
    }
    return result;
  }

  /// Fetch upcoming sessions for a webinar plan
  ///
  /// Returns list of sessions with schedule info from the Webinar -> Appointment
  /// -> SlotOfAppointment chain.
  Future<List<Map<String, dynamic>>> _fetchWebinarSessions(
    String webinarPlanId,
  ) async {
    print('[DEBUG] _fetchWebinarSessions: Fetching sessions for webinarPlanId=$webinarPlanId');
    
    // Step 1: Get all Webinar records for this plan
    final webinarQuery = JsonQueryBuilder()
        .model('Webinar')
        .action(QueryAction.findMany)
        .where({
      'webinarPlanId': webinarPlanId,
      'status': {
        'in': ['SCHEDULED', 'IN_PROGRESS']
      },
    }).build();

    final webinars = await executeQueryAsMaps(webinarQuery);
    print('[DEBUG] _fetchWebinarSessions: Found ${webinars.length} Webinar records with SCHEDULED/IN_PROGRESS status');
    if (webinars.isEmpty) {
      print('[DEBUG] _fetchWebinarSessions: No Webinar records found - returning empty sessions');
      return [];
    }

    // Create a map of webinarId -> webinar for lookup
    final webinarMap = <String, Map<String, dynamic>>{};
    final webinarIds = <String>[];
    for (final w in webinars) {
      final id = w['id'] as String;
      webinarIds.add(id);
      webinarMap[id] = w;
    }

    // Step 2: Get all Appointments for these webinars
    print('[DEBUG] _fetchWebinarSessions: Webinar IDs to query appointments: $webinarIds');
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'webinarId': {'in': webinarIds},
    }).include({
      'slots': true,
      'webinar': {'select': {'id': true}},
    }).build();

    final appointments = await executeQueryAsMaps(appointmentQuery);
    print('[DEBUG] _fetchWebinarSessions: Found ${appointments.length} Appointment records');

    // Transform to session format
    final sessions = <Map<String, dynamic>>[];
    for (final appt in appointments) {
      // Get webinarId from response or from webinar relation
      // (Prisma may not return nullable relation scalar fields directly)
      var webinarId = appt['webinarId'] as String?;
      if (webinarId == null) {
        final webinarData = appt['webinar'] as Map<String, dynamic>?;
        webinarId = webinarData?['id'] as String?;
      }
      // Fallback for single webinar case
      if (webinarId == null && webinarIds.length == 1) {
        webinarId = webinarIds.first;
      }

      final webinar = webinarId != null ? webinarMap[webinarId] : null;
      if (webinar == null) continue;

      final slots = appt['slots'] as List? ?? [];
      for (final slot in slots) {
        final slotMap = slot as Map<String, dynamic>;
        sessions.add({
          'id': slotMap['id'],
          'webinarId': webinarId,
          'startsAt': slotMap['startsAt'],
          'endsAt': slotMap['endsAt'],
          'status': webinar['status'],
        });
      }
    }

    // Sort by startsAt (handle both DateTime and String)
    sessions.sort((a, b) {
      final aVal = a['startsAt'];
      final bVal = b['startsAt'];
      final aTime = aVal is DateTime ? aVal.toIso8601String() : aVal?.toString() ?? '';
      final bTime = bVal is DateTime ? bVal.toIso8601String() : bVal?.toString() ?? '';
      return aTime.compareTo(bTime);
    });

    print('[DEBUG] _fetchWebinarSessions: Built ${sessions.length} session records from slots');
    return sessions;
  }

  /// Fetch sessions for a class plan
  ///
  /// Returns list of sessions from the Class -> Appointment -> SlotOfAppointment chain.
  Future<List<Map<String, dynamic>>> _fetchClassSessions(
    String classPlanId,
  ) async {
    print('[DEBUG] _fetchClassSessions: Fetching sessions for classPlanId=$classPlanId');
    
    // Step 1: Get all Class records for this plan
    final classQuery = JsonQueryBuilder()
        .model('Class')
        .action(QueryAction.findMany)
        .where({
      'classPlanId': classPlanId,
      'status': {
        'in': ['SCHEDULED', 'IN_PROGRESS']
      },
    }).build();

    final classes = await executeQueryAsMaps(classQuery);
    print('[DEBUG] _fetchClassSessions: Found ${classes.length} Class records with SCHEDULED/IN_PROGRESS status');
    if (classes.isEmpty) {
      print('[DEBUG] _fetchClassSessions: No Class records found - returning empty sessions');
      return [];
    }

    // Create a map of classId -> class for lookup
    final classMap = <String, Map<String, dynamic>>{};
    final classIds = <String>[];
    for (final c in classes) {
      final id = c['id'] as String;
      classIds.add(id);
      classMap[id] = c;
    }

    // Step 2: Get all Appointments for these classes
    print('[DEBUG] _fetchClassSessions: Class IDs to query appointments: $classIds');
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'classId': {'in': classIds},
    }).include({
      'slots': true,
      'class': {'select': {'id': true}},
    }).build();

    final appointments = await executeQueryAsMaps(appointmentQuery);
    print('[DEBUG] _fetchClassSessions: Found ${appointments.length} Appointment records');

    // Transform to session format
    final sessions = <Map<String, dynamic>>[];
    for (final appt in appointments) {
      // Get classId from response or from class relation
      var classId = appt['classId'] as String?;
      if (classId == null) {
        final classData = appt['class'] as Map<String, dynamic>?;
        classId = classData?['id'] as String?;
      }
      // Fallback for single class case
      if (classId == null && classIds.length == 1) {
        classId = classIds.first;
      }

      final classRecord = classId != null ? classMap[classId] : null;
      if (classRecord == null) continue;

      final slots = appt['slots'] as List? ?? [];
      for (final slot in slots) {
        final slotMap = slot as Map<String, dynamic>;
        sessions.add({
          'id': slotMap['id'],
          'classId': classId,
          'startsAt': slotMap['startsAt'],
          'endsAt': slotMap['endsAt'],
          'status': classRecord['status'],
        });
      }
    }

    // Sort by startsAt (handle both DateTime and String)
    sessions.sort((a, b) {
      final aVal = a['startsAt'];
      final bVal = b['startsAt'];
      final aTime = aVal is DateTime ? aVal.toIso8601String() : aVal?.toString() ?? '';
      final bTime = bVal is DateTime ? bVal.toIso8601String() : bVal?.toString() ?? '';
      return aTime.compareTo(bTime);
    });

    print('[DEBUG] _fetchClassSessions: Built ${sessions.length} session records from slots');
    return sessions;
  }
}
