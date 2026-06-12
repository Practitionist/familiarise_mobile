import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/appointments/:id/respond
///
/// Consultant responds to a pending booking request.
/// `:id` is the Consultation/Subscription id (same contract as cancel).
///
/// Query Parameters:
/// - type: Booking type (CONSULTATION or SUBSCRIPTION, required)
///
/// Request body:
/// ```json
/// { "action": "approve" }   // or "reject"
/// ```
///
/// Approval moves the request to APPROVED_PENDING_PAYMENT (the consultee
/// completes payment on the web); rejection moves it to REJECTED.
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.post) {
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
    final params = context.request.uri.queryParameters;

    final type = params['type'];
    if (type == null || (type != 'CONSULTATION' && type != 'SUBSCRIPTION')) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Query parameter type required '
                '(CONSULTATION or SUBSCRIPTION)',
          },
        },
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;
    final action = data['action'] as String?;
    if (action != 'approve' && action != 'reject') {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': "Body field 'action' must be approve|reject"},
        },
      );
    }

    final result = await db.appointments.respondToBookingRequest(
      id: id,
      type: type,
      userId: userId,
      approve: action == 'approve',
    );

    return Response.json(body: {'data': result});
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/appointments/$id/respond',
      context: 'RespondAppointmentRoute',
      error: e,
      stackTrace: stackTrace,
    );

    final errorMessage = e.toString();
    if (errorMessage.contains('not found') ||
        errorMessage.contains('permission') ||
        errorMessage.contains('no longer pending')) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Booking request not found or access denied'}
        },
      );
    }

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to respond to booking request'}
      },
    );
  }
}
