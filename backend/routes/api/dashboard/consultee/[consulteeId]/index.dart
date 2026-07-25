import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/dashboard/consultee/:consulteeId — Full consultee dashboard
Future<Response> onRequest(
  RequestContext context,
  String consulteeId,
) async {
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
    final userCeId = user?['consulteeProfileId'] as String?;
    if (userCeId != consulteeId && role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'Access denied'}
        },
      );
    }

    // Fetch bookings by type
    final consultations = await db.prisma.consultation.findMany(
      where: ConsultationWhereInput(
        requestedById: StringFilter(equals: consulteeId),
      ),
    );

    final subscriptions = await db.prisma.subscription.findMany(
      where: SubscriptionWhereInput(
        requestedById: StringFilter(equals: consulteeId),
      ),
    );

    return Response.json(
      body: {
        'data': {
          'consultations':
              consultations.map((c) => serializeForJson(c.toJson())).toList(),
          'subscriptions':
              subscriptions.map((s) => serializeForJson(s.toJson())).toList(),
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Consultee dashboard failed',
        context: 'ConsulteeDashboard', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to load dashboard'}
      },
    );
  }
}
