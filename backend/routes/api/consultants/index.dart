import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultants
///
/// Returns a paginated list of verified consultants with optional filters.
///
/// Query Parameters:
/// - domainId: Filter by domain ID
/// - subDomainId: Filter by subdomain ID
/// - minRating: Minimum rating (0-5)
/// - maxPrice: Maximum price in smallest currency unit
/// - search: Search query for name, headline, or description
/// - page: Page number (default 0)
/// - pageSize: Items per page (default 20, max 50)
/// - sortBy: Sort field (rating|price|experience)
/// - sortOrder: Sort direction (asc|desc, default desc)
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final params = context.request.uri.queryParameters;

    // Parse query parameters
    final domainId = params['domainId'];
    final subDomainId = params['subDomainId'];
    final minRating = params['minRating'] != null
        ? double.tryParse(params['minRating']!)
        : null;
    final maxPrice =
        params['maxPrice'] != null ? int.tryParse(params['maxPrice']!) : null;
    final searchQuery = params['search'];
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '20') ?? 20;
    final sortBy = params['sortBy'] ?? 'rating';
    final sortOrder = params['sortOrder'] ?? 'desc';
    final sortDesc = sortOrder.toLowerCase() != 'asc';

    // Fetch consultants with filters
    final result = await db.consultantExplore.findMany(
      domainId: domainId,
      subDomainId: subDomainId,
      minRating: minRating,
      maxPrice: maxPrice,
      searchQuery: searchQuery,
      page: page,
      pageSize: pageSize,
      sortBy: sortBy,
      sortDesc: sortDesc,
    );

    // Serialize for JSON encoding
    final consultants = (result['consultants'] as List)
        .map((c) => serializeForJson(c as Map<String, dynamic>))
        .toList();

    return Response.json(
      body: {
        'consultants': consultants,
        'pagination': result['pagination'],
      },
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in GET /api/consultants',
      context: 'ConsultantsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch consultants'},
      },
    );
  }
}
