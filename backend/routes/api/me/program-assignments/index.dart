import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/me/program-assignments
///
/// Returns the authenticated user's active program assignments
/// (entitlements) with seat utilization (`sessionsAllocated`, `sessionsUsed`,
/// `sessionsHeld`, `remainingSeats`) and credit pool balance per cycle.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final rawAssignments =
        await db.organizations.getMyProgramAssignments(userId);

    final enrichedAssignments = <Map<String, dynamic>>[];
    for (final raw in rawAssignments) {
      final assignmentId = raw['id'] as String?;
      final entitlement =
          Map<String, dynamic>.from(raw['entitlement'] as Map? ?? const {});

      var sessionsHeld = 0;
      if (assignmentId != null && assignmentId.isNotEmpty) {
        try {
          final utilizations = await db.prisma.bookingUtilization.findMany(
            where: BookingUtilizationWhereInput(
              programAssignmentId: StringFilter(equals: assignmentId),
            ),
            include: const BookingUtilizationInclude(
              payment: PaymentInclude(),
            ),
          );
          for (final u in utilizations) {
            if (u.reversedAt == null &&
                u.payment?.paymentStatus == PaymentStatus.pending) {
              sessionsHeld += u.engagementsConsumed;
            }
          }
        } catch (_) {
          sessionsHeld = 0;
        }
      }

      final sessionsAllocated =
          (entitlement['coveredEngagementsPerCycle'] as num?)?.toInt();
      final sessionsUsed =
          (entitlement['engagementsUsed'] as num?)?.toInt() ?? 0;
      final remainingSeats = sessionsAllocated != null
          ? (sessionsAllocated - sessionsUsed - sessionsHeld)
              .clamp(0, sessionsAllocated)
          : (entitlement['engagementsRemaining'] as num?)?.toInt();
      final creditPoolBalancePaise =
          (entitlement['creditRemainingPaise'] as num?)?.toInt();
      final creditPoolBudgetPaise =
          (entitlement['creditBudgetPaise'] as num?)?.toInt();

      enrichedAssignments.add({
        ...raw,
        'sessionsAllocated': sessionsAllocated,
        'sessionsUsed': sessionsUsed,
        'sessionsHeld': sessionsHeld,
        'remainingSeats': remainingSeats,
        'creditPoolBalancePaise': creditPoolBalancePaise,
        'creditPoolBudgetPaise': creditPoolBudgetPaise,
        'entitlement': {
          ...entitlement,
          'sessionsAllocated': sessionsAllocated,
          'sessionsUsed': sessionsUsed,
          'sessionsHeld': sessionsHeld,
          'remainingSeats': remainingSeats,
          'creditPoolBalancePaise': creditPoolBalancePaise,
          'creditPoolBudgetPaise': creditPoolBudgetPaise,
        },
      });
    }

    return Response.json(
      body: serializeForJson({'assignments': enrichedAssignments}),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/me/program-assignments',
      context: 'MyProgramAssignmentsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch program assignments'},
      },
    );
  }
}
