import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/staff/moderation/profiles — Pending verification requests
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
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

    final query = JsonQueryBuilder()
        .model('ConsultantProfileVerification')
        .action(QueryAction.findMany)
        .where({'status': 'PENDING'}).build();
    final verifications = await db.executor.executeQueryAsMaps(query);

    final enriched = <Map<String, dynamic>>[];
    for (final verification in verifications) {
      final json = serializeForJson(verification);
      final consultantProfileId =
          verification['consultantProfileId'] as String?;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId}).build();
        final profile = await db.executor.executeQueryAsSingleMap(profileQuery);
        final consultantUserId = profile?['userId'] as String?;
        if (consultantUserId != null) {
          final consultantUser = await db.users.findById(consultantUserId);
          json['consultantName'] = consultantUser?['name'];
          json['consultantEmail'] = consultantUser?['email'];
        }
      }
      enriched.add(json);
    }

    return Response.json(
      body: {
        'data': enriched,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff verifications list failed',
      context: 'StaffVerificationsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to load verifications'},
      },
    );
  }
}
