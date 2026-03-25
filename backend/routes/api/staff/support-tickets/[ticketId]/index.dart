import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

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
      final query = JsonQueryBuilder()
          .model('SupportTicket')
          .action(QueryAction.findFirst)
          .where({'id': ticketId})
          .build();
      final ticket =
          await db.executor.executeQueryAsSingleMap(query);
      if (ticket == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {'error': {'message': 'Ticket not found'}},
        );
      }
      return Response.json(
        body: {'data': serializeForJson(ticket)},
      );
    }

    if (method == HttpMethod.put) {
      final body =
          await context.request.json() as Map<String, dynamic>;
      final data = <String, dynamic>{
        'updatedAt':
            DateTime.now().toUtc().toIso8601String(),
      };
      if (body.containsKey('status')) {
        data['status'] = body['status'];
      }
      if (body.containsKey('priority')) {
        data['priority'] = body['priority'];
      }
      if (body.containsKey('assignedToId')) {
        data['assignedToId'] = body['assignedToId'];
      }

      final query = JsonQueryBuilder()
          .model('SupportTicket')
          .action(QueryAction.update)
          .where({'id': ticketId})
          .data(data)
          .build();
      final updated =
          await db.executor.executeQueryAsSingleMap(query);
      return Response.json(
        body: {
          'data':
              updated != null ? serializeForJson(updated) : null,
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
