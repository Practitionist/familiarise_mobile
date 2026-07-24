import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultant/tds-records — List TDS deduction records
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
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can view TDS'},
        },
      );
    }

    final records = await db.prisma.tDSRecord.findMany(
      where: TDSRecordWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );

    return Response.json(
      body: {
        'data': records.map((r) => serializeForJson(r.toJson())).toList(),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'TDS records fetch failed',
      context: 'TDSRecordsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to load TDS records'}
      },
    );
  }
}
