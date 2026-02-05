import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/support_ticket_repository.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Support ticket responses endpoint
///
/// POST /api/support/:ticketId/responses - Add a response to a ticket
Future<Response> onRequest(RequestContext context, String ticketId) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleAddResponse(context, ticketId);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/support/:ticketId/responses
///
/// Add a response to an existing ticket.
///
/// Request body:
/// ```json
/// {
///   "message": "Response message"
/// }
/// ```
Future<Response> _handleAddResponse(
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

    final data = await context.request.json() as Map<String, dynamic>;

    final message = data['message'] as String?;
    if (message == null || message.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Message is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    final response = await db.supportTickets.addResponse(
      ticketId: ticketId,
      userId: userId,
      message: message,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(response),
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
      'Error in POST /api/support/$ticketId/responses',
      context: 'SupportRoute',
      error: e,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to add response'}
      },
    );
  }
}
