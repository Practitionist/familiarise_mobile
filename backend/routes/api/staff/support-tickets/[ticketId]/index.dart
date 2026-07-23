import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/staff/support-tickets/:ticketId — Ticket details
/// PUT /api/staff/support-tickets/:ticketId — Update ticket status
Future<Response> onRequest(
  RequestContext context,
  String ticketId,
) async {
  final method = context.request.method;

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

    if (method == HttpMethod.get) {
      final ticket = await db.prisma.supportTicket.findFirst(
        where: SupportTicketWhereInput(id: StringFilter(equals: ticketId)),
      );
      if (ticket == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {'error': {'message': 'Ticket not found'}},
        );
      }
      return Response.json(
        body: {'data': serializeForJson(ticket.toJson())},
      );
    }

    if (method == HttpMethod.put) {
      final body =
          await context.request.json() as Map<String, dynamic>;
      // Typed update auto-refreshes updatedAt — no manual timestamp needed.
      SupportTicketStatus? status;
      if (body.containsKey('status')) {
        status = SupportTicketStatus.values
            .firstWhere((e) => e.toJson() == body['status']);
      }
      SupportPriority? priority;
      if (body.containsKey('priority')) {
        priority = SupportPriority.values
            .firstWhere((e) => e.toJson() == body['priority']);
      }

      final updated = await db.prisma.supportTicket.update(
        where: SupportTicketWhereUniqueInput(id: ticketId),
        data: UpdateSupportTicketInput(
          status: status,
          priority: priority,
          assignedToId: body['assignedToId'] as String?,
        ),
      );
      return Response.json(
        body: {
          'data': serializeForJson(updated.toJson()),
        },
      );
    }

    return Response(statusCode: HttpStatus.methodNotAllowed);
  } catch (e, stackTrace) {
    await SentryLogger.severe('Staff ticket operation failed',
        context: 'StaffTicket',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Operation failed'}},
    );
  }
}
