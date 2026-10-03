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

    final rawBody = await context.request.json();
    if (rawBody is! Map<String, dynamic>) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Invalid request body format'},
        },
      );
    }
    final data = rawBody;
    final rawAppointmentId = data['appointmentId'];
    if (rawAppointmentId != null && rawAppointmentId is! String) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'appointmentId must be a string'},
        },
      );
    }
    final appointmentId = rawAppointmentId as String?;

    if (appointmentId != null && appointmentId.trim().isNotEmpty) {
      return await _handleCreateAppointmentFeedback(
        context,
        userId: userId,
        appointmentId: appointmentId.trim(),
        data: data,
      );
    }

    // Validate required fields for general app feedback
    final rawTitle = data['title'];
    final rawDescription = data['description'];
    final rawCategory = data['category'];
    final rawRating = data['rating'];

    if (rawTitle is! String || rawTitle.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Title is required'},
        },
      );
    }

    if (rawDescription is! String || rawDescription.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Description is required'},
        },
      );
    }

    if (rawCategory != null && rawCategory is! String) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Category must be a string'},
        },
      );
    }

    if (rawRating != null && rawRating is! int) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Rating must be an integer between 1 and 5'},
        },
      );
    }

    final title = rawTitle;
    final description = rawDescription;
    final rating = rawRating as int?;

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
      category: rawCategory as String?,
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
  final rawRating = data['rating'];
  if (rawRating is! int || rawRating < 1 || rawRating > 5) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Rating must be between 1 and 5'},
      },
    );
  }
  final rating = rawRating;

  final rawCauseField = data['ratingCause'] ?? data['cause'];
  if (rawCauseField != null && rawCauseField is! String) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'ratingCause must be a string'},
      },
    );
  }
  final rawCause = rawCauseField as String?;
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

  final rawCommentField = data['comment'];
  if (rawCommentField != null && rawCommentField is! String) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'comment must be a string'},
      },
    );
  }
  final rawComment = (rawCommentField as String?)?.trim();
  final publishPublicReview = data['publishPublicReview'] == true ||
      data['submitPublicReview'] == true;

  // Persist ratingCause tag inside comment if provided
  final storedComment = ratingCause != null
      ? (rawComment != null && rawComment.isNotEmpty
          ? '[$ratingCause] $rawComment'
          : '[$ratingCause]')
      : rawComment;

  final db = context.read<DatabaseClient>();

  // Load appointment and verify existence + participant ownership
  final appointment = await db.prisma.appointment.findUnique(
    where: AppointmentWhereUniqueInput(id: appointmentId),
    include: const AppointmentInclude(
      consultation: ConsultationInclude(
        consultationPlan: ConsultationPlanInclude(),
      ),
      subscription: SubscriptionInclude(
        subscriptionPlan: SubscriptionPlanInclude(),
      ),
      webinar: WebinarInclude(
        webinarPlan: WebinarPlanInclude(),
      ),
      classRef: ClassModelInclude(
        classPlan: ClassPlanInclude(),
      ),
      trialSession: TrialSessionInclude(),
      slotsOfAppointment: SlotOfAppointmentInclude(
        user: UserInclude(),
      ),
    ),
  );

  if (appointment == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'error': {'message': 'Appointment not found'},
      },
    );
  }

  final userRecord = await db.users.findById(userId);
  var userConsulteeProfileId = userRecord?['consulteeProfileId'] as String?;
  final userConsultantProfileId = userRecord?['consultantProfileId'] as String?;
  if (userConsulteeProfileId == null) {
    final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);
    userConsulteeProfileId = consulteeProfile?['id'] as String?;
  }

  final slotConsultantProfileIds = <String>[];
  var isSlotParticipant = false;
  for (final slot in appointment.slotsOfAppointment ?? const <dynamic>[]) {
    final slotConsultantId = slot.consultantProfileId as String?;
    if (slotConsultantId != null && slotConsultantId.isNotEmpty) {
      slotConsultantProfileIds.add(slotConsultantId);
    }
    for (final slotUser in slot.user ?? const <dynamic>[]) {
      if (slotUser.id == userId) {
        isSlotParticipant = true;
      }
    }
  }
  final consultantProfileId =
      appointment.consultation?.consultationPlan?.consultantProfileId ??
          appointment.subscription?.subscriptionPlan?.consultantProfileId ??
          appointment.webinar?.webinarPlan?.consultantProfileId ??
          appointment.classRef?.classPlan?.consultantProfileId ??
          appointment.trialSession?.consultantProfileId ??
          (slotConsultantProfileIds.isNotEmpty
              ? slotConsultantProfileIds.first
              : null);

  final appointmentConsulteeProfileId =
      appointment.consultation?.requestedById ??
          appointment.subscription?.requestedById ??
          appointment.trialSession?.consulteeProfileId;

  final isConsultee = isSlotParticipant ||
      (userConsulteeProfileId != null &&
          userConsulteeProfileId == appointmentConsulteeProfileId);
  final isConsultant = userConsultantProfileId != null &&
      userConsultantProfileId == consultantProfileId;

  if (!isConsultee && !isConsultant) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {
        'error': {'message': 'You are not a participant in this appointment'},
      },
    );
  }

  // Derive organizationId from the verified appointment or its linked plan
  final organizationId = appointment.organizationId ??
      appointment.consultation?.consultationPlan?.organizationId ??
      appointment.subscription?.subscriptionPlan?.organizationId ??
      appointment.webinar?.webinarPlan?.organizationId ??
      appointment.classRef?.classPlan?.organizationId ??
      appointment.trialSession?.organizationId;

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
      isConsultee &&
      userConsulteeProfileId != null &&
      consultantProfileId != null &&
      consultantProfileId.isNotEmpty) {
    try {
      await db.reviews.createReview(
        consulteeProfileId: userConsulteeProfileId,
        consultantProfileId: consultantProfileId,
        rating: rating,
        reviewDescription: rawComment,
      );
      reviewCreated = true;
    } on AlreadyExistsException {
      reviewCreated = false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Failed to create public review from CSAT',
        context: 'FeedbackRoute',
        error: e,
        stackTrace: stackTrace,
      );
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
        'appointmentFeedbacks': appointmentFeedbacks
            .map((AppointmentFeedback f) => f.toJson())
            .toList(),
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
