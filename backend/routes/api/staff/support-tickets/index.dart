import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/staff/support-tickets — List all support tickets for staff
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

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    final status = context.request.uri.queryParameters['status'];

    final tickets = await db.prisma.supportTicket.findMany(
      where: status != null
          ? SupportTicketWhereInput(
              status: SupportTicketStatusFilter(
                equals: SupportTicketStatus.values
                    .firstWhere((e) => e.toJson() == status),
              ),
            )
          : null,
      orderBy: const SupportTicketOrderByInput(createdAt: SortOrder.desc),
    );

    return Response.json(
      body: {
        'data': tickets.map((t) => serializeForJson(t.toJson())).toList(),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff tickets list failed',
      context: 'StaffTicketsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load tickets'}},
    );
  }
}
