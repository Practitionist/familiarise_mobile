import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/exceptions.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Consultant reviews endpoint
///
/// POST /api/reviews - Submit a review for a consultant
/// GET /api/reviews?consultantProfileId=xxx - Get reviews for a consultant
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleCreateReview(context);
  } else if (method == HttpMethod.get) {
    return _handleGetReviews(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/reviews
///
/// Submit a review for a consultant.
///
/// Request body:
/// ```json
/// {
///   "consultantProfileId": "uuid",
///   "rating": 5,
///   "reviewDescription": "Great session!"
/// }
/// ```
Future<Response> _handleCreateReview(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final body = await context.request.body();
    final data = jsonDecode(body) as Map<String, dynamic>;

    // Validate required fields
    final consultantProfileId = data['consultantProfileId'] as String?;
    final rating = data['rating'] as int?;

    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'consultantProfileId is required'}
        },
      );
    }

    if (rating == null || rating < 1 || rating > 5) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Rating must be between 1 and 5'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Get user's consultee profile
    final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);

    if (consulteeProfile == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Consultee profile not found'}
        },
      );
    }

    final consulteeProfileId = consulteeProfile['id'] as String;

    // Check if user already reviewed this consultant
    final hasReviewed = await db.reviews.hasUserReviewedConsultant(
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
    );

    if (hasReviewed) {
      return Response.json(
        statusCode: HttpStatus.conflict,
        body: {
          'error': {
            'code': 'ALREADY_REVIEWED',
            'message': 'You have already reviewed this consultant',
          },
        },
      );
    }

    final review = await db.reviews.createReview(
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
      rating: rating,
      reviewDescription: data['reviewDescription'] as String?,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(review),
    );
  } on AlreadyExistsException catch (e) {
    return Response.json(
      statusCode: HttpStatus.conflict,
      body: {
        'error': {
          'code': 'ALREADY_REVIEWED',
          'message': e.message,
        },
      },
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in POST /api/reviews',
      context: 'ReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create review'}
      },
    );
  }
}

/// GET /api/reviews
///
/// Get reviews for a consultant.
///
/// Query Parameters:
/// - consultantProfileId: Required - ID of the consultant
/// - page: Page number (0-indexed, default: 0)
/// - pageSize: Items per page (default: 20, max: 50)
/// - checkOwn: If true, returns whether current user has reviewed (requires auth)
Future<Response> _handleGetReviews(RequestContext context) async {
  try {
    final params = context.request.uri.queryParameters;
    final consultantProfileId = params['consultantProfileId'];
    final checkOwn = params['checkOwn'] == 'true';

    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'consultantProfileId is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // If checkOwn is true, return whether the current user has reviewed
    if (checkOwn) {
      final userId = getUserIdFromToken(context);
      if (userId == null) {
        return Response.json(
          statusCode: HttpStatus.unauthorized,
          body: {
            'error': {'message': 'Unauthorized'}
          },
        );
      }

      // Get user's consultee profile
      final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);

      if (consulteeProfile == null) {
        // User doesn't have a consultee profile, so they haven't reviewed
        return Response.json(
          body: {'hasReviewed': false},
        );
      }

      final consulteeProfileId = consulteeProfile['id'] as String;
      final hasReviewed = await db.reviews.hasUserReviewedConsultant(
        consulteeProfileId: consulteeProfileId,
        consultantProfileId: consultantProfileId,
      );

      return Response.json(
        body: {'hasReviewed': hasReviewed},
      );
    }

    // Otherwise, return paginated reviews
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '20') ?? 20;

    final result = await db.reviews.getReviewsForConsultant(
      consultantProfileId: consultantProfileId,
      page: page,
      pageSize: pageSize,
    );

    return Response.json(
      body: serializeForJson(result),
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in GET /api/reviews',
      context: 'ReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch reviews'}
      },
    );
  }
}
