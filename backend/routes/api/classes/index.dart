import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/classes
///
/// Returns a paginated list of class/course plans.
///
/// Query Parameters:
/// - domainId: Filter by domain ID
/// - language: Filter by language
/// - enrollmentOpen: Only show classes with open enrollment (true/false)
/// - search: Search query for title or description
/// - page: Page number (default 0)
/// - pageSize: Items per page (default 20, max 50)
/// - sortBy: Sort field (price|startDate|duration)
/// - sortOrder: Sort direction (asc|desc, default asc)
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final params = context.request.uri.queryParameters;

    final domainId = params['domainId'];
    final language = params['language'];
    final enrollmentOpen = params['enrollmentOpen'] == 'true';
    final searchQuery = params['search'];
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize =
        (int.tryParse(params['pageSize'] ?? '20') ?? 20).clamp(1, 50);
    final sortBy = params['sortBy'] ?? 'startDate';
    final sortOrder = params['sortOrder'] ?? 'asc';

    final result = await db.programs.findClasses(
      domainId: domainId,
      language: language,
      enrollmentOpen: enrollmentOpen,
      searchQuery: searchQuery,
      page: page,
      pageSize: pageSize,
      sortBy: sortBy,
      sortDesc: sortOrder.toLowerCase() == 'desc',
    );

    final classes = (result['classes'] as List)
        .map((c) => serializeForJson(c as Map<String, dynamic>))
        .toList();

    return Response.json(
      body: {
        'classes': classes,
        'pagination': result['pagination'],
      },
    );
  } catch (e, stackTrace) {
    // 1. Log to console and Sentry
    await SentryLogger.severe(
      'Error in GET /api/classes',
      context: 'ClassesRoute',
      error: e,
      stackTrace: stackTrace,
    );

    // 2. Return detailed error response for debugging
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch classes',
          'details': e.toString(),
          'type': e.runtimeType.toString(),
          'hint': 'Check server logs for stack trace. Common causes: '
              'database connection issues, invalid query parameters, '
              'or schema mismatch.',
        },
      },
    );
  }
}
