import 'dart:async';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/novu/notification_triggers.dart';
import 'package:backend/services/novu/novu_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// App feedback endpoint
///
/// POST /api/feedback - Submit app feedback
/// GET /api/feedback - Get user's feedback submissions (optional)
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleCreateFeedback(context);
  } else if (method == HttpMethod.get) {
    return _handleGetFeedback(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/feedback
///
/// Submit app feedback.
///
/// Request body:
/// ```json
/// {
///   "title": "Feedback title",
///   "description": "Detailed feedback",
///   "category": "BUG_REPORT",
///   "rating": 4
/// }
/// ```
Future<Response> _handleCreateFeedback(RequestContext context) async {
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

    final data = await context.request.json() as Map<String, dynamic>;

    // Validate required fields
    final title = data['title'] as String?;
    final description = data['description'] as String?;

    if (title == null || title.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Title is required'}
        },
      );
    }

    if (description == null || description.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Description is required'}
        },
      );
    }

    // Validate rating if provided
    final rating = data['rating'] as int?;
    if (rating != null && (rating < 1 || rating > 5)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Rating must be between 1 and 5'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    final feedback = await db.feedback.createFeedback(
      userId: userId,
      title: title,
      description: description,
      category: data['category'] as String?,
      rating: rating,
    );

    // Fire-and-forget: notify admin about new feedback
    final novuService = context.read<NovuService>();
    if (novuService.isConfigured) {
      unawaited(() async {
        try {
          // Get the user's name
          final userQuery = JsonQueryBuilder()
              .model('User')
              .action(QueryAction.findUnique)
              .where({'id': userId}).build();
          final user =
              await db.executor.executeQueryAsSingleMap(userQuery);

          // Send to admin (use a well-known admin user ID or skip)
          // For now, just trigger the workflow — Novu will route to
          // the configured admin topic/subscriber
          await NotificationTriggers.feedbackReceived(
            novuService,
            adminUserId: 'admin',
            userName: user?['name'] as String? ?? 'A user',
            feedbackTitle: title,
            category: data['category'] as String?,
            rating: rating,
          );
        } catch (e) {
          SentryLogger.warning(
            'Failed to send feedback notification: $e',
            context: 'FeedbackRoute',
          );
        }
      }());
    }

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(feedback),
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/feedback',
      context: 'FeedbackRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to submit feedback'}
      },
    );
  }
}

/// GET /api/feedback
///
/// Get feedback submitted by the authenticated user.
Future<Response> _handleGetFeedback(RequestContext context) async {
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

    final db = context.read<DatabaseClient>();

    final feedbackList = await db.feedback.getFeedbackByUserId(userId);

    return Response.json(
      body: serializeForJson({'data': feedbackList}),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/feedback',
      context: 'FeedbackRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch feedback'}
      },
    );
  }
}
