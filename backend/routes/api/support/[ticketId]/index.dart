import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/support_ticket_repository.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Support ticket detail endpoint
///
/// GET /api/support/:ticketId - Get ticket details with responses
Future<Response> onRequest(RequestContext context, String ticketId) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetTicket(context, ticketId);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/support/:ticketId
///
/// Returns the ticket details with all responses (excluding internal notes).
Future<Response> _handleGetTicket(
  RequestContext context,
  String ticketId,
) async {
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

    final ticket = await db.supportTickets.getTicketById(
      ticketId: ticketId,
      userId: userId,
    );

    return Response.json(
      body: serializeForJson(ticket),
    );
  } on RecordNotFoundException {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'error': {'message': 'Ticket not found'}
      },
    );
  } on Exception catch (e) {
    await SentryLogger.error(
      'Error in GET /api/support/$ticketId',
      context: 'SupportRoute',
      error: e,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch ticket'}
      },
    );
  }
}
