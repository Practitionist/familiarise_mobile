import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/staff/support-tickets/:ticketId/responses — List
/// POST /api/staff/support-tickets/:ticketId/responses — Add response
Future<Response> onRequest(
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
      final responses = await db.prisma.supportResponse.findMany(
        where: SupportResponseWhereInput(
          supportTicketId: StringFilter(equals: ticketId),
        ),
      );
      return Response.json(
        body: {
          'data': responses.map((r) => serializeForJson(r.toJson())).toList(),
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

      // Typed create autofills id/createdAt/updatedAt defaults.
      final result = await db.prisma.supportResponse.create(
        data: CreateSupportResponseInput(
          supportTicketId: ticketId,
          userId: userId,
          message: message,
          isInternal: false,
        ),
      );

      // Typed update auto-refreshes updatedAt.
      await db.prisma.supportTicket.update(
        where: SupportTicketWhereUniqueInput(id: ticketId),
        data: const UpdateSupportTicketInput(),
      );

      return Response.json(
        statusCode: HttpStatus.created,
        body: {
          'data': serializeForJson(result.toJson()),
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
