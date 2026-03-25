import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/dashboard/consultant/:consultantId — Full consultant dashboard
Future<Response> onRequest(
  RequestContext context,
  String consultantId,
) async {
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

    // Verify ownership or staff/admin
    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    final userCpId = user?['consultantProfileId'] as String?;
    if (userCpId != consultantId &&
        role != 'STAFF' &&
        role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Access denied'}},
      );
    }

    // Fetch dashboard data in parallel
    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantId})
        .build();

    final activitiesQuery = JsonQueryBuilder()
        .model('ActivityLog')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantId})
        .build();

    final appointments =
        await db.executor.executeQueryAsMaps(appointmentsQuery);
    final activities =
        await db.executor.executeQueryAsMaps(activitiesQuery);

    return Response.json(
      body: {
        'data': {
          'appointments':
              appointments.map(serializeForJson).toList(),
          'activities':
              activities.map(serializeForJson).toList(),
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Consultant dashboard failed',
        context: 'ConsultantDashboard',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load dashboard'}},
    );
  }
}
