import 'package:backend/generated/index.dart';

import 'base_repository.dart';

/// Repository for webinar and class plan operations
///
/// Handles queries for browsing and booking webinars and classes.
class ProgramsRepository extends BaseRepository {
  ProgramsRepository(super.executor, this._prisma);

  final PrismaClient _prisma;

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
    // Typed where (0.8.0): to-one consultantProfile relation filter +
    // case-insensitive search OR.
    final where = WebinarPlanWhereInput(
      consultantProfile: domainId == null
          ? null
          : ConsultantProfileRelationFilter(
              is_: ConsultantProfileWhereInput(
                domainId: StringFilter(equals: domainId),
              ),
            ),
      language: language == null ? null : StringFilter(equals: language),
      OR: (searchQuery != null && searchQuery.isNotEmpty)
          ? [
              WebinarPlanWhereInput(
                title: StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
              WebinarPlanWhereInput(
                description:
                    StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
            ]
          : null,
    );

    final totalCount = await _prisma.webinarPlan.count(where: where);

    // Determine sort field
    String orderByField;
    switch (sortBy) {
      case 'price':
        orderByField = 'price';
      case 'date':
      default:
        orderByField = 'createdAt';
    }

    final webinarModels = await _prisma.webinarPlan.findMany(
      where: where,
      orderBy: {orderByField: sortDesc ? 'desc' : 'asc'},
      skip: page * pageSize,
      take: pageSize,
    );
    final webinars = webinarModels.map((w) => w.toJson()).toList();

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
      result['upcomingSessions'] = <Map<String, dynamic>>[]; // TODO: sessions
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
    final webinarModel = await _prisma.webinarPlan.findUnique(
      where: WebinarPlanWhereUniqueInput(id: id),
    );
    if (webinarModel == null) return null;
    final webinar = webinarModel.toJson();

    // Fetch consultant profile with user
    final consultantProfileId = webinar['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      // Typed include with per-relation select (0.8.0).
      final profile = await _prisma.consultantProfile.findFirstProjected(
        where: ConsultantProfileWhereInput(
          id: StringFilter(equals: consultantProfileId),
        ),
        include: ConsultantProfileInclude(
          user: UserInclude(
            select: [UserScalarField.name, UserScalarField.image],
          ),
          domain: DomainInclude(
            select: [DomainScalarField.id, DomainScalarField.name],
          ),
        ),
      );
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
    // Typed where (0.8.0).
    final where = ClassPlanWhereInput(
      consultantProfile: domainId == null
          ? null
          : ConsultantProfileRelationFilter(
              is_: ConsultantProfileWhereInput(
                domainId: StringFilter(equals: domainId),
              ),
            ),
      language: language == null ? null : StringFilter(equals: language),
      // The re-synced schema dropped ClassPlan.enrollmentStatus (the old raw
      // filter was silently broken). Nearest semantic: plans with at least
      // one class still scheduled (enrollment effectively open).
      classes: enrollmentOpen
          ? const ClassModelListRelationFilter(
              some: ClassModelWhereInput(
                status: ClassStatusFilter(equals: ClassStatus.scheduled),
              ),
            )
          : null,
      OR: (searchQuery != null && searchQuery.isNotEmpty)
          ? [
              ClassPlanWhereInput(
                title: StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
              ClassPlanWhereInput(
                description:
                    StringFilter(contains: searchQuery, mode: 'insensitive'),
              ),
            ]
          : null,
    );

    final totalCount = await _prisma.classPlan.count(where: where);

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

    final classModels = await _prisma.classPlan.findMany(
      where: where,
      orderBy: {orderByField: sortDesc ? 'desc' : 'asc'},
      skip: page * pageSize,
      take: pageSize,
    );
    final classes = classModels.map((c) => c.toJson()).toList();

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
      result['curriculum'] = <Map<String, dynamic>>[]; // TODO: class contents
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
    final classPlanModel = await _prisma.classPlan.findUnique(
      where: ClassPlanWhereUniqueInput(id: id),
    );
    if (classPlanModel == null) return null;
    final classPlan = classPlanModel.toJson();

    // Fetch consultant profile with user
    final consultantProfileId = classPlan['consultantProfileId'] as String?;
    Map<String, dynamic>? consultant;

    if (consultantProfileId != null) {
      // Typed include with per-relation select (0.8.0).
      final profile = await _prisma.consultantProfile.findFirstProjected(
        where: ConsultantProfileWhereInput(
          id: StringFilter(equals: consultantProfileId),
        ),
        include: ConsultantProfileInclude(
          user: UserInclude(
            select: [UserScalarField.name, UserScalarField.image],
          ),
          domain: DomainInclude(
            select: [DomainScalarField.id, DomainScalarField.name],
          ),
        ),
      );
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

    final profiles = await _prisma.consultantProfile.findManyProjected(
      where: ConsultantProfileWhereInput(id: StringFilter(in_: profileIds)),
      include: ConsultantProfileInclude(
        user: UserInclude(
          select: [UserScalarField.name, UserScalarField.image],
        ),
      ),
    );

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
    // Step 1: Get all Webinar records for this plan
    final webinarModels = await _prisma.webinar.findMany(
      where: WebinarWhereInput(
        webinarPlanId: StringFilter(equals: webinarPlanId),
        status: const WebinarStatusFilter(
          in_: [WebinarStatus.scheduled, WebinarStatus.inProgress],
        ),
      ),
    );
    final webinars = webinarModels.map((w) => w.toJson()).toList();
    if (webinars.isEmpty) return [];

    // Create a map of webinarId -> webinar for lookup
    final webinarMap = <String, Map<String, dynamic>>{};
    final webinarIds = <String>[];
    for (final w in webinars) {
      final id = w['id'] as String;
      webinarIds.add(id);
      webinarMap[id] = w;
    }

    // Step 2: Get all Appointments for these webinars
    final appointments = await _prisma.appointment.findManyProjected(
      where: AppointmentWhereInput(webinarId: StringFilter(in_: webinarIds)),
      include: AppointmentInclude(
        slotsOfAppointment: SlotOfAppointmentInclude(),
        webinar: WebinarInclude(select: [WebinarScalarField.id]),
      ),
    );

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

      final slots = appt['slotsOfAppointment'] as List? ?? [];
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
      final aTime =
          aVal is DateTime ? aVal.toIso8601String() : aVal?.toString() ?? '';
      final bTime =
          bVal is DateTime ? bVal.toIso8601String() : bVal?.toString() ?? '';
      return aTime.compareTo(bTime);
    });

    return sessions;
  }

  /// Fetch sessions for a class plan
  ///
  /// Returns list of sessions from the Class -> Appointment -> SlotOfAppointment chain.
  Future<List<Map<String, dynamic>>> _fetchClassSessions(
    String classPlanId,
  ) async {
    // Step 1: Get all Class records for this plan (Dart model: ClassModel)
    final classModels = await _prisma.classModel.findMany(
      where: ClassModelWhereInput(
        classPlanId: StringFilter(equals: classPlanId),
        status: const ClassStatusFilter(
          in_: [ClassStatus.scheduled, ClassStatus.inProgress],
        ),
      ),
    );
    final classes = classModels.map((c) => c.toJson()).toList();
    if (classes.isEmpty) return [];

    // Create a map of classId -> class for lookup
    final classMap = <String, Map<String, dynamic>>{};
    final classIds = <String>[];
    for (final c in classes) {
      final id = c['id'] as String;
      classIds.add(id);
      classMap[id] = c;
    }

    // Step 2: Get all Appointments for these classes (relation renamed to
    // classRef in the re-synced schema; the old raw 'class' include key was
    // silently broken).
    final appointments = await _prisma.appointment.findManyProjected(
      where: AppointmentWhereInput(classId: StringFilter(in_: classIds)),
      include: AppointmentInclude(
        slotsOfAppointment: SlotOfAppointmentInclude(),
        classRef: ClassModelInclude(select: [ClassModelScalarField.id]),
      ),
    );

    // Transform to session format
    final sessions = <Map<String, dynamic>>[];
    for (final appt in appointments) {
      // Get classId from response or from class relation
      var classId = appt['classId'] as String?;
      if (classId == null) {
        final classData = appt['classRef'] as Map<String, dynamic>?;
        classId = classData?['id'] as String?;
      }
      // Fallback for single class case
      if (classId == null && classIds.length == 1) {
        classId = classIds.first;
      }

      final classRecord = classId != null ? classMap[classId] : null;
      if (classRecord == null) continue;

      final slots = appt['slotsOfAppointment'] as List? ?? [];
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
      final aTime =
          aVal is DateTime ? aVal.toIso8601String() : aVal?.toString() ?? '';
      final bTime =
          bVal is DateTime ? bVal.toIso8601String() : bVal?.toString() ?? '';
      return aTime.compareTo(bTime);
    });

    return sessions;
  }
}
