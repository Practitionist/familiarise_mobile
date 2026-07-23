import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/staff/stats — Basic metrics for staff dashboard
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

    // Verify staff role
    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    // Gather basic metrics (typed PrismaClient delegates)
    final openTickets = await db.prisma.supportTicket.count(
      where: const SupportTicketWhereInput(
        status: SupportTicketStatusFilter(equals: SupportTicketStatus.open),
      ),
    );

    final pendingVerifications =
        await db.prisma.consultantProfileVerification.count(
      where: const ConsultantProfileVerificationWhereInput(
        status: ProfileVerificationStatusFilter(
          equals: ProfileVerificationStatus.pending,
        ),
      ),
    );

    final pendingFeedback = await db.prisma.feedback.count(
      where: const FeedbackWhereInput(
        status: FeedbackStatusFilter(equals: FeedbackStatus.pending),
      ),
    );

    return Response.json(
      body: {
        'data': {
          'openTickets': openTickets,
          'pendingVerifications': pendingVerifications,
          'pendingFeedback': pendingFeedback,
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff stats failed',
      context: 'StaffStats',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load stats'}},
    );
  }
}
