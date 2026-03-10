import 'dart:async';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/novu/notification_triggers.dart';
import 'package:backend/services/novu/novu_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Support tickets endpoints
///
/// GET /api/support - List user's support tickets
/// POST /api/support - Create a new support ticket
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleListTickets(context);
  } else if (method == HttpMethod.post) {
    return _handleCreateTicket(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/support
///
/// Returns the authenticated user's support tickets with pagination.
///
/// Query Parameters:
/// - status: Filter by status (OPEN, IN_PROGRESS, RESOLVED, CLOSED)
/// - page: Page number (0-indexed, default: 0)
/// - pageSize: Items per page (default: 20, max: 50)
Future<Response> _handleListTickets(RequestContext context) async {
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
    final params = context.request.uri.queryParameters;

    final status = params['status'];
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '20') ?? 20;

    final result = await db.supportTickets.getTicketsByUserId(
      userId: userId,
      status: status,
      page: page,
      pageSize: pageSize,
    );

    return Response.json(
      body: serializeForJson(result),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/support',
      context: 'SupportRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch tickets'}
      },
    );
  }
}

/// POST /api/support
///
/// Create a new support ticket.
///
/// Request body:
/// ```json
/// {
///   "title": "Issue title",
///   "description": "Detailed description",
///   "issueType": "PAYMENT_FAILED",
///   "priority": "MEDIUM",
///   "consultationId": "optional-uuid",
///   "subscriptionId": "optional-uuid",
///   "paymentId": "optional-uuid"
/// }
/// ```
Future<Response> _handleCreateTicket(RequestContext context) async {
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

    // Validate required fields
    final title = data['title'] as String?;
    final description = data['description'] as String?;

    if (title == null || title.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Title is required'}
        },
      );
    }

    if (description == null || description.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Description is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    final ticket = await db.supportTickets.createTicket(
      userId: userId,
      title: title,
      description: description,
      issueType: data['issueType'] as String?,
      priority: data['priority'] as String?,
      category: data['category'] as String?,
      consultationId: data['consultationId'] as String?,
      subscriptionId: data['subscriptionId'] as String?,
      paymentId: data['paymentId'] as String?,
    );

    // Fire-and-forget: send confirmation notification to user
    final novuService = context.read<NovuService>();
    if (novuService.isConfigured) {
      final ticketId = ticket['id'] as String? ?? '';
      unawaited(NotificationTriggers.supportTicketCreated(
        novuService,
        userId: userId,
        ticketTitle: title,
        ticketId: ticketId,
      ));
    }

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(ticket),
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/support',
      context: 'SupportRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create ticket'}
      },
    );
  }
}
