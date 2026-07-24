import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PUT /api/slots/availability/custom/:id — Update
/// DELETE /api/slots/availability/custom/:id — Delete
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.put || method == HttpMethod.delete) {
    return _handle(context, id, method);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Shared auth + ownership check for update/delete.
Future<Response> _handle(
  RequestContext context,
  String id,
  HttpMethod method,
) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify ownership
    final user = await db.users.findById(userId);
    final userCpId = user?['consultantProfileId'] as String?;
    if (userCpId == null) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Not a consultant'}},
      );
    }

    final slot = await db.prisma.slotOfAvailabilityCustom.findUnique(
      where: SlotOfAvailabilityCustomWhereUniqueInput(id: id),
    );

    if (slot == null || slot.consultantProfileId != userCpId) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Slot not found'}},
      );
    }

    if (method == HttpMethod.put) {
      final body =
          await context.request.json() as Map<String, dynamic>;
      final updated = await db.slots.updateCustomSlot(
        id: id,
        startsAt: body['startsAt'] as String?,
        endsAt: body['endsAt'] as String?,
      );
      return Response.json(
        body: {
          'data':
              updated != null ? serializeForJson(updated) : null,
        },
      );
    }

    // DELETE
    await db.slots.deleteCustomSlot(id);
    return Response.json(body: {'message': 'Slot deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Custom slot operation failed',
      context: 'CustomSlot',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Operation failed'}},
    );
  }
}
