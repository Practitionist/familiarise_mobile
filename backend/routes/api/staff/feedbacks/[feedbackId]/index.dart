import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// PUT /api/staff/feedbacks/:feedbackId — Update feedback status
Future<Response> onRequest(
  RequestContext context,
  String feedbackId,
) async {
  if (context.request.method != HttpMethod.put) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final data = <String, dynamic>{
      'updatedAt': DateTime.now().toUtc().toIso8601String(),
    };
    if (body.containsKey('status')) data['status'] = body['status'];

    final query = JsonQueryBuilder()
        .model('Feedback')
        .action(QueryAction.update)
        .where({'id': feedbackId})
        .data(data)
        .build();
    final updated =
        await db.executor.executeQueryAsSingleMap(query);

    return Response.json(
      body: {
        'data': updated != null ? serializeForJson(updated) : null,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Staff feedback update failed',
        context: 'StaffFeedbackPut',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update feedback'}},
    );
  }
}
