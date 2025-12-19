import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultants/:id/reviews
///
/// Returns paginated reviews for a specific consultant.
///
/// Query Parameters:
/// - page: Page number (default 0)
/// - pageSize: Items per page (default 10, max 50)
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final params = context.request.uri.queryParameters;

    // Parse query parameters
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '10') ?? 10;

    // Fetch reviews
    final result = await db.consultantExplore.getReviews(
      consultantId: id,
      page: page,
      pageSize: pageSize,
    );

    // Serialize for JSON encoding
    final reviews = (result['reviews'] as List)
        .map((r) => serializeForJson(r as Map<String, dynamic>))
        .toList();

    return Response.json(
      body: {
        'reviews': reviews,
        'pagination': result['pagination'],
      },
    );
  } catch (e, stackTrace) {
    // Log error for debugging
    // ignore: avoid_print
    print('Error in GET /api/consultants/$id/reviews: $e');
    // ignore: avoid_print
    print('Stack trace: $stackTrace');

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch reviews'},
      },
    );
  }
}
