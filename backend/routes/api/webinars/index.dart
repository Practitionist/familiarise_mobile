import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/webinars
///
/// Returns a paginated list of webinar plans with upcoming sessions.
///
/// Query Parameters:
/// - domainId: Filter by domain ID
/// - language: Filter by language
/// - search: Search query for title or description
/// - page: Page number (default 0)
/// - pageSize: Items per page (default 20, max 50)
/// - sortBy: Sort field (price|date)
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
    final searchQuery = params['search'];
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = (int.tryParse(params['pageSize'] ?? '20') ?? 20)
        .clamp(1, 50);
    final sortBy = params['sortBy'] ?? 'date';
    final sortOrder = params['sortOrder'] ?? 'asc';

    final result = await db.programs.findWebinars(
      domainId: domainId,
      language: language,
      searchQuery: searchQuery,
      page: page,
      pageSize: pageSize,
      sortBy: sortBy,
      sortDesc: sortOrder.toLowerCase() == 'desc',
    );

    final webinars = (result['webinars'] as List)
        .map((w) => serializeForJson(w as Map<String, dynamic>))
        .toList();

    return Response.json(
      body: {
        'webinars': webinars,
        'pagination': result['pagination'],
      },
    );
  } catch (e, stackTrace) {
    // 1. Log to console and Sentry
    await SentryLogger.severe(
      'Error in GET /api/webinars',
      context: 'WebinarsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    // 2. Return detailed error response for debugging
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch webinars',
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
