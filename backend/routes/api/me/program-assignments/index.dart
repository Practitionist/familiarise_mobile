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

    final assignmentIds = rawAssignments
        .map((raw) => raw['id'] as String?)
        .whereType<String>()
        .where((id) => id.isNotEmpty)
        .toList();

    final heldByAssignmentId = <String, int>{};
    if (assignmentIds.isNotEmpty) {
      final utilizations = await db.prisma.bookingUtilization.findManyProjected(
        where: BookingUtilizationWhereInput(
          programAssignmentId: StringFilter(in_: assignmentIds),
          reversedAt: const DateTimeFilter(isNull: true),
          payment: const PaymentRelationFilter(
            is_: PaymentWhereInput(
              paymentStatus: PaymentStatusFilter(
                equals: PaymentStatus.pending,
              ),
            ),
          ),
        ),
        select: const [
          BookingUtilizationScalarField.programAssignmentId,
          BookingUtilizationScalarField.engagementsConsumed,
        ],
      );
      for (final u in utilizations) {
        final aid = u['programAssignmentId'] as String?;
        final consumed = (u['engagementsConsumed'] as num?)?.toInt() ?? 0;
        if (aid != null && consumed > 0) {
          heldByAssignmentId[aid] = (heldByAssignmentId[aid] ?? 0) + consumed;
        }
      }
    }

    final enrichedAssignments = <Map<String, dynamic>>[];
    for (final raw in rawAssignments) {
      final assignmentId = raw['id'] as String?;
      final entitlement =
          Map<String, dynamic>.from(raw['entitlement'] as Map? ?? const {});

      final sessionsHeld =
          assignmentId != null ? (heldByAssignmentId[assignmentId] ?? 0) : 0;

      final sessionsAllocated =
          (entitlement['coveredEngagementsPerCycle'] as num?)?.toInt();
      final sessionsUsed =
          (entitlement['engagementsUsed'] as num?)?.toInt() ?? 0;
      final remainingSeats = sessionsAllocated != null
          ? (sessionsAllocated - sessionsUsed).clamp(0, sessionsAllocated)
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
