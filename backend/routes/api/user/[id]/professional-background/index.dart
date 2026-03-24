import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/professional_background_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/user/:id/professional-background
///   Returns work experiences, education, and certifications.
///
/// PUT /api/user/:id/professional-background
///   Replaces all professional background records for the user.
///   Body: { workExperiences: [...], education: [...], certifications: [...] }
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _handleGet(context, id);
  } else if (method == HttpMethod.put) {
    return _handlePut(context, id);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null || userId != id) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();

    final weQuery = JsonQueryBuilder()
        .model('WorkExperience')
        .action(QueryAction.findMany)
        .where({'userId': userId})
        .build();
    final workExperiences = await db.executor.executeQueryAsMaps(weQuery);

    final eduQuery = JsonQueryBuilder()
        .model('Education')
        .action(QueryAction.findMany)
        .where({'userId': userId})
        .build();
    final education = await db.executor.executeQueryAsMaps(eduQuery);

    final certQuery = JsonQueryBuilder()
        .model('Certification')
        .action(QueryAction.findMany)
        .where({'userId': userId})
        .build();
    final certifications = await db.executor.executeQueryAsMaps(certQuery);

    return Response.json(
      body: {
        'data': {
          'workExperiences':
              workExperiences.map(serializeForJson).toList(),
          'education': education.map(serializeForJson).toList(),
          'certifications':
              certifications.map(serializeForJson).toList(),
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to get professional background',
      context: 'ProfessionalBackgroundGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get professional background'},
      },
    );
  }
}

Future<Response> _handlePut(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null || userId != id) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final db = context.read<DatabaseClient>();

    await db.executeInTransaction((txn) async {
      await ProfessionalBackgroundUtils.replaceRecords(
        userId: userId,
        txn: txn,
        workExperiences: body['workExperiences'] as List<dynamic>?,
        education: body['education'] as List<dynamic>?,
        certifications: body['certifications'] as List<dynamic>?,
      );
    });

    return Response.json(
      body: {'message': 'Professional background updated'},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to update professional background',
      context: 'ProfessionalBackgroundPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update professional background'},
      },
    );
  }
}
