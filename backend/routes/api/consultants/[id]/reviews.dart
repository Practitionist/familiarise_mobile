import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
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
    return Response.json(
      statusCode: HttpStatus.methodNotAllowed,
      body: {
        'error': {
          'code': 'METHOD_NOT_ALLOWED',
          'message': 'Only GET requests are allowed',
          'details': {'allowedMethods': ['GET']},
        },
      },
    );
  }

  // Validate consultant ID format
  if (id.isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {
          'code': 'INVALID_CONSULTANT_ID',
          'message': 'Consultant ID is required',
        },
      },
    );
  }

  try {
    final db = context.read<DatabaseClient>();
    final params = context.request.uri.queryParameters;

    // Parse and validate query parameters
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '10') ?? 10;

    if (page < 0) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'code': 'INVALID_PAGE',
            'message': 'Page number must be non-negative',
            'details': {'provided': page},
          },
        },
      );
    }

    if (pageSize < 1 || pageSize > 50) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'code': 'INVALID_PAGE_SIZE',
            'message': 'Page size must be between 1 and 50',
            'details': {'provided': pageSize, 'min': 1, 'max': 50},
          },
        },
      );
    }

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
  } on FormatException catch (e, stackTrace) {
    await SentryLogger.error(
      'Format error fetching reviews for consultant: $id',
      context: 'ConsultantReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {
          'code': 'INVALID_FORMAT',
          'message': 'Invalid data format in request',
          'details': {'error': e.message},
        },
      },
    );
  } on StateError catch (e, stackTrace) {
    await SentryLogger.error(
      'State error fetching reviews for consultant: $id',
      context: 'ConsultantReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'code': 'STATE_ERROR',
          'message': 'Internal state error occurred',
          'details': {
            'errorType': e.runtimeType.toString(),
            'errorMessage': e.message,
          },
        },
      },
    );
  } on ArgumentError catch (e, stackTrace) {
    await SentryLogger.error(
      'Argument error fetching reviews for consultant: $id',
      context: 'ConsultantReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {
          'code': 'INVALID_ARGUMENT',
          'message': 'Invalid argument provided',
          'details': {
            'errorType': e.runtimeType.toString(),
            'errorMessage': e.message,
            'invalidValue': e.invalidValue?.toString(),
            'name': e.name,
          },
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Unexpected error fetching reviews for consultant: $id',
      context: 'ConsultantReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'code': 'REVIEWS_FETCH_FAILED',
          'message': 'Failed to fetch reviews',
          'details': {
            'consultantId': id,
            'errorType': e.runtimeType.toString(),
            'errorMessage': e.toString(),
          },
        },
      },
    );
  }
}
