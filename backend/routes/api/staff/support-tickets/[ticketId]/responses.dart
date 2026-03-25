import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// GET /api/staff/support-tickets/:ticketId/responses — List
/// POST /api/staff/support-tickets/:ticketId/responses — Add response
Future<Response> onRequest(
  RequestContext context,
  String ticketId,
) async {
  const uuid = Uuid();
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
      final query = JsonQueryBuilder()
          .model('SupportResponse')
          .action(QueryAction.findMany)
          .where({'supportTicketId': ticketId}).build();
      final responses = await db.executor.executeQueryAsMaps(query);
      return Response.json(
        body: {
          'data': responses.map(serializeForJson).toList(),
        },
      );
    }

    if (context.request.method == HttpMethod.post) {
      final body = await context.request.json() as Map<String, dynamic>;
      final message = body['message'] as String?;
      if (message == null || message.isEmpty) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {'message': 'message is required'}
          },
        );
      }

      final now = DateTime.now().toUtc().toIso8601String();
      final query = JsonQueryBuilder()
          .model('SupportResponse')
          .action(QueryAction.create)
          .data({
        'id': uuid.v4(),
        'supportTicketId': ticketId,
        'userId': userId,
        'message': message,
        'createdAt': now,
        'updatedAt': now,
      }).build();
      final result = await db.executor.executeQueryAsSingleMap(query);

      final ticketUpdateQuery = JsonQueryBuilder()
          .model('SupportTicket')
          .action(QueryAction.update)
          .where({'id': ticketId}).data({'updatedAt': now}).build();
      await db.executor.executeMutation(ticketUpdateQuery);

      return Response.json(
        statusCode: HttpStatus.created,
        body: {
          'data': result != null ? serializeForJson(result) : null,
        },
      );
    }

    return Response(statusCode: HttpStatus.methodNotAllowed);
  } catch (e, stackTrace) {
    await SentryLogger.severe('Staff ticket responses failed',
        context: 'StaffTicketResponses', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Operation failed'}
      },
    );
  }
}
