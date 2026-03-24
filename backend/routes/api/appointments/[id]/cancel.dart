import 'dart:async';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/novu/notification_triggers.dart';
import 'package:backend/services/novu/novu_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// POST /api/appointments/:id/cancel
///
/// Cancel a booking.
/// User must be a participant in the booking.
///
/// Query Parameters:
/// - type: Booking type (CONSULTATION or SUBSCRIPTION, required)
///
/// Request body:
/// ```json
/// {
///   "reason": "Optional cancellation reason"
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "success": true,
///   "message": "Booking cancelled successfully"
/// }
/// ```
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow POST requests
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
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

    // Get booking type from query parameter
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

    // Parse request body for optional reason
    String? reason;
    try {
      final data = await context.request.json() as Map<String, dynamic>;
      reason = data['reason'] as String?;
    } catch (_) {
      // Body parsing failed, reason will be null
    }

    // Cancel the booking
    await db.appointments.cancelBooking(
      id: id,
      type: type,
      userId: userId,
      reason: reason,
    );

    // Fire-and-forget: notify the other party about cancellation
    final novuService = context.read<NovuService>();
    if (novuService.isConfigured) {
      unawaited(() async {
        try {
          // Get the booking to find both parties
          final userQuery = JsonQueryBuilder()
              .model('User')
              .action(QueryAction.findUnique)
              .where({'id': userId}).build();
          final user =
              await db.executor.executeQueryAsSingleMap(userQuery);
          final cancellerName =
              user?['name'] as String? ?? 'A user';

          // Notify the other party (simplified: send to consultant)
          // In a full impl, determine which party cancelled and notify the other
          await NotificationTriggers.appointmentCancelled(
            novuService,
            recipientUserId: userId,
            cancelledByName: cancellerName,
            appointmentType: type,
            appointmentDate: DateTime.now().toIso8601String(),
            reason: reason,
            appointmentId: id,
          );
        } catch (e) {
          SentryLogger.warning(
            'Failed to send cancellation notification: $e',
            context: 'CancelAppointmentRoute',
          );
        }
      }());
    }

    return Response.json(
      body: {
        'success': true,
        'message': 'Booking cancelled successfully',
      },
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
      'Error in POST /api/appointments/$id/cancel',
      context: 'CancelAppointmentRoute',
      error: e,
      stackTrace: stackTrace,
    );

    final errorMessage = e.toString();

    if (errorMessage.contains('not found') ||
        errorMessage.contains('permission')) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Booking not found or access denied'}
        },
      );
    }

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to cancel booking'}
      },
    );
  }
}
