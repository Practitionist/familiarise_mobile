import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/exceptions.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

const Set<String> _validRatingCauses = {
  'CONSULTANT',
  'PLATFORM_TECHNICAL',
  'PAYMENT',
  'SCHEDULING',
  'CONTENT',
  'OTHER',
};

/// App & Post-Call Session CSAT feedback endpoint
///
/// POST /api/feedback - Submit app feedback OR post-call session CSAT
/// GET /api/feedback - Get user's feedback submissions
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
/// Supports two modes:
/// 1. Post-Call 1-Tap CSAT (`appointmentId` provided):
///    Upserts `AppointmentFeedback` via `db.prisma.appointmentFeedback`.
/// 2. General App Feedback (`title` and `description` provided).
Future<Response> _handleCreateFeedback(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;
    final appointmentId = data['appointmentId'] as String?;

    if (appointmentId != null && appointmentId.trim().isNotEmpty) {
      return await _handleCreateAppointmentFeedback(
        context,
        userId: userId,
        appointmentId: appointmentId.trim(),
        data: data,
      );
    }

    // Validate required fields for general app feedback
    final title = data['title'] as String?;
    final description = data['description'] as String?;

    if (title == null || title.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Title is required'},
        },
      );
    }

    if (description == null || description.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Description is required'},
        },
      );
    }

    // Validate rating if provided
    final rating = (data['rating'] as num?)?.toInt();
    if (rating != null && (rating < 1 || rating > 5)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Rating must be between 1 and 5'},
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
        'error': {'message': 'Failed to submit feedback'},
      },
    );
  }
}

Future<Response> _handleCreateAppointmentFeedback(
  RequestContext context, {
  required String userId,
  required String appointmentId,
  required Map<String, dynamic> data,
}) async {
  final rating = (data['rating'] as num?)?.toInt();
  if (rating == null || rating < 1 || rating > 5) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Rating must be between 1 and 5'},
      },
    );
  }

  final rawCause = (data['ratingCause'] ?? data['cause']) as String?;
  final ratingCause =
      rawCause != null && rawCause.isNotEmpty ? rawCause.toUpperCase() : null;
  if (ratingCause != null && !_validRatingCauses.contains(ratingCause)) {
    final allowed = _validRatingCauses.join(', ');
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {
          'message': 'Unsupported ratingCause. Allowed: $allowed',
        },
      },
    );
  }

  final rawComment = (data['comment'] as String?)?.trim();
  final organizationId = data['organizationId'] as String?;
  final consultantProfileId = data['consultantProfileId'] as String?;
  final publishPublicReview = data['publishPublicReview'] == true ||
      data['submitPublicReview'] == true;

  // Persist ratingCause tag inside comment if provided
  final storedComment = ratingCause != null
      ? (rawComment != null && rawComment.isNotEmpty
          ? '[$ratingCause] $rawComment'
          : '[$ratingCause]')
      : rawComment;

  final db = context.read<DatabaseClient>();

  final saved = await db.prisma.appointmentFeedback.upsert(
    where: AppointmentFeedbackWhereUniqueInput(
      appointmentId_userId:
          AppointmentFeedbackAppointmentIdUserIdCompoundUnique(
        appointmentId: appointmentId,
        userId: userId,
      ),
    ),
    create: CreateAppointmentFeedbackInput(
      appointmentId: appointmentId,
      userId: userId,
      organizationId: organizationId,
      rating: rating,
      comment: storedComment,
    ),
    update: UpdateAppointmentFeedbackInput(
      rating: rating,
      comment: storedComment,
      organizationId: organizationId,
    ),
  );

  var reviewCreated = false;
  if (publishPublicReview &&
      consultantProfileId != null &&
      consultantProfileId.isNotEmpty) {
    try {
      final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);
      final consulteeProfileId = consulteeProfile?['id'] as String?;
      if (consulteeProfileId != null) {
        await db.reviews.createReview(
          consulteeProfileId: consulteeProfileId,
          consultantProfileId: consultantProfileId,
          rating: rating,
          reviewDescription: rawComment,
        );
        reviewCreated = true;
      }
    } on AlreadyExistsException {
      reviewCreated = false;
    } catch (_) {
      reviewCreated = false;
    }
  }

  final json = saved.toJson();
  return Response.json(
    statusCode: HttpStatus.created,
    body: serializeForJson({
      ...json,
      'comment': rawComment,
      'ratingCause': ratingCause,
      'reviewCreated': reviewCreated,
    }),
  );
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
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final appointmentId = context.request.uri.queryParameters['appointmentId'];

    if (appointmentId != null && appointmentId.isNotEmpty) {
      final item = await db.prisma.appointmentFeedback.findUnique(
        where: AppointmentFeedbackWhereUniqueInput(
          appointmentId_userId:
              AppointmentFeedbackAppointmentIdUserIdCompoundUnique(
            appointmentId: appointmentId,
            userId: userId,
          ),
        ),
      );
      return Response.json(
        body: serializeForJson({
          'data': item?.toJson(),
        }),
      );
    }

    final feedbackList = await db.feedback.getFeedbackByUserId(userId);
    final appointmentFeedbacks = await db.prisma.appointmentFeedback.findMany(
      where: AppointmentFeedbackWhereInput(
        userId: StringFilter(equals: userId),
      ),
      orderBy: const AppointmentFeedbackOrderByInput(createdAt: SortOrder.desc),
      take: 20,
    );

    return Response.json(
      body: serializeForJson({
        'data': feedbackList,
        'appointmentFeedbacks':
            appointmentFeedbacks.map((f) => f.toJson()).toList(),
      }),
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
        'error': {'message': 'Failed to fetch feedback'},
      },
    );
  }
}
