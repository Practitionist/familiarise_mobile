import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/staff/stats — Basic metrics for staff dashboard
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
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

    // Verify staff role
    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    // Gather basic metrics
    final openTicketsQuery = JsonQueryBuilder()
        .model('support_tickets')
        .action(QueryAction.count)
        .where({'status': 'OPEN'})
        .build();
    final openTickets =
        await db.executor.executeCount(openTicketsQuery);

    final pendingVerificationsQuery = JsonQueryBuilder()
        .model('ConsultantProfileVerification')
        .action(QueryAction.count)
        .where({'status': 'PENDING'})
        .build();
    final pendingVerifications =
        await db.executor.executeCount(pendingVerificationsQuery);

    final pendingFeedbackQuery = JsonQueryBuilder()
        .model('feedbacks')
        .action(QueryAction.count)
        .where({'status': 'PENDING'})
        .build();
    final pendingFeedback =
        await db.executor.executeCount(pendingFeedbackQuery);

    return Response.json(
      body: {
        'data': {
          'openTickets': openTickets,
          'pendingVerifications': pendingVerifications,
          'pendingFeedback': pendingFeedback,
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff stats failed',
      context: 'StaffStats',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load stats'}},
    );
  }
}
