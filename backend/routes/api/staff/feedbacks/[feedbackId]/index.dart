import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PUT /api/staff/feedbacks/:feedbackId — Update feedback status
Future<Response> onRequest(
  RequestContext context,
  String feedbackId,
) async {
  if (context.request.method != HttpMethod.get &&
      context.request.method != HttpMethod.put) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

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
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'Staff access required'}
        },
      );
    }

    if (context.request.method == HttpMethod.get) {
      final feedback = await db.prisma.feedback.findFirst(
        where: FeedbackWhereInput(id: StringFilter(equals: feedbackId)),
      );
      if (feedback == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {
            'error': {'message': 'Feedback not found'}
          },
        );
      }

      return Response.json(
        body: {'data': serializeForJson(feedback.toJson())},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    // Typed update auto-refreshes updatedAt — no manual timestamp needed.
    FeedbackStatus? status;
    if (body.containsKey('status')) {
      status = FeedbackStatus.values
          .firstWhere((e) => e.toJson() == body['status']);
    }

    final updated = await db.prisma.feedback.update(
      where: FeedbackWhereUniqueInput(id: feedbackId),
      data: UpdateFeedbackInput(status: status),
    );

    return Response.json(
      body: {
        'data': serializeForJson(updated.toJson()),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Staff feedback update failed',
        context: 'StaffFeedbackPut', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update feedback'}
      },
    );
  }
}
